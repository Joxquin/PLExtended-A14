package com.android.quickstep;

import android.os.Binder;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.Trace;
import android.util.Log;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.util.TraceHelper;
import com.android.quickstep.BinderTracker;
import java.util.LinkedList;
import java.util.Set;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class BinderTracker {
    private static final String TAG = "BinderTracker";
    private static final Set sAllowedFrameworkClasses = Set.of("android.view.IWindowSession", "android.os.IPowerManager", "android.os.IServiceManager");
    private static final LinkedList mMainThreadTraceStack = new LinkedList();
    private static final LinkedList mMainThreadIgnoreIpcStack = new LinkedList();

    /* loaded from: classes.dex */
    public class BinderCallSite {
        public final String activeTrace;
        public final String descriptor;
        public final int transactionCode;

        public BinderCallSite(String str, String str2, int i4) {
            this.activeTrace = str;
            this.descriptor = str2;
            this.transactionCode = i4;
        }
    }

    /* loaded from: classes.dex */
    class TraceHelperExtension extends TraceHelper implements Binder.ProxyTransactListener {
        private final Consumer mUnexpectedTransactionCallback;

        public TraceHelperExtension(Consumer consumer) {
            this.mUnexpectedTransactionCallback = consumer;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$allowIpcs$1(String str, int i4) {
            Trace.endAsyncSection(str, i4);
            BinderTracker.mMainThreadTraceStack.remove(str);
            BinderTracker.mMainThreadIgnoreIpcStack.remove(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$beginAsyncSection$0(String str, int i4) {
            Trace.endAsyncSection(str, i4);
            BinderTracker.mMainThreadTraceStack.remove(str);
        }

        @Override // com.android.launcher3.util.TraceHelper
        public SafeCloseable allowIpcs(final String str) {
            if (BinderTracker.e()) {
                BinderTracker.mMainThreadTraceStack.add(str);
                BinderTracker.mMainThreadIgnoreIpcStack.add(str);
                final int a4 = o3.d.f11877d.a();
                Trace.beginAsyncSection(str, a4);
                return new SafeCloseable() { // from class: com.android.quickstep.B
                    @Override // java.lang.AutoCloseable
                    public final void close() {
                        BinderTracker.TraceHelperExtension.lambda$allowIpcs$1(str, a4);
                    }
                };
            }
            return super.allowIpcs(str);
        }

        @Override // com.android.launcher3.util.TraceHelper
        public SafeCloseable beginAsyncSection(final String str) {
            if (BinderTracker.e()) {
                BinderTracker.mMainThreadTraceStack.add(str);
                final int a4 = o3.d.f11877d.a();
                Trace.beginAsyncSection(str, a4);
                return new SafeCloseable() { // from class: com.android.quickstep.A
                    @Override // java.lang.AutoCloseable
                    public final void close() {
                        BinderTracker.TraceHelperExtension.lambda$beginAsyncSection$0(str, a4);
                    }
                };
            }
            return super.beginAsyncSection(str);
        }

        @Override // com.android.launcher3.util.TraceHelper
        public void beginSection(String str) {
            if (BinderTracker.e()) {
                BinderTracker.mMainThreadTraceStack.add(str);
            }
            super.beginSection(str);
        }

        @Override // com.android.launcher3.util.TraceHelper
        public void endSection() {
            super.endSection();
            if (BinderTracker.e()) {
                BinderTracker.mMainThreadTraceStack.pollLast();
            }
        }

        public void onTransactEnded(Object obj) {
        }

        public Object onTransactStarted(IBinder iBinder, int i4) {
            return null;
        }

        public Object onTransactStarted(IBinder iBinder, int i4, int i5) {
            String simpleName;
            if (BinderTracker.e() && (i5 & 1) != 1) {
                String str = (String) BinderTracker.mMainThreadIgnoreIpcStack.peekLast();
                try {
                    simpleName = iBinder.getInterfaceDescriptor();
                    if (BinderTracker.sAllowedFrameworkClasses.contains(simpleName)) {
                        return null;
                    }
                } catch (RemoteException e4) {
                    Log.e(BinderTracker.TAG, "Error getting IPC descriptor", e4);
                    simpleName = iBinder.getClass().getSimpleName();
                }
                if (str == null) {
                    this.mUnexpectedTransactionCallback.accept(new BinderCallSite((String) BinderTracker.mMainThreadTraceStack.peekLast(), simpleName, i4));
                } else {
                    Log.d(BinderTracker.TAG, "MainThread-IPC " + simpleName + " ignored due to " + str);
                }
            }
            return null;
        }
    }

    public static /* bridge */ /* synthetic */ boolean e() {
        return isMainThread();
    }

    private static boolean isMainThread() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$startTracking$0(TraceHelper traceHelper) {
        Binder.setProxyTransactListener(null);
        TraceHelper.INSTANCE = traceHelper;
    }

    public static SafeCloseable startTracking(Consumer consumer) {
        final TraceHelper traceHelper = TraceHelper.INSTANCE;
        TraceHelperExtension traceHelperExtension = new TraceHelperExtension(consumer);
        TraceHelper.INSTANCE = traceHelperExtension;
        Binder.setProxyTransactListener(traceHelperExtension);
        return new SafeCloseable() { // from class: com.android.quickstep.z
            @Override // java.lang.AutoCloseable
            public final void close() {
                BinderTracker.lambda$startTracking$0(TraceHelper.this);
            }
        };
    }
}
