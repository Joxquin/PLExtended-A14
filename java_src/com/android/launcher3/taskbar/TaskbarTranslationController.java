package com.android.launcher3.taskbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import com.android.launcher3.C0410q;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.SpringAnimationBuilder;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.bubbles.BubbleControllers;
import com.android.launcher3.util.DisplayController;
import java.io.PrintWriter;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class TaskbarTranslationController implements TaskbarControllers.LoggableTaskbarController {
    private boolean mAnimationToHomeRunning;
    private final TaskbarActivityContext mContext;
    private TaskbarControllers mControllers;
    private boolean mGestureEnded;
    private boolean mHasSprungOnceThisGesture;
    private final boolean mIsTransientTaskbar;
    private ValueAnimator mSpringBounce;
    private final AnimatedFloat mTranslationYForSwipe = new AnimatedFloat(new K0(this, 0));
    private final TransitionCallback mCallback = new TransitionCallback();

    /* loaded from: classes.dex */
    public final class TransitionCallback {
        public TransitionCallback() {
        }

        public final void onActionDown() {
            TaskbarTranslationController taskbarTranslationController = TaskbarTranslationController.this;
            if (taskbarTranslationController.mAnimationToHomeRunning) {
                taskbarTranslationController.mTranslationYForSwipe.cancelAnimation();
            }
            taskbarTranslationController.mAnimationToHomeRunning = false;
            taskbarTranslationController.cancelSpringIfExists();
            TaskbarTranslationController.i(taskbarTranslationController);
        }

        public final void onActionEnd() {
            TaskbarTranslationController taskbarTranslationController = TaskbarTranslationController.this;
            if (taskbarTranslationController.mHasSprungOnceThisGesture) {
                TaskbarTranslationController.i(taskbarTranslationController);
                return;
            }
            taskbarTranslationController.mGestureEnded = true;
            taskbarTranslationController.startSpring();
        }

        public final void onActionMove(float f4) {
            TaskbarTranslationController taskbarTranslationController = TaskbarTranslationController.this;
            if (taskbarTranslationController.mAnimationToHomeRunning) {
                return;
            }
            if (!taskbarTranslationController.mHasSprungOnceThisGesture || taskbarTranslationController.mGestureEnded) {
                taskbarTranslationController.mTranslationYForSwipe.updateValue(f4);
            }
        }
    }

    public TaskbarTranslationController(TaskbarActivityContext taskbarActivityContext) {
        this.mContext = taskbarActivityContext;
        this.mIsTransientTaskbar = DisplayController.isTransientTaskbar(taskbarActivityContext);
    }

    public static void a(TaskbarTranslationController taskbarTranslationController) {
        if (taskbarTranslationController.mIsTransientTaskbar) {
            final float f4 = taskbarTranslationController.mTranslationYForSwipe.value;
            taskbarTranslationController.mControllers.stashedHandleViewController.setTranslationYForSwipe(f4);
            taskbarTranslationController.mControllers.taskbarViewController.setTranslationYForSwipe(f4);
            taskbarTranslationController.mControllers.taskbarDragLayerController.setTranslationYForSwipe(f4);
            taskbarTranslationController.mControllers.bubbleControllers.ifPresent(new Consumer() { // from class: com.android.launcher3.taskbar.L0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    float f5 = f4;
                    BubbleControllers bubbleControllers = (BubbleControllers) obj;
                    bubbleControllers.bubbleBarViewController.setTranslationYForSwipe(f5);
                    bubbleControllers.bubbleStashedHandleViewController.setTranslationYForSwipe(f5);
                }
            });
        }
    }

    public static void b(TaskbarTranslationController taskbarTranslationController) {
        if (taskbarTranslationController.mGestureEnded) {
            taskbarTranslationController.mGestureEnded = false;
            taskbarTranslationController.mHasSprungOnceThisGesture = false;
            if (taskbarTranslationController.mControllers.taskbarStashController.isInApp() && taskbarTranslationController.mControllers.taskbarStashController.isTaskbarVisibleAndNotStashing()) {
                taskbarTranslationController.mControllers.taskbarEduTooltipController.maybeShowFeaturesEdu();
            }
        }
    }

    public static void i(TaskbarTranslationController taskbarTranslationController) {
        taskbarTranslationController.mGestureEnded = false;
        taskbarTranslationController.mHasSprungOnceThisGesture = false;
    }

    public final void cancelSpringIfExists() {
        ValueAnimator valueAnimator = this.mSpringBounce;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mSpringBounce = null;
        }
    }

    public final ObjectAnimator createAnimToResetTranslation(long j4) {
        ObjectAnimator animateToValue = this.mTranslationYForSwipe.animateToValue(0.0f);
        animateToValue.setInterpolator(y0.e.f12949m);
        animateToValue.setDuration(j4);
        animateToValue.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.taskbar.TaskbarTranslationController.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                TaskbarTranslationController.this.mAnimationToHomeRunning = false;
                TaskbarTranslationController.i(TaskbarTranslationController.this);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                TaskbarTranslationController.this.cancelSpringIfExists();
                TaskbarTranslationController.i(TaskbarTranslationController.this);
                TaskbarTranslationController.this.mAnimationToHomeRunning = true;
            }
        });
        return animateToValue;
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarTranslationController:");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmTranslationYForSwipe=");
        StringBuilder c4 = C0410q.c(C0410q.c(C0410q.c(C0410q.a(sb, this.mTranslationYForSwipe.value, printWriter, str, "\tmHasSprungOnceThisGesture="), this.mHasSprungOnceThisGesture, printWriter, str, "\tmAnimationToHomeRunning="), this.mAnimationToHomeRunning, printWriter, str, "\tmGestureEnded="), this.mGestureEnded, printWriter, str, "\tmSpringBounce is running=");
        ValueAnimator valueAnimator = this.mSpringBounce;
        c4.append(valueAnimator != null && valueAnimator.isRunning());
        printWriter.println(c4.toString());
    }

    public final TransitionCallback getTransitionCallback() {
        return this.mCallback;
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
    }

    public final void startSpring() {
        if (this.mHasSprungOnceThisGesture || this.mAnimationToHomeRunning) {
            return;
        }
        SpringAnimationBuilder springAnimationBuilder = new SpringAnimationBuilder(this.mContext);
        AnimatedFloat animatedFloat = this.mTranslationYForSwipe;
        springAnimationBuilder.setStartValue(animatedFloat.value);
        springAnimationBuilder.setEndValue(0.0f);
        springAnimationBuilder.setDampingRatio(0.5f);
        springAnimationBuilder.setStiffness(200.0f);
        ValueAnimator build = springAnimationBuilder.build(animatedFloat, AnimatedFloat.VALUE);
        this.mSpringBounce = build;
        build.addListener(AnimatorListeners.forEndCallback(new K0(this, 1)));
        this.mSpringBounce.start();
        this.mHasSprungOnceThisGesture = true;
    }

    public final boolean willAnimateToZeroBefore(long j4) {
        ValueAnimator valueAnimator = this.mSpringBounce;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            return this.mSpringBounce.getDuration() - this.mSpringBounce.getCurrentPlayTime() < j4;
        }
        AnimatedFloat animatedFloat = this.mTranslationYForSwipe;
        return animatedFloat.isAnimatingToValue(0.0f) && animatedFloat.getRemainingTime() < j4;
    }
}
