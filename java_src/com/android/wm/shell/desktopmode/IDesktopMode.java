package com.android.wm.shell.desktopmode;

import android.app.ActivityManager;
import android.os.IInterface;
/* loaded from: classes.dex */
public interface IDesktopMode extends IInterface {
    int getVisibleTaskCount(int i4);

    void hideStashedDesktopApps(int i4);

    void onDesktopSplitSelectAnimComplete(ActivityManager.RunningTaskInfo runningTaskInfo);

    void setTaskListener(IDesktopTaskListener iDesktopTaskListener);

    void showDesktopApp(int i4);

    void showDesktopApps(int i4);

    void stashDesktopApps(int i4);
}
