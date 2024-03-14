package com.android.launcher3.widget.picker;

import android.content.Context;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.recyclerview.widget.InterfaceC0288p0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.Z;
import com.android.launcher3.FastScrollRecyclerView;
import com.android.launcher3.util.ScrollableLayoutManager;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class WidgetsRecyclerView extends FastScrollRecyclerView implements InterfaceC0288p0 {
    private WidgetsListAdapter mAdapter;
    private final Point mFastScrollerOffset;
    private HeaderViewDimensionsProvider mHeaderViewDimensionsProvider;
    private final int mScrollbarTop;
    private boolean mTouchDownOnScroller;

    /* loaded from: classes.dex */
    public interface HeaderViewDimensionsProvider {
    }

    public WidgetsRecyclerView(Context context) {
        this(context, null);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final int getScrollBarTop() {
        HeaderViewDimensionsProvider headerViewDimensionsProvider = this.mHeaderViewDimensionsProvider;
        if (headerViewDimensionsProvider == null) {
            return this.mScrollbarTop;
        }
        return this.mScrollbarTop + ((WidgetsFullSheet) headerViewDimensionsProvider).getHeaderViewHeight();
    }

    public final boolean isHitOnScrollBar(MotionEvent motionEvent) {
        return this.mScrollbar.isHitInParent(motionEvent.getX(), motionEvent.getY(), this.mFastScrollerOffset);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        getContext();
        setLayoutManager(new ScrollableLayoutManager());
    }

    @Override // androidx.recyclerview.widget.InterfaceC0288p0
    public final boolean onInterceptTouchEvent$1(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mTouchDownOnScroller = isHitOnScrollBar(motionEvent);
        }
        if (this.mTouchDownOnScroller) {
            return this.mScrollbar.handleTouchEvent(motionEvent, this.mFastScrollerOffset);
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.InterfaceC0288p0
    public final void onRequestDisallowInterceptTouchEvent() {
    }

    @Override // android.view.View, androidx.recyclerview.widget.InterfaceC0288p0
    public final void onTouchEvent(MotionEvent motionEvent) {
        if (this.mTouchDownOnScroller) {
            this.mScrollbar.handleTouchEvent(motionEvent, this.mFastScrollerOffset);
        }
    }

    @Override // com.android.launcher3.FastScrollRecyclerView
    public final void onUpdateScrollbar(int i4) {
        if (this.mAdapter.getItemCount() == 0) {
            this.mScrollbar.setThumbOffsetY(-1);
            return;
        }
        int computeVerticalScrollOffset = computeVerticalScrollOffset();
        if (computeVerticalScrollOffset < 0) {
            this.mScrollbar.setThumbOffsetY(-1);
        } else {
            synchronizeScrollBarThumbOffsetToViewScroll(computeVerticalScrollOffset, getAvailableScrollHeight());
        }
    }

    @Override // com.android.launcher3.FastScrollRecyclerView
    public final String scrollToPositionAtProgress(float f4) {
        if (this.mAdapter.getItemCount() == 0) {
            return "";
        }
        stopScroll();
        float itemCount = this.mAdapter.getItemCount() * f4;
        ((LinearLayoutManager) getLayoutManager()).scrollToPositionWithOffset(0, (int) (-(getAvailableScrollHeight() * f4)));
        if (f4 == 1.0f) {
            itemCount -= 1.0f;
        }
        return this.mAdapter.getSectionName((int) itemCount);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void setAdapter(Z z4) {
        super.setAdapter(z4);
        this.mAdapter = (WidgetsListAdapter) z4;
    }

    public final void setHeaderViewDimensionsProvider(WidgetsFullSheet widgetsFullSheet) {
        this.mHeaderViewDimensionsProvider = widgetsFullSheet;
    }

    public WidgetsRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WidgetsRecyclerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mFastScrollerOffset = new Point();
        this.mScrollbarTop = getResources().getDimensionPixelSize(R.dimen.dynamic_grid_edge_margin);
        addOnItemTouchListener(this);
    }
}
