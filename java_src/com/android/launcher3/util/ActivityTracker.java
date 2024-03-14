package com.android.launcher3.util;

import com.android.launcher3.BaseActivity;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public final class ActivityTracker {
    private WeakReference mCurrentActivity = new WeakReference(null);
    private CopyOnWriteArrayList mCallbacks = new CopyOnWriteArrayList();

    /* loaded from: classes.dex */
    public interface SchedulerCallback {
        boolean init(BaseActivity baseActivity, boolean z4);
    }

    private boolean handleIntent(BaseActivity baseActivity, boolean z4) {
        Iterator it = this.mCallbacks.iterator();
        boolean z5 = false;
        while (it.hasNext()) {
            SchedulerCallback schedulerCallback = (SchedulerCallback) it.next();
            if (!schedulerCallback.init(baseActivity, z4)) {
                unregisterCallback(schedulerCallback);
            }
            z5 = true;
        }
        return z5;
    }

    public final BaseActivity getCreatedActivity() {
        return (BaseActivity) this.mCurrentActivity.get();
    }

    public final boolean handleCreate(BaseActivity baseActivity) {
        this.mCurrentActivity = new WeakReference(baseActivity);
        return handleIntent(baseActivity, false);
    }

    public final boolean handleNewIntent(BaseActivity baseActivity) {
        return handleIntent(baseActivity, baseActivity.isStarted());
    }

    public final void onActivityDestroyed(BaseActivity baseActivity) {
        if (this.mCurrentActivity.get() == baseActivity) {
            this.mCurrentActivity.clear();
        }
    }

    public final void registerCallback(SchedulerCallback schedulerCallback) {
        BaseActivity baseActivity = (BaseActivity) this.mCurrentActivity.get();
        this.mCallbacks.add(schedulerCallback);
        if (baseActivity == null || schedulerCallback.init(baseActivity, baseActivity.isStarted())) {
            return;
        }
        unregisterCallback(schedulerCallback);
    }

    public final void unregisterCallback(SchedulerCallback schedulerCallback) {
        this.mCallbacks.remove(schedulerCallback);
    }
}
