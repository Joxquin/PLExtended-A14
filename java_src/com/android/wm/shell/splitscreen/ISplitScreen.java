package com.android.wm.shell.splitscreen;

import android.app.PendingIntent;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.os.Bundle;
import android.os.IInterface;
import android.os.UserHandle;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationTarget;
import android.window.RemoteTransition;
import com.android.internal.logging.InstanceId;
/* loaded from: classes.dex */
public interface ISplitScreen extends IInterface {
    RemoteAnimationTarget[] onGoingToRecentsLegacy(RemoteAnimationTarget[] remoteAnimationTargetArr);

    RemoteAnimationTarget[] onStartingSplitLegacy(RemoteAnimationTarget[] remoteAnimationTargetArr);

    void registerSplitScreenListener(ISplitScreenListener iSplitScreenListener);

    void registerSplitSelectListener(ISplitSelectListener iSplitSelectListener);

    void removeFromSideStage(int i4);

    void startIntent(PendingIntent pendingIntent, int i4, Intent intent, int i5, Bundle bundle, InstanceId instanceId);

    void startIntentAndTask(PendingIntent pendingIntent, int i4, Bundle bundle, int i5, Bundle bundle2, int i6, float f4, RemoteTransition remoteTransition, InstanceId instanceId);

    void startIntentAndTaskWithLegacyTransition(PendingIntent pendingIntent, int i4, Bundle bundle, int i5, Bundle bundle2, int i6, float f4, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId);

    void startIntents(PendingIntent pendingIntent, int i4, ShortcutInfo shortcutInfo, Bundle bundle, PendingIntent pendingIntent2, int i5, ShortcutInfo shortcutInfo2, Bundle bundle2, int i6, float f4, RemoteTransition remoteTransition, InstanceId instanceId);

    void startIntentsWithLegacyTransition(PendingIntent pendingIntent, int i4, ShortcutInfo shortcutInfo, Bundle bundle, PendingIntent pendingIntent2, int i5, ShortcutInfo shortcutInfo2, Bundle bundle2, int i6, float f4, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId);

    void startShortcut(String str, String str2, int i4, Bundle bundle, UserHandle userHandle, InstanceId instanceId);

    void startShortcutAndTask(ShortcutInfo shortcutInfo, Bundle bundle, int i4, Bundle bundle2, int i5, float f4, RemoteTransition remoteTransition, InstanceId instanceId);

    void startShortcutAndTaskWithLegacyTransition(ShortcutInfo shortcutInfo, Bundle bundle, int i4, Bundle bundle2, int i5, float f4, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId);

    void startTasks(int i4, Bundle bundle, int i5, Bundle bundle2, int i6, float f4, RemoteTransition remoteTransition, InstanceId instanceId);

    void startTasksWithLegacyTransition(int i4, Bundle bundle, int i5, Bundle bundle2, int i6, float f4, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId);

    void unregisterSplitScreenListener(ISplitScreenListener iSplitScreenListener);

    void unregisterSplitSelectListener(ISplitSelectListener iSplitSelectListener);
}
