package com.android.launcher3.util;

import android.content.Context;
import android.content.ContextWrapper;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class MainThreadInitializedObject {
    private final ObjectProvider mProvider;
    private Object mValue;

    /* loaded from: classes.dex */
    public interface ObjectProvider {
        Object get(Context context);
    }

    /* loaded from: classes.dex */
    public abstract class SandboxContext extends ContextWrapper {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int f5278a = 0;
        protected final Set mAllowedObjects;
        private final Object mDestroyLock;
        private boolean mDestroyed;
        protected final Map mObjectMap;
        protected final ArrayList mOrderedObjects;

        public SandboxContext(Context context, MainThreadInitializedObject... mainThreadInitializedObjectArr) {
            super(context);
            this.mObjectMap = new HashMap();
            this.mOrderedObjects = new ArrayList();
            this.mDestroyLock = new Object();
            this.mDestroyed = false;
            this.mAllowedObjects = new HashSet(Arrays.asList(mainThreadInitializedObjectArr));
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public final Context getApplicationContext() {
            return this;
        }

        public final Object getObject(MainThreadInitializedObject mainThreadInitializedObject) {
            synchronized (this.mDestroyLock) {
                if (this.mDestroyed) {
                    Log.e("SandboxContext", "Static object access with a destroyed context");
                }
                Object obj = ((HashMap) this.mObjectMap).get(mainThreadInitializedObject);
                if (obj != null) {
                    return obj;
                }
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    try {
                        return Executors.MAIN_EXECUTOR.submit(new t(this, mainThreadInitializedObject)).get();
                    } catch (InterruptedException | ExecutionException e4) {
                        throw new RuntimeException(e4);
                    }
                }
                Object obj2 = mainThreadInitializedObject.mProvider.get(this);
                if (!((HashSet) this.mAllowedObjects).contains(mainThreadInitializedObject) && !(obj2 instanceof SafeCloseable)) {
                    throw new IllegalStateException("Leaking unknown objects " + mainThreadInitializedObject + "  " + mainThreadInitializedObject.mProvider + " " + obj2);
                }
                ((HashMap) this.mObjectMap).put(mainThreadInitializedObject, obj2);
                this.mOrderedObjects.add(obj2);
                return obj2;
            }
        }

        public final void onDestroy() {
            synchronized (this.mDestroyLock) {
                for (int size = this.mOrderedObjects.size() - 1; size >= 0; size--) {
                    Object obj = this.mOrderedObjects.get(size);
                    if (obj instanceof SafeCloseable) {
                        ((SafeCloseable) obj).close();
                    }
                }
                this.mDestroyed = true;
            }
        }
    }

    public MainThreadInitializedObject(ObjectProvider objectProvider) {
        this.mProvider = objectProvider;
    }

    public final Object get(final Context context) {
        if (context instanceof SandboxContext) {
            return ((SandboxContext) context).getObject(this);
        }
        if (this.mValue == null) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                try {
                    return Executors.MAIN_EXECUTOR.submit(new t(this, context)).get();
                } catch (InterruptedException | ExecutionException e4) {
                    throw new RuntimeException(e4);
                }
            }
            this.mValue = TraceHelper.allowIpcs("main.thread.object", new Supplier() { // from class: com.android.launcher3.util.s
                @Override // java.util.function.Supplier
                public final Object get() {
                    Object obj;
                    obj = MainThreadInitializedObject.this.mProvider.get(context.getApplicationContext());
                    return obj;
                }
            });
        }
        return this.mValue;
    }

    public final Object getNoCreate() {
        return this.mValue;
    }

    public void initializeForTesting(Object obj) {
        this.mValue = obj;
    }
}
