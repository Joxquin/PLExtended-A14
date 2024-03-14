package com.android.quickstep.inputconsumers;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.MotionEventsUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.taskbar.TaskbarThresholdUtils;
import com.android.launcher3.taskbar.TaskbarTranslationController;
import com.android.launcher3.taskbar.bubbles.BubbleControllers;
import com.android.launcher3.touch.OverScroll;
import com.android.launcher3.util.DisplayController;
import com.android.quickstep.InputConsumer;
import com.android.quickstep.OverviewCommandHelper;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.InputMonitorCompat;
/* loaded from: classes.dex */
public class TaskbarUnstashInputConsumer extends DelegateInputConsumer {
    private int mActivePointerId;
    private final Rect mBottomEdgeBounds;
    private final int mBottomScreenEdge;
    private boolean mCanceledUnstashHint;
    private final PointF mDownPos;
    private boolean mHasPassedTaskbarNavThreshold;
    private boolean mIsInBubbleBarArea;
    private boolean mIsStashedTaskbarHovered;
    private final boolean mIsTaskbarAllAppsOpen;
    private final boolean mIsTransientTaskbar;
    private final PointF mLastPos;
    private final GestureDetector mLongPressDetector;
    private float mLongPressDownX;
    private float mLongPressDownY;
    private final OverviewCommandHelper mOverviewCommandHelper;
    private final float mScreenWidth;
    private final float mSquaredTouchSlop;
    private final int mStashedTaskbarBottomEdge;
    private final Rect mStashedTaskbarHandleBounds;
    private final TaskbarActivityContext mTaskbarActivityContext;
    private final int mTaskbarNavThreshold;
    private final int mTaskbarNavThresholdY;
    private final TaskbarTranslationController.TransitionCallback mTransitionCallback;
    private final float mUnstashArea;

