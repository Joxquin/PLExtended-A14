package com.android.launcher3.taskbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.app.RemoteAction;
import android.content.SharedPreferences;
import android.graphics.drawable.Icon;
import android.os.SystemClock;
import android.util.Log;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import com.android.internal.jank.InteractionJankMonitor;
import com.android.launcher3.Alarm;
import com.android.launcher3.C0339g;
import com.android.launcher3.C0410q;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.bubbles.BubbleControllers;
import com.android.launcher3.taskbar.bubbles.BubbleStashController;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.FlagDebugUtils;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.util.WorkspaceRevealAnim;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
import java.util.StringJoiner;
import java.util.function.Consumer;
import java.util.function.IntPredicate;
import y0.animation.InterpolatorC1488a;
/* loaded from: classes.dex */
public final class TaskbarStashController implements TaskbarControllers.LoggableTaskbarController {
    private final AccessibilityManager mAccessibilityManager;
    private final TaskbarActivityContext mActivity;
    private AnimatorSet mAnimator;
    private TaskbarControllers mControllers;
    private MultiPropertyFactory.MultiProperty mIconAlphaForStash;
    private AnimatedFloat mIconScaleForStash;
    private AnimatedFloat mIconTranslationYForStash;
    private boolean mIsImeShowing;
    private boolean mIsImeSwitcherShowing;
    private final I0 mIsStashedPredicate;
    private boolean mIsSystemGestureInProgress;
    private boolean mIsTaskbarSystemActionRegistered;
    private final SharedPreferences mPrefs;
    private final int mStashedHeight;
    private int mState;
    private final StatePropertyHolder mStatePropertyHolder;
    private final SystemUiProxy mSystemUiProxy;
    private MultiPropertyFactory.MultiProperty mTaskbarBackgroundAlphaForStash;
    private AnimatedFloat mTaskbarBackgroundOffset;
    private AnimatedFloat mTaskbarImeBgAlpha;
    private TaskbarSharedState mTaskbarSharedState;
    private MultiPropertyFactory.MultiProperty mTaskbarStashedHandleAlpha;
    private AnimatedFloat mTaskbarStashedHandleHintScale;
    private final int mUnstashedHeight;
    private boolean mIsStashed = false;
    private boolean mEnableManualStashingDuringTests = false;
    private final Alarm mTimeoutAlarm = new Alarm();
    private boolean mEnableBlockingTimeoutDuringTests = false;

    /* loaded from: classes.dex */
    public final class StatePropertyHolder {
        private boolean mIsStashed;
        private int mLastStartedTransitionType = 0;
        private long mLastUnlockTransitionTimeout = 0;
        private int mPrevFlags;
        private final IntPredicate mStashCondition;

        public StatePropertyHolder(I0 i02) {
            TaskbarStashController.this = r3;
            this.mStashCondition = i02;
        }

        public final Animator createSetStateAnimator(int i4, long j4) {
            boolean test = this.mStashCondition.test(i4);
            int i5 = this.mPrevFlags;
            int i6 = i5 ^ i4;
            TaskbarStashController taskbarStashController = TaskbarStashController.this;
            if (i5 != i4) {
                TaskbarStashController.t(taskbarStashController, i6);
                this.mPrevFlags = i4;
            }
            boolean z4 = false;
            if (TaskbarStashController.r(taskbarStashController, i6, 2048) && !taskbarStashController.hasAnyFlag(2048)) {
                this.mLastUnlockTransitionTimeout = SystemClock.elapsedRealtime() + 200;
            }
            int i7 = 2;
            if (!(!taskbarStashController.mControllers.uiController.isHotseatIconOnTopWhenAligned() && TaskbarStashController.r(taskbarStashController, i6, 1))) {
                if (!(SystemClock.elapsedRealtime() < this.mLastUnlockTransitionTimeout)) {
                    i7 = TaskbarStashController.r(taskbarStashController, i6, 1) && taskbarStashController.hasAnyFlag(1) ? 1 : 0;
                }
            }
            boolean z5 = taskbarStashController.mAnimator != null && taskbarStashController.mAnimator.isStarted() && this.mLastStartedTransitionType == 0 && i7 != 0;
            if (!z5 || this.mIsStashed || test || i7 != 1) {
                z4 = z5;
            }
            if (this.mIsStashed != test || z4) {
                this.mIsStashed = test;
                this.mLastStartedTransitionType = i7;
                taskbarStashController.createAnimToIsStashed(i7, j4, test);
                return taskbarStashController.mAnimator;
            }
            return null;
        }
    }

