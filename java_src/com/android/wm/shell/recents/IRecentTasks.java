package com.android.wm.shell.recents;

import H1.c;
import android.app.ActivityManager;
import android.app.IApplicationThread;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import android.view.IRecentsAnimationRunner;
/* loaded from: classes.dex */
public interface IRecentTasks extends IInterface {
    c[] getRecentTasks(int i4, int i5);

    ActivityManager.RunningTaskInfo[] getRunningTasks(int i4);

    void registerRecentTasksListener(IRecentTasksListener iRecentTasksListener);

    void startRecentsTransition(PendingIntent pendingIntent, Intent intent, Bundle bundle, IApplicationThread iApplicationThread, IRecentsAnimationRunner iRecentsAnimationRunner);

    void unregisterRecentTasksListener(IRecentTasksListener iRecentTasksListener);
}
