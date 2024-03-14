package com.android.quickstep;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.UserHandle;
import android.util.Log;
import android.view.RemoteAnimationTarget;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.TraceHelper;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import java.util.List;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class TaskUtils {
    private static final String TAG = "TaskUtils";

    private TaskUtils() {
    }

    public static boolean checkCurrentOrManagedUserId(int i4, Context context) {
        if (i4 == UserHandle.myUserId()) {
            return true;
        }
        List userProfiles = ((UserCache) UserCache.INSTANCE.get(context)).getUserProfiles();
        for (int size = userProfiles.size() - 1; size >= 0; size--) {
            if (i4 == ((UserHandle) userProfiles.get(size)).getIdentifier()) {
                return true;
            }
        }
        return false;
    }

    public static void closeSystemWindowsAsync(final String str) {
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.x1
            @Override // java.lang.Runnable
            public final void run() {
                TaskUtils.lambda$closeSystemWindowsAsync$1(str);
            }
        });
    }

    public static ComponentKey getLaunchComponentKeyForTask(Task.TaskKey taskKey) {
        ComponentName componentName = taskKey.sourceComponent;
        if (componentName == null) {
            componentName = taskKey.getComponent();
        }
        return new ComponentKey(componentName, UserHandle.of(taskKey.userId));
    }

    public static CharSequence getTitle(final Context context, final Task task) {
        return (CharSequence) TraceHelper.allowIpcs("TaskUtils.getTitle", new Supplier() { // from class: com.android.quickstep.w1
            @Override // java.util.function.Supplier
            public final Object get() {
                CharSequence lambda$getTitle$0;
                lambda$getTitle$0 = TaskUtils.lambda$getTitle$0(context, task);
                return lambda$getTitle$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$closeSystemWindowsAsync$1(String str) {
        ActivityManagerWrapper.getInstance().closeSystemWindows(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ CharSequence lambda$getTitle$0(Context context, Task task) {
        return getTitle(context, Integer.valueOf(task.key.userId), task.getTopComponent().getPackageName());
    }

    public static boolean taskIsATargetWithMode(RemoteAnimationTarget[] remoteAnimationTargetArr, int i4, int i5) {
        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
            if (remoteAnimationTarget.mode == i5 && remoteAnimationTarget.taskId == i4) {
                return true;
            }
        }
        return false;
    }

    public static CharSequence getTitle(Context context, Integer num, String str) {
        if (num == null || str == null) {
            if (num == null) {
                Log.e(TAG, "Failed to get title; missing userId");
            }
            if (str == null) {
                Log.e(TAG, "Failed to get title; missing packageName");
            }
            return "";
        }
        UserHandle of = UserHandle.of(num.intValue());
        ApplicationInfo applicationInfo = new PackageManagerHelper(context).getApplicationInfo(0, of, str);
        if (applicationInfo == null) {
            Log.e(TAG, "Failed to get title for userId=" + num + ", packageName=" + str);
            return "";
        }
        PackageManager packageManager = context.getPackageManager();
        return packageManager.getUserBadgedLabel(applicationInfo.loadLabel(packageManager), of);
    }
}
