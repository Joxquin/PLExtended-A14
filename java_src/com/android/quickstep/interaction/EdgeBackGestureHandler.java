package com.android.quickstep.interaction;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.SystemProperties;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.testing.shared.ResourceUtils;
import com.android.launcher3.util.DisplayController;
import com.android.quickstep.interaction.EdgeBackGesturePanel;
import com.android.quickstep.util.StaggeredWorkspaceAnim;
/* loaded from: classes.dex */
public class EdgeBackGestureHandler implements View.OnTouchListener {
    private static final int MAX_LONG_PRESS_TIMEOUT = SystemProperties.getInt("gestures.back_timeout", (int) StaggeredWorkspaceAnim.DURATION_MS);
    private static final String TAG = "EdgeBackGestureHandler";
    private final int mBottomGestureHeight;
    private final Context mContext;
    private BackGestureResult mDisallowedGestureReason;
    private EdgeBackGesturePanel mEdgeBackPanel;
    private final int mEdgeWidth;
    private BackGestureAttemptCallback mGestureCallback;
    private boolean mIsEnabled;
    private int mLeftInset;
    private final int mLongPressTimeout;
    private int mRightInset;
    private final float mTouchSlop;
    private final Point mDisplaySize = new Point();
    private final PointF mDownPoint = new PointF();
    private boolean mThresholdCrossed = false;
    private boolean mAllowGesture = false;
    private final EdgeBackGesturePanel.BackCallback mBackCallback = new EdgeBackGesturePanel.BackCallback() { // from class: com.android.quickstep.interaction.EdgeBackGestureHandler.1
        @Override // com.android.quickstep.interaction.EdgeBackGesturePanel.BackCallback
        public void cancelBack() {
            if (EdgeBackGestureHandler.this.mGestureCallback != null) {
                EdgeBackGestureHandler.this.mGestureCallback.onBackGestureAttempted(EdgeBackGestureHandler.this.mEdgeBackPanel.getIsLeftPanel() ? BackGestureResult.BACK_CANCELLED_FROM_LEFT : BackGestureResult.BACK_CANCELLED_FROM_RIGHT);
            }
        }

        @Override // com.android.quickstep.interaction.EdgeBackGesturePanel.BackCallback
        public void triggerBack() {
            if (EdgeBackGestureHandler.this.mGestureCallback != null) {
                EdgeBackGestureHandler.this.mGestureCallback.onBackGestureAttempted(EdgeBackGestureHandler.this.mEdgeBackPanel.getIsLeftPanel() ? BackGestureResult.BACK_COMPLETED_FROM_LEFT : BackGestureResult.BACK_COMPLETED_FROM_RIGHT);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface BackGestureAttemptCallback {
        void onBackGestureAttempted(BackGestureResult backGestureResult);

        default void onBackGestureProgress(float f4, float f5, boolean z4) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum BackGestureResult {
        UNKNOWN,
        BACK_COMPLETED_FROM_LEFT,
        BACK_COMPLETED_FROM_RIGHT,
        BACK_CANCELLED_FROM_LEFT,
        BACK_CANCELLED_FROM_RIGHT,
        BACK_NOT_STARTED_TOO_FAR_FROM_EDGE,
        BACK_NOT_STARTED_IN_NAV_BAR_REGION
    }

    public EdgeBackGestureHandler(Context context) {
        Resources resources = context.getResources();
        this.mContext = context;
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mLongPressTimeout = Math.min(MAX_LONG_PRESS_TIMEOUT, ViewConfiguration.getLongPressTimeout());
        this.mBottomGestureHeight = ResourceUtils.getNavbarSize(resources, "navigation_bar_gesture_height");
        int dimenByName = ResourceUtils.getDimenByName(48, resources, "config_backGestureInset");
        this.mEdgeWidth = dimenByName == 0 ? Utilities.dpToPx(18.0f) : dimenByName;
    }

    private void cancelGesture(MotionEvent motionEvent) {
        this.mAllowGesture = false;
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        this.mEdgeBackPanel.onMotionEvent(obtain);
        obtain.recycle();
    }

    private ViewGroup.LayoutParams createLayoutParams() {
        Resources resources = this.mContext.getResources();
        return new ViewGroup.LayoutParams(ResourceUtils.getNavbarSize(resources, "navigation_edge_panel_width"), ResourceUtils.getDimenByName(48, resources, "navigation_edge_panel_height"));
    }

    private boolean isWithinTouchRegion(int i4, int i5) {
        int i6 = this.mEdgeWidth;
        if (i4 > this.mLeftInset + i6 && i4 < (this.mDisplaySize.x - i6) - this.mRightInset) {
            this.mDisallowedGestureReason = BackGestureResult.BACK_NOT_STARTED_TOO_FAR_FROM_EDGE;
            return false;
        } else if (i5 >= this.mDisplaySize.y - this.mBottomGestureHeight) {
            this.mDisallowedGestureReason = BackGestureResult.BACK_NOT_STARTED_IN_NAV_BAR_REGION;
            return false;
        } else {
            return true;
        }
    }

    private void onMotionEvent(MotionEvent motionEvent) {
        BackGestureAttemptCallback backGestureAttemptCallback;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            boolean z4 = motionEvent.getX() <= ((float) (this.mEdgeWidth + this.mLeftInset));
            this.mDisallowedGestureReason = BackGestureResult.UNKNOWN;
            this.mAllowGesture = isWithinTouchRegion((int) motionEvent.getX(), (int) motionEvent.getY());
            this.mDownPoint.set(motionEvent.getX(), motionEvent.getY());
            if (this.mAllowGesture) {
                this.mEdgeBackPanel.setIsLeftPanel(z4);
                this.mEdgeBackPanel.onMotionEvent(motionEvent);
                this.mThresholdCrossed = false;
            }
        } else if (this.mAllowGesture) {
            if (!this.mThresholdCrossed) {
                if (actionMasked == 5) {
                    cancelGesture(motionEvent);
                    return;
                } else if (actionMasked == 2) {
                    if (motionEvent.getEventTime() - motionEvent.getDownTime() > this.mLongPressTimeout) {
                        cancelGesture(motionEvent);
                        return;
                    }
                    float abs = Math.abs(motionEvent.getX() - this.mDownPoint.x);
                    float abs2 = Math.abs(motionEvent.getY() - this.mDownPoint.y);
                    if (abs2 > abs && abs2 > this.mTouchSlop) {
                        cancelGesture(motionEvent);
                        return;
                    } else if (abs > abs2 && abs > this.mTouchSlop) {
                        this.mThresholdCrossed = true;
                    }
                }
            }
            if (FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get()) {
                this.mGestureCallback.onBackGestureProgress(motionEvent.getX() - this.mDownPoint.x, motionEvent.getY() - this.mDownPoint.y, this.mEdgeBackPanel.getIsLeftPanel());
            }
            this.mEdgeBackPanel.onMotionEvent(motionEvent);
        }
        if (actionMasked == 1 || actionMasked == 3) {
            float abs3 = Math.abs(motionEvent.getX() - this.mDownPoint.x);
            if (abs3 <= Math.abs(motionEvent.getY() - this.mDownPoint.y) || abs3 <= this.mTouchSlop || this.mAllowGesture || (backGestureAttemptCallback = this.mGestureCallback) == null) {
                return;
            }
            backGestureAttemptCallback.onBackGestureAttempted(this.mDisallowedGestureReason);
        }
    }

    public boolean onInterceptTouch(MotionEvent motionEvent) {
        return isWithinTouchRegion((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.mIsEnabled) {
            onMotionEvent(motionEvent);
            return true;
        }
        return false;
    }

    public void registerBackGestureAttemptCallback(BackGestureAttemptCallback backGestureAttemptCallback) {
        this.mGestureCallback = backGestureAttemptCallback;
    }

    public void setInsets(int i4, int i5) {
        this.mLeftInset = i4;
        this.mRightInset = i5;
    }

    public void setViewGroupParent(ViewGroup viewGroup) {
        this.mIsEnabled = viewGroup != null;
        EdgeBackGesturePanel edgeBackGesturePanel = this.mEdgeBackPanel;
        if (edgeBackGesturePanel != null) {
            edgeBackGesturePanel.onDestroy();
            this.mEdgeBackPanel = null;
        }
        if (this.mIsEnabled) {
            EdgeBackGesturePanel edgeBackGesturePanel2 = new EdgeBackGesturePanel(this.mContext, viewGroup, createLayoutParams());
            this.mEdgeBackPanel = edgeBackGesturePanel2;
            edgeBackGesturePanel2.setBackCallback(this.mBackCallback);
            Point point = ((DisplayController) DisplayController.INSTANCE.get(this.mContext)).getInfo().currentSize;
            this.mDisplaySize.set(point.x, point.y);
            this.mEdgeBackPanel.setDisplaySize(this.mDisplaySize);
        }
    }

    public void unregisterBackGestureAttemptCallback() {
        this.mGestureCallback = null;
    }
}
