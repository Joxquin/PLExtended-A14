package com.android.launcher3;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.window.OnBackAnimationCallback;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.util.TouchController;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
/* loaded from: classes.dex */
public abstract class AbstractFloatingView extends LinearLayout implements TouchController, OnBackAnimationCallback {
    public static final int TYPE_ACCESSIBLE = 4193471;
    public static final int TYPE_ACTION_POPUP = 2;
    public static final int TYPE_ADD_TO_HOME_CONFIRMATION = 524288;
    public static final int TYPE_ALL = 4194303;
    public static final int TYPE_ALL_APPS_EDU = 512;
    public static final int TYPE_ALL_EXCEPT_ON_BOARD_POPUP = 4194271;
    public static final int TYPE_DISCOVERY_BOUNCE = 64;
    public static final int TYPE_DRAG_DROP_POPUP = 1024;
    public static final int TYPE_FOLDER = 1;
    public static final int TYPE_ICON_SURFACE = 8192;
    public static final int TYPE_LISTENER = 256;
    public static final int TYPE_ON_BOARD_POPUP = 32;
    public static final int TYPE_OPTIONS_POPUP = 4096;
    public static final int TYPE_OPTIONS_POPUP_DIALOG = 16384;
    public static final int TYPE_PIN_WIDGET_FROM_EXTERNAL_POPUP = 32768;
    public static final int TYPE_REBIND_SAFE = 1532532;
    public static final int TYPE_SNACKBAR = 128;
    public static final int TYPE_STATUS_BAR_SWIPE_DOWN_DISALLOW = 3196;
    public static final int TYPE_TASKBAR_ALL_APPS = 262144;
    public static final int TYPE_TASKBAR_EDUCATION_DIALOG = 131072;
    public static final int TYPE_TASKBAR_OVERLAYS = 393216;
    public static final int TYPE_TASKBAR_OVERLAY_PROXY = 1048576;
    public static final int TYPE_TASKBAR_PINNING_POPUP = 2097152;
    public static final int TYPE_TASK_MENU = 2048;
    public static final int TYPE_WIDGETS_BOTTOM_SHEET = 4;
    public static final int TYPE_WIDGETS_EDUCATION_DIALOG = 65536;
    public static final int TYPE_WIDGETS_FULL_SHEET = 16;
    public static final int TYPE_WIDGET_RESIZE_FRAME = 8;
    protected boolean mIsOpen;

    public AbstractFloatingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public static void closeAllOpenViews(ActivityContext activityContext, boolean z4) {
        closeOpenViews(activityContext, z4, TYPE_ALL);
        activityContext.finishAutoCancelActionMode();
    }

    public static void closeAllOpenViewsExcept(ActivityContext activityContext, boolean z4, int i4) {
        closeOpenViews(activityContext, z4, (~i4) & TYPE_ALL);
        activityContext.finishAutoCancelActionMode();
    }

    public static void closeOpenContainer(ActivityContext activityContext, int i4) {
        AbstractFloatingView openView = getOpenView(activityContext, i4);
        if (openView != null) {
            openView.close(true);
        }
    }

    public static void closeOpenViews(ActivityContext activityContext, boolean z4, int i4) {
        BaseDragLayer dragLayer = activityContext.getDragLayer();
        for (int childCount = dragLayer.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = dragLayer.getChildAt(childCount);
            if (childAt instanceof AbstractFloatingView) {
                AbstractFloatingView abstractFloatingView = (AbstractFloatingView) childAt;
                if (abstractFloatingView.isOfType(i4)) {
                    abstractFloatingView.close(z4);
                }
            }
        }
    }

    public static AbstractFloatingView getAnyView(ActivityContext activityContext, int i4) {
        return getView(activityContext, i4, false);
    }

    public static AbstractFloatingView getOpenView(ActivityContext activityContext, int i4) {
        return getView(activityContext, i4, true);
    }

    public static AbstractFloatingView getTopOpenView(ActivityContext activityContext) {
        return getTopOpenViewWithType(activityContext, TYPE_ALL);
    }

    public static AbstractFloatingView getTopOpenViewWithType(ActivityContext activityContext, int i4) {
        return getOpenView(activityContext, i4);
    }

    private static AbstractFloatingView getView(ActivityContext activityContext, int i4, boolean z4) {
        BaseDragLayer dragLayer = activityContext.getDragLayer();
        if (dragLayer == null) {
            return null;
        }
        for (int childCount = dragLayer.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = dragLayer.getChildAt(childCount);
            if (childAt instanceof AbstractFloatingView) {
                AbstractFloatingView abstractFloatingView = (AbstractFloatingView) childAt;
                if (abstractFloatingView.isOfType(i4) && (!z4 || abstractFloatingView.isOpen())) {
                    return abstractFloatingView;
                }
            }
        }
        return null;
    }

    public static boolean hasOpenView(ActivityContext activityContext, int i4) {
        return getOpenView(activityContext, i4) != null;
    }

    public void addHintCloseAnim(float f4, Interpolator interpolator, PendingAnimation pendingAnimation) {
    }

    public void announceAccessibilityChanges() {
        Pair accessibilityTarget = getAccessibilityTarget();
        if (accessibilityTarget == null || !AccessibilityManagerCompat.isAccessibilityEnabled(getContext())) {
            return;
        }
        AccessibilityManagerCompat.sendCustomAccessibilityEvent((View) accessibilityTarget.first, 32, (String) accessibilityTarget.second);
        if (this.mIsOpen) {
            getAccessibilityInitialFocusView().performAccessibilityAction(64, null);
        }
        ((ActivityContext) ActivityContext.lookupContext(getContext())).getDragLayer().sendAccessibilityEvent(2048);
    }

    public boolean canHandleBack() {
        return true;
    }

    public boolean canInterceptEventsInSystemGestureRegion() {
        return false;
    }

    public final void close(boolean z4) {
        handleClose(z4 & ValueAnimator.areAnimatorsEnabled());
        this.mIsOpen = false;
    }

    public View getAccessibilityInitialFocusView() {
        return this;
    }

    public Pair getAccessibilityTarget() {
        return null;
    }

    public abstract void handleClose(boolean z4);

    public abstract boolean isOfType(int i4);

    public final boolean isOpen() {
        return this.mIsOpen;
    }

    public void onBackInvoked() {
        close(true);
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public AbstractFloatingView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }

    public static void closeAllOpenViews(ActivityContext activityContext) {
        closeAllOpenViews(activityContext, true);
    }

    public static void closeAllOpenViewsExcept(ActivityContext activityContext, int i4) {
        closeAllOpenViewsExcept(activityContext, true, i4);
    }
}
