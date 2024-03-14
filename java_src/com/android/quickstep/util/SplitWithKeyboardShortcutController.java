package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.ActivityManager;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.SystemClock;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.Executors;
import com.android.quickstep.OverviewComponentObserver;
import com.android.quickstep.RecentsAnimationCallbacks;
import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.RecentsAnimationDeviceState;
import com.android.quickstep.RecentsAnimationTargets;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.util.SplitWithKeyboardShortcutController;
import com.android.quickstep.views.FloatingTaskView;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class SplitWithKeyboardShortcutController {
    private final SplitSelectStateController mController;
    private final QuickstepLauncher mLauncher;
    private final OverviewComponentObserver mOverviewComponentObserver;
    private final int mSplitPlaceholderInset;
    private final int mSplitPlaceholderSize;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class SplitWithKeyboardShortcutRecentsAnimationListener implements RecentsAnimationCallbacks.RecentsAnimationListener {
        private final boolean mLeftOrTop;
        private final Rect mTempRect;

        public /* synthetic */ SplitWithKeyboardShortcutRecentsAnimationListener(SplitWithKeyboardShortcutController splitWithKeyboardShortcutController, boolean z4, int i4) {
            this(z4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onRecentsAnimationStart$0(FloatingTaskView floatingTaskView, Task task) {
            floatingTaskView.setIcon(task.icon);
        }

        @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
        public void onRecentsAnimationStart(final RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
            ActivityManager.RunningTaskInfo runningTask = ActivityManagerWrapper.getInstance().getRunningTask();
            SplitSelectStateController splitSelectStateController = SplitWithKeyboardShortcutController.this.mController;
            boolean z4 = this.mLeftOrTop;
            splitSelectStateController.setInitialTaskSelect(runningTask, !z4 ? 1 : 0, null, z4 ? StatsLogManager.LauncherEvent.LAUNCHER_KEYBOARD_SHORTCUT_SPLIT_LEFT_TOP : StatsLogManager.LauncherEvent.LAUNCHER_KEYBOARD_SHORTCUT_SPLIT_RIGHT_BOTTOM);
            ((RecentsView) SplitWithKeyboardShortcutController.this.mLauncher.getOverviewPanel()).getPagedOrientationHandler().getInitialSplitPlaceholderBounds(SplitWithKeyboardShortcutController.this.mSplitPlaceholderSize, SplitWithKeyboardShortcutController.this.mSplitPlaceholderInset, SplitWithKeyboardShortcutController.this.mLauncher.getDeviceProfile(), SplitWithKeyboardShortcutController.this.mController.getActiveSplitStagePosition(), this.mTempRect);
            PendingAnimation pendingAnimation = new PendingAnimation(SplitAnimationTimings.TABLET_HOME_TO_SPLIT.getDuration());
            RectF rectF = new RectF();
            final FloatingTaskView floatingTaskView = FloatingTaskView.getFloatingTaskView(SplitWithKeyboardShortcutController.this.mLauncher, SplitWithKeyboardShortcutController.this.mLauncher.getDragLayer(), recentsAnimationController.screenshotTask(runningTask.taskId).thumbnail, null, rectF);
            ((RecentsModel) RecentsModel.INSTANCE.get(SplitWithKeyboardShortcutController.this.mLauncher.getApplicationContext())).getIconCache().updateIconInBackground(Task.from(new Task.TaskKey(runningTask), runningTask, false), new Consumer() { // from class: com.android.quickstep.util.Q
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    SplitWithKeyboardShortcutController.SplitWithKeyboardShortcutRecentsAnimationListener.lambda$onRecentsAnimationStart$0(FloatingTaskView.this, (Task) obj);
                }
            });
            floatingTaskView.setAlpha(1.0f);
            floatingTaskView.addStagingAnimation(pendingAnimation, rectF, this.mTempRect, false, true);
            SplitWithKeyboardShortcutController.this.mController.setFirstFloatingTaskView(floatingTaskView);
            pendingAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.SplitWithKeyboardShortcutController.SplitWithKeyboardShortcutRecentsAnimationListener.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    recentsAnimationController.finish(true, null, false);
                }
            });
            pendingAnimation.buildAnim().start();
        }

        private SplitWithKeyboardShortcutRecentsAnimationListener(boolean z4) {
            this.mTempRect = new Rect();
            this.mLeftOrTop = z4;
        }
    }

    public SplitWithKeyboardShortcutController(QuickstepLauncher quickstepLauncher, SplitSelectStateController splitSelectStateController) {
        this.mLauncher = quickstepLauncher;
        this.mController = splitSelectStateController;
        this.mOverviewComponentObserver = new OverviewComponentObserver(quickstepLauncher.getApplicationContext(), new RecentsAnimationDeviceState(quickstepLauncher.getApplicationContext()));
        this.mSplitPlaceholderSize = quickstepLauncher.getResources().getDimensionPixelSize(R.dimen.split_placeholder_size);
        this.mSplitPlaceholderInset = quickstepLauncher.getResources().getDimensionPixelSize(R.dimen.split_placeholder_inset);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enterStageSplit$0(RecentsAnimationCallbacks recentsAnimationCallbacks) {
        ActivityManagerWrapper.getInstance().startRecentsActivity(this.mOverviewComponentObserver.getOverviewIntent(), SystemClock.uptimeMillis(), recentsAnimationCallbacks, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enterStageSplit$1(final RecentsAnimationCallbacks recentsAnimationCallbacks, SplitWithKeyboardShortcutRecentsAnimationListener splitWithKeyboardShortcutRecentsAnimationListener) {
        recentsAnimationCallbacks.addListener(splitWithKeyboardShortcutRecentsAnimationListener);
        Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.P
            @Override // java.lang.Runnable
            public final void run() {
                SplitWithKeyboardShortcutController.this.lambda$enterStageSplit$0(recentsAnimationCallbacks);
            }
        });
    }

    public void enterStageSplit(boolean z4) {
        if (FeatureFlags.ENABLE_SPLIT_FROM_FULLSCREEN_WITH_KEYBOARD_SHORTCUTS.get()) {
            final RecentsAnimationCallbacks recentsAnimationCallbacks = new RecentsAnimationCallbacks((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher.getApplicationContext()), false);
            final SplitWithKeyboardShortcutRecentsAnimationListener splitWithKeyboardShortcutRecentsAnimationListener = new SplitWithKeyboardShortcutRecentsAnimationListener(this, z4, 0);
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.util.O
                @Override // java.lang.Runnable
                public final void run() {
                    SplitWithKeyboardShortcutController.this.lambda$enterStageSplit$1(recentsAnimationCallbacks, splitWithKeyboardShortcutRecentsAnimationListener);
                }
            });
        }
    }

    public void onDestroy() {
        this.mOverviewComponentObserver.onDestroy();
    }
}
