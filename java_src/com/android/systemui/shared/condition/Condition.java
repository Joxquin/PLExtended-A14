package com.android.systemui.shared.condition;

import android.util.Log;
import androidx.lifecycle.AbstractC0247m;
import androidx.lifecycle.InterfaceC0249o;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$Event;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlinx.coroutines.B;
/* loaded from: classes.dex */
public abstract class Condition {
    public static final int START_EAGERLY = 0;
    public static final int START_LAZILY = 1;
    public static final int START_WHEN_NEEDED = 2;
    private final ArrayList mCallbacks;
    private Boolean mIsConditionMet;
    private final boolean mOverriding;
    private final B mScope;
    private boolean mStarted;
    private final String mTag;

    /* loaded from: classes.dex */
    public interface Callback {
        void onConditionChanged(Condition condition);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    @interface StartStrategy {
    }

    public Condition(B b4) {
        this(b4, Boolean.FALSE, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$observe$0(Callback callback, InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event == Lifecycle$Event.ON_RESUME) {
            addCallback(callback);
        } else if (lifecycle$Event == Lifecycle$Event.ON_PAUSE) {
            removeCallback(callback);
        }
    }

    private void sendUpdate() {
        Iterator it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            Callback callback = (Callback) ((WeakReference) it.next()).get();
            if (callback == null) {
                it.remove();
            } else {
                callback.onConditionChanged(this);
            }
        }
    }

    public void addCallback(Callback callback) {
        if (shouldLog()) {
            Log.d(this.mTag, "adding callback");
        }
        this.mCallbacks.add(new WeakReference(callback));
        if (this.mStarted) {
            callback.onConditionChanged(this);
            return;
        }
        start();
        this.mStarted = true;
    }

    public Condition and(Collection collection) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        arrayList.addAll(collection);
        return new CombinedCondition(this.mScope, arrayList, 0);
    }

    public void clearCondition() {
        if (this.mIsConditionMet == null) {
            return;
        }
        if (shouldLog()) {
            Log.d(this.mTag, "clearing condition");
        }
        this.mIsConditionMet = null;
        sendUpdate();
    }

    public abstract int getStartStrategy();

    public final String getState() {
        return !isConditionSet() ? "Invalid" : isConditionMet() ? "True" : "False";
    }

    public final String getTag() {
        if (isOverridingCondition()) {
            return this.mTag + "[OVRD]";
        }
        return this.mTag;
    }

    public boolean isConditionMet() {
        return Boolean.TRUE.equals(this.mIsConditionMet);
    }

    public boolean isConditionSet() {
        return this.mIsConditionMet != null;
    }

    public boolean isOverridingCondition() {
        return this.mOverriding;
    }

    public Callback observe(InterfaceC0251q interfaceC0251q, Callback callback) {
        return observe(interfaceC0251q.getLifecycle(), callback);
    }

    public Condition or(Collection collection) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        arrayList.addAll(collection);
        return new CombinedCondition(this.mScope, arrayList, 1);
    }

    public void removeCallback(Callback callback) {
        if (shouldLog()) {
            Log.d(this.mTag, "removing callback");
        }
        Iterator it = this.mCallbacks.iterator();
        while (it.hasNext()) {
            Callback callback2 = (Callback) ((WeakReference) it.next()).get();
            if (callback2 == null || callback2 == callback) {
                it.remove();
            }
        }
        if (this.mCallbacks.isEmpty() && this.mStarted) {
            stop();
            this.mStarted = false;
        }
    }

    public final boolean shouldLog() {
        return Log.isLoggable(this.mTag, 3);
    }

    public abstract void start();

    public abstract void stop();

    public void updateCondition(boolean z4) {
        Boolean bool = this.mIsConditionMet;
        if (bool == null || bool.booleanValue() != z4) {
            if (shouldLog()) {
                String str = this.mTag;
                Log.d(str, "updating condition to " + z4);
            }
            this.mIsConditionMet = Boolean.valueOf(z4);
            sendUpdate();
        }
    }

    public Condition(B b4, Boolean bool, boolean z4) {
        this.mTag = getClass().getSimpleName();
        this.mCallbacks = new ArrayList();
        this.mStarted = false;
        this.mIsConditionMet = bool;
        this.mOverriding = z4;
        this.mScope = b4;
    }

    public Callback observe(AbstractC0247m abstractC0247m, final Callback callback) {
        abstractC0247m.a(new InterfaceC0249o() { // from class: com.android.systemui.shared.condition.a
            @Override // androidx.lifecycle.InterfaceC0249o
            public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
                Condition.this.lambda$observe$0(callback, interfaceC0251q, lifecycle$Event);
            }
        });
        return callback;
    }

    public Condition and(Condition... conditionArr) {
        return and(Arrays.asList(conditionArr));
    }

    public Condition or(Condition... conditionArr) {
        return or(Arrays.asList(conditionArr));
    }
}
