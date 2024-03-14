package com.android.launcher3.taskbar;

import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.taskbar.allapps.TaskbarAllAppsController;
import com.android.launcher3.taskbar.bubbles.BubbleControllers;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayController;
import com.android.launcher3.util.Executors;
import com.android.systemui.shared.rotation.RotationButtonController;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class TaskbarControllers {
    public final Optional bubbleControllers;
    public final KeyboardQuickSwitchController keyboardQuickSwitchController;
    private boolean mAreAllControllersInitialized;
    public final TaskbarNavButtonController navButtonController;
    public final NavbarButtonsViewController navbarButtonsViewController;
    public final RotationButtonController rotationButtonController;
    public final StashedHandleViewController stashedHandleViewController;
    public final TaskbarActivityContext taskbarActivityContext;
    public final TaskbarAllAppsController taskbarAllAppsController;
    public final TaskbarAutohideSuspendController taskbarAutohideSuspendController;
    public final TaskbarDragController taskbarDragController;
    public final TaskbarDragLayerController taskbarDragLayerController;
    public final TaskbarEduTooltipController taskbarEduTooltipController;
    public final TaskbarForceVisibleImmersiveController taskbarForceVisibleImmersiveController;
    public final TaskbarInsetsController taskbarInsetsController;
    public final TaskbarKeyguardController taskbarKeyguardController;
    public final TaskbarOverlayController taskbarOverlayController;
    public final TaskbarDividerPopupController taskbarPinningController;
    public final TaskbarPopupController taskbarPopupController;
    public final TaskbarRecentAppsController taskbarRecentAppsController;
    public final TaskbarScrimViewController taskbarScrimViewController;
    public final TaskbarSpringOnStashController taskbarSpringOnStashController;
    public final TaskbarStashController taskbarStashController;
    public final TaskbarTranslationController taskbarTranslationController;
    public final TaskbarUnfoldAnimationController taskbarUnfoldAnimationController;
    public final TaskbarViewController taskbarViewController;
    public final VoiceInteractionWindowController voiceInteractionWindowController;
    private LoggableTaskbarController[] mControllersToLog = null;
    private BackgroundRendererController[] mBackgroundRendererControllers = null;
    public TaskbarUIController uiController = TaskbarUIController.DEFAULT;
    private final List mPostInitCallbacks = new ArrayList();
    private TaskbarSharedState mSharedState = null;
    private final AnimatedFloat mCornerRoundness = new AnimatedFloat(new Runnable() { // from class: com.android.launcher3.taskbar.U
        @Override // java.lang.Runnable
        public final void run() {
            TaskbarControllers.a(TaskbarControllers.this);
        }
    });

    /* loaded from: classes.dex */
    public interface BackgroundRendererController {
        void setCornerRoundness(float f4);
    }

    /* loaded from: classes.dex */
    public interface LoggableTaskbarController {
        void dumpLogs(String str, PrintWriter printWriter);
    }

    public TaskbarControllers(TaskbarActivityContext taskbarActivityContext, TaskbarDragController taskbarDragController, TaskbarNavButtonController taskbarNavButtonController, NavbarButtonsViewController navbarButtonsViewController, RotationButtonController rotationButtonController, TaskbarDragLayerController taskbarDragLayerController, TaskbarViewController taskbarViewController, TaskbarScrimViewController taskbarScrimViewController, TaskbarUnfoldAnimationController taskbarUnfoldAnimationController, TaskbarKeyguardController taskbarKeyguardController, StashedHandleViewController stashedHandleViewController, TaskbarStashController taskbarStashController, TaskbarAutohideSuspendController taskbarAutohideSuspendController, TaskbarPopupController taskbarPopupController, TaskbarForceVisibleImmersiveController taskbarForceVisibleImmersiveController, TaskbarOverlayController taskbarOverlayController, TaskbarAllAppsController taskbarAllAppsController, TaskbarInsetsController taskbarInsetsController, VoiceInteractionWindowController voiceInteractionWindowController, TaskbarTranslationController taskbarTranslationController, TaskbarSpringOnStashController taskbarSpringOnStashController, TaskbarRecentAppsController taskbarRecentAppsController, TaskbarEduTooltipController taskbarEduTooltipController, KeyboardQuickSwitchController keyboardQuickSwitchController, TaskbarDividerPopupController taskbarDividerPopupController, Optional optional) {
        this.taskbarActivityContext = taskbarActivityContext;
        this.taskbarDragController = taskbarDragController;
        this.navButtonController = taskbarNavButtonController;
        this.navbarButtonsViewController = navbarButtonsViewController;
        this.rotationButtonController = rotationButtonController;
        this.taskbarDragLayerController = taskbarDragLayerController;
        this.taskbarViewController = taskbarViewController;
        this.taskbarScrimViewController = taskbarScrimViewController;
        this.taskbarUnfoldAnimationController = taskbarUnfoldAnimationController;
        this.taskbarKeyguardController = taskbarKeyguardController;
        this.stashedHandleViewController = stashedHandleViewController;
        this.taskbarStashController = taskbarStashController;
        this.taskbarAutohideSuspendController = taskbarAutohideSuspendController;
        this.taskbarPopupController = taskbarPopupController;
        this.taskbarForceVisibleImmersiveController = taskbarForceVisibleImmersiveController;
        this.taskbarOverlayController = taskbarOverlayController;
        this.taskbarAllAppsController = taskbarAllAppsController;
        this.taskbarInsetsController = taskbarInsetsController;
        this.voiceInteractionWindowController = voiceInteractionWindowController;
        this.taskbarTranslationController = taskbarTranslationController;
        this.taskbarSpringOnStashController = taskbarSpringOnStashController;
        this.taskbarRecentAppsController = taskbarRecentAppsController;
        this.taskbarEduTooltipController = taskbarEduTooltipController;
        this.keyboardQuickSwitchController = keyboardQuickSwitchController;
        this.taskbarPinningController = taskbarDividerPopupController;
        this.bubbleControllers = optional;
    }

    public static void a(TaskbarControllers taskbarControllers) {
        BackgroundRendererController[] backgroundRendererControllerArr = taskbarControllers.mBackgroundRendererControllers;
        if (backgroundRendererControllerArr == null) {
            return;
        }
        for (BackgroundRendererController backgroundRendererController : backgroundRendererControllerArr) {
            backgroundRendererController.setCornerRoundness(taskbarControllers.mCornerRoundness.value);
        }
    }

    public final void dumpLogs(String str, PrintWriter printWriter) {
        LoggableTaskbarController[] loggableTaskbarControllerArr;
        printWriter.println(str + "TaskbarControllers:");
        if (this.mControllersToLog == null) {
            printWriter.println(String.format("%s\t%s", str, "All taskbar controllers have already been destroyed."));
            return;
        }
        printWriter.println(String.format("%s\tmAreAllControllersInitialized=%b", str, Boolean.valueOf(this.mAreAllControllersInitialized)));
        for (LoggableTaskbarController loggableTaskbarController : this.mControllersToLog) {
            loggableTaskbarController.dumpLogs(str + "\t", printWriter);
        }
        this.uiController.dumpLogs(str + "\t", printWriter);
        this.rotationButtonController.dumpLogs(str + "\t", printWriter);
    }

    public final TaskbarSharedState getSharedState() {
        return this.mSharedState;
    }

    public TaskbarActivityContext getTaskbarActivityContext() {
        return this.taskbarActivityContext;
    }

    public final AnimatedFloat getTaskbarCornerRoundness() {
        return this.mCornerRoundness;
    }

    public final void init(TaskbarSharedState taskbarSharedState) {
        this.mAreAllControllersInitialized = false;
        this.mSharedState = taskbarSharedState;
        this.taskbarDragController.mControllers = this;
        NavbarButtonsViewController navbarButtonsViewController = this.navbarButtonsViewController;
        navbarButtonsViewController.init(this);
        this.rotationButtonController.init();
        this.taskbarDragLayerController.init(this);
        this.taskbarViewController.init(this);
        this.taskbarScrimViewController.init(this);
        this.taskbarUnfoldAnimationController.init(this);
        this.taskbarKeyguardController.init(navbarButtonsViewController);
        this.taskbarSpringOnStashController.init(this);
        this.stashedHandleViewController.init(this);
        this.taskbarStashController.init(this, taskbarSharedState.setupUIVisible, this.mSharedState);
        this.taskbarPopupController.init(this);
        this.taskbarForceVisibleImmersiveController.init(this);
        this.taskbarOverlayController.init(this);
        this.taskbarAllAppsController.init(this, taskbarSharedState.allAppsVisible);
        this.navButtonController.init(this);
        this.taskbarInsetsController.init(this);
        this.voiceInteractionWindowController.init(this);
        this.taskbarRecentAppsController.mControllers = this;
        this.taskbarTranslationController.init(this);
        this.taskbarEduTooltipController.init(this);
        this.keyboardQuickSwitchController.init(this);
        this.taskbarPinningController.getClass();
        this.bubbleControllers.ifPresent(new Consumer() { // from class: com.android.launcher3.taskbar.S
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                TaskbarControllers taskbarControllers = TaskbarControllers.this;
                taskbarControllers.getClass();
                ((BubbleControllers) obj).init(taskbarControllers);
            }
        });
        TaskbarDragController taskbarDragController = this.taskbarDragController;
        TaskbarNavButtonController taskbarNavButtonController = this.navButtonController;
        NavbarButtonsViewController navbarButtonsViewController2 = this.navbarButtonsViewController;
        TaskbarDragLayerController taskbarDragLayerController = this.taskbarDragLayerController;
        TaskbarScrimViewController taskbarScrimViewController = this.taskbarScrimViewController;
        TaskbarViewController taskbarViewController = this.taskbarViewController;
        TaskbarUnfoldAnimationController taskbarUnfoldAnimationController = this.taskbarUnfoldAnimationController;
        TaskbarKeyguardController taskbarKeyguardController = this.taskbarKeyguardController;
        StashedHandleViewController stashedHandleViewController = this.stashedHandleViewController;
        TaskbarStashController taskbarStashController = this.taskbarStashController;
        TaskbarAutohideSuspendController taskbarAutohideSuspendController = this.taskbarAutohideSuspendController;
        TaskbarPopupController taskbarPopupController = this.taskbarPopupController;
        TaskbarInsetsController taskbarInsetsController = this.taskbarInsetsController;
        VoiceInteractionWindowController voiceInteractionWindowController = this.voiceInteractionWindowController;
        this.mControllersToLog = new LoggableTaskbarController[]{taskbarDragController, taskbarNavButtonController, navbarButtonsViewController2, taskbarDragLayerController, taskbarScrimViewController, taskbarViewController, taskbarUnfoldAnimationController, taskbarKeyguardController, stashedHandleViewController, taskbarStashController, taskbarAutohideSuspendController, taskbarPopupController, taskbarInsetsController, voiceInteractionWindowController, this.taskbarTranslationController, this.taskbarEduTooltipController, this.keyboardQuickSwitchController, this.taskbarPinningController};
        this.mBackgroundRendererControllers = new BackgroundRendererController[]{taskbarDragLayerController, taskbarScrimViewController, voiceInteractionWindowController};
        this.mCornerRoundness.updateValue(1.0f);
        this.mAreAllControllersInitialized = true;
        List list = this.mPostInitCallbacks;
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        ((ArrayList) list).clear();
    }

    public final void onDestroy() {
        this.mAreAllControllersInitialized = false;
        this.mSharedState = null;
        this.navbarButtonsViewController.onDestroy();
        this.uiController.onDestroy();
        this.rotationButtonController.onDestroy();
        this.taskbarDragLayerController.onDestroy();
        this.taskbarUnfoldAnimationController.onDestroy();
        this.taskbarViewController.onDestroy();
        this.stashedHandleViewController.onDestroy();
        this.taskbarAutohideSuspendController.onDestroy();
        this.taskbarPopupController.onDestroy();
        this.taskbarForceVisibleImmersiveController.onDestroy();
        this.taskbarOverlayController.onDestroy();
        this.taskbarAllAppsController.onDestroy();
        this.navButtonController.onDestroy();
        this.taskbarInsetsController.onDestroy();
        this.voiceInteractionWindowController.onDestroy();
        this.taskbarRecentAppsController.onDestroy();
        this.keyboardQuickSwitchController.onDestroy();
        TaskbarStashController taskbarStashController = this.taskbarStashController;
        taskbarStashController.getClass();
        Executors.UI_HELPER_EXECUTOR.execute(new H0(taskbarStashController, 0));
        this.bubbleControllers.ifPresent(new T());
        this.mControllersToLog = null;
        this.mBackgroundRendererControllers = null;
    }

    public final void runAfterInit(Runnable runnable) {
        if (this.mAreAllControllersInitialized) {
            runnable.run();
        } else {
            ((ArrayList) this.mPostInitCallbacks).add(runnable);
        }
    }

    public final void setUiController(TaskbarUIController taskbarUIController) {
        this.uiController.onDestroy();
        this.uiController = taskbarUIController;
        taskbarUIController.init(this);
        this.uiController.updateStateForSysuiFlags(this.mSharedState.sysuiStateFlags);
        this.navbarButtonsViewController.onUiControllerChanged();
    }
}
