package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.core.view.C0186x;
import com.android.launcher3.allapps.AllAppsGridAdapter;
import com.android.systemui.shared.system.QuickStepContract;
import j.C1080K;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {
    private static final Set sSupportedDirectionsForActionScrollInDirection = Collections.unmodifiableSet(new HashSet(Arrays.asList(17, 66, 33, 130)));
    int[] mCachedBorders;
    int mColumnWithAccessibilityFocus;
    final Rect mDecorInsets;
    boolean mPendingSpanCountChange;
    private int mPositionTargetedByScrollInDirection;
    final SparseIntArray mPreLayoutSpanIndexCache;
    final SparseIntArray mPreLayoutSpanSizeCache;
    int mRowWithAccessibilityFocus;
    View[] mSet;
    int mSpanCount;
    H mSpanSizeLookup;

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new F();
        this.mDecorInsets = new Rect();
        this.mPositionTargetedByScrollInDirection = -1;
        this.mRowWithAccessibilityFocus = -1;
        this.mColumnWithAccessibilityFocus = -1;
        setSpanCount(AbstractC0280l0.getProperties(context, attributeSet, i4, i5).f3969b);
    }

    private void calculateItemBorders(int i4) {
        int i5;
        int[] iArr = this.mCachedBorders;
        int i6 = this.mSpanCount;
        if (iArr == null || iArr.length != i6 + 1 || iArr[iArr.length - 1] != i4) {
            iArr = new int[i6 + 1];
        }
        int i7 = 0;
        iArr[0] = 0;
        int i8 = i4 / i6;
        int i9 = i4 % i6;
        int i10 = 0;
        for (int i11 = 1; i11 <= i6; i11++) {
            i7 += i9;
            if (i7 <= 0 || i6 - i7 >= i9) {
                i5 = i8;
            } else {
                i5 = i8 + 1;
                i7 -= i6;
            }
            i10 += i5;
            iArr[i11] = i10;
        }
        this.mCachedBorders = iArr;
    }

    private int getColumnIndex(int i4) {
        if (this.mOrientation == 0) {
            RecyclerView recyclerView = this.mRecyclerView;
            return getSpanGroupIndex(i4, recyclerView.mRecycler, recyclerView.mState);
        }
        RecyclerView recyclerView2 = this.mRecyclerView;
        return getSpanIndex(i4, recyclerView2.mRecycler, recyclerView2.mState);
    }

    private int getRowIndex(int i4) {
        if (this.mOrientation == 1) {
            RecyclerView recyclerView = this.mRecyclerView;
            return getSpanGroupIndex(i4, recyclerView.mRecycler, recyclerView.mState);
        }
        RecyclerView recyclerView2 = this.mRecyclerView;
        return getSpanIndex(i4, recyclerView2.mRecycler, recyclerView2.mState);
    }

    private Set getRowIndices(int i4) {
        return getRowOrColumnIndices(getRowIndex(i4), i4);
    }

    private Set getRowOrColumnIndices(int i4, int i5) {
        HashSet hashSet = new HashSet();
        RecyclerView recyclerView = this.mRecyclerView;
        int spanSize = getSpanSize(i5, recyclerView.mRecycler, recyclerView.mState);
        for (int i6 = i4; i6 < i4 + spanSize; i6++) {
            hashSet.add(Integer.valueOf(i6));
        }
        return hashSet;
    }

    private int getSpanGroupIndex(int i4, C0295t0 c0295t0, A0 a02) {
        if (a02.f3764g) {
            int b4 = c0295t0.b(i4);
            if (b4 == -1) {
                Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i4);
                return 0;
            }
            return this.mSpanSizeLookup.getSpanGroupIndex(b4, this.mSpanCount);
        }
        return this.mSpanSizeLookup.getSpanGroupIndex(i4, this.mSpanCount);
    }

    private int getSpanIndex(int i4, C0295t0 c0295t0, A0 a02) {
        if (a02.f3764g) {
            int i5 = this.mPreLayoutSpanIndexCache.get(i4, -1);
            if (i5 != -1) {
                return i5;
            }
            int b4 = c0295t0.b(i4);
            if (b4 == -1) {
                Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i4);
                return 0;
            }
            return this.mSpanSizeLookup.getCachedSpanIndex(b4, this.mSpanCount);
        }
        return this.mSpanSizeLookup.getCachedSpanIndex(i4, this.mSpanCount);
    }

    private int getSpanSize(int i4, C0295t0 c0295t0, A0 a02) {
        if (a02.f3764g) {
            int i5 = this.mPreLayoutSpanSizeCache.get(i4, -1);
            if (i5 != -1) {
                return i5;
            }
            int b4 = c0295t0.b(i4);
            if (b4 == -1) {
                Log.w("GridLayoutManager", "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i4);
                return 1;
            }
            return this.mSpanSizeLookup.getSpanSize(b4);
        }
        return this.mSpanSizeLookup.getSpanSize(i4);
    }

    private void measureChild(View view, int i4, boolean z4) {
        int i5;
        int i6;
        G g4 = (G) view.getLayoutParams();
        Rect rect = g4.f3984b;
        int i7 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) g4).topMargin + ((ViewGroup.MarginLayoutParams) g4).bottomMargin;
        int i8 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) g4).leftMargin + ((ViewGroup.MarginLayoutParams) g4).rightMargin;
        int spaceForSpanRange = getSpaceForSpanRange(g4.f3797e, g4.f3798f);
        if (this.mOrientation == 1) {
            i6 = AbstractC0280l0.getChildMeasureSpec(false, spaceForSpanRange, i4, i8, ((ViewGroup.MarginLayoutParams) g4).width);
            i5 = AbstractC0280l0.getChildMeasureSpec(true, this.mOrientationHelper.i(), getHeightMode(), i7, ((ViewGroup.MarginLayoutParams) g4).height);
        } else {
            int childMeasureSpec = AbstractC0280l0.getChildMeasureSpec(false, spaceForSpanRange, i4, i7, ((ViewGroup.MarginLayoutParams) g4).height);
            int childMeasureSpec2 = AbstractC0280l0.getChildMeasureSpec(true, this.mOrientationHelper.i(), getWidthMode(), i8, ((ViewGroup.MarginLayoutParams) g4).width);
            i5 = childMeasureSpec;
            i6 = childMeasureSpec2;
        }
        C0282m0 c0282m0 = (C0282m0) view.getLayoutParams();
        if (z4 ? shouldReMeasureChild(view, i6, i5, c0282m0) : shouldMeasureChild(view, i6, i5, c0282m0)) {
            view.measure(i6, i5);
        }
    }

    private void updateMeasurements() {
        int height;
        int paddingTop;
        if (this.mOrientation == 1) {
            height = getWidth() - getPaddingRight();
            paddingTop = getPaddingLeft();
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = getPaddingTop();
        }
        calculateItemBorders(height - paddingTop);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final boolean checkLayoutParams(C0282m0 c0282m0) {
        return c0282m0 instanceof G;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void collectPrefetchPositionsForLayoutState(A0 a02, L l4, C c4) {
        int i4 = this.mSpanCount;
        for (int i5 = 0; i5 < this.mSpanCount; i5++) {
            int i6 = l4.f3832d;
            if (!(i6 >= 0 && i6 < a02.b()) || i4 <= 0) {
                return;
            }
            int i7 = l4.f3832d;
            c4.a(i7, Math.max(0, l4.f3835g));
            i4 -= this.mSpanSizeLookup.getSpanSize(i7);
            l4.f3832d += l4.f3833e;
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final int computeHorizontalScrollOffset(A0 a02) {
        return super.computeHorizontalScrollOffset(a02);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final int computeHorizontalScrollRange(A0 a02) {
        return super.computeHorizontalScrollRange(a02);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public int computeVerticalScrollOffset(A0 a02) {
        return super.computeVerticalScrollOffset(a02);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public int computeVerticalScrollRange(A0 a02) {
        return super.computeVerticalScrollRange(a02);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final View findReferenceChild(C0295t0 c0295t0, A0 a02, boolean z4, boolean z5) {
        int i4;
        int i5;
        int childCount = getChildCount();
        int i6 = 1;
        if (z5) {
            i5 = getChildCount() - 1;
            i4 = -1;
            i6 = -1;
        } else {
            i4 = childCount;
            i5 = 0;
        }
        int b4 = a02.b();
        ensureLayoutState();
        int h4 = this.mOrientationHelper.h();
        int f4 = this.mOrientationHelper.f();
        View view = null;
        View view2 = null;
        while (i5 != i4) {
            View childAt = getChildAt(i5);
            int position = AbstractC0280l0.getPosition(childAt);
            if (position >= 0 && position < b4 && getSpanIndex(position, c0295t0, a02) == 0) {
                if (((C0282m0) childAt.getLayoutParams()).c()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else if (this.mOrientationHelper.d(childAt) < f4 && this.mOrientationHelper.b(childAt) >= h4) {
                    return childAt;
                } else {
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i5 += i6;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final C0282m0 generateDefaultLayoutParams() {
        return this.mOrientation == 0 ? new G(-2, -1) : new G(-1, -2);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final C0282m0 generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new G(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final int getColumnCountForAccessibility(C0295t0 c0295t0, A0 a02) {
        if (this.mOrientation == 1) {
            return Math.min(this.mSpanCount, getItemCount());
        }
        if (a02.b() < 1) {
            return 0;
        }
        return getSpanGroupIndex(a02.b() - 1, c0295t0, a02) + 1;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public int getRowCountForAccessibility(C0295t0 c0295t0, A0 a02) {
        if (this.mOrientation == 0) {
            return Math.min(this.mSpanCount, getItemCount());
        }
        if (a02.b() < 1) {
            return 0;
        }
        return getSpanGroupIndex(a02.b() - 1, c0295t0, a02) + 1;
    }

    public final int getSpaceForSpanRange(int i4, int i5) {
        if (this.mOrientation != 1 || !isLayoutRTL()) {
            int[] iArr = this.mCachedBorders;
            return iArr[i5 + i4] - iArr[i4];
        }
        int[] iArr2 = this.mCachedBorders;
        int i6 = this.mSpanCount;
        return iArr2[i6 - i4] - iArr2[(i6 - i4) - i5];
    }

    public final int getSpanCount() {
        return this.mSpanCount;
    }

    public final H getSpanSizeLookup() {
        return this.mSpanSizeLookup;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ac  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void layoutChunk(androidx.recyclerview.widget.C0295t0 r18, androidx.recyclerview.widget.A0 r19, androidx.recyclerview.widget.L r20, androidx.recyclerview.widget.K r21) {
        /*
            Method dump skipped, instructions count: 652
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.layoutChunk(androidx.recyclerview.widget.t0, androidx.recyclerview.widget.A0, androidx.recyclerview.widget.L, androidx.recyclerview.widget.K):void");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void onAnchorReady(C0295t0 c0295t0, A0 a02, J j4, int i4) {
        updateMeasurements();
        if (a02.b() > 0 && !a02.f3764g) {
            boolean z4 = i4 == 1;
            int spanIndex = getSpanIndex(j4.f3813b, c0295t0, a02);
            if (z4) {
                while (spanIndex > 0) {
                    int i5 = j4.f3813b;
                    if (i5 <= 0) {
                        break;
                    }
                    int i6 = i5 - 1;
                    j4.f3813b = i6;
                    spanIndex = getSpanIndex(i6, c0295t0, a02);
                }
            } else {
                int b4 = a02.b() - 1;
                int i7 = j4.f3813b;
                while (i7 < b4) {
                    int i8 = i7 + 1;
                    int spanIndex2 = getSpanIndex(i8, c0295t0, a02);
                    if (spanIndex2 <= spanIndex) {
                        break;
                    }
                    i7 = i8;
                    spanIndex = spanIndex2;
                }
                j4.f3813b = i7;
            }
        }
        View[] viewArr = this.mSet;
        if (viewArr == null || viewArr.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        if (r22.mChildHelper.j(r3) != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e1, code lost:
        if (r13 == (r2 > r15)) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0111, code lost:
        if (r13 == (r2 > r9)) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:88:0x011d  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onFocusSearchFailed(android.view.View r23, int r24, androidx.recyclerview.widget.C0295t0 r25, androidx.recyclerview.widget.A0 r26) {
        /*
            Method dump skipped, instructions count: 349
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.t0, androidx.recyclerview.widget.A0):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final void onInitializeAccessibilityNodeInfo(C0295t0 c0295t0, A0 a02, M.e eVar) {
        super.onInitializeAccessibilityNodeInfo(c0295t0, a02, eVar);
        eVar.h(GridView.class.getName());
        Z z4 = this.mRecyclerView.mAdapter;
        if (z4 == null || z4.getItemCount() <= 1) {
            return;
        }
        eVar.b(M.c.f1343n);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public void onInitializeAccessibilityNodeInfoForItem(C0295t0 c0295t0, A0 a02, View view, M.e eVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof G)) {
            onInitializeAccessibilityNodeInfoForItem(view, eVar);
            return;
        }
        G g4 = (G) layoutParams;
        int spanGroupIndex = getSpanGroupIndex(g4.a(), c0295t0, a02);
        if (this.mOrientation == 0) {
            eVar.i(M.d.a(g4.f3797e, g4.f3798f, spanGroupIndex, 1, false, false));
        } else {
            eVar.i(M.d.a(spanGroupIndex, 1, g4.f3797e, g4.f3798f, false, false));
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public void onItemsAdded(RecyclerView recyclerView, int i4, int i5) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        this.mSpanSizeLookup.mSpanGroupIndexCache.clear();
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public void onItemsChanged(RecyclerView recyclerView) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        this.mSpanSizeLookup.mSpanGroupIndexCache.clear();
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public void onItemsMoved(RecyclerView recyclerView, int i4, int i5) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        this.mSpanSizeLookup.mSpanGroupIndexCache.clear();
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public void onItemsRemoved(RecyclerView recyclerView, int i4, int i5) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        this.mSpanSizeLookup.mSpanGroupIndexCache.clear();
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public void onItemsUpdated(RecyclerView recyclerView, int i4, int i5, Object obj) {
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        this.mSpanSizeLookup.mSpanGroupIndexCache.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final void onLayoutChildren(C0295t0 c0295t0, A0 a02) {
        boolean z4 = a02.f3764g;
        SparseIntArray sparseIntArray = this.mPreLayoutSpanIndexCache;
        SparseIntArray sparseIntArray2 = this.mPreLayoutSpanSizeCache;
        if (z4) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                G g4 = (G) getChildAt(i4).getLayoutParams();
                int a4 = g4.a();
                sparseIntArray2.put(a4, g4.f3798f);
                sparseIntArray.put(a4, g4.f3797e);
            }
        }
        super.onLayoutChildren(c0295t0, a02);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public void onLayoutCompleted(A0 a02) {
        View findViewByPosition;
        super.onLayoutCompleted(a02);
        this.mPendingSpanCountChange = false;
        int i4 = this.mPositionTargetedByScrollInDirection;
        if (i4 == -1 || (findViewByPosition = findViewByPosition(i4)) == null) {
            return;
        }
        findViewByPosition.sendAccessibilityEvent(QuickStepContract.SYSUI_STATE_FREEFORM_ACTIVE_IN_DESKTOP_MODE);
        this.mPositionTargetedByScrollInDirection = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ac  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean performAccessibilityAction(int r12, android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 782
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.performAccessibilityAction(int, android.os.Bundle):boolean");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final int scrollHorizontallyBy(int i4, C0295t0 c0295t0, A0 a02) {
        updateMeasurements();
        View[] viewArr = this.mSet;
        if (viewArr == null || viewArr.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
        return super.scrollHorizontallyBy(i4, c0295t0, a02);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final int scrollVerticallyBy(int i4, C0295t0 c0295t0, A0 a02) {
        updateMeasurements();
        View[] viewArr = this.mSet;
        if (viewArr == null || viewArr.length != this.mSpanCount) {
            this.mSet = new View[this.mSpanCount];
        }
        return super.scrollVerticallyBy(i4, c0295t0, a02);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void setMeasuredDimension(Rect rect, int i4, int i5) {
        int chooseSize;
        int chooseSize2;
        if (this.mCachedBorders == null) {
            super.setMeasuredDimension(rect, i4, i5);
        }
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.mOrientation == 1) {
            int height = rect.height() + paddingBottom;
            RecyclerView recyclerView = this.mRecyclerView;
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            chooseSize2 = AbstractC0280l0.chooseSize(i5, height, C0186x.c(recyclerView));
            int[] iArr = this.mCachedBorders;
            chooseSize = AbstractC0280l0.chooseSize(i4, iArr[iArr.length - 1] + paddingRight, C0186x.d(this.mRecyclerView));
        } else {
            int width = rect.width() + paddingRight;
            RecyclerView recyclerView2 = this.mRecyclerView;
            WeakHashMap weakHashMap2 = androidx.core.view.J.f3079a;
            chooseSize = AbstractC0280l0.chooseSize(i4, width, C0186x.d(recyclerView2));
            int[] iArr2 = this.mCachedBorders;
            chooseSize2 = AbstractC0280l0.chooseSize(i5, iArr2[iArr2.length - 1] + paddingBottom, C0186x.c(this.mRecyclerView));
        }
        this.mRecyclerView.setMeasuredDimension(chooseSize, chooseSize2);
    }

    public final void setSpanCount(int i4) {
        if (i4 == this.mSpanCount) {
            return;
        }
        this.mPendingSpanCountChange = true;
        if (i4 < 1) {
            throw new IllegalArgumentException(C1080K.a("Span count should be at least 1. Provided ", i4));
        }
        this.mSpanCount = i4;
        this.mSpanSizeLookup.invalidateSpanIndexCache();
        requestLayout();
    }

    public final void setSpanSizeLookup(AllAppsGridAdapter.GridSpanSizer gridSpanSizer) {
        this.mSpanSizeLookup = gridSpanSizer;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void setStackFromEnd(boolean z4) {
        if (z4) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.setStackFromEnd(false);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
    public final boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && !this.mPendingSpanCountChange;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final C0282m0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new G((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new G(layoutParams);
    }

    public GridLayoutManager(int i4) {
        super(1);
        this.mPendingSpanCountChange = false;
        this.mSpanCount = -1;
        this.mPreLayoutSpanSizeCache = new SparseIntArray();
        this.mPreLayoutSpanIndexCache = new SparseIntArray();
        this.mSpanSizeLookup = new F();
        this.mDecorInsets = new Rect();
        this.mPositionTargetedByScrollInDirection = -1;
        this.mRowWithAccessibilityFocus = -1;
        this.mColumnWithAccessibilityFocus = -1;
        setSpanCount(i4);
    }
}
