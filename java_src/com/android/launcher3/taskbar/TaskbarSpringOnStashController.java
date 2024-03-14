package com.android.launcher3.taskbar;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import com.android.launcher3.C0410q;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.SpringAnimationBuilder;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.util.DisplayController;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public final class TaskbarSpringOnStashController implements TaskbarControllers.LoggableTaskbarController {
    private final TaskbarActivityContext mContext;
    private TaskbarControllers mControllers;
    private final boolean mIsTransientTaskbar;
    private final float mStartVelocityPxPerS;
    private final AnimatedFloat mTranslationForStash = new AnimatedFloat(new Runnable() { // from class: com.android.launcher3.taskbar.D0
        @Override // java.lang.Runnable
        public final void run() {
            TaskbarSpringOnStashController.a(TaskbarSpringOnStashController.this);
        }
    });

    public TaskbarSpringOnStashController(TaskbarActivityContext taskbarActivityContext) {
        this.mContext = taskbarActivityContext;
        this.mIsTransientTaskbar = DisplayController.isTransientTaskbar(taskbarActivityContext);
        this.mStartVelocityPxPerS = taskbarActivityContext.getResources().getDimension(R.dimen.transient_taskbar_stash_spring_velocity_dp_per_s);
    }

    public static void a(TaskbarSpringOnStashController taskbarSpringOnStashController) {
        if (taskbarSpringOnStashController.mIsTransientTaskbar) {
            float f4 = taskbarSpringOnStashController.mTranslationForStash.value;
            taskbarSpringOnStashController.mControllers.stashedHandleViewController.setTranslationYForStash(f4);
            taskbarSpringOnStashController.mControllers.taskbarViewController.setTranslationYForStash(f4);
            taskbarSpringOnStashController.mControllers.taskbarDragLayerController.setTranslationYForStash(f4);
        }
    }

    public final ObjectAnimator createResetAnimForUnstash() {
        if (this.mIsTransientTaskbar) {
            return this.mTranslationForStash.animateToValue(0.0f);
        }
        return null;
    }

    public final ValueAnimator createSpringToStash() {
        if (this.mIsTransientTaskbar) {
            SpringAnimationBuilder springAnimationBuilder = new SpringAnimationBuilder(this.mContext);
            AnimatedFloat animatedFloat = this.mTranslationForStash;
            springAnimationBuilder.setStartValue(animatedFloat.value);
            springAnimationBuilder.setEndValue(0.0f);
            springAnimationBuilder.setDampingRatio(0.5f);
            springAnimationBuilder.setStiffness(200.0f);
            springAnimationBuilder.setStartVelocity(this.mStartVelocityPxPerS);
            return springAnimationBuilder.build(animatedFloat, AnimatedFloat.VALUE);
        }
        return null;
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarSpringOnStashController:");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmTranslationForStash=");
        StringBuilder a4 = C0410q.a(sb, this.mTranslationForStash.value, printWriter, str, "\tmStartVelocityPxPerS=");
        a4.append(this.mStartVelocityPxPerS);
        printWriter.println(a4.toString());
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
    }
}
