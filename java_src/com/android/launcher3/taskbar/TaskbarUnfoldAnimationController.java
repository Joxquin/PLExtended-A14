package com.android.launcher3.taskbar;

import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.unfold.NonDestroyableScopedUnfoldTransitionProgressProvider;
import com.android.quickstep.util.LauncherViewsMoveFromCenterTranslationApplier;
import com.android.systemui.shared.animation.UnfoldMoveFromCenterAnimator;
import java.io.PrintWriter;
import t1.InterfaceC1405d;
import w1.C1452d;
import w1.RunnableC1451c;
import x1.C1460d;
import x1.C1461e;
import x1.C1462f;
/* loaded from: classes.dex */
public final class TaskbarUnfoldAnimationController implements TaskbarControllers.LoggableTaskbarController {
    private final UnfoldMoveFromCenterAnimator mMoveFromCenterAnimator;
    private final C1461e mNaturalUnfoldTransitionProgressProvider;
    private final C1462f mScopedUnfoldTransitionProgressProvider;
    private TaskbarDragLayerController mTaskbarDragLayerController;
    private TaskbarViewController mTaskbarViewController;
    private final TransitionListener mTransitionListener = new TransitionListener();

    /* loaded from: classes.dex */
    public final class TransitionListener implements InterfaceC1405d {
        public TransitionListener() {
            TaskbarUnfoldAnimationController.this = r1;
        }

        @Override // t1.InterfaceC1405d
        public final void onTransitionFinished() {
            TaskbarUnfoldAnimationController taskbarUnfoldAnimationController = TaskbarUnfoldAnimationController.this;
            taskbarUnfoldAnimationController.mMoveFromCenterAnimator.onTransitionFinished();
            taskbarUnfoldAnimationController.mMoveFromCenterAnimator.clearRegisteredViews();
            taskbarUnfoldAnimationController.mTaskbarDragLayerController.setBackgroundHorizontalInsets(0.0f);
        }

        @Override // t1.InterfaceC1405d
        public final void onTransitionProgress(float f4) {
            TaskbarUnfoldAnimationController taskbarUnfoldAnimationController = TaskbarUnfoldAnimationController.this;
            taskbarUnfoldAnimationController.mMoveFromCenterAnimator.onTransitionProgress(f4);
            taskbarUnfoldAnimationController.mTaskbarDragLayerController.setBackgroundHorizontalInsets((1.0f - f4) * 0.035f);
        }

        @Override // t1.InterfaceC1405d
        public final void onTransitionStarted() {
            TaskbarUnfoldAnimationController taskbarUnfoldAnimationController = TaskbarUnfoldAnimationController.this;
            taskbarUnfoldAnimationController.mMoveFromCenterAnimator.updateDisplayProperties();
            for (View view : taskbarUnfoldAnimationController.mTaskbarViewController.getIconViews()) {
                taskbarUnfoldAnimationController.mMoveFromCenterAnimator.registerViewForAnimation(view);
            }
            taskbarUnfoldAnimationController.mMoveFromCenterAnimator.onTransitionStarted();
        }
    }

    public TaskbarUnfoldAnimationController(BaseTaskbarContext baseTaskbarContext, NonDestroyableScopedUnfoldTransitionProgressProvider nonDestroyableScopedUnfoldTransitionProgressProvider, WindowManager windowManager, C1452d c1452d) {
        this.mScopedUnfoldTransitionProgressProvider = nonDestroyableScopedUnfoldTransitionProgressProvider;
        this.mNaturalUnfoldTransitionProgressProvider = new C1461e(baseTaskbarContext, c1452d, nonDestroyableScopedUnfoldTransitionProgressProvider);
        this.mMoveFromCenterAnimator = new UnfoldMoveFromCenterAnimator(windowManager, new LauncherViewsMoveFromCenterTranslationApplier());
    }

    public static /* synthetic */ void a(TaskbarUnfoldAnimationController taskbarUnfoldAnimationController) {
        taskbarUnfoldAnimationController.mScopedUnfoldTransitionProgressProvider.setReadyToHandleTransition(true);
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarUnfoldAnimationController:");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.android.launcher3.taskbar.P0] */
    public final void init(TaskbarControllers taskbarControllers) {
        C1461e c1461e = this.mNaturalUnfoldTransitionProgressProvider;
        C1452d c1452d = c1461e.f12838e;
        c1452d.getClass();
        C1460d listener = c1461e.f12841h;
        kotlin.jvm.internal.h.e(listener, "listener");
        c1452d.f12746f.post(new RunnableC1451c(c1452d, listener, 0));
        Display display = c1461e.f12837d.getDisplay();
        if (display != null) {
            listener.onRotationChanged(display.getRotation());
        }
        TaskbarViewController taskbarViewController = taskbarControllers.taskbarViewController;
        this.mTaskbarViewController = taskbarViewController;
        taskbarViewController.addOneTimePreDrawListener(new Runnable() { // from class: com.android.launcher3.taskbar.P0
            @Override // java.lang.Runnable
            public final void run() {
                TaskbarUnfoldAnimationController.a(TaskbarUnfoldAnimationController.this);
            }
        });
        TransitionListener listener2 = this.mTransitionListener;
        kotlin.jvm.internal.h.e(listener2, "listener");
        c1461e.f12839f.addCallback((InterfaceC1405d) listener2);
        this.mTaskbarDragLayerController = taskbarControllers.taskbarDragLayerController;
    }

    public final void onDestroy() {
        this.mScopedUnfoldTransitionProgressProvider.setReadyToHandleTransition(false);
        C1461e c1461e = this.mNaturalUnfoldTransitionProgressProvider;
        c1461e.getClass();
        TransitionListener listener = this.mTransitionListener;
        kotlin.jvm.internal.h.e(listener, "listener");
        c1461e.f12839f.removeCallback((InterfaceC1405d) listener);
        c1461e.destroy();
        this.mTaskbarViewController = null;
    }
}
