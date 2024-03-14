package com.android.systemui.shared.system;

import android.app.Activity;
import android.app.ActivityClient;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.AppGlobals;
import android.content.Context;
import android.content.Intent;
import android.content.pm.UserInfo;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import android.view.IRecentsAnimationController;
import android.view.IRecentsAnimationRunner;
import android.view.RemoteAnimationTarget;
import android.window.TaskSnapshot;
import com.android.internal.app.IVoiceInteractionManagerService;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import java.util.List;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class ActivityManagerWrapper {
    public static final String CLOSE_SYSTEM_WINDOWS_REASON_HOME_KEY = "homekey";
    public static final String CLOSE_SYSTEM_WINDOWS_REASON_RECENTS = "recentapps";
    private static final String INVOCATION_TIME_MS_KEY = "invocation_time_ms";
    private static final int NUM_RECENT_ACTIVITIES_REQUEST = 3;
    private static final String TAG = "ActivityManagerWrapper";
    private static final ActivityManagerWrapper sInstance = new ActivityManagerWrapper();
    private final ActivityTaskManager mAtm = ActivityTaskManager.getInstance();

    private ActivityManagerWrapper() {
    }

    public static ActivityManagerWrapper getInstance() {
        return sInstance;
    }

    public static boolean isHomeTask(ActivityManager.RunningTaskInfo runningTaskInfo) {
        return runningTaskInfo.configuration.windowConfiguration.getActivityType() == 2;
    }

    public void cancelRecentsAnimation(boolean z4) {
        try {
            ActivityTaskManager.getService().cancelRecentsAnimation(z4);
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed to cancel recents animation", e4);
        }
    }

    public void closeSystemWindows(String str) {
        try {
            ActivityManager.getService().closeSystemDialogs(str);
        } catch (RemoteException e4) {
            Log.w(TAG, "Failed to close system windows", e4);
        }
    }

    public int getCurrentUserId() {
        try {
            UserInfo currentUser = ActivityManager.getService().getCurrentUser();
            if (currentUser != null) {
                return currentUser.id;
            }
            return 0;
        } catch (RemoteException e4) {
            throw e4.rethrowFromSystemServer();
        }
    }

    public ActivityManager.RunningTaskInfo getRunningTask() {
        return getRunningTask(false);
    }

    public ActivityManager.RunningTaskInfo[] getRunningTasks(boolean z4) {
        return getRunningTasks(z4, -1);
    }

    public ThumbnailData getTaskThumbnail(int i4, boolean z4) {
        TaskSnapshot taskSnapshot;
        try {
            taskSnapshot = ActivityTaskManager.getService().getTaskSnapshot(i4, z4, true);
        } catch (RemoteException e4) {
            Log.w(TAG, "Failed to retrieve task snapshot", e4);
            taskSnapshot = null;
        }
        return taskSnapshot != null ? new ThumbnailData(taskSnapshot) : new ThumbnailData();
    }

    public void invalidateHomeTaskSnapshot(Activity activity) {
        try {
            ActivityClient.getInstance().invalidateHomeTaskSnapshot(activity == null ? null : activity.getActivityToken());
        } catch (Throwable th) {
            Log.w(TAG, "Failed to invalidate home snapshot", th);
        }
    }

    public boolean isLockTaskKioskModeActive() {
        try {
            return ActivityTaskManager.getService().getLockTaskModeState() == 1;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isLockToAppActive() {
        try {
            return ActivityTaskManager.getService().getLockTaskModeState() != 0;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isScreenPinningEnabled() {
        return Settings.System.getInt(AppGlobals.getInitialApplication().getContentResolver(), "lock_to_app_enabled", 0) != 0;
    }

    public void removeAllRecentTasks() {
        try {
            ActivityTaskManager.getService().removeAllVisibleRecentTasks();
        } catch (RemoteException e4) {
            Log.w(TAG, "Failed to remove all tasks", e4);
        }
    }

    public void removeTask(int i4) {
        try {
            ActivityTaskManager.getService().removeTask(i4);
        } catch (RemoteException e4) {
            Log.w(TAG, "Failed to remove task=" + i4, e4);
        }
    }

    public boolean showVoiceSession(IBinder iBinder, Bundle bundle, int i4, String str) {
        IVoiceInteractionManagerService asInterface = IVoiceInteractionManagerService.Stub.asInterface(ServiceManager.getService("voiceinteraction"));
        if (asInterface == null) {
            return false;
        }
        bundle.putLong(INVOCATION_TIME_MS_KEY, SystemClock.elapsedRealtime());
        try {
            return asInterface.showSessionFromSession(iBinder, bundle, i4, str);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean startActivityFromRecents(Task.TaskKey taskKey, ActivityOptions activityOptions) {
        return startActivityFromRecents(taskKey.id, activityOptions);
    }

    public void startRecentsActivity(Intent intent, long j4, RecentsAnimationListener recentsAnimationListener, final Consumer consumer, Handler handler) {
        final boolean startRecentsActivity = startRecentsActivity(intent, j4, recentsAnimationListener);
        if (consumer != null) {
            handler.post(new Runnable() { // from class: com.android.systemui.shared.system.ActivityManagerWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    consumer.accept(Boolean.valueOf(startRecentsActivity));
                }
            });
        }
    }

    public boolean supportsFreeformMultiWindow(Context context) {
        boolean z4 = Settings.Global.getInt(context.getContentResolver(), "enable_freeform_support", 0) != 0;
        if (ActivityTaskManager.supportsMultiWindow(context)) {
            return context.getPackageManager().hasSystemFeature("android.software.freeform_window_management") || z4;
        }
        return false;
    }

    public ActivityManager.RunningTaskInfo getRunningTask(boolean z4) {
        List tasks = this.mAtm.getTasks(1, z4);
        if (tasks.isEmpty()) {
            return null;
        }
        return (ActivityManager.RunningTaskInfo) tasks.get(0);
    }

    public ActivityManager.RunningTaskInfo[] getRunningTasks(boolean z4, int i4) {
        List tasks = this.mAtm.getTasks(3, z4, false, i4);
        return (ActivityManager.RunningTaskInfo[]) tasks.toArray(new ActivityManager.RunningTaskInfo[tasks.size()]);
    }

    public boolean startActivityFromRecents(int i4, ActivityOptions activityOptions) {
        Bundle bundle;
        if (activityOptions == null) {
            bundle = null;
        } else {
            try {
                bundle = activityOptions.toBundle();
            } catch (Exception unused) {
                return false;
            }
        }
        return ActivityManager.isStartResultSuccessful(ActivityTaskManager.getService().startActivityFromRecents(i4, bundle));
    }

    public boolean startRecentsActivity(Intent intent, long j4, final RecentsAnimationListener recentsAnimationListener) {
        IRecentsAnimationRunner iRecentsAnimationRunner;
        if (recentsAnimationListener != null) {
            try {
                iRecentsAnimationRunner = new IRecentsAnimationRunner.Stub() { // from class: com.android.systemui.shared.system.ActivityManagerWrapper.2
                    public void onAnimationCanceled(int[] iArr, TaskSnapshot[] taskSnapshotArr) {
                        recentsAnimationListener.onAnimationCanceled(ThumbnailData.wrap(iArr, taskSnapshotArr));
                    }

                    public void onAnimationStart(IRecentsAnimationController iRecentsAnimationController, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, Rect rect, Rect rect2) {
                        recentsAnimationListener.onAnimationStart(new RecentsAnimationControllerCompat(iRecentsAnimationController), remoteAnimationTargetArr, remoteAnimationTargetArr2, rect, rect2);
                    }

                    public void onTasksAppeared(RemoteAnimationTarget[] remoteAnimationTargetArr) {
                        recentsAnimationListener.onTasksAppeared(remoteAnimationTargetArr);
                    }
                };
            } catch (Exception unused) {
                return false;
            }
        } else {
            iRecentsAnimationRunner = null;
        }
        ActivityTaskManager.getService().startRecentsActivity(intent, j4, iRecentsAnimationRunner);
        return true;
    }
}
