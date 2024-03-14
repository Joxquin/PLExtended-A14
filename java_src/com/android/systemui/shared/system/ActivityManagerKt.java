package com.android.systemui.shared.system;

import android.app.ActivityManager;
import android.content.ComponentName;
import java.util.List;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class ActivityManagerKt {
    public static final ActivityManagerKt INSTANCE = new ActivityManagerKt();

    private ActivityManagerKt() {
    }

    public final boolean isInForeground(ActivityManager activityManager, String packageName) {
        h.e(activityManager, "<this>");
        h.e(packageName, "packageName");
        List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
        h.d(runningTasks, "getRunningTasks(1)");
        if (!runningTasks.isEmpty()) {
            ComponentName componentName = runningTasks.get(0).topActivity;
            if (h.a(packageName, componentName != null ? componentName.getPackageName() : null)) {
                return true;
            }
        }
        return false;
    }
}
