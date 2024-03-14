package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.C0186x;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* renamed from: androidx.recyclerview.widget.l0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0280l0 {
    C0269g mChildHelper;
    private int mHeight;
    private int mHeightMode;
    T0 mHorizontalBoundCheck;
    private final C0276j0 mHorizontalBoundCheckCallback;
    boolean mIsAttachedToWindow;
    private boolean mItemPrefetchEnabled;
    private boolean mMeasurementCacheEnabled;
    int mPrefetchMaxCountObserved;
    boolean mPrefetchMaxObservedInInitialPrefetch;
    RecyclerView mRecyclerView;
    boolean mRequestedSimpleAnimations;
    O mSmoothScroller;
    T0 mVerticalBoundCheck;
    private final C0276j0 mVerticalBoundCheckCallback;
    private int mWidth;
    private int mWidthMode;

    public AbstractC0280l0() {
        C0276j0 c0276j0 = new C0276j0(this, 0);
        this.mHorizontalBoundCheckCallback = c0276j0;
        C0276j0 c0276j02 = new C0276j0(this, 1);
        this.mVerticalBoundCheckCallback = c0276j02;
        this.mHorizontalBoundCheck = new T0(c0276j0);
        this.mVerticalBoundCheck = new T0(c0276j02);
        this.mRequestedSimpleAnimations = false;
        this.mIsAttachedToWindow = false;
        this.mMeasurementCacheEnabled = true;
        this.mItemPrefetchEnabled = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void addViewInt(android.view.View r8, int r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.AbstractC0280l0.addViewInt(android.view.View, int, boolean):void");
    }

    public static int chooseSize(int i4, int i5, int i6) {
        int mode = View.MeasureSpec.getMode(i4);
        int size = View.MeasureSpec.getSize(i4);
        return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i5, i6) : size : Math.min(size, Math.max(i5, i6));
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
        if (r6 == 1073741824) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getChildMeasureSpec(boolean r4, int r5, int r6, int r7, int r8) {
        /*
            int r5 = r5 - r7
            r7 = 0
            int r5 = java.lang.Math.max(r7, r5)
            r0 = -2
            r1 = -1
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1073741824(0x40000000, float:2.0)
            if (r4 == 0) goto L1a
            if (r8 < 0) goto L11
            goto L1c
        L11:
            if (r8 != r1) goto L2f
            if (r6 == r2) goto L20
            if (r6 == 0) goto L2f
            if (r6 == r3) goto L20
            goto L2f
        L1a:
            if (r8 < 0) goto L1e
        L1c:
            r6 = r3
            goto L31
        L1e:
            if (r8 != r1) goto L22
        L20:
            r8 = r5
            goto L31
        L22:
            if (r8 != r0) goto L2f
            if (r6 == r2) goto L2c
            if (r6 != r3) goto L29
            goto L2c
        L29:
            r8 = r5
            r6 = r7
            goto L31
        L2c:
            r8 = r5
            r6 = r2
            goto L31
        L2f:
            r6 = r7
            r8 = r6
        L31:
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.AbstractC0280l0.getChildMeasureSpec(boolean, int, int, int, int):int");
    }

    public static int getDecoratedTop(View view) {
        return view.getTop() - ((C0282m0) view.getLayoutParams()).f3984b.top;
    }

    public static int getPosition(View view) {
        return ((C0282m0) view.getLayoutParams()).a();
    }

    public static C0278k0 getProperties(Context context, AttributeSet attributeSet, int i4, int i5) {
        C0278k0 c0278k0 = new C0278k0();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Z.a.f2347a, i4, i5);
        c0278k0.f3968a = obtainStyledAttributes.getInt(0, 1);
        c0278k0.f3969b = obtainStyledAttributes.getInt(10, 1);
        c0278k0.f3970c = obtainStyledAttributes.getBoolean(9, false);
        c0278k0.f3971d = obtainStyledAttributes.getBoolean(11, false);
        obtainStyledAttributes.recycle();
        return c0278k0;
    }

    private static boolean isMeasurementUpToDate(int i4, int i5, int i6) {
        int mode = View.MeasureSpec.getMode(i5);
        int size = View.MeasureSpec.getSize(i5);
        if (i6 <= 0 || i4 == i6) {
            if (mode == Integer.MIN_VALUE) {
                return size >= i4;
            } else if (mode != 0) {
                return mode == 1073741824 && size == i4;
            } else {
                return true;
            }
        }
        return false;
    }

    public final void addDisappearingView(View view) {
        addViewInt(view, -1, true);
    }

    public final void addDisappearingView$1(View view) {
        addViewInt(view, 0, true);
    }

    public final void addView(View view) {
        addViewInt(view, -1, false);
    }

    public final void addView$1(View view) {
        addViewInt(view, 0, false);
    }

    public void assertNotInLayoutOrScroll(String str) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.assertNotInLayoutOrScroll(str);
        }
    }

    public boolean canScrollHorizontally() {
        return false;
    }

    public boolean canScrollVertically() {
        return false;
    }

    public boolean checkLayoutParams(C0282m0 c0282m0) {
        return c0282m0 != null;
    }

    public void collectAdjacentPrefetchPositions(int i4, int i5, A0 a02, C c4) {
    }

    public void collectInitialPrefetchPositions(int i4, C c4) {
    }

    public int computeHorizontalScrollExtent(A0 a02) {
        return 0;
    }

    public int computeHorizontalScrollOffset(A0 a02) {
        return 0;
    }

    public int computeHorizontalScrollRange(A0 a02) {
        return 0;
    }

    public int computeVerticalScrollExtent(A0 a02) {
        return 0;
    }

    public int computeVerticalScrollOffset(A0 a02) {
        return 0;
    }

    public int computeVerticalScrollRange(A0 a02) {
        return 0;
    }

    public final void detachAndScrapAttachedViews(C0295t0 c0295t0) {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return;
            }
            View childAt = getChildAt(childCount);
            E0 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt.shouldIgnore()) {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "ignoring view " + childViewHolderInt);
                }
            } else if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || this.mRecyclerView.mAdapter.hasStableIds()) {
                getChildAt(childCount);
                this.mChildHelper.c(childCount);
                c0295t0.k(childAt);
                this.mRecyclerView.mViewInfoStore.c(childViewHolderInt);
            } else {
                removeViewAt(childCount);
                c0295t0.j(childViewHolderInt);
            }
        }
    }

    public View findViewByPosition(int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            E0 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i4 && !childViewHolderInt.shouldIgnore() && (this.mRecyclerView.mState.f3764g || !childViewHolderInt.isRemoved())) {
                return childAt;
            }
        }
        return null;
    }

    public abstract C0282m0 generateDefaultLayoutParams();

    public C0282m0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof C0282m0) {
            return new C0282m0((C0282m0) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new C0282m0((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new C0282m0(layoutParams);
    }

    public final View getChildAt(int i4) {
        C0269g c0269g = this.mChildHelper;
        if (c0269g != null) {
            return c0269g.d(i4);
        }
        return null;
    }

    public final int getChildCount() {
        C0269g c0269g = this.mChildHelper;
        if (c0269g != null) {
            return c0269g.e();
        }
        return 0;
    }

    public int getColumnCountForAccessibility(C0295t0 c0295t0, A0 a02) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || recyclerView.mAdapter == null || !canScrollHorizontally()) {
            return 1;
        }
        return this.mRecyclerView.mAdapter.getItemCount();
    }

    public final int getHeight() {
        return this.mHeight;
    }

    public final int getHeightMode() {
        return this.mHeightMode;
    }

    public final int getItemCount() {
        RecyclerView recyclerView = this.mRecyclerView;
        Z adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        if (adapter != null) {
            return adapter.getItemCount();
        }
        return 0;
    }

    public final int getPaddingBottom() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    public final int getPaddingLeft() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    public final int getPaddingRight() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    public final int getPaddingTop() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    public int getRowCountForAccessibility(C0295t0 c0295t0, A0 a02) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || recyclerView.mAdapter == null || !canScrollVertically()) {
            return 1;
        }
        return this.mRecyclerView.mAdapter.getItemCount();
    }

    public final void getTransformedBoundingBox(View view, Rect rect) {
        Matrix matrix;
        Rect rect2 = ((C0282m0) view.getLayoutParams()).f3984b;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.mRecyclerView != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.mRecyclerView.mTempRectF;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    public final int getWidth() {
        return this.mWidth;
    }

    public final int getWidthMode() {
        return this.mWidthMode;
    }

    public boolean isAutoMeasureEnabled() {
        return false;
    }

    public final boolean isItemPrefetchEnabled() {
        return this.mItemPrefetchEnabled;
    }

    public boolean isLayoutReversed() {
        return false;
    }

    public void layoutDecoratedWithMargins(View view, int i4, int i5, int i6, int i7) {
        C0282m0 c0282m0 = (C0282m0) view.getLayoutParams();
        Rect rect = c0282m0.f3984b;
        view.layout(i4 + rect.left + ((ViewGroup.MarginLayoutParams) c0282m0).leftMargin, i5 + rect.top + ((ViewGroup.MarginLayoutParams) c0282m0).topMargin, (i6 - rect.right) - ((ViewGroup.MarginLayoutParams) c0282m0).rightMargin, (i7 - rect.bottom) - ((ViewGroup.MarginLayoutParams) c0282m0).bottomMargin);
    }

    public final void measureChildWithMargins(View view) {
        C0282m0 c0282m0 = (C0282m0) view.getLayoutParams();
        Rect itemDecorInsetsForChild = this.mRecyclerView.getItemDecorInsetsForChild(view);
        int childMeasureSpec = getChildMeasureSpec(canScrollHorizontally(), this.mWidth, this.mWidthMode, getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0282m0).leftMargin + ((ViewGroup.MarginLayoutParams) c0282m0).rightMargin + itemDecorInsetsForChild.left + itemDecorInsetsForChild.right + 0, ((ViewGroup.MarginLayoutParams) c0282m0).width);
        int childMeasureSpec2 = getChildMeasureSpec(canScrollVertically(), this.mHeight, this.mHeightMode, getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0282m0).topMargin + ((ViewGroup.MarginLayoutParams) c0282m0).bottomMargin + itemDecorInsetsForChild.top + itemDecorInsetsForChild.bottom + 0, ((ViewGroup.MarginLayoutParams) c0282m0).height);
        if (shouldMeasureChild(view, childMeasureSpec, childMeasureSpec2, c0282m0)) {
            view.measure(childMeasureSpec, childMeasureSpec2);
        }
    }

    public void offsetChildrenHorizontal(int i4) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenHorizontal(i4);
        }
    }

    public void offsetChildrenVertical(int i4) {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.offsetChildrenVertical(i4);
        }
    }

    public void onAdapterChanged() {
    }

    public void onAttachedToWindow(RecyclerView recyclerView) {
    }

    public void onDetachedFromWindow(RecyclerView recyclerView) {
    }

    public View onFocusSearchFailed(View view, int i4, C0295t0 c0295t0, A0 a02) {
        return null;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.mRecyclerView;
        C0295t0 c0295t0 = recyclerView.mRecycler;
        A0 a02 = recyclerView.mState;
        if (recyclerView == null || accessibilityEvent == null) {
            return;
        }
        boolean z4 = true;
        if (!recyclerView.canScrollVertically(1) && !this.mRecyclerView.canScrollVertically(-1) && !this.mRecyclerView.canScrollHorizontally(-1) && !this.mRecyclerView.canScrollHorizontally(1)) {
            z4 = false;
        }
        accessibilityEvent.setScrollable(z4);
        Z z5 = this.mRecyclerView.mAdapter;
        if (z5 != null) {
            accessibilityEvent.setItemCount(z5.getItemCount());
        }
    }

    public void onInitializeAccessibilityNodeInfo(C0295t0 c0295t0, A0 a02, M.e eVar) {
        boolean canScrollVertically = this.mRecyclerView.canScrollVertically(-1);
        AccessibilityNodeInfo accessibilityNodeInfo = eVar.f1349a;
        if (canScrollVertically || this.mRecyclerView.canScrollHorizontally(-1)) {
            eVar.a(8192);
            accessibilityNodeInfo.setScrollable(true);
            Bundle extras = accessibilityNodeInfo.getExtras();
            if (extras != null) {
                extras.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (extras.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (-67108865)) | QuickStepContract.SYSUI_STATE_FREEFORM_ACTIVE_IN_DESKTOP_MODE);
            }
        }
        if (this.mRecyclerView.canScrollVertically(1) || this.mRecyclerView.canScrollHorizontally(1)) {
            eVar.a(4096);
            accessibilityNodeInfo.setScrollable(true);
            Bundle extras2 = accessibilityNodeInfo.getExtras();
            if (extras2 != null) {
                extras2.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (extras2.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (-67108865)) | QuickStepContract.SYSUI_STATE_FREEFORM_ACTIVE_IN_DESKTOP_MODE);
            }
        }
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(getRowCountForAccessibility(c0295t0, a02), getColumnCountForAccessibility(c0295t0, a02), false, 0));
    }

    public final void onInitializeAccessibilityNodeInfoForItem(View view, M.e eVar) {
        E0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt == null || childViewHolderInt.isRemoved() || this.mChildHelper.j(childViewHolderInt.itemView)) {
            return;
        }
        RecyclerView recyclerView = this.mRecyclerView;
        onInitializeAccessibilityNodeInfoForItem(recyclerView.mRecycler, recyclerView.mState, view, eVar);
    }

    public void onItemsAdded(RecyclerView recyclerView, int i4, int i5) {
    }

    public void onItemsChanged(RecyclerView recyclerView) {
    }

    public void onItemsMoved(RecyclerView recyclerView, int i4, int i5) {
    }

    public void onItemsRemoved(RecyclerView recyclerView, int i4, int i5) {
    }

    public void onItemsUpdated(RecyclerView recyclerView, int i4, int i5, Object obj) {
    }

    public void onLayoutChildren(C0295t0 c0295t0, A0 a02) {
        Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
    }

    public void onLayoutCompleted(A0 a02) {
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    public Parcelable onSaveInstanceState() {
        return null;
    }

    public void onScrollStateChanged(int i4) {
    }

    public boolean performAccessibilityAction(int i4, Bundle bundle) {
        int paddingTop;
        int paddingLeft;
        float f4;
        C0295t0 c0295t0 = this.mRecyclerView.mRecycler;
        int i5 = this.mHeight;
        int i6 = this.mWidth;
        Rect rect = new Rect();
        if (this.mRecyclerView.getMatrix().isIdentity() && this.mRecyclerView.getGlobalVisibleRect(rect)) {
            i5 = rect.height();
            i6 = rect.width();
        }
        if (i4 == 4096) {
            paddingTop = this.mRecyclerView.canScrollVertically(1) ? (i5 - getPaddingTop()) - getPaddingBottom() : 0;
            if (this.mRecyclerView.canScrollHorizontally(1)) {
                paddingLeft = (i6 - getPaddingLeft()) - getPaddingRight();
            }
            paddingLeft = 0;
        } else if (i4 != 8192) {
            paddingTop = 0;
            paddingLeft = 0;
        } else {
            paddingTop = this.mRecyclerView.canScrollVertically(-1) ? -((i5 - getPaddingTop()) - getPaddingBottom()) : 0;
            if (this.mRecyclerView.canScrollHorizontally(-1)) {
                paddingLeft = -((i6 - getPaddingLeft()) - getPaddingRight());
            }
            paddingLeft = 0;
        }
        if (paddingTop == 0 && paddingLeft == 0) {
            return false;
        }
        if (bundle != null) {
            f4 = bundle.getFloat("androidx.core.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT", 1.0f);
            if (f4 < 0.0f) {
                if (RecyclerView.sDebugAssertionsEnabled) {
                    throw new IllegalArgumentException("attempting to use ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT with a negative value (" + f4 + ")");
                }
                return false;
            }
        } else {
            f4 = 1.0f;
        }
        if (Float.compare(f4, Float.POSITIVE_INFINITY) == 0) {
            RecyclerView recyclerView = this.mRecyclerView;
            Z z4 = recyclerView.mAdapter;
            if (z4 == null) {
                return false;
            }
            if (i4 == 4096) {
                recyclerView.smoothScrollToPosition(z4.getItemCount() - 1);
            } else if (i4 == 8192) {
                recyclerView.smoothScrollToPosition(0);
            }
        } else {
            if (Float.compare(1.0f, f4) != 0 && Float.compare(0.0f, f4) != 0) {
                paddingLeft = (int) (paddingLeft * f4);
                paddingTop = (int) (paddingTop * f4);
            }
            this.mRecyclerView.smoothScrollBy(paddingLeft, paddingTop, null, Integer.MIN_VALUE, true);
        }
        return true;
    }

    public final void removeAndRecycleAllViews(C0295t0 c0295t0) {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return;
            }
            if (!RecyclerView.getChildViewHolderInt(getChildAt(childCount)).shouldIgnore()) {
                View childAt = getChildAt(childCount);
                removeViewAt(childCount);
                c0295t0.i(childAt);
            }
        }
    }

    public final void removeAndRecycleScrapInt(C0295t0 c0295t0) {
        ArrayList arrayList;
        int size = c0295t0.f4021a.size();
        int i4 = size - 1;
        while (true) {
            arrayList = c0295t0.f4021a;
            if (i4 < 0) {
                break;
            }
            View view = ((E0) arrayList.get(i4)).itemView;
            E0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.setIsRecyclable(false);
                if (childViewHolderInt.isTmpDetached()) {
                    this.mRecyclerView.removeDetachedView(view, false);
                }
                AbstractC0272h0 abstractC0272h0 = this.mRecyclerView.mItemAnimator;
                if (abstractC0272h0 != null) {
                    abstractC0272h0.d(childViewHolderInt);
                }
                childViewHolderInt.setIsRecyclable(true);
                E0 childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                childViewHolderInt2.mScrapContainer = null;
                childViewHolderInt2.mInChangeScrap = false;
                childViewHolderInt2.mFlags &= -33;
                c0295t0.j(childViewHolderInt2);
            }
            i4--;
        }
        arrayList.clear();
        ArrayList arrayList2 = c0295t0.f4022b;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.mRecyclerView.invalidate();
        }
    }

    public final void removeAndRecycleView(View view, C0295t0 c0295t0) {
        C0269g c0269g = this.mChildHelper;
        Y y4 = c0269g.f3936a;
        int indexOfChild = y4.f3917a.indexOfChild(view);
        if (indexOfChild >= 0) {
            if (c0269g.f3937b.f(indexOfChild)) {
                c0269g.k(view);
            }
            y4.d(indexOfChild);
        }
        c0295t0.i(view);
    }

    public final void removeViewAt(int i4) {
        if (getChildAt(i4) != null) {
            C0269g c0269g = this.mChildHelper;
            int f4 = c0269g.f(i4);
            Y y4 = c0269g.f3936a;
            View childAt = y4.f3917a.getChildAt(f4);
            if (childAt == null) {
                return;
            }
            if (c0269g.f3937b.f(f4)) {
                c0269g.k(childAt);
            }
            y4.d(f4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00ad, code lost:
        if (r8 == false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean requestChildRectangleOnScreen(androidx.recyclerview.widget.RecyclerView r9, android.view.View r10, android.graphics.Rect r11, boolean r12, boolean r13) {
        /*
            r8 = this;
            int r0 = r8.getPaddingLeft()
            int r1 = r8.getPaddingTop()
            int r2 = r8.mWidth
            int r3 = r8.getPaddingRight()
            int r2 = r2 - r3
            int r3 = r8.mHeight
            int r4 = r8.getPaddingBottom()
            int r3 = r3 - r4
            int r4 = r10.getLeft()
            int r5 = r11.left
            int r4 = r4 + r5
            int r5 = r10.getScrollX()
            int r4 = r4 - r5
            int r5 = r10.getTop()
            int r6 = r11.top
            int r5 = r5 + r6
            int r10 = r10.getScrollY()
            int r5 = r5 - r10
            int r10 = r11.width()
            int r10 = r10 + r4
            int r11 = r11.height()
            int r11 = r11 + r5
            int r4 = r4 - r0
            r0 = 0
            int r6 = java.lang.Math.min(r0, r4)
            int r5 = r5 - r1
            int r1 = java.lang.Math.min(r0, r5)
            int r10 = r10 - r2
            int r2 = java.lang.Math.max(r0, r10)
            int r11 = r11 - r3
            int r11 = java.lang.Math.max(r0, r11)
            androidx.recyclerview.widget.RecyclerView r3 = r8.mRecyclerView
            java.util.WeakHashMap r7 = androidx.core.view.J.f3079a
            int r3 = androidx.core.view.C0187y.c(r3)
            r7 = 1
            if (r3 != r7) goto L60
            if (r2 == 0) goto L5b
            goto L68
        L5b:
            int r2 = java.lang.Math.max(r6, r10)
            goto L68
        L60:
            if (r6 == 0) goto L63
            goto L67
        L63:
            int r6 = java.lang.Math.min(r4, r2)
        L67:
            r2 = r6
        L68:
            if (r1 == 0) goto L6b
            goto L6f
        L6b:
            int r1 = java.lang.Math.min(r5, r11)
        L6f:
            if (r13 == 0) goto Laf
            android.view.View r10 = r9.getFocusedChild()
            if (r10 != 0) goto L78
            goto Lac
        L78:
            int r11 = r8.getPaddingLeft()
            int r13 = r8.getPaddingTop()
            int r3 = r8.mWidth
            int r4 = r8.getPaddingRight()
            int r3 = r3 - r4
            int r4 = r8.mHeight
            int r5 = r8.getPaddingBottom()
            int r4 = r4 - r5
            androidx.recyclerview.widget.RecyclerView r8 = r8.mRecyclerView
            android.graphics.Rect r8 = r8.mTempRect
            androidx.recyclerview.widget.RecyclerView.getDecoratedBoundsWithMarginsInt(r10, r8)
            int r10 = r8.left
            int r10 = r10 - r2
            if (r10 >= r3) goto Lac
            int r10 = r8.right
            int r10 = r10 - r2
            if (r10 <= r11) goto Lac
            int r10 = r8.top
            int r10 = r10 - r1
            if (r10 >= r4) goto Lac
            int r8 = r8.bottom
            int r8 = r8 - r1
            if (r8 > r13) goto Laa
            goto Lac
        Laa:
            r8 = r7
            goto Lad
        Lac:
            r8 = r0
        Lad:
            if (r8 == 0) goto Lb4
        Laf:
            if (r2 != 0) goto Lb5
            if (r1 == 0) goto Lb4
            goto Lb5
        Lb4:
            return r0
        Lb5:
            if (r12 == 0) goto Lbb
            r9.scrollBy(r2, r1)
            goto Lbe
        Lbb:
            r9.smoothScrollBy(r2, r1)
        Lbe:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.AbstractC0280l0.requestChildRectangleOnScreen(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
    }

    public final void requestLayout() {
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    public int scrollHorizontallyBy(int i4, C0295t0 c0295t0, A0 a02) {
        return 0;
    }

    public void scrollToPosition(int i4) {
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.e("RecyclerView", "You MUST implement scrollToPosition. It will soon become abstract");
        }
    }

    public int scrollVerticallyBy(int i4, C0295t0 c0295t0, A0 a02) {
        return 0;
    }

    public final void setExactMeasureSpecsFrom(RecyclerView recyclerView) {
        setMeasureSpecs(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
    }

    public final void setMeasureSpecs(int i4, int i5) {
        this.mWidth = View.MeasureSpec.getSize(i4);
        int mode = View.MeasureSpec.getMode(i4);
        this.mWidthMode = mode;
        if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            this.mWidth = 0;
        }
        this.mHeight = View.MeasureSpec.getSize(i5);
        int mode2 = View.MeasureSpec.getMode(i5);
        this.mHeightMode = mode2;
        if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
            return;
        }
        this.mHeight = 0;
    }

    public void setMeasuredDimension(Rect rect, int i4, int i5) {
        int paddingRight = getPaddingRight() + getPaddingLeft() + rect.width();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + rect.height();
        RecyclerView recyclerView = this.mRecyclerView;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        RecyclerView.access$500(this.mRecyclerView, chooseSize(i4, paddingRight, C0186x.d(recyclerView)), chooseSize(i5, paddingBottom, C0186x.c(this.mRecyclerView)));
    }

    public final void setMeasuredDimensionFromChildren(int i4, int i5) {
        int childCount = getChildCount();
        if (childCount == 0) {
            this.mRecyclerView.defaultOnMeasure(i4, i5);
            return;
        }
        int i6 = Integer.MIN_VALUE;
        int i7 = Integer.MAX_VALUE;
        int i8 = Integer.MIN_VALUE;
        int i9 = Integer.MAX_VALUE;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            Rect rect = this.mRecyclerView.mTempRect;
            RecyclerView.getDecoratedBoundsWithMarginsInt(childAt, rect);
            int i11 = rect.left;
            if (i11 < i9) {
                i9 = i11;
            }
            int i12 = rect.right;
            if (i12 > i6) {
                i6 = i12;
            }
            int i13 = rect.top;
            if (i13 < i7) {
                i7 = i13;
            }
            int i14 = rect.bottom;
            if (i14 > i8) {
                i8 = i14;
            }
        }
        this.mRecyclerView.mTempRect.set(i9, i7, i6, i8);
        setMeasuredDimension(this.mRecyclerView.mTempRect, i4, i5);
    }

    public final void setRecyclerView(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.mRecyclerView = null;
            this.mChildHelper = null;
            this.mWidth = 0;
            this.mHeight = 0;
        } else {
            this.mRecyclerView = recyclerView;
            this.mChildHelper = recyclerView.mChildHelper;
            this.mWidth = recyclerView.getWidth();
            this.mHeight = recyclerView.getHeight();
        }
        this.mWidthMode = QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE;
        this.mHeightMode = QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE;
    }

    public final boolean shouldMeasureChild(View view, int i4, int i5, C0282m0 c0282m0) {
        return (!view.isLayoutRequested() && this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getWidth(), i4, ((ViewGroup.MarginLayoutParams) c0282m0).width) && isMeasurementUpToDate(view.getHeight(), i5, ((ViewGroup.MarginLayoutParams) c0282m0).height)) ? false : true;
    }

    public boolean shouldMeasureTwice() {
        return false;
    }

    public final boolean shouldReMeasureChild(View view, int i4, int i5, C0282m0 c0282m0) {
        return (this.mMeasurementCacheEnabled && isMeasurementUpToDate(view.getMeasuredWidth(), i4, ((ViewGroup.MarginLayoutParams) c0282m0).width) && isMeasurementUpToDate(view.getMeasuredHeight(), i5, ((ViewGroup.MarginLayoutParams) c0282m0).height)) ? false : true;
    }

    public void smoothScrollToPosition(RecyclerView recyclerView, int i4) {
        Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
    }

    public final void startSmoothScroll(O o4) {
        O o5 = this.mSmoothScroller;
        if (o5 != null && o4 != o5 && o5.d()) {
            this.mSmoothScroller.i();
        }
        this.mSmoothScroller = o4;
        o4.h(this.mRecyclerView, this);
    }

    public boolean supportsPredictiveItemAnimations() {
        return false;
    }

    public void onInitializeAccessibilityNodeInfoForItem(C0295t0 c0295t0, A0 a02, View view, M.e eVar) {
        eVar.i(M.d.a(canScrollVertically() ? getPosition(view) : 0, 1, canScrollHorizontally() ? getPosition(view) : 0, 1, false, false));
    }

    public C0282m0 generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new C0282m0(context, attributeSet);
    }
}
