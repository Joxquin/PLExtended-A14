package com.android.launcher3.taskbar;

import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.bubbles.BubbleBarController;
import com.android.launcher3.util.DisplayController;
import com.android.quickstep.SystemUiProxy;
import com.android.systemui.shared.system.QuickStepContract;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public final class TaskbarScrimViewController implements TaskbarControllers.LoggableTaskbarController, TaskbarControllers.BackgroundRendererController {
    private static final Interpolator SCRIM_ALPHA_IN = new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f);
    private static final Interpolator SCRIM_ALPHA_OUT = new PathInterpolator(0.0f, 0.0f, 0.8f, 1.0f);
    private final TaskbarActivityContext mActivity;
    private TaskbarControllers mControllers;
    private final AnimatedFloat mScrimAlpha = new AnimatedFloat(new Runnable() { // from class: com.android.launcher3.taskbar.C0
        @Override // java.lang.Runnable
        public final void run() {
            TaskbarScrimViewController.b(TaskbarScrimViewController.this);
        }
    });
    private final TaskbarScrimView mScrimView;

    public TaskbarScrimViewController(TaskbarActivityContext taskbarActivityContext, TaskbarScrimView taskbarScrimView) {
        this.mActivity = taskbarActivityContext;
        this.mScrimView = taskbarScrimView;
    }

    public static void a(TaskbarScrimViewController taskbarScrimViewController) {
        taskbarScrimViewController.getClass();
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(taskbarScrimViewController.mActivity)).onBackPressed();
    }

    public static void b(TaskbarScrimViewController taskbarScrimViewController) {
        taskbarScrimViewController.mScrimView.setScrimAlpha(taskbarScrimViewController.mScrimAlpha.value);
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarScrimViewController:");
        printWriter.println(str + "\tmScrimAlpha.value=" + this.mScrimAlpha.value);
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.BackgroundRendererController
    public final void setCornerRoundness(float f4) {
        this.mScrimView.setCornerRoundness(f4);
    }

    public final void updateStateForSysuiFlags(int i4, boolean z4) {
        if (BubbleBarController.BUBBLE_BAR_ENABLED && DisplayController.isTransientTaskbar(this.mActivity)) {
            return;
        }
        boolean z5 = true;
        boolean z6 = (i4 & 16384) != 0;
        boolean z7 = (i4 & QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED) != 0;
        if (this.mControllers.navbarButtonsViewController.isImeVisible() || !z6 || !this.mControllers.taskbarStashController.isTaskbarVisibleAndNotStashing()) {
            z5 = false;
        }
        float f4 = z7 ? 0.84000003f : z5 ? 0.6f : 0.0f;
        View.OnClickListener onClickListener = z5 ? new View.OnClickListener() { // from class: com.android.launcher3.taskbar.B0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TaskbarScrimViewController.a(TaskbarScrimViewController.this);
            }
        } : null;
        TaskbarScrimView taskbarScrimView = this.mScrimView;
        taskbarScrimView.setOnClickListener(onClickListener);
        taskbarScrimView.setClickable(z5);
        ObjectAnimator animateToValue = this.mScrimAlpha.animateToValue(z5 ? f4 : 0.0f);
        animateToValue.setInterpolator(z5 ? SCRIM_ALPHA_IN : SCRIM_ALPHA_OUT);
        animateToValue.start();
        if (z4) {
            animateToValue.end();
        }
    }
}
