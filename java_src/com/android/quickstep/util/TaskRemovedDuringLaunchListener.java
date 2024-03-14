package com.android.quickstep.util;

import android.app.Activity;
import android.os.Bundle;
import com.android.launcher3.util.ActivityLifecycleCallbacksAdapter;
import com.android.quickstep.RecentsModel;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class TaskRemovedDuringLaunchListener implements ActivityLifecycleCallbacksAdapter {
    private Activity mActivity;
    private int mLaunchedTaskId = -1;
    private Runnable mTaskLaunchFailedCallback = null;

    private void checkTaskLaunchFailed() {
        final int i4 = this.mLaunchedTaskId;
        if (i4 != -1) {
            final Runnable runnable = this.mTaskLaunchFailedCallback;
            ((RecentsModel) RecentsModel.INSTANCE.getNoCreate()).isTaskRemoved(this.mLaunchedTaskId, new Consumer() { // from class: com.android.quickstep.util.Z
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TaskRemovedDuringLaunchListener.lambda$checkTaskLaunchFailed$0(i4, runnable, (Boolean) obj);
                }
            }, new a0());
            unregister();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkTaskLaunchFailed$0(int i4, Runnable runnable, Boolean bool) {
        if (bool.booleanValue()) {
            ActiveGestureLog activeGestureLog = ActiveGestureLog.INSTANCE;
            activeGestureLog.addLog("Launch failed, task (id=" + i4 + ") finished mid transition");
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$checkTaskLaunchFailed$1(GroupTask groupTask) {
        return true;
    }

    private void unregister() {
        this.mActivity.unregisterActivityLifecycleCallbacks(this);
        this.mActivity = null;
        this.mLaunchedTaskId = -1;
        this.mTaskLaunchFailedCallback = null;
    }

    @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public /* bridge */ /* synthetic */ void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        unregister();
    }

    @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public /* bridge */ /* synthetic */ void onActivityPaused(Activity activity) {
    }

    @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        checkTaskLaunchFailed();
    }

    @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public /* bridge */ /* synthetic */ void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public /* bridge */ /* synthetic */ void onActivityStarted(Activity activity) {
    }

    @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        unregister();
    }

    public void onTransitionFinished() {
        checkTaskLaunchFailed();
    }

    public void register(Activity activity, int i4, Runnable runnable) {
        activity.registerActivityLifecycleCallbacks(this);
        this.mActivity = activity;
        this.mLaunchedTaskId = i4;
        this.mTaskLaunchFailedCallback = runnable;
    }
}
