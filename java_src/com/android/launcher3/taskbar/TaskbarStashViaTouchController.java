package com.android.launcher3.taskbar;

import android.view.MotionEvent;
import android.view.animation.Interpolator;
import com.android.launcher3.Utilities;
import com.android.launcher3.taskbar.TaskbarTranslationController;
import com.android.launcher3.taskbar.bubbles.BubbleControllers;
import com.android.launcher3.testing.shared.ResourceUtils;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.TouchController;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class TaskbarStashViaTouchController implements TouchController {
    private final TaskbarActivityContext activity;
    private final TaskbarControllers controllers;
    private final Interpolator displacementInterpolator;
    private final boolean enabled;
    private float gestureHeightYThreshold;
    private final float maxTouchDisplacement;
    private final float maxVisualDisplacement;
    private final SingleAxisSwipeDetector swipeDownDetector;
    private final float touchDisplacementToStash;
    private final TaskbarTranslationController.TransitionCallback translationCallback;

    public TaskbarStashViaTouchController(TaskbarControllers controllers) {
        kotlin.jvm.internal.h.e(controllers, "controllers");
        this.controllers = controllers;
        TaskbarActivityContext taskbarActivityContext = controllers.taskbarActivityContext;
        kotlin.jvm.internal.h.d(taskbarActivityContext, "controllers.taskbarActivityContext");
        this.activity = taskbarActivityContext;
        this.enabled = DisplayController.isTransientTaskbar(taskbarActivityContext);
        this.translationCallback = controllers.taskbarTranslationController.getTransitionCallback();
        this.displacementInterpolator = y0.e.f12949m;
        float dimensionPixelSize = taskbarActivityContext.getResources().getDimensionPixelSize(R.dimen.transient_taskbar_bottom_margin);
        this.maxVisualDisplacement = dimensionPixelSize;
        this.maxTouchDisplacement = dimensionPixelSize + taskbarActivityContext.getDeviceProfile().taskbarHeight;
        this.touchDisplacementToStash = taskbarActivityContext.getResources().getDimensionPixelSize(R.dimen.taskbar_to_nav_threshold);
        updateGestureHeight();
        SingleAxisSwipeDetector singleAxisSwipeDetector = new SingleAxisSwipeDetector(taskbarActivityContext, new SingleAxisSwipeDetector.Listener() { // from class: com.android.launcher3.taskbar.TaskbarStashViaTouchController$createSwipeListener$1
            private float lastDisplacement;

            @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
            public final boolean onDrag(float f4) {
                TaskbarTranslationController.TransitionCallback transitionCallback;
                float f5;
                float f6;
                Interpolator interpolator;
                this.lastDisplacement = f4;
                if (f4 < 0.0f) {
                    return false;
                }
                TaskbarStashViaTouchController taskbarStashViaTouchController = TaskbarStashViaTouchController.this;
                transitionCallback = taskbarStashViaTouchController.translationCallback;
                f5 = taskbarStashViaTouchController.maxTouchDisplacement;
                f6 = taskbarStashViaTouchController.maxVisualDisplacement;
                interpolator = taskbarStashViaTouchController.displacementInterpolator;
                transitionCallback.onActionMove(Utilities.mapToRange(f4, 0.0f, f5, 0.0f, f6, interpolator));
                return false;
            }

            @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
            public final void onDragEnd(float f4) {
                SingleAxisSwipeDetector singleAxisSwipeDetector2;
                float f5;
                TaskbarTranslationController.TransitionCallback transitionCallback;
                SingleAxisSwipeDetector singleAxisSwipeDetector3;
                TaskbarStashViaTouchController taskbarStashViaTouchController = TaskbarStashViaTouchController.this;
                singleAxisSwipeDetector2 = taskbarStashViaTouchController.swipeDownDetector;
                boolean z4 = singleAxisSwipeDetector2.isFling(f4) && f4 > 0.0f;
                float f6 = this.lastDisplacement;
                f5 = taskbarStashViaTouchController.touchDisplacementToStash;
                boolean z5 = f6 > f5;
                if (z4 || z5) {
                    taskbarStashViaTouchController.getControllers().taskbarStashController.updateAndAnimateTransientTaskbar(true, true);
                }
                transitionCallback = taskbarStashViaTouchController.translationCallback;
                transitionCallback.onActionEnd();
                singleAxisSwipeDetector3 = taskbarStashViaTouchController.swipeDownDetector;
                singleAxisSwipeDetector3.finishedScrolling();
            }

            @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
            public final void onDragStart(boolean z4, float f4) {
            }
        }, SingleAxisSwipeDetector.VERTICAL);
        this.swipeDownDetector = singleAxisSwipeDetector;
        singleAxisSwipeDetector.setDetectableScrollConditions(2, false);
    }

    public final TaskbarControllers getControllers() {
        return this.controllers;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent ev) {
        kotlin.jvm.internal.h.e(ev, "ev");
        if (this.enabled) {
            TaskbarControllers taskbarControllers = this.controllers;
            BubbleControllers bubbleControllers = (BubbleControllers) taskbarControllers.bubbleControllers.orElse(null);
            if (bubbleControllers == null || !bubbleControllers.bubbleBarViewController.isExpanded()) {
                TaskbarStashController taskbarStashController = taskbarControllers.taskbarStashController;
                if ((bubbleControllers == null || bubbleControllers.bubbleStashController.isStashed()) && taskbarStashController.isStashed()) {
                    return false;
                }
                MotionEvent obtain = MotionEvent.obtain(ev);
                obtain.setLocation(ev.getRawX(), ev.getRawY());
                if (ev.getAction() == 4) {
                    taskbarStashController.updateAndAnimateTransientTaskbar(true, true);
                } else if (taskbarControllers.taskbarViewController.isEventOverAnyItem(obtain)) {
                    SingleAxisSwipeDetector singleAxisSwipeDetector = this.swipeDownDetector;
                    singleAxisSwipeDetector.onTouchEvent(ev);
                    if (singleAxisSwipeDetector.isDraggingState()) {
                        return true;
                    }
                } else if (ev.getAction() == 0) {
                    if (!(bubbleControllers != null && bubbleControllers.bubbleBarViewController.isEventOverAnyItem(obtain)) && obtain.getY() < this.gestureHeightYThreshold) {
                        taskbarStashController.updateAndAnimateTransientTaskbar(true, true);
                    }
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerTouchEvent(MotionEvent ev) {
        kotlin.jvm.internal.h.e(ev, "ev");
        this.swipeDownDetector.onTouchEvent(ev);
        return true;
    }

    public final void updateGestureHeight() {
        if (this.enabled) {
            TaskbarActivityContext taskbarActivityContext = this.activity;
            this.gestureHeightYThreshold = taskbarActivityContext.getDeviceProfile().heightPx - ResourceUtils.getNavbarSize(taskbarActivityContext.getResources(), "navigation_bar_gesture_height");
        }
    }
}