    public TaskbarStashController(TaskbarActivityContext taskbarActivityContext) {
        I0 i02 = new I0(this);
        this.mIsStashedPredicate = i02;
        this.mStatePropertyHolder = new StatePropertyHolder(i02);
        this.mIsTaskbarSystemActionRegistered = false;
        this.mActivity = taskbarActivityContext;
        this.mPrefs = LauncherPrefs.getPrefs(taskbarActivityContext);
        this.mSystemUiProxy = (SystemUiProxy) SystemUiProxy.INSTANCE.get(taskbarActivityContext);
        this.mAccessibilityManager = (AccessibilityManager) taskbarActivityContext.getSystemService(AccessibilityManager.class);
        this.mUnstashedHeight = taskbarActivityContext.getDeviceProfile().taskbarHeight;
        this.mStashedHeight = taskbarActivityContext.getDeviceProfile().stashedTaskbarHeight;
    }

    public static /* synthetic */ void a(TaskbarStashController taskbarStashController, boolean z4, BubbleControllers bubbleControllers) {
        if (!z4) {
            taskbarStashController.getClass();
            return;
        }
        boolean test = taskbarStashController.mIsStashedPredicate.test(taskbarStashController.mState);
        if (test != bubbleControllers.bubbleStashController.isStashed()) {
            BubbleStashController bubbleStashController = bubbleControllers.bubbleStashController;
            if (test) {
                bubbleStashController.stashBubbleBar();
            } else {
                bubbleStashController.showBubbleBar(false);
            }
        }
    }

    public static /* synthetic */ void b(TaskbarStashController taskbarStashController, boolean z4) {
        AccessibilityManager accessibilityManager = taskbarStashController.mAccessibilityManager;
        if (z4) {
            TaskbarActivityContext taskbarActivityContext = taskbarStashController.mActivity;
            if (DisplayController.isTransientTaskbar(taskbarActivityContext)) {
                if (taskbarStashController.mIsTaskbarSystemActionRegistered) {
                    return;
                }
                accessibilityManager.registerSystemAction(new RemoteAction(Icon.createWithResource(taskbarActivityContext, (int) R.drawable.ic_info_no_shadow), taskbarActivityContext.getString(R.string.taskbar_a11y_title), taskbarActivityContext.getString(R.string.taskbar_a11y_title), taskbarStashController.mTaskbarSharedState.taskbarSystemActionPendingIntent), 499);
                taskbarStashController.mIsTaskbarSystemActionRegistered = true;
                return;
            }
        }
        accessibilityManager.unregisterSystemAction(499);
        taskbarStashController.mIsTaskbarSystemActionRegistered = false;
    }

    public static void c(TaskbarStashController taskbarStashController) {
        if (taskbarStashController.mControllers.taskbarAutohideSuspendController.isTransientTaskbarStashingSuspended()) {
            return;
        }
        taskbarStashController.updateAndAnimateTransientTaskbar(true, !(taskbarStashController.mControllers.bubbleControllers.isPresent() && ((BubbleControllers) taskbarStashController.mControllers.bubbleControllers.get()).bubbleBarViewController.isExpanded()));
    }