    public TaskbarUnstashInputConsumer(Context context, InputConsumer inputConsumer, InputMonitorCompat inputMonitorCompat, TaskbarActivityContext taskbarActivityContext, OverviewCommandHelper overviewCommandHelper) {
        super(inputConsumer, inputMonitorCompat);
        this.mDownPos = new PointF();
        this.mLastPos = new PointF();
        this.mActivePointerId = -1;
        boolean z4 = false;
        this.mIsStashedTaskbarHovered = false;
        this.mStashedTaskbarHandleBounds = new Rect();
        this.mBottomEdgeBounds = new Rect();
        this.mTaskbarActivityContext = taskbarActivityContext;
        this.mOverviewCommandHelper = overviewCommandHelper;
        this.mSquaredTouchSlop = Utilities.squaredTouchSlop(context);
        this.mScreenWidth = taskbarActivityContext.getDeviceProfile().widthPx;
        Resources resources = context.getResources();
        this.mUnstashArea = resources.getDimensionPixelSize(R.dimen.taskbar_unstash_input_area);
        int fromNavThreshold = TaskbarThresholdUtils.getFromNavThreshold(resources, taskbarActivityContext.getDeviceProfile());
        this.mTaskbarNavThreshold = fromNavThreshold;
        this.mTaskbarNavThresholdY = taskbarActivityContext.getDeviceProfile().heightPx - fromNavThreshold;
        if (taskbarActivityContext != null && taskbarActivityContext.isTaskbarAllAppsOpen()) {
            z4 = true;
        }
        this.mIsTaskbarAllAppsOpen = z4;
        boolean isTransientTaskbar = DisplayController.isTransientTaskbar(context);
        this.mIsTransientTaskbar = isTransientTaskbar;
        this.mLongPressDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.android.quickstep.inputconsumers.TaskbarUnstashInputConsumer.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                TaskbarUnstashInputConsumer.this.onLongPressDetected(motionEvent);
            }
        });
        this.mBottomScreenEdge = resources.getDimensionPixelSize(R.dimen.taskbar_stashed_screen_edge_hover_deadzone_height);
        this.mStashedTaskbarBottomEdge = resources.getDimensionPixelSize(R.dimen.taskbar_stashed_below_hover_deadzone_height);
        this.mTransitionCallback = isTransientTaskbar ? taskbarActivityContext.getTranslationCallbacks() : null;
    }

    private boolean isInBubbleBarArea(float f4) {
        BubbleControllers bubbleControllers;
        TaskbarActivityContext taskbarActivityContext = this.mTaskbarActivityContext;
        if (taskbarActivityContext == null || !this.mIsTransientTaskbar || (bubbleControllers = taskbarActivityContext.getBubbleControllers()) == null) {
            return false;
        }
        Rect bubbleBarBounds = bubbleControllers.bubbleBarViewController.getBubbleBarBounds();
        return f4 >= ((float) bubbleBarBounds.left) && f4 <= ((float) bubbleBarBounds.right);
    }

    private boolean isInTaskbarArea(float f4) {
        return Math.abs((this.mScreenWidth / 2.0f) - f4) < this.mUnstashArea / 2.0f;
    }

    private boolean isMouseEvent(MotionEvent motionEvent) {
        return motionEvent.getSource() == 8194;
    }

    private boolean isStashedTaskbarHovered(int i4, int i5) {
        if (this.mTaskbarActivityContext.isTaskbarStashed() && !this.mTaskbarActivityContext.isTaskbarAllAppsOpen() && FeatureFlags.ENABLE_CURSOR_HOVER_STATES.get()) {
            DeviceProfile deviceProfile = this.mTaskbarActivityContext.getDeviceProfile();
            Rect rect = this.mStashedTaskbarHandleBounds;
            int i6 = deviceProfile.widthPx;
            float f4 = this.mUnstashArea;
            int i7 = deviceProfile.stashedTaskbarHeight;
            int i8 = deviceProfile.heightPx;
            rect.set((i6 - ((int) f4)) / 2, i8 - i7, (int) (((i6 - f4) / 2.0f) + f4), i8);
            return this.mStashedTaskbarHandleBounds.contains(i4, i5);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onLongPressDetected(MotionEvent motionEvent) {
        if (this.mTaskbarActivityContext == null || !isInTaskbarArea(motionEvent.getRawX()) || this.mIsTransientTaskbar || !this.mTaskbarActivityContext.onLongPressToUnstashTaskbar()) {
            return;
        }
        setActive(motionEvent);
    }

    private void startStashedTaskbarHover(boolean z4) {
        this.mTaskbarActivityContext.startTaskbarUnstashHint(z4, true);
        this.mIsStashedTaskbarHovered = z4;
    }

    private void updateHoveredTaskbarState(int i4, int i5) {
        DeviceProfile deviceProfile = this.mTaskbarActivityContext.getDeviceProfile();
        Rect rect = this.mBottomEdgeBounds;
        int i6 = deviceProfile.widthPx;
        float f4 = this.mUnstashArea;
        int i7 = this.mStashedTaskbarBottomEdge;
        int i8 = deviceProfile.heightPx;
        rect.set((i6 - ((int) f4)) / 2, i8 - i7, (int) (((i6 - f4) / 2.0f) + f4), i8);
        if (this.mBottomEdgeBounds.contains(i4, i5)) {
            this.mTaskbarActivityContext.onSwipeToUnstashTaskbar();
            this.mIsStashedTaskbarHovered = false;
        } else if (isStashedTaskbarHovered(i4, i5)) {
        } else {
            startStashedTaskbarHover(false);
        }
    }

    private void updateUnhoveredTaskbarState(int i4, int i5) {
        DeviceProfile deviceProfile = this.mTaskbarActivityContext.getDeviceProfile();
        Rect rect = this.mBottomEdgeBounds;
        int i6 = deviceProfile.heightPx;
        rect.set(0, i6 - this.mBottomScreenEdge, deviceProfile.widthPx, i6);
        if (isStashedTaskbarHovered(i4, i5)) {
            startStashedTaskbarHover(true);
        } else if (this.mBottomEdgeBounds.contains(i4, i5)) {
            this.mTaskbarActivityContext.onSwipeToUnstashTaskbar();
        }
    }

    @Override // com.android.quickstep.inputconsumers.DelegateInputConsumer
    public String getDelegatorName() {
        return "TaskbarUnstashInputConsumer";
    }

    @Override // com.android.quickstep.InputConsumer
    public int getType() {
        return this.mDelegate.getType() | 20480;
    }

    @Override // com.android.quickstep.InputConsumer
    public void onHoverEvent(MotionEvent motionEvent) {
        TaskbarActivityContext taskbarActivityContext;
        if (FeatureFlags.ENABLE_CURSOR_HOVER_STATES.get() && (taskbarActivityContext = this.mTaskbarActivityContext) != null && taskbarActivityContext.isTaskbarStashed()) {
            if (this.mIsStashedTaskbarHovered) {
                updateHoveredTaskbarState((int) motionEvent.getX(), (int) motionEvent.getY());
            } else {
                updateUnhoveredTaskbarState((int) motionEvent.getX(), (int) motionEvent.getY());
            }
        }
    }

    @Override // com.android.quickstep.InputConsumer
    public void onMotionEvent(MotionEvent motionEvent) {
        this.mLongPressDetector.onTouchEvent(motionEvent);
        if (this.mState != 1) {
            boolean z4 = false;
            boolean z5 = isMouseEvent(motionEvent) && isStashedTaskbarHovered((int) motionEvent.getX(), (int) motionEvent.getY());
            if (!z5) {
                this.mDelegate.onMotionEvent(motionEvent);
            }
            if (this.mTaskbarActivityContext == null || MotionEventsUtils.isTrackpadMotionEvent(motionEvent)) {
                return;
            }
            float rawX = motionEvent.getRawX();
            float rawY = motionEvent.getRawY();
            int action = motionEvent.getAction();
            if (action == 0) {
                this.mActivePointerId = motionEvent.getPointerId(0);
                this.mDownPos.set(motionEvent.getX(), motionEvent.getY());
                this.mLastPos.set(this.mDownPos);
                this.mHasPassedTaskbarNavThreshold = false;
                this.mTaskbarActivityContext.setAutohideSuspendFlag(4, true);
                if (isInTaskbarArea(rawX) && !this.mIsTransientTaskbar) {
                    this.mLongPressDownX = rawX;
                    this.mLongPressDownY = rawY;
                    this.mTaskbarActivityContext.startTaskbarUnstashHint(true, false);
                    this.mCanceledUnstashHint = false;
                }
                TaskbarTranslationController.TransitionCallback transitionCallback = this.mTransitionCallback;
                if (transitionCallback != null && !this.mIsTaskbarAllAppsOpen) {
                    transitionCallback.onActionDown();
                }
                if (this.mIsTransientTaskbar && isInBubbleBarArea(rawX)) {
                    this.mIsInBubbleBarArea = true;
                    return;
                }
                return;
            }
            if (action != 1) {
                if (action == 2) {
                    if (!this.mIsTransientTaskbar && !this.mCanceledUnstashHint) {
                        float f4 = this.mLongPressDownX - rawX;
                        float f5 = this.mLongPressDownY - rawY;
                        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
                        if ((f5 * f5) + (f4 * f4) > this.mSquaredTouchSlop) {
                            this.mTaskbarActivityContext.startTaskbarUnstashHint(false, false);
                            this.mCanceledUnstashHint = true;
                        }
                    }
                    int findPointerIndex = motionEvent.findPointerIndex(this.mActivePointerId);
                    if (findPointerIndex == -1) {
                        return;
                    }
                    this.mLastPos.set(motionEvent.getX(findPointerIndex), motionEvent.getY(findPointerIndex));
                    if (this.mIsTransientTaskbar) {
                        float f6 = this.mLastPos.y - this.mDownPos.y;
                        int i4 = (f6 > 0.0f ? 1 : (f6 == 0.0f ? 0 : -1));
                        if (i4 < 0 && Math.abs(f6) >= this.mTaskbarNavThreshold) {
                            z4 = true;
                        }
                        if (!this.mHasPassedTaskbarNavThreshold && z4) {
                            this.mHasPassedTaskbarNavThreshold = true;
                            if (this.mIsInBubbleBarArea) {
                                this.mTaskbarActivityContext.onSwipeToOpenBubblebar();
                            } else {
                                this.mTaskbarActivityContext.onSwipeToUnstashTaskbar();
                            }
                        }
                        if (i4 < 0) {
                            float f7 = -OverScroll.dampedScroll(-f6, this.mTaskbarNavThresholdY);
                            TaskbarTranslationController.TransitionCallback transitionCallback2 = this.mTransitionCallback;
                            if (transitionCallback2 == null || this.mIsTaskbarAllAppsOpen) {
                                return;
                            }
                            transitionCallback2.onActionMove(f7);
                            return;
                        }
                        return;
                    }
                    return;
                } else if (action != 3) {
                    if (action != 6) {
                        if (action == 12 && z5) {
                            this.mOverviewCommandHelper.addCommand(5);
                            return;
                        }
                        return;
                    }
                    int actionIndex = motionEvent.getActionIndex();
                    if (motionEvent.getPointerId(actionIndex) == this.mActivePointerId) {
                        int i5 = actionIndex != 0 ? 0 : 1;
                        this.mDownPos.set(motionEvent.getX(i5) - (this.mLastPos.x - this.mDownPos.x), motionEvent.getY(i5) - (this.mLastPos.y - this.mDownPos.y));
                        this.mLastPos.set(motionEvent.getX(i5), motionEvent.getY(i5));
                        this.mActivePointerId = motionEvent.getPointerId(i5);
                        return;
                    }
                    return;
                }
            }
            if (!this.mIsTransientTaskbar && !this.mCanceledUnstashHint) {
                this.mTaskbarActivityContext.startTaskbarUnstashHint(false, false);
            }
            this.mTaskbarActivityContext.setAutohideSuspendFlag(4, false);
            TaskbarTranslationController.TransitionCallback transitionCallback3 = this.mTransitionCallback;
            if (transitionCallback3 != null) {
                transitionCallback3.onActionEnd();
            }
            this.mHasPassedTaskbarNavThreshold = false;
            this.mIsInBubbleBarArea = false;
        }
    }
}
