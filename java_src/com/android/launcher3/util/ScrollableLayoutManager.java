package com.android.launcher3.util;

import android.util.SparseIntArray;
import android.view.View;
import androidx.recyclerview.widget.A0;
import androidx.recyclerview.widget.AbstractC0280l0;
import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.Z;
/* loaded from: classes.dex */
public class ScrollableLayoutManager extends GridLayoutManager {
    protected final SparseIntArray mCachedSizes;
    private int mLastValidHeightIndex;
    private RecyclerView mRv;
    private int[] mTotalHeightCache;

    public ScrollableLayoutManager() {
        super(1);
        this.mCachedSizes = new SparseIntArray();
        this.mTotalHeightCache = new int[1];
        this.mLastValidHeightIndex = 0;
    }

    private int getItemsHeight(Z z4, int i4) {
        int itemCount = z4.getItemCount();
        int i5 = itemCount + 1;
        if (this.mTotalHeightCache.length < i5) {
            this.mTotalHeightCache = new int[i5];
            this.mLastValidHeightIndex = 0;
        }
        if (i4 > itemCount) {
            i4 = itemCount;
        } else if (i4 < 0) {
            i4 = 0;
        }
        int i6 = this.mLastValidHeightIndex;
        if (i4 <= i6) {
            return this.mTotalHeightCache[i4];
        }
        int i7 = this.mTotalHeightCache[i6];
        while (i6 < i4) {
            i7 = incrementTotalHeight(z4, i6, i7);
            i6++;
            this.mTotalHeightCache[i6] = i7;
        }
        this.mLastValidHeightIndex = i4;
        return i7;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void calculateExtraLayoutSpace(A0 a02, int[] iArr) {
        super.calculateExtraLayoutSpace(a02, iArr);
        iArr[1] = Math.max(iArr[1], (int) (getHeight() * 0.050000012f));
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final int computeVerticalScrollExtent(A0 a02) {
        RecyclerView recyclerView = this.mRv;
        if (recyclerView == null) {
            return 0;
        }
        return recyclerView.getHeight();
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final int computeVerticalScrollOffset(A0 a02) {
        View childAt;
        E0 findContainingViewHolder;
        int layoutPosition;
        RecyclerView recyclerView = this.mRv;
        Z adapter = recyclerView == null ? null : recyclerView.getAdapter();
        if (adapter == null || adapter.getItemCount() == 0 || getChildCount() == 0 || (findContainingViewHolder = this.mRv.findContainingViewHolder((childAt = getChildAt(0)))) == null || (layoutPosition = findContainingViewHolder.getLayoutPosition()) < 0) {
            return 0;
        }
        return (getPaddingTop() + getItemsHeight(adapter, layoutPosition)) - AbstractC0280l0.getDecoratedTop(childAt);
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final int computeVerticalScrollRange(A0 a02) {
        RecyclerView recyclerView = this.mRv;
        Z adapter = recyclerView == null ? null : recyclerView.getAdapter();
        if (adapter == null) {
            return 0;
        }
        return getItemsHeight(adapter, adapter.getItemCount());
    }

    public int incrementTotalHeight(Z z4, int i4, int i5) {
        return this.mCachedSizes.get(z4.getItemViewType(i4)) + i5;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void layoutDecoratedWithMargins(View view, int i4, int i5, int i6, int i7) {
        super.layoutDecoratedWithMargins(view, i4, i5, i6, i7);
        int itemViewType = this.mRv.getChildViewHolder(view).getItemViewType();
        int measuredHeight = view.getMeasuredHeight();
        SparseIntArray sparseIntArray = this.mCachedSizes;
        if (sparseIntArray.get(itemViewType, -1) != measuredHeight) {
            this.mLastValidHeightIndex = 0;
        }
        sparseIntArray.put(itemViewType, measuredHeight);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onAttachedToWindow(RecyclerView recyclerView) {
        this.mRv = recyclerView;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final void onItemsAdded(RecyclerView recyclerView, int i4, int i5) {
        super.onItemsAdded(recyclerView, i4, i5);
        this.mLastValidHeightIndex = 0;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final void onItemsChanged(RecyclerView recyclerView) {
        super.onItemsChanged(recyclerView);
        this.mLastValidHeightIndex = 0;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final void onItemsMoved(RecyclerView recyclerView, int i4, int i5) {
        super.onItemsMoved(recyclerView, i4, i5);
        this.mLastValidHeightIndex = 0;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final void onItemsRemoved(RecyclerView recyclerView, int i4, int i5) {
        super.onItemsRemoved(recyclerView, i4, i5);
        this.mLastValidHeightIndex = 0;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final void onItemsUpdated(RecyclerView recyclerView, int i4, int i5, Object obj) {
        super.onItemsUpdated(recyclerView, i4, i5, obj);
        this.mLastValidHeightIndex = 0;
    }
}