    public void createAnimToIsStashed(int i4, final long j4, final boolean z4) {
        float f4;
        long j5;
        long j6;
        long j7;
        AnimatorSet animatorSet;
        float f5;
        long j8;
        long j9;
        if (i4 == 3 && z4) {
            Log.e("TaskbarStashController", "Illegal arguments:Using TRANSITION_UNSTASH_SUW_MANUAL to stash taskbar");
        }
        AnimatorSet animatorSet2 = this.mAnimator;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.mAnimator = animatorSet3;
        boolean z5 = !this.mIsStashed;
        final TaskbarDragLayer dragLayer = this.mControllers.taskbarActivityContext.getDragLayer();
        final int i5 = z5 ? 60 : 61;
        animatorSet3.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.TaskbarStashController.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                InteractionJankMonitor.getInstance().end(i5);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                InteractionJankMonitor.getInstance().begin(dragLayer, i5);
            }
        });
        boolean isTransientTaskbar = DisplayController.isTransientTaskbar(this.mActivity);
        float f6 = (isPhoneMode() || isTransientTaskbar) ? 0.0f : this.mUnstashedHeight - this.mStashedHeight;
        if (!supportsVisualStashing()) {
            this.mAnimator.play(this.mIconAlphaForStash.animateToValue(z4 ? 0.0f : 1.0f).setDuration(j4));
            AnimatorSet animatorSet4 = this.mAnimator;
            Animator[] animatorArr = new Animator[1];
            animatorArr[0] = this.mTaskbarBackgroundOffset.animateToValue(z4 ? 1.0f : 0.0f).setDuration(j4);
            animatorSet4.playTogether(animatorArr);
            AnimatorSet animatorSet5 = this.mAnimator;
            Animator[] animatorArr2 = new Animator[1];
            AnimatedFloat animatedFloat = this.mIconTranslationYForStash;
            if (!z4) {
                f6 = 0.0f;
            }
            animatorArr2[0] = animatedFloat.animateToValue(f6).setDuration(j4);
            animatorSet5.playTogether(animatorArr2);
            this.mAnimator.play(this.mTaskbarImeBgAlpha.animateToValue(hasAnyFlag(16) ? 0.0f : 1.0f).setDuration(j4));
            this.mAnimator.addListener(AnimatorListeners.forEndCallback(new G0(this, z4, 1)));
            return;
        }
        if (isTransientTaskbar) {
            AnimatorSet animatorSet6 = this.mAnimator;
            final float f7 = z4 ? 1.0f : 0.0f;
            float f8 = z4 ? 0.0f : 1.0f;
            float f9 = z4 ? 1.0f : 0.0f;
            float f10 = z4 ? 0.0f : 1.0f;
            long j10 = 0;
            if (j4 > 0) {
                if (i4 == 2) {
                    j9 = j4;
                    j8 = 0;
                } else {
                    if (z4) {
                        j8 = i4 == 1 ? 66L : 33L;
                        j5 = Math.max(0L, j4 - j8);
                        j7 = 50;
                        j10 = j8;
                        j6 = j10;
                    } else {
                        j9 = 50;
                    }
                }
                j7 = j9;
                j5 = 50;
                j6 = j8;
            } else {
                j5 = 0;
                j6 = 0;
                j7 = 0;
            }
            Animator animateToValue = this.mTaskbarStashedHandleAlpha.animateToValue(f9);
            Interpolator interpolator = y0.e.f12949m;
            long j11 = j10;
            long j12 = j5;
            play(animatorSet6, animateToValue, j11, j12, interpolator);
            play(animatorSet6, this.mTaskbarBackgroundAlphaForStash.animateToValue(f10), j11, j12, interpolator);
            if (i4 == 2) {
                AnimatorSet animatorSet7 = new AnimatorSet();
                animatorSet6.play(animatorSet7);
                animatorSet7.setInterpolator(z4 ? y0.e.f12941e : y0.e.f12942f);
                animatorSet = animatorSet7;
            } else {
                animatorSet = animatorSet6;
            }
            if (i4 != 3) {
                f5 = f8;
                play(animatorSet, this.mTaskbarBackgroundOffset.animateToValue(f7), 0L, j4, y0.e.f12937a);
            } else {
                f5 = f8;
                animatorSet.addListener(AnimatorListeners.forEndCallback(new Runnable() { // from class: com.android.launcher3.taskbar.J0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TaskbarStashController.this.mTaskbarBackgroundOffset.updateValue(f7);
                    }
                }));
            }
            play(animatorSet, this.mIconAlphaForStash.animateToValue(f5), j6, j7, interpolator);
            if (z4) {
                play(animatorSet, this.mControllers.taskbarSpringOnStashController.createSpringToStash(), 0L, j4, interpolator);
            } else {
                play(animatorSet, this.mControllers.taskbarSpringOnStashController.createResetAnimForUnstash(), 0L, j4, interpolator);
            }
            TaskbarViewController taskbarViewController = this.mControllers.taskbarViewController;
            Interpolator interpolator2 = y0.e.f12937a;
            taskbarViewController.addRevealAnimToIsStashed(animatorSet, z4, j4, interpolator2, i4 == 3);
            play(animatorSet, this.mControllers.stashedHandleViewController.createRevealAnimToIsStashed(z4), 0L, j4, interpolator2);
            animatorSet.play(this.mTaskbarStashedHandleHintScale.animateToValue(1.0f).setDuration(z4 ? j4 / 2 : j4));
        } else {
            AnimatorSet animatorSet8 = this.mAnimator;
            AnimatorSet animatorSet9 = new AnimatorSet();
            AnimatorSet animatorSet10 = new AnimatorSet();
            AnimatorSet animatorSet11 = new AnimatorSet();
            float f11 = 0.5f;
            if (z4) {
                animatorSet9.play(this.mIconTranslationYForStash.animateToValue(f6));
                animatorSet9.play(this.mTaskbarBackgroundOffset.animateToValue(1.0f));
                Animator[] animatorArr3 = new Animator[2];
                animatorArr3[0] = this.mIconAlphaForStash.animateToValue(0.0f);
                animatorArr3[1] = this.mIconScaleForStash.animateToValue(isPhoneMode() ? 0.0f : 0.5f);
                animatorSet10.playTogether(animatorArr3);
                animatorSet11.playTogether(this.mTaskbarStashedHandleAlpha.animateToValue(1.0f));
                if (i4 == 2) {
                    animation.InterpolatorC1488a animation_interpolatorc1488a = y0.e.f12941e;
                    animatorSet9.setInterpolator(animation_interpolatorc1488a);
                    animatorSet10.setInterpolator(animation_interpolatorc1488a);
                }
                f4 = 0.75f;
            } else {
                animatorSet9.playTogether(this.mIconScaleForStash.animateToValue(1.0f), this.mIconTranslationYForStash.animateToValue(0.0f));
                if (i4 != 3) {
                    animatorSet9.play(this.mTaskbarBackgroundOffset.animateToValue(0.0f));
                } else {
                    animatorSet9.addListener(AnimatorListeners.forEndCallback(new H0(this, 2)));
                }
                animatorSet10.playTogether(this.mTaskbarStashedHandleAlpha.animateToValue(0.0f));
                animatorSet11.playTogether(this.mIconAlphaForStash.animateToValue(1.0f));
                if (i4 == 2) {
                    animation.InterpolatorC1488a animation_interpolatorc1488a2 = y0.e.f12942f;
                    animatorSet9.setInterpolator(animation_interpolatorc1488a2);
                    animatorSet11.setInterpolator(animation_interpolatorc1488a2);
                }
                f4 = 0.5f;
                f11 = 0.75f;
            }
            animatorSet9.play(this.mControllers.stashedHandleViewController.createRevealAnimToIsStashed(z4));
            animatorSet9.play(this.mTaskbarStashedHandleHintScale.animateToValue(1.0f));
            animatorSet9.setDuration(j4);
            float f12 = (float) j4;
            animatorSet10.setDuration(f4 * f12);
            animatorSet11.setDuration(f12 * f11);
            animatorSet11.setStartDelay((1.0f - f11) * f12);
            animatorSet8.playTogether(animatorSet9, animatorSet10, animatorSet11);
        }
        this.mAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.TaskbarStashController.1
            {
                TaskbarStashController.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                TaskbarStashController.this.mAnimator = null;
                if (!TaskbarStashController.this.mIsStashed) {
                    TaskbarStashController.this.tryStartTaskbarTimeout();
                }
                if (j4 <= 0 || !TaskbarStashController.this.isInApp()) {
                    return;
                }
                TaskbarStashController.this.mControllers.taskbarViewController.announceForAccessibility$1();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                TaskbarStashController.this.mIsStashed = z4;
                TaskbarStashController taskbarStashController = TaskbarStashController.this;
                TaskbarStashController.s(taskbarStashController, taskbarStashController.mIsStashed);
                TaskbarStashController.this.cancelTimeoutIfExists();
            }
        });
    }

    public static /* synthetic */ void e(TaskbarStashController taskbarStashController) {
        taskbarStashController.mControllers.taskbarViewController.setDeferUpdatesForSUW(false);
    }

    public static /* synthetic */ void f(TaskbarStashController taskbarStashController, boolean z4) {
        taskbarStashController.mAnimator = null;
        taskbarStashController.mIsStashed = z4;
    }

    public static /* synthetic */ void g(TaskbarStashController taskbarStashController, boolean z4) {
        taskbarStashController.mControllers.stashedHandleViewController.onIsStashedChanged(z4);
        taskbarStashController.mControllers.taskbarInsetsController.onTaskbarOrBubblebarWindowHeightOrInsetsChanged();
    }

    private static String getStateString(int i4) {
        StringJoiner stringJoiner = new StringJoiner("|");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 129, "FLAG_IN_APP");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 2, "FLAG_STASHED_IN_APP_MANUAL");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 4, "FLAG_STASHED_IN_APP_SYSUI");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 8, "FLAG_STASHED_IN_APP_SETUP");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 16, "FLAG_STASHED_IN_APP_IME");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 32, "FLAG_IN_STASHED_LAUNCHER_STATE");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 64, "FLAG_STASHED_IN_TASKBAR_ALL_APPS");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 128, "FLAG_IN_SETUP");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 512, "FLAG_STASHED_IN_APP_AUTO");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 1024, "FLAG_STASHED_SYSUI");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 2048, "FLAG_STASHED_DEVICE_LOCKED");
        return stringJoiner.toString();
    }

    public static /* synthetic */ boolean h(TaskbarStashController taskbarStashController, int i4) {
        taskbarStashController.getClass();
        boolean hasAnyFlag = hasAnyFlag(i4, 129);
        return (hasAnyFlag && hasAnyFlag(i4, 862)) || (!hasAnyFlag && hasAnyFlag(i4, 32)) || hasAnyFlag(i4, 3392);
    }

    private static boolean hasAnyFlag(int i4, int i5) {
        return (i4 & i5) != 0;
    }

    public static /* synthetic */ void i(TaskbarStashController taskbarStashController) {
        taskbarStashController.mTaskbarBackgroundOffset.updateValue(0.0f);
    }

    private boolean isPhoneMode() {
        return TaskbarManager.isPhoneMode(this.mActivity.getDeviceProfile());
    }

    public static /* synthetic */ void j(TaskbarStashController taskbarStashController) {
        taskbarStashController.mAccessibilityManager.unregisterSystemAction(499);
    }

    private static void play(AnimatorSet animatorSet, Animator animator, long j4, long j5, Interpolator interpolator) {
        if (animator == null) {
            return;
        }
        animator.setDuration(j5);
        animator.setStartDelay(j4);
        animator.setInterpolator(interpolator);
        animatorSet.play(animator);
    }

    public static /* bridge */ /* synthetic */ boolean r(TaskbarStashController taskbarStashController, int i4, int i5) {
        taskbarStashController.getClass();
        return hasAnyFlag(i4, i5);
    }

    public static void s(TaskbarStashController taskbarStashController, boolean z4) {
        taskbarStashController.mControllers.runAfterInit(new G0(taskbarStashController, z4, 2));
    }

    private boolean shouldStashForIme() {
        TaskbarActivityContext taskbarActivityContext = this.mActivity;
        if (DisplayController.isTransientTaskbar(taskbarActivityContext)) {
            return false;
        }
        if (this.mIsImeShowing || this.mIsImeSwitcherShowing) {
            return (isPhoneMode() && taskbarActivityContext.isThreeButtonNav() && taskbarActivityContext.getDeviceProfile().isLandscape) ? false : true;
        }
        return false;
    }

    public static void t(TaskbarStashController taskbarStashController, int i4) {
        taskbarStashController.getClass();
        if (hasAnyFlag(i4, 862)) {
            taskbarStashController.mControllers.uiController.onStashedInAppChanged();
        }
        if (hasAnyFlag(i4, 991)) {
            boolean hasAnyFlag = taskbarStashController.hasAnyFlag(129);
            boolean isStashedInApp = taskbarStashController.isStashedInApp();
            taskbarStashController.mSystemUiProxy.notifyTaskbarStatus(hasAnyFlag, isStashedInApp);
            Executors.UI_HELPER_EXECUTOR.execute(new G0(taskbarStashController, hasAnyFlag, 0));
            taskbarStashController.mControllers.rotationButtonController.onTaskbarStateChange(hasAnyFlag, isStashedInApp);
            taskbarStashController.mControllers.taskbarAutohideSuspendController.updateFlag(16, !taskbarStashController.isInApp());
        }
        boolean hasAnyFlag2 = hasAnyFlag(i4, 2);
        TaskbarActivityContext taskbarActivityContext = taskbarStashController.mActivity;
        if (hasAnyFlag2) {
            if (taskbarStashController.hasAnyFlag(2)) {
                taskbarActivityContext.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_TASKBAR_LONGPRESS_HIDE);
            } else {
                taskbarActivityContext.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_TASKBAR_LONGPRESS_SHOW);
            }
        }
        if (hasAnyFlag(i4, 512)) {
            taskbarActivityContext.getStatsLogManager().logger().log(taskbarStashController.hasAnyFlag(512) ? StatsLogManager.LauncherEvent.LAUNCHER_TRANSIENT_TASKBAR_HIDE : StatsLogManager.LauncherEvent.LAUNCHER_TRANSIENT_TASKBAR_SHOW);
            taskbarStashController.mControllers.taskbarAutohideSuspendController.updateFlag(32, !taskbarStashController.hasAnyFlag(512));
        }
        taskbarActivityContext.applyForciblyShownFlagWhileTransientTaskbarUnstashed(!taskbarStashController.isStashedInApp());
    }

    public final void addUnstashToHotseatAnimation(AnimatorSet animatorSet) {
        this.mControllers.taskbarViewController.setDeferUpdatesForSUW(true);
        createAnimToIsStashed(3, (long) WorkspaceRevealAnim.DURATION_MS, false);
        animatorSet.addListener(AnimatorListeners.forEndCallback(new H0(this, 1)));
        animatorSet.play(this.mAnimator);
    }

    public final void applyState() {
        applyState(hasAnyFlag(128) ? 0L : 300L);
    }

    public final void cancelTimeoutIfExists() {
        Alarm alarm = this.mTimeoutAlarm;
        if (alarm.alarmPending()) {
            alarm.cancelAlarm();
        }
    }

    public final Animator createApplyStateAnimator(long j4) {
        return this.mStatePropertyHolder.createSetStateAnimator(this.mState, j4);
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarStashController:");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmStashedHeight=");
        StringBuilder c4 = C0410q.c(C0339g.a(C0339g.a(sb, this.mStashedHeight, printWriter, str, "\tmUnstashedHeight="), this.mUnstashedHeight, printWriter, str, "\tmIsStashed="), this.mIsStashed, printWriter, str, "\tappliedState=");
        c4.append(getStateString(this.mStatePropertyHolder.mPrevFlags));
        printWriter.println(c4.toString());
        printWriter.println(str + "\tmState=" + getStateString(this.mState));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("\tmIsSystemGestureInProgress=");
        StringBuilder c5 = C0410q.c(C0410q.c(sb2, this.mIsSystemGestureInProgress, printWriter, str, "\tmIsImeShowing="), this.mIsImeShowing, printWriter, str, "\tmIsImeSwitcherShowing=");
        c5.append(this.mIsImeSwitcherShowing);
        printWriter.println(c5.toString());
    }

    public void enableBlockingTimeoutDuringTests(boolean z4) {
        this.mEnableBlockingTimeoutDuringTests = z4;
    }

    public void enableManualStashingDuringTests(boolean z4) {
        this.mEnableManualStashingDuringTests = z4;
    }

    public final int getContentHeightToReportToApps() {
        boolean isPhoneMode = isPhoneMode();
        int i4 = this.mStashedHeight;
        TaskbarActivityContext taskbarActivityContext = this.mActivity;
        if ((!isPhoneMode || taskbarActivityContext.isThreeButtonNav()) && !DisplayController.isTransientTaskbar(taskbarActivityContext)) {
            if (supportsVisualStashing() && hasAnyFlag(778)) {
                DeviceProfile deviceProfile = taskbarActivityContext.getDeviceProfile();
                if (hasAnyFlag(8) && deviceProfile.isTaskbarPresent) {
                    return taskbarActivityContext.getResources().getDimensionPixelSize(R.dimen.taskbar_suw_insets);
                }
                AnimatorSet animatorSet = this.mAnimator;
                boolean z4 = animatorSet != null && animatorSet.isStarted();
                if (this.mControllers.stashedHandleViewController.isStashedHandleVisible() || !isInApp() || z4) {
                    return i4;
                }
                return 0;
            }
            return this.mUnstashedHeight;
        }
        return i4;
    }

    public final long getStashDuration() {
        return DisplayController.isTransientTaskbar(this.mActivity) ? 417L : 300L;
    }

    public final int getStashedHeight() {
        return this.mStashedHeight;
    }

    public final int getTappableHeightToReportToApps() {
        int contentHeightToReportToApps = getContentHeightToReportToApps();
        if (contentHeightToReportToApps <= this.mStashedHeight) {
            return 0;
        }
        return contentHeightToReportToApps;
    }

    public final int getTouchableHeight() {
        if (this.mIsStashed) {
            return this.mStashedHeight;
        }
        return this.mUnstashedHeight + this.mActivity.getDeviceProfile().taskbarBottomMargin;
    }

    public final void init(TaskbarControllers taskbarControllers, boolean z4, TaskbarSharedState taskbarSharedState) {
        this.mControllers = taskbarControllers;
        this.mTaskbarSharedState = taskbarSharedState;
        TaskbarDragLayerController taskbarDragLayerController = taskbarControllers.taskbarDragLayerController;
        this.mTaskbarBackgroundOffset = taskbarDragLayerController.getTaskbarBackgroundOffset();
        this.mTaskbarImeBgAlpha = taskbarDragLayerController.getImeBgTaskbar();
        this.mTaskbarBackgroundAlphaForStash = taskbarDragLayerController.getBackgroundRendererAlphaForStash();
        TaskbarViewController taskbarViewController = taskbarControllers.taskbarViewController;
        this.mIconAlphaForStash = taskbarViewController.getTaskbarIconAlpha().get(2);
        this.mIconScaleForStash = taskbarViewController.getTaskbarIconScaleForStash();
        this.mIconTranslationYForStash = taskbarViewController.getTaskbarIconTranslationYForStash();
        StashedHandleViewController stashedHandleViewController = taskbarControllers.stashedHandleViewController;
        this.mTaskbarStashedHandleAlpha = stashedHandleViewController.getStashedHandleAlpha().get(0);
        this.mTaskbarStashedHandleHintScale = stashedHandleViewController.getStashedHandleHintScale();
        TaskbarActivityContext taskbarActivityContext = this.mActivity;
        boolean isTransientTaskbar = DisplayController.isTransientTaskbar(taskbarActivityContext);
        boolean z5 = supportsVisualStashing() && !isTransientTaskbar && !FeatureFlags.ENABLE_TASKBAR_PINNING.get() && this.mPrefs.getBoolean("taskbar_is_stashed", false);
        boolean z6 = !taskbarActivityContext.isUserSetupComplete() || z4;
        updateStateForFlag(2, z5);
        updateStateForFlag(512, isTransientTaskbar);
        updateStateForFlag(8, z6);
        updateStateForFlag(128, z6);
        updateStateForFlag(256, isPhoneMode() && !taskbarActivityContext.isThreeButtonNav());
        updateStateForFlag(1, true);
        applyState(0L);
        boolean isStashedInApp = isStashedInApp();
        this.mSystemUiProxy.notifyTaskbarStatus(false, isStashedInApp);
        Executors.UI_HELPER_EXECUTOR.execute(new G0(this, false, 0));
        this.mControllers.rotationButtonController.onTaskbarStateChange(false, isStashedInApp);
    }

    public final boolean isInApp() {
        return hasAnyFlag(129);
    }

    public final boolean isInStashedLauncherState() {
        return hasAnyFlag(32) && supportsVisualStashing();
    }

    public final boolean isStashed() {
        return this.mIsStashed;
    }

    public final boolean isStashedInApp() {
        return hasAnyFlag(862);
    }

    public final boolean isTaskbarVisibleAndNotStashing() {
        return !this.mIsStashed && this.mControllers.taskbarViewController.areIconsVisible();
    }

    public final boolean onLongPressToUnstashTaskbar() {
        if (this.mIsStashed) {
            if (((this.mState & 863) == 3) && updateAndAnimateIsManuallyStashedInApp(false)) {
                this.mControllers.taskbarActivityContext.getDragLayer().performHapticFeedback(0);
                return true;
            }
            return false;
        }
        return false;
    }

    public final void setSetupUIVisible(boolean z4) {
        boolean z5 = z4 || !this.mActivity.isUserSetupComplete();
        updateStateForFlag(128, z5);
        updateStateForFlag(8, z5);
        applyState(z5 ? 0L : getStashDuration());
    }

    public final void setSystemGestureInProgress(boolean z4) {
        this.mIsSystemGestureInProgress = z4;
        if (z4) {
            return;
        }
        boolean shouldStashForIme = shouldStashForIme();
        updateStateForFlag(64, false);
        if (hasAnyFlag(16) == shouldStashForIme) {
            applyState(this.mControllers.taskbarOverlayController.getCloseDuration());
            return;
        }
        updateStateForFlag(16, shouldStashForIme);
        long integer = this.mIsImeShowing ? 0L : this.mControllers.taskbarActivityContext.getResources().getInteger(17694720) - 80;
        Animator createApplyStateAnimator = createApplyStateAnimator(80L);
        if (createApplyStateAnimator != null) {
            createApplyStateAnimator.setStartDelay(integer);
            createApplyStateAnimator.start();
        }
    }

    public final void showTaskbarFromBroadcast() {
        if (this.mControllers.taskbarEduTooltipController.isBeforeTooltipFeaturesStep()) {
            this.mControllers.taskbarEduTooltipController.hide$2();
            this.mControllers.taskbarEduTooltipController.maybeShowFeaturesEdu();
        }
        updateAndAnimateTransientTaskbar(false, true);
    }

    public final void startStashHint(boolean z4) {
        if (this.mIsStashed || !supportsManualStashing()) {
            return;
        }
        this.mIconScaleForStash.animateToValue(z4 ? 0.9f : 1.0f).setDuration(400L).start();
    }

    public final void startUnstashHint(boolean z4, boolean z5) {
        if (this.mIsStashed) {
            if (((this.mState & 863) == 3) || z5) {
                this.mTaskbarStashedHandleHintScale.animateToValue(z4 ? 1.1f : 1.0f).setDuration(400L).start();
            }
        }
    }

    public final boolean supportsManualStashing() {
        if (!(FeatureFlags.ENABLE_TASKBAR_PINNING.get() && this.mPrefs.getBoolean("TASKBAR_PINNING_KEY", false)) && supportsVisualStashing() && isInApp()) {
            return (!Utilities.isRunningInTestHarness() || this.mEnableManualStashingDuringTests) && !DisplayController.isTransientTaskbar(this.mActivity);
        }
        return false;
    }

    public final boolean supportsVisualStashing() {
        if (!this.mActivity.isThreeButtonNav()) {
            TaskbarUIController taskbarUIController = this.mControllers.uiController;
            taskbarUIController.getClass();
            if (!(taskbarUIController instanceof DesktopTaskbarUIController)) {
                return true;
            }
        }
        return false;
    }

    public final void toggleTaskbarStash() {
        if (DisplayController.isTransientTaskbar(this.mActivity) && hasAnyFlag(129)) {
            updateAndAnimateTransientTaskbar(!hasAnyFlag(512), true);
        }
    }

    public final void tryStartTaskbarTimeout() {
        if (!DisplayController.isTransientTaskbar(this.mActivity) || this.mIsStashed || this.mEnableBlockingTimeoutDuringTests) {
            return;
        }
        cancelTimeoutIfExists();
        OnAlarmListener onAlarmListener = new OnAlarmListener() { // from class: com.android.launcher3.taskbar.F0
            @Override // com.android.launcher3.OnAlarmListener
            public final void onAlarm(Alarm alarm) {
                TaskbarStashController.c(TaskbarStashController.this);
            }
        };
        Alarm alarm = this.mTimeoutAlarm;
        alarm.setOnAlarmListener(onAlarmListener);
        alarm.setAlarm(this.mAccessibilityManager.getRecommendedTimeoutMillis(5000, 4));
    }

    public final boolean updateAndAnimateIsManuallyStashedInApp(boolean z4) {
        if (supportsManualStashing() && hasAnyFlag(2) != z4) {
            this.mPrefs.edit().putBoolean("taskbar_is_stashed", z4).apply();
            updateStateForFlag(2, z4);
            applyState();
            return true;
        }
        return false;
    }

    public final void updateAndAnimateTransientTaskbar(boolean z4, final boolean z5) {
        if (DisplayController.isTransientTaskbar(this.mActivity)) {
            if (z4 && !this.mControllers.taskbarAutohideSuspendController.isSuspendedForTransientTaskbarInLauncher() && this.mControllers.taskbarAutohideSuspendController.isTransientTaskbarStashingSuspended()) {
                return;
            }
            if (hasAnyFlag(512) != z4) {
                updateStateForFlag(512, z4);
                applyState();
            }
            this.mControllers.bubbleControllers.ifPresent(new Consumer() { // from class: com.android.launcher3.taskbar.E0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TaskbarStashController.a(TaskbarStashController.this, z5, (BubbleControllers) obj);
                }
            });
        }
    }

    public final void updateStateForFlag(int i4, boolean z4) {
        if (z4) {
            this.mState = i4 | this.mState;
            return;
        }
        this.mState = (~i4) & this.mState;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateStateForSysuiFlags(int r7, boolean r8) {
        /*
            r6 = this;
            r0 = 1073741824(0x40000000, float:2.0)
            boolean r0 = hasAnyFlag(r7, r0)
            r1 = 4
            r6.updateStateForFlag(r1, r0)
            r0 = 1
            boolean r1 = hasAnyFlag(r7, r0)
            r2 = 1024(0x400, float:1.435E-42)
            r6.updateStateForFlag(r2, r1)
            r1 = 134218312(0x8000248, float:3.852128E-34)
            boolean r1 = hasAnyFlag(r7, r1)
            if (r1 == 0) goto L26
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            boolean r1 = hasAnyFlag(r7, r1)
            if (r1 != 0) goto L26
            goto L27
        L26:
            r0 = 0
        L27:
            r1 = 2048(0x800, float:2.87E-42)
            r6.updateStateForFlag(r1, r0)
            r0 = 262144(0x40000, float:3.67342E-40)
            boolean r0 = hasAnyFlag(r7, r0)
            r6.mIsImeShowing = r0
            r0 = 1048576(0x100000, float:1.469368E-39)
            boolean r7 = hasAnyFlag(r7, r0)
            r6.mIsImeSwitcherShowing = r7
            boolean r7 = r6.mIsSystemGestureInProgress
            r0 = 0
            if (r7 != 0) goto L63
            r7 = 16
            boolean r2 = r6.shouldStashForIme()
            r6.updateStateForFlag(r7, r2)
            boolean r7 = r6.mIsImeShowing
            r2 = 80
            if (r7 == 0) goto L52
            goto L65
        L52:
            com.android.launcher3.taskbar.TaskbarControllers r7 = r6.mControllers
            com.android.launcher3.taskbar.TaskbarActivityContext r7 = r7.taskbarActivityContext
            android.content.res.Resources r7 = r7.getResources()
            r4 = 17694720(0x10e0000, float:2.608128E-38)
            int r7 = r7.getInteger(r4)
            long r4 = (long) r7
            long r4 = r4 - r2
            goto L66
        L63:
            r2 = 300(0x12c, double:1.48E-321)
        L65:
            r4 = r0
        L66:
            if (r8 == 0) goto L69
            r2 = r0
        L69:
            if (r8 == 0) goto L6c
            goto L6d
        L6c:
            r0 = r4
        L6d:
            android.animation.Animator r6 = r6.createApplyStateAnimator(r2)
            if (r6 == 0) goto L79
            r6.setStartDelay(r0)
            r6.start()
        L79:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.taskbar.TaskbarStashController.updateStateForSysuiFlags(int, boolean):void");
    }

    public final void updateTaskbarTimeout(boolean z4) {
        if (DisplayController.isTransientTaskbar(this.mActivity)) {
            if (z4) {
                cancelTimeoutIfExists();
            } else {
                tryStartTaskbarTimeout();
            }
        }
    }

    public boolean hasAnyFlag(int i4) {
        return hasAnyFlag(this.mState, i4);
    }

    public final void applyState(long j4) {
        Animator createApplyStateAnimator = createApplyStateAnimator(j4);
        if (createApplyStateAnimator != null) {
            createApplyStateAnimator.start();
        }
    }
}
