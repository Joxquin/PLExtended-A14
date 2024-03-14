package com.android.quickstep.util;

import android.app.ActivityManager;
import android.util.Log;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
/* loaded from: classes.dex */
public class TaskRestartedDuringLaunchListener implements TaskStackChangeListener {
    private static final String TAG = "TaskRestartedDuringLaunchListener";
    private Runnable mTaskRestartedCallback = null;

    @Override // com.android.systemui.shared.system.TaskStackChangeListener
    public void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z4, boolean z5, boolean z6) {
        if (z6) {
            Log.d(TAG, "Detected activity restart during launch for task=" + runningTaskInfo.taskId);
            this.mTaskRestartedCallback.run();
            unregister();
        }
    }

    public void register(Runnable runnable) {
        TaskStackChangeListeners.getInstance().registerTaskStackListener(this);
        this.mTaskRestartedCallback = runnable;
    }

    public void unregister() {
        TaskStackChangeListeners.getInstance().unregisterTaskStackListener(this);
        this.mTaskRestartedCallback = null;
    }
}
