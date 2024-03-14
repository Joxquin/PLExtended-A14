package com.android.launcher3.uioverrides;

import android.app.ActivityOptions;
import android.app.ActivityTaskManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import android.view.View;
import android.widget.RemoteViews;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.ActivityOptionsWrapper;
import com.android.launcher3.util.ObjectWrapper;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
/* loaded from: classes.dex */
final class QuickstepInteractionHandler implements RemoteViews.InteractionHandler {
    private final QuickstepLauncher mLauncher;

    public QuickstepInteractionHandler(QuickstepLauncher quickstepLauncher) {
        this.mLauncher = quickstepLauncher;
    }

    public final boolean onInteraction(View view, PendingIntent pendingIntent, RemoteViews.RemoteResponse remoteResponse) {
        ObjectWrapper objectWrapper;
        LauncherAppWidgetHostView launcherAppWidgetHostView;
        View view2 = view;
        while (true) {
            objectWrapper = null;
            if (view2 == null) {
                launcherAppWidgetHostView = null;
                break;
            } else if (view2 instanceof LauncherAppWidgetHostView) {
                launcherAppWidgetHostView = (LauncherAppWidgetHostView) view2;
                break;
            } else {
                view2 = (View) view2.getParent();
            }
        }
        if (launcherAppWidgetHostView == null) {
            Log.e("QuickstepInteractionHandler", "View did not have a LauncherAppWidgetHostView ancestor.");
            return RemoteViews.startPendingIntent(launcherAppWidgetHostView, pendingIntent, remoteResponse.getLaunchOptions(view));
        } else if (this.mLauncher.getSplitToWorkspaceController().handleSecondWidgetSelectionForSplit(view, pendingIntent)) {
            return true;
        } else {
            Pair launchOptions = remoteResponse.getLaunchOptions(view);
            ActivityOptionsWrapper activityLaunchOptions = this.mLauncher.getAppTransitionManager().getActivityLaunchOptions(launcherAppWidgetHostView);
            Object tag = launcherAppWidgetHostView.getTag();
            boolean z4 = tag instanceof ItemInfo;
            ActivityOptions activityOptions = activityLaunchOptions.options;
            if (z4) {
                this.mLauncher.getClass();
                objectWrapper = QuickstepLauncher.getLaunchCookie((ItemInfo) tag);
                activityOptions.setLaunchCookie(objectWrapper);
            }
            if (Utilities.ATLEAST_S && !pendingIntent.isActivity()) {
                try {
                    ActivityTaskManager.getService().registerRemoteAnimationForNextActivityStart(pendingIntent.getCreatorPackage(), activityOptions.getRemoteAnimationAdapter(), objectWrapper);
                } catch (RemoteException unused) {
                }
            }
            activityOptions.setPendingIntentLaunchFlags(268435456);
            activityOptions.setSplashScreenStyle(0);
            activityOptions.setPendingIntentBackgroundActivityStartMode(1);
            Pair create = Pair.create((Intent) launchOptions.first, activityOptions);
            if (pendingIntent.isActivity()) {
                StatsLogManager.StatsLogger logger = this.mLauncher.getStatsLogManager().logger();
                if (z4) {
                    logger.withItemInfo((ItemInfo) tag);
                }
                logger.log(StatsLogManager.LauncherEvent.LAUNCHER_APP_LAUNCH_TAP);
            }
            return RemoteViews.startPendingIntent(launcherAppWidgetHostView, pendingIntent, create);
        }
    }
}
