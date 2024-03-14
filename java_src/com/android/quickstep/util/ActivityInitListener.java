package com.android.quickstep.util;

import com.android.launcher3.BaseActivity;
import com.android.launcher3.util.ActivityTracker;
import java.util.function.BiPredicate;
/* loaded from: classes.dex */
public class ActivityInitListener implements ActivityTracker.SchedulerCallback {
    private final ActivityTracker mActivityTracker;
    private boolean mIsRegistered = false;
    private BiPredicate mOnInitListener;

    public ActivityInitListener(BiPredicate biPredicate, ActivityTracker activityTracker) {
        this.mOnInitListener = biPredicate;
        this.mActivityTracker = activityTracker;
    }

    public boolean handleInit(BaseActivity baseActivity, boolean z4) {
        return this.mOnInitListener.test(baseActivity, Boolean.valueOf(z4));
    }

    @Override // com.android.launcher3.util.ActivityTracker.SchedulerCallback
    public final boolean init(BaseActivity baseActivity, boolean z4) {
        if (this.mIsRegistered) {
            return handleInit(baseActivity, z4);
        }
        return false;
    }

    public void register() {
        this.mIsRegistered = true;
        this.mActivityTracker.registerCallback(this);
    }

    public void unregister() {
        this.mActivityTracker.unregisterCallback(this);
        this.mIsRegistered = false;
        this.mOnInitListener = null;
    }
}
