package com.android.launcher3.touch;

import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.uioverrides.touchcontrollers.NoButtonQuickSwitchTouchController;
/* loaded from: classes.dex */
public final class BothAxesSwipeDetector extends BaseSwipeDetector {
    private final Listener mListener;
    private int mScrollDirections;

    /* loaded from: classes.dex */
    public interface Listener {
    }

    public BothAxesSwipeDetector(Launcher launcher, Listener listener) {
        super(launcher, ViewConfiguration.get(launcher), Utilities.isRtl(launcher.getResources()));
        this.mListener = listener;
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public final void reportDragEndInternal(PointF pointF) {
        ((NoButtonQuickSwitchTouchController) this.mListener).onDragEnd(pointF);
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public final void reportDragStartInternal(boolean z4) {
        ((NoButtonQuickSwitchTouchController) this.mListener).onDragStart(!z4);
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public final void reportDraggingInternal(PointF pointF, MotionEvent motionEvent) {
        ((NoButtonQuickSwitchTouchController) this.mListener).onDrag(pointF, motionEvent);
    }

    public final void setDetectableScrollConditions(int i4, boolean z4) {
        this.mScrollDirections = i4;
        this.mIgnoreSlopWhenSettling = false;
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public final boolean shouldScrollStart(PointF pointF) {
        int i4 = this.mScrollDirections;
        int i5 = i4 & 1;
        float f4 = this.mTouchSlop;
        return (i5 > 0 && (pointF.y > (-f4) ? 1 : (pointF.y == (-f4) ? 0 : -1)) <= 0) || ((i4 & 2) > 0 && (pointF.x > f4 ? 1 : (pointF.x == f4 ? 0 : -1)) >= 0) || ((i4 & 4) > 0 && (pointF.y > f4 ? 1 : (pointF.y == f4 ? 0 : -1)) >= 0) || ((i4 & 8) > 0 && (pointF.x > (-f4) ? 1 : (pointF.x == (-f4) ? 0 : -1)) <= 0);
    }
}
