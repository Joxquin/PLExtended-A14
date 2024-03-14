package com.android.launcher3;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.views.BaseDragLayer;
import com.android.launcher3.views.RecyclerViewFastScroller;
/* loaded from: classes.dex */
public abstract class FastScrollRecyclerView extends RecyclerView {
    protected RecyclerViewFastScroller mScrollbar;

    public FastScrollRecyclerView(Context context) {
        this(context, null);
    }

    public final void bindFastScrollbar(RecyclerViewFastScroller recyclerViewFastScroller) {
        this.mScrollbar = recyclerViewFastScroller;
        recyclerViewFastScroller.setRecyclerView(this);
        onUpdateScrollbar(0);
    }

    public final int getAvailableScrollBarHeight() {
        return getScrollbarTrackHeight() - this.mScrollbar.getThumbHeight();
    }

    public final int getAvailableScrollHeight() {
        return Math.max(0, computeVerticalScrollRange() - ((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    public RecyclerViewFastScroller getScrollbar() {
        return this.mScrollbar;
    }

    public final int getScrollbarTrackHeight() {
        return (this.mScrollbar.getHeight() - getScrollBarTop()) - getScrollBarMarginBottom();
    }

    public void onFastScrollCompleted() {
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (isLayoutSuppressed()) {
            accessibilityNodeInfo.setScrollable(false);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int i4) {
        super.onScrollStateChanged(i4);
        if (i4 == 0) {
            AccessibilityManagerCompat.sendScrollFinishedEventToTest(getContext());
        }
    }

    public abstract void onUpdateScrollbar(int i4);

    public abstract String scrollToPositionAtProgress(float f4);

    public final void scrollToTop() {
        RecyclerViewFastScroller recyclerViewFastScroller = this.mScrollbar;
        if (recyclerViewFastScroller != null) {
            recyclerViewFastScroller.reattachThumbToScroll();
        }
        scrollToPosition(0);
    }

    public final boolean shouldContainerScroll(BaseDragLayer baseDragLayer, MotionEvent motionEvent) {
        float[] fArr = {motionEvent.getX(), motionEvent.getY()};
        Utilities.mapCoordInSelfToDescendant(this.mScrollbar, baseDragLayer, fArr);
        return !this.mScrollbar.shouldBlockIntercept((int) fArr[0], (int) fArr[1]) && computeVerticalScrollOffset() == 0;
    }

    public final void synchronizeScrollBarThumbOffsetToViewScroll(int i4, int i5) {
        if (i5 <= 0) {
            this.mScrollbar.setThumbOffsetY(-1);
            return;
        }
        this.mScrollbar.setThumbOffsetY((int) ((i4 / i5) * getAvailableScrollBarHeight()));
    }

    public FastScrollRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FastScrollRecyclerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
