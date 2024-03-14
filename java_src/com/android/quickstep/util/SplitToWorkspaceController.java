package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.view.View;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.quickstep.util.SplitToWorkspaceController;
import com.android.quickstep.views.FloatingTaskView;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class SplitToWorkspaceController {
    private final SplitSelectStateController mController;
    private final DeviceProfile mDP;
    private final int mHalfDividerSize;
    private final Launcher mLauncher;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.quickstep.util.SplitToWorkspaceController$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends AnimatorListenerAdapter {
        private boolean mIsCancelled = false;
        final /* synthetic */ FloatingTaskView val$firstFloatingTaskView;
        final /* synthetic */ FloatingTaskView val$secondFloatingTaskView;

        public AnonymousClass1(FloatingTaskView floatingTaskView, FloatingTaskView floatingTaskView2) {
            this.val$firstFloatingTaskView = floatingTaskView;
            this.val$secondFloatingTaskView = floatingTaskView2;
        }

        private void cleanUp() {
            SplitToWorkspaceController.this.mLauncher.getDragLayer().removeView(this.val$firstFloatingTaskView);
            SplitToWorkspaceController.this.mLauncher.getDragLayer().removeView(this.val$secondFloatingTaskView);
            SplitToWorkspaceController.this.mController.getSplitAnimationController().removeSplitInstructionsView(SplitToWorkspaceController.this.mLauncher);
            SplitToWorkspaceController.this.mController.resetState();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0(Boolean bool) {
            cleanUp();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.mIsCancelled = true;
            cleanUp();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.mIsCancelled) {
                return;
            }
            SplitToWorkspaceController.this.mController.launchSplitTasks(new Consumer() { // from class: com.android.quickstep.util.N
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SplitToWorkspaceController.AnonymousClass1.this.lambda$onAnimationEnd$0((Boolean) obj);
                }
            });
            InteractionJankMonitorWrapper.end(49);
        }
    }

    public SplitToWorkspaceController(Launcher launcher, SplitSelectStateController splitSelectStateController) {
        this.mLauncher = launcher;
        this.mDP = launcher.getDeviceProfile();
        this.mController = splitSelectStateController;
        this.mHalfDividerSize = launcher.getResources().getDimensionPixelSize(R.dimen.multi_window_task_divider_size) / 2;
    }

    private boolean shouldIgnoreSecondSplitLaunch() {
        return ((FeatureFlags.ENABLE_SPLIT_FROM_FULLSCREEN_WITH_KEYBOARD_SHORTCUTS.get() || FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get() || FeatureFlags.ENABLE_SPLIT_FROM_DESKTOP_TO_WORKSPACE.get()) && this.mController.isSplitSelectActive()) ? false : true;
    }

    private void startWorkspaceAnimation(View view, Bitmap bitmap, Drawable drawable) {
        PendingAnimation pendingAnimation = new PendingAnimation(AnimUtils.getDeviceSplitToConfirmTimings(this.mLauncher.getDeviceProfile().isTablet).getDuration());
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        RectF rectF = new RectF();
        Rect rect3 = new Rect();
        ((RecentsView) this.mLauncher.getOverviewPanel()).getPagedOrientationHandler().getFinalSplitPlaceholderBounds(this.mHalfDividerSize, this.mDP, this.mController.getActiveSplitStagePosition(), rect2, rect3);
        FloatingTaskView firstFloatingTaskView = this.mController.getFirstFloatingTaskView();
        firstFloatingTaskView.getBoundsOnScreen(rect);
        firstFloatingTaskView.addConfirmAnimation(pendingAnimation, new RectF(rect), rect2, false, true);
        FloatingTaskView floatingTaskView = FloatingTaskView.getFloatingTaskView(this.mLauncher, view, bitmap, drawable, rectF);
        floatingTaskView.setAlpha(1.0f);
        floatingTaskView.addConfirmAnimation(pendingAnimation, rectF, rect3, true, false);
        pendingAnimation.addListener(new AnonymousClass1(firstFloatingTaskView, floatingTaskView));
        pendingAnimation.buildAnim().start();
    }

    public boolean handleSecondAppSelectionForSplit(View view) {
        Intent intent;
        UserHandle userHandle;
        BitmapInfo bitmapInfo;
        if (shouldIgnoreSecondSplitLaunch()) {
            return false;
        }
        Object tag = view.getTag();
        if (tag instanceof WorkspaceItemInfo) {
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) tag;
            intent = workspaceItemInfo.intent;
            userHandle = workspaceItemInfo.user;
            bitmapInfo = workspaceItemInfo.bitmap;
        } else if (!(tag instanceof AppInfo)) {
            return false;
        } else {
            AppInfo appInfo = (AppInfo) tag;
            intent = appInfo.intent;
            userHandle = appInfo.user;
            bitmapInfo = appInfo.bitmap;
        }
        this.mController.setSecondTask(intent, userHandle);
        startWorkspaceAnimation(view, null, bitmapInfo.newIcon(0, this.mLauncher));
        return true;
    }

    public boolean handleSecondWidgetSelectionForSplit(View view, PendingIntent pendingIntent) {
        if (shouldIgnoreSecondSplitLaunch()) {
            return false;
        }
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(createBitmap));
        this.mController.setSecondTask(pendingIntent);
        startWorkspaceAnimation(view, createBitmap, null);
        return true;
    }
}
