package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.C0187y;
import j.C1080K;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class LinearLayoutManager extends AbstractC0280l0 implements z0 {
    final J mAnchorInfo;
    private int mInitialPrefetchItemCount;
    private boolean mLastStackFromEnd;
    private final K mLayoutChunkResult;
    private L mLayoutState;
    int mOrientation;
    S mOrientationHelper;
    N mPendingSavedState;
    int mPendingScrollPosition;
    int mPendingScrollPositionOffset;
    private int[] mReusableIntPair;
    private boolean mReverseLayout;
    boolean mShouldReverseLayout;
    private boolean mSmoothScrollbarEnabled;
    private boolean mStackFromEnd;

    public LinearLayoutManager() {
        this(1);
    }

    private int computeScrollExtent(A0 a02) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return H0.a(a02, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled);
    }

    private int computeScrollOffset(A0 a02) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return H0.b(a02, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled, this.mShouldReverseLayout);
    }

    private int computeScrollRange(A0 a02) {
        if (getChildCount() == 0) {
            return 0;
        }
        ensureLayoutState();
        return H0.c(a02, this.mOrientationHelper, findFirstVisibleChildClosestToStart(!this.mSmoothScrollbarEnabled), findFirstVisibleChildClosestToEnd(!this.mSmoothScrollbarEnabled), this, this.mSmoothScrollbarEnabled);
    }

    private int fixLayoutEndGap(int i4, C0295t0 c0295t0, A0 a02, boolean z4) {
        int f4;
        int f5 = this.mOrientationHelper.f() - i4;
        if (f5 > 0) {
            int i5 = -scrollBy(-f5, c0295t0, a02);
            int i6 = i4 + i5;
            if (!z4 || (f4 = this.mOrientationHelper.f() - i6) <= 0) {
                return i5;
            }
            this.mOrientationHelper.m(f4);
            return f4 + i5;
        }
        return 0;
    }

    private int fixLayoutStartGap(int i4, C0295t0 c0295t0, A0 a02, boolean z4) {
        int h4;
        int h5 = i4 - this.mOrientationHelper.h();
        if (h5 > 0) {
            int i5 = -scrollBy(h5, c0295t0, a02);
            int i6 = i4 + i5;
            if (!z4 || (h4 = i6 - this.mOrientationHelper.h()) <= 0) {
                return i5;
            }
            this.mOrientationHelper.m(-h4);
            return i5 - h4;
        }
        return 0;
    }

    private View getChildClosestToEnd() {
        return getChildAt(this.mShouldReverseLayout ? 0 : getChildCount() - 1);
    }

    private View getChildClosestToStart() {
        return getChildAt(this.mShouldReverseLayout ? getChildCount() - 1 : 0);
    }

    private void recycleByLayoutState(C0295t0 c0295t0, L l4) {
        if (!l4.f3829a || l4.f3840l) {
            return;
        }
        int i4 = l4.f3835g;
        int i5 = l4.f3837i;
        if (l4.f3834f == -1) {
            int childCount = getChildCount();
            if (i4 < 0) {
                return;
            }
            int e4 = (this.mOrientationHelper.e() - i4) + i5;
            if (this.mShouldReverseLayout) {
                for (int i6 = 0; i6 < childCount; i6++) {
                    View childAt = getChildAt(i6);
                    if (this.mOrientationHelper.d(childAt) < e4 || this.mOrientationHelper.l(childAt) < e4) {
                        recycleChildren(c0295t0, 0, i6);
                        return;
                    }
                }
                return;
            }
            int i7 = childCount - 1;
            for (int i8 = i7; i8 >= 0; i8--) {
                View childAt2 = getChildAt(i8);
                if (this.mOrientationHelper.d(childAt2) < e4 || this.mOrientationHelper.l(childAt2) < e4) {
                    recycleChildren(c0295t0, i7, i8);
                    return;
                }
            }
        } else if (i4 >= 0) {
            int i9 = i4 - i5;
            int childCount2 = getChildCount();
            if (!this.mShouldReverseLayout) {
                for (int i10 = 0; i10 < childCount2; i10++) {
                    View childAt3 = getChildAt(i10);
                    if (this.mOrientationHelper.b(childAt3) > i9 || this.mOrientationHelper.k(childAt3) > i9) {
                        recycleChildren(c0295t0, 0, i10);
                        return;
                    }
                }
                return;
            }
            int i11 = childCount2 - 1;
            for (int i12 = i11; i12 >= 0; i12--) {
                View childAt4 = getChildAt(i12);
                if (this.mOrientationHelper.b(childAt4) > i9 || this.mOrientationHelper.k(childAt4) > i9) {
                    recycleChildren(c0295t0, i11, i12);
                    return;
                }
            }
        }
    }

    private void recycleChildren(C0295t0 c0295t0, int i4, int i5) {
        if (i4 == i5) {
            return;
        }
        if (i5 <= i4) {
            while (i4 > i5) {
                View childAt = getChildAt(i4);
                removeViewAt(i4);
                c0295t0.i(childAt);
                i4--;
            }
            return;
        }
        while (true) {
            i5--;
            if (i5 < i4) {
                return;
            }
            View childAt2 = getChildAt(i5);
            removeViewAt(i5);
            c0295t0.i(childAt2);
        }
    }

    private void resolveShouldLayoutReverse() {
        if (this.mOrientation == 1 || !isLayoutRTL()) {
            this.mShouldReverseLayout = this.mReverseLayout;
        } else {
            this.mShouldReverseLayout = !this.mReverseLayout;
        }
    }

    private void updateLayoutState(int i4, int i5, boolean z4, A0 a02) {
        int h4;
        int paddingBottom;
        this.mLayoutState.f3840l = this.mOrientationHelper.g() == 0 && this.mOrientationHelper.e() == 0;
        this.mLayoutState.f3834f = i4;
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        calculateExtraLayoutSpace(a02, iArr);
        int max = Math.max(0, this.mReusableIntPair[0]);
        int max2 = Math.max(0, this.mReusableIntPair[1]);
        boolean z5 = i4 == 1;
        L l4 = this.mLayoutState;
        int i6 = z5 ? max2 : max;
        l4.f3836h = i6;
        if (!z5) {
            max = max2;
        }
        l4.f3837i = max;
        if (z5) {
            S s4 = this.mOrientationHelper;
            int i7 = s4.f3876d;
            AbstractC0280l0 abstractC0280l0 = s4.f3899a;
            switch (i7) {
                case 0:
                    paddingBottom = abstractC0280l0.getPaddingRight();
                    break;
                default:
                    paddingBottom = abstractC0280l0.getPaddingBottom();
                    break;
            }
            l4.f3836h = paddingBottom + i6;
            View childClosestToEnd = getChildClosestToEnd();
            L l5 = this.mLayoutState;
            l5.f3833e = this.mShouldReverseLayout ? -1 : 1;
            int position = AbstractC0280l0.getPosition(childClosestToEnd);
            L l6 = this.mLayoutState;
            l5.f3832d = position + l6.f3833e;
            l6.f3830b = this.mOrientationHelper.b(childClosestToEnd);
            h4 = this.mOrientationHelper.b(childClosestToEnd) - this.mOrientationHelper.f();
        } else {
            View childClosestToStart = getChildClosestToStart();
            L l7 = this.mLayoutState;
            l7.f3836h = this.mOrientationHelper.h() + l7.f3836h;
            L l8 = this.mLayoutState;
            l8.f3833e = this.mShouldReverseLayout ? 1 : -1;
            int position2 = AbstractC0280l0.getPosition(childClosestToStart);
            L l9 = this.mLayoutState;
            l8.f3832d = position2 + l9.f3833e;
            l9.f3830b = this.mOrientationHelper.d(childClosestToStart);
            h4 = (-this.mOrientationHelper.d(childClosestToStart)) + this.mOrientationHelper.h();
        }
        L l10 = this.mLayoutState;
        l10.f3831c = i5;
        if (z4) {
            l10.f3831c = i5 - h4;
        }
        l10.f3835g = h4;
    }

    private void updateLayoutStateToFillEnd(int i4, int i5) {
        this.mLayoutState.f3831c = this.mOrientationHelper.f() - i5;
        L l4 = this.mLayoutState;
        l4.f3833e = this.mShouldReverseLayout ? -1 : 1;
        l4.f3832d = i4;
        l4.f3834f = 1;
        l4.f3830b = i5;
        l4.f3835g = Integer.MIN_VALUE;
    }

    private void updateLayoutStateToFillStart(int i4, int i5) {
        this.mLayoutState.f3831c = i5 - this.mOrientationHelper.h();
        L l4 = this.mLayoutState;
        l4.f3832d = i4;
        l4.f3833e = this.mShouldReverseLayout ? 1 : -1;
        l4.f3834f = -1;
        l4.f3830b = i5;
        l4.f3835g = Integer.MIN_VALUE;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void assertNotInLayoutOrScroll(String str) {
        if (this.mPendingSavedState == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public void calculateExtraLayoutSpace(A0 a02, int[] iArr) {
        int i4;
        int i5 = a02.f3758a != -1 ? this.mOrientationHelper.i() : 0;
        if (this.mLayoutState.f3834f == -1) {
            i4 = 0;
        } else {
            i4 = i5;
            i5 = 0;
        }
        iArr[0] = i5;
        iArr[1] = i4;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final boolean canScrollHorizontally() {
        return this.mOrientation == 0;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final boolean canScrollVertically() {
        return this.mOrientation == 1;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void collectAdjacentPrefetchPositions(int i4, int i5, A0 a02, C c4) {
        if (this.mOrientation != 0) {
            i4 = i5;
        }
        if (getChildCount() == 0 || i4 == 0) {
            return;
        }
        ensureLayoutState();
        updateLayoutState(i4 > 0 ? 1 : -1, Math.abs(i4), true, a02);
        collectPrefetchPositionsForLayoutState(a02, this.mLayoutState, c4);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0024  */
    @Override // androidx.recyclerview.widget.AbstractC0280l0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void collectInitialPrefetchPositions(int r7, androidx.recyclerview.widget.C r8) {
        /*
            r6 = this;
            androidx.recyclerview.widget.N r0 = r6.mPendingSavedState
            r1 = 1
            r2 = -1
            r3 = 0
            if (r0 == 0) goto L13
            int r4 = r0.f3843d
            if (r4 < 0) goto Ld
            r5 = r1
            goto Le
        Ld:
            r5 = r3
        Le:
            if (r5 == 0) goto L13
            boolean r0 = r0.f3845f
            goto L22
        L13:
            r6.resolveShouldLayoutReverse()
            boolean r0 = r6.mShouldReverseLayout
            int r4 = r6.mPendingScrollPosition
            if (r4 != r2) goto L22
            if (r0 == 0) goto L21
            int r4 = r7 + (-1)
            goto L22
        L21:
            r4 = r3
        L22:
            if (r0 == 0) goto L25
            r1 = r2
        L25:
            r0 = r3
        L26:
            int r2 = r6.mInitialPrefetchItemCount
            if (r0 >= r2) goto L35
            if (r4 < 0) goto L35
            if (r4 >= r7) goto L35
            r8.a(r4, r3)
            int r4 = r4 + r1
            int r0 = r0 + 1
            goto L26
        L35:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.collectInitialPrefetchPositions(int, androidx.recyclerview.widget.C):void");
    }

    public void collectPrefetchPositionsForLayoutState(A0 a02, L l4, C c4) {
        int i4 = l4.f3832d;
        if (i4 < 0 || i4 >= a02.b()) {
            return;
        }
        c4.a(i4, Math.max(0, l4.f3835g));
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final int computeHorizontalScrollExtent(A0 a02) {
        return computeScrollExtent(a02);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public int computeHorizontalScrollOffset(A0 a02) {
        return computeScrollOffset(a02);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public int computeHorizontalScrollRange(A0 a02) {
        return computeScrollRange(a02);
    }

    @Override // androidx.recyclerview.widget.z0
    public final PointF computeScrollVectorForPosition(int i4) {
        if (getChildCount() == 0) {
            return null;
        }
        int i5 = (i4 < AbstractC0280l0.getPosition(getChildAt(0))) != this.mShouldReverseLayout ? -1 : 1;
        return this.mOrientation == 0 ? new PointF(i5, 0.0f) : new PointF(0.0f, i5);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public int computeVerticalScrollExtent(A0 a02) {
        return computeScrollExtent(a02);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public int computeVerticalScrollOffset(A0 a02) {
        return computeScrollOffset(a02);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public int computeVerticalScrollRange(A0 a02) {
        return computeScrollRange(a02);
    }

    public final int convertFocusDirectionToLayoutDirection(int i4) {
        return i4 != 1 ? i4 != 2 ? i4 != 17 ? i4 != 33 ? i4 != 66 ? (i4 == 130 && this.mOrientation == 1) ? 1 : Integer.MIN_VALUE : this.mOrientation == 0 ? 1 : Integer.MIN_VALUE : this.mOrientation == 1 ? -1 : Integer.MIN_VALUE : this.mOrientation == 0 ? -1 : Integer.MIN_VALUE : (this.mOrientation != 1 && isLayoutRTL()) ? -1 : 1 : (this.mOrientation != 1 && isLayoutRTL()) ? 1 : -1;
    }

    public final void ensureLayoutState() {
        if (this.mLayoutState == null) {
            this.mLayoutState = new L();
        }
    }

    public final int fill(C0295t0 c0295t0, L l4, A0 a02, boolean z4) {
        int i4 = l4.f3831c;
        int i5 = l4.f3835g;
        if (i5 != Integer.MIN_VALUE) {
            if (i4 < 0) {
                l4.f3835g = i5 + i4;
            }
            recycleByLayoutState(c0295t0, l4);
        }
        int i6 = l4.f3831c + l4.f3836h;
        while (true) {
            if (!l4.f3840l && i6 <= 0) {
                break;
            }
            int i7 = l4.f3832d;
            if (!(i7 >= 0 && i7 < a02.b())) {
                break;
            }
            K k4 = this.mLayoutChunkResult;
            k4.f3818a = 0;
            k4.f3819b = false;
            k4.f3820c = false;
            k4.f3821d = false;
            layoutChunk(c0295t0, a02, l4, k4);
            if (!k4.f3819b) {
                int i8 = l4.f3830b;
                int i9 = k4.f3818a;
                l4.f3830b = (l4.f3834f * i9) + i8;
                if (!k4.f3820c || l4.f3839k != null || !a02.f3764g) {
                    l4.f3831c -= i9;
                    i6 -= i9;
                }
                int i10 = l4.f3835g;
                if (i10 != Integer.MIN_VALUE) {
                    int i11 = i10 + i9;
                    l4.f3835g = i11;
                    int i12 = l4.f3831c;
                    if (i12 < 0) {
                        l4.f3835g = i11 + i12;
                    }
                    recycleByLayoutState(c0295t0, l4);
                }
                if (z4 && k4.f3821d) {
                    break;
                }
            } else {
                break;
            }
        }
        return i4 - l4.f3831c;
    }

    public final View findFirstVisibleChildClosestToEnd(boolean z4) {
        return this.mShouldReverseLayout ? findOneVisibleChild(0, getChildCount(), z4) : findOneVisibleChild(getChildCount() - 1, -1, z4);
    }

    public final View findFirstVisibleChildClosestToStart(boolean z4) {
        return this.mShouldReverseLayout ? findOneVisibleChild(getChildCount() - 1, -1, z4) : findOneVisibleChild(0, getChildCount(), z4);
    }

    public final int findFirstVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(0, getChildCount(), false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return AbstractC0280l0.getPosition(findOneVisibleChild);
    }

    public final int findLastVisibleItemPosition() {
        View findOneVisibleChild = findOneVisibleChild(getChildCount() - 1, -1, false);
        if (findOneVisibleChild == null) {
            return -1;
        }
        return AbstractC0280l0.getPosition(findOneVisibleChild);
    }

    public final View findOnePartiallyOrCompletelyInvisibleChild(int i4, int i5) {
        int i6;
        int i7;
        ensureLayoutState();
        if ((i5 > i4 ? (char) 1 : i5 < i4 ? (char) 65535 : (char) 0) == 0) {
            return getChildAt(i4);
        }
        if (this.mOrientationHelper.d(getChildAt(i4)) < this.mOrientationHelper.h()) {
            i6 = 16644;
            i7 = 16388;
        } else {
            i6 = 4161;
            i7 = 4097;
        }
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i4, i5, i6, i7) : this.mVerticalBoundCheck.a(i4, i5, i6, i7);
    }

    public final View findOneVisibleChild(int i4, int i5, boolean z4) {
        ensureLayoutState();
        int i6 = z4 ? 24579 : 320;
        return this.mOrientation == 0 ? this.mHorizontalBoundCheck.a(i4, i5, i6, 320) : this.mVerticalBoundCheck.a(i4, i5, i6, 320);
    }

    public View findReferenceChild(C0295t0 c0295t0, A0 a02, boolean z4, boolean z5) {
        int i4;
        int i5;
        int i6;
        ensureLayoutState();
        int childCount = getChildCount();
        if (z5) {
            i5 = getChildCount() - 1;
            i4 = -1;
            i6 = -1;
        } else {
            i4 = childCount;
            i5 = 0;
            i6 = 1;
        }
        int b4 = a02.b();
        int h4 = this.mOrientationHelper.h();
        int f4 = this.mOrientationHelper.f();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i5 != i4) {
            View childAt = getChildAt(i5);
            int position = AbstractC0280l0.getPosition(childAt);
            int d4 = this.mOrientationHelper.d(childAt);
            int b5 = this.mOrientationHelper.b(childAt);
            if (position >= 0 && position < b4) {
                if (!((C0282m0) childAt.getLayoutParams()).c()) {
                    boolean z6 = b5 <= h4 && d4 < h4;
                    boolean z7 = d4 >= f4 && b5 > f4;
                    if (!z6 && !z7) {
                        return childAt;
                    }
                    if (z4) {
                        if (!z7) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    } else {
                        if (!z6) {
                            if (view != null) {
                            }
                            view = childAt;
                        }
                        view2 = childAt;
                    }
                } else if (view3 == null) {
                    view3 = childAt;
                }
            }
            i5 += i6;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final View findViewByPosition(int i4) {
        int childCount = getChildCount();
        if (childCount == 0) {
            return null;
        }
        int position = i4 - AbstractC0280l0.getPosition(getChildAt(0));
        if (position >= 0 && position < childCount) {
            View childAt = getChildAt(position);
            if (AbstractC0280l0.getPosition(childAt) == i4) {
                return childAt;
            }
        }
        return super.findViewByPosition(i4);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public C0282m0 generateDefaultLayoutParams() {
        return new C0282m0(-2, -2);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final boolean isAutoMeasureEnabled() {
        return true;
    }

    public final boolean isLayoutRTL() {
        RecyclerView recyclerView = this.mRecyclerView;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        return C0187y.c(recyclerView) == 1;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final boolean isLayoutReversed() {
        return this.mReverseLayout;
    }

    public void layoutChunk(C0295t0 c0295t0, A0 a02, L l4, K k4) {
        int i4;
        int i5;
        int i6;
        int i7;
        int n4;
        View b4 = l4.b(c0295t0);
        if (b4 == null) {
            k4.f3819b = true;
            return;
        }
        C0282m0 c0282m0 = (C0282m0) b4.getLayoutParams();
        if (l4.f3839k == null) {
            if (this.mShouldReverseLayout == (l4.f3834f == -1)) {
                addView(b4);
            } else {
                addView$1(b4);
            }
        } else {
            if (this.mShouldReverseLayout == (l4.f3834f == -1)) {
                addDisappearingView(b4);
            } else {
                addDisappearingView$1(b4);
            }
        }
        measureChildWithMargins(b4);
        k4.f3818a = this.mOrientationHelper.c(b4);
        if (this.mOrientation == 1) {
            if (isLayoutRTL()) {
                n4 = getWidth() - getPaddingRight();
                i7 = n4 - this.mOrientationHelper.n(b4);
            } else {
                i7 = getPaddingLeft();
                n4 = this.mOrientationHelper.n(b4) + i7;
            }
            if (l4.f3834f == -1) {
                int i8 = l4.f3830b;
                i6 = i8;
                i5 = n4;
                i4 = i8 - k4.f3818a;
            } else {
                int i9 = l4.f3830b;
                i4 = i9;
                i5 = n4;
                i6 = k4.f3818a + i9;
            }
        } else {
            int paddingTop = getPaddingTop();
            int n5 = this.mOrientationHelper.n(b4) + paddingTop;
            if (l4.f3834f == -1) {
                int i10 = l4.f3830b;
                i5 = i10;
                i4 = paddingTop;
                i6 = n5;
                i7 = i10 - k4.f3818a;
            } else {
                int i11 = l4.f3830b;
                i4 = paddingTop;
                i5 = k4.f3818a + i11;
                i6 = n5;
                i7 = i11;
            }
        }
        layoutDecoratedWithMargins(b4, i7, i4, i5, i6);
        if (c0282m0.c() || c0282m0.b()) {
            k4.f3820c = true;
        }
        k4.f3821d = b4.hasFocusable();
    }

    public void onAnchorReady(C0295t0 c0295t0, A0 a02, J j4, int i4) {
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onDetachedFromWindow(RecyclerView recyclerView) {
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public View onFocusSearchFailed(View view, int i4, C0295t0 c0295t0, A0 a02) {
        int convertFocusDirectionToLayoutDirection;
        resolveShouldLayoutReverse();
        if (getChildCount() == 0 || (convertFocusDirectionToLayoutDirection = convertFocusDirectionToLayoutDirection(i4)) == Integer.MIN_VALUE) {
            return null;
        }
        ensureLayoutState();
        updateLayoutState(convertFocusDirectionToLayoutDirection, (int) (this.mOrientationHelper.i() * 0.33333334f), false, a02);
        L l4 = this.mLayoutState;
        l4.f3835g = Integer.MIN_VALUE;
        l4.f3829a = false;
        fill(c0295t0, l4, a02, true);
        View findOnePartiallyOrCompletelyInvisibleChild = convertFocusDirectionToLayoutDirection == -1 ? this.mShouldReverseLayout ? findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1) : findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount()) : this.mShouldReverseLayout ? findOnePartiallyOrCompletelyInvisibleChild(0, getChildCount()) : findOnePartiallyOrCompletelyInvisibleChild(getChildCount() - 1, -1);
        View childClosestToStart = convertFocusDirectionToLayoutDirection == -1 ? getChildClosestToStart() : getChildClosestToEnd();
        if (childClosestToStart.hasFocusable()) {
            if (findOnePartiallyOrCompletelyInvisibleChild == null) {
                return null;
            }
            return childClosestToStart;
        }
        return findOnePartiallyOrCompletelyInvisibleChild;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            accessibilityEvent.setFromIndex(findFirstVisibleItemPosition());
            accessibilityEvent.setToIndex(findLastVisibleItemPosition());
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public void onInitializeAccessibilityNodeInfo(C0295t0 c0295t0, A0 a02, M.e eVar) {
        super.onInitializeAccessibilityNodeInfo(c0295t0, a02, eVar);
        Z z4 = this.mRecyclerView.mAdapter;
        if (z4 == null || z4.getItemCount() <= 0) {
            return;
        }
        eVar.b(M.c.f1340k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:148:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x018b  */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // androidx.recyclerview.widget.AbstractC0280l0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayoutChildren(androidx.recyclerview.widget.C0295t0 r18, androidx.recyclerview.widget.A0 r19) {
        /*
            Method dump skipped, instructions count: 1118
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.onLayoutChildren(androidx.recyclerview.widget.t0, androidx.recyclerview.widget.A0):void");
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public void onLayoutCompleted(A0 a02) {
        this.mPendingSavedState = null;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mAnchorInfo.d();
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof N) {
            N n4 = (N) parcelable;
            this.mPendingSavedState = n4;
            if (this.mPendingScrollPosition != -1) {
                n4.f3843d = -1;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final Parcelable onSaveInstanceState() {
        if (this.mPendingSavedState != null) {
            return new N(this.mPendingSavedState);
        }
        N n4 = new N();
        if (getChildCount() > 0) {
            ensureLayoutState();
            boolean z4 = this.mLastStackFromEnd ^ this.mShouldReverseLayout;
            n4.f3845f = z4;
            if (z4) {
                View childClosestToEnd = getChildClosestToEnd();
                n4.f3844e = this.mOrientationHelper.f() - this.mOrientationHelper.b(childClosestToEnd);
                n4.f3843d = AbstractC0280l0.getPosition(childClosestToEnd);
            } else {
                View childClosestToStart = getChildClosestToStart();
                n4.f3843d = AbstractC0280l0.getPosition(childClosestToStart);
                n4.f3844e = this.mOrientationHelper.d(childClosestToStart) - this.mOrientationHelper.h();
            }
        } else {
            n4.f3843d = -1;
        }
        return n4;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public boolean performAccessibilityAction(int i4, Bundle bundle) {
        int min;
        if (super.performAccessibilityAction(i4, bundle)) {
            return true;
        }
        if (i4 == 16908343 && bundle != null) {
            if (this.mOrientation == 1) {
                int i5 = bundle.getInt("android.view.accessibility.action.ARGUMENT_ROW_INT", -1);
                if (i5 < 0) {
                    return false;
                }
                RecyclerView recyclerView = this.mRecyclerView;
                min = Math.min(i5, getRowCountForAccessibility(recyclerView.mRecycler, recyclerView.mState) - 1);
            } else {
                int i6 = bundle.getInt("android.view.accessibility.action.ARGUMENT_COLUMN_INT", -1);
                if (i6 < 0) {
                    return false;
                }
                RecyclerView recyclerView2 = this.mRecyclerView;
                min = Math.min(i6, getColumnCountForAccessibility(recyclerView2.mRecycler, recyclerView2.mState) - 1);
            }
            if (min >= 0) {
                scrollToPositionWithOffset(min, 0);
                return true;
            }
        }
        return false;
    }

    public final int scrollBy(int i4, C0295t0 c0295t0, A0 a02) {
        if (getChildCount() == 0 || i4 == 0) {
            return 0;
        }
        ensureLayoutState();
        this.mLayoutState.f3829a = true;
        int i5 = i4 > 0 ? 1 : -1;
        int abs = Math.abs(i4);
        updateLayoutState(i5, abs, true, a02);
        L l4 = this.mLayoutState;
        int fill = fill(c0295t0, l4, a02, false) + l4.f3835g;
        if (fill < 0) {
            return 0;
        }
        if (abs > fill) {
            i4 = i5 * fill;
        }
        this.mOrientationHelper.m(-i4);
        this.mLayoutState.f3838j = i4;
        return i4;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public int scrollHorizontallyBy(int i4, C0295t0 c0295t0, A0 a02) {
        if (this.mOrientation == 1) {
            return 0;
        }
        return scrollBy(i4, c0295t0, a02);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void scrollToPosition(int i4) {
        this.mPendingScrollPosition = i4;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        N n4 = this.mPendingSavedState;
        if (n4 != null) {
            n4.f3843d = -1;
        }
        requestLayout();
    }

    public final void scrollToPositionWithOffset(int i4, int i5) {
        this.mPendingScrollPosition = i4;
        this.mPendingScrollPositionOffset = i5;
        N n4 = this.mPendingSavedState;
        if (n4 != null) {
            n4.f3843d = -1;
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public int scrollVerticallyBy(int i4, C0295t0 c0295t0, A0 a02) {
        if (this.mOrientation == 0) {
            return 0;
        }
        return scrollBy(i4, c0295t0, a02);
    }

    public final void setOrientation(int i4) {
        if (i4 != 0 && i4 != 1) {
            throw new IllegalArgumentException(C1080K.a("invalid orientation:", i4));
        }
        assertNotInLayoutOrScroll(null);
        if (i4 != this.mOrientation || this.mOrientationHelper == null) {
            S a4 = T.a(this, i4);
            this.mOrientationHelper = a4;
            this.mAnchorInfo.f3812a = a4;
            this.mOrientation = i4;
            requestLayout();
        }
    }

    public void setStackFromEnd(boolean z4) {
        assertNotInLayoutOrScroll(null);
        if (this.mStackFromEnd == z4) {
            return;
        }
        this.mStackFromEnd = z4;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final boolean shouldMeasureTwice() {
        boolean z4;
        if (getHeightMode() == 1073741824 || getWidthMode() == 1073741824) {
            return false;
        }
        int childCount = getChildCount();
        int i4 = 0;
        while (true) {
            if (i4 >= childCount) {
                z4 = false;
                break;
            }
            ViewGroup.LayoutParams layoutParams = getChildAt(i4).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                z4 = true;
                break;
            }
            i4++;
        }
        return z4;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public void smoothScrollToPosition(RecyclerView recyclerView, int i4) {
        O o4 = new O(recyclerView.getContext());
        o4.g(i4);
        startSmoothScroll(o4);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public boolean supportsPredictiveItemAnimations() {
        return this.mPendingSavedState == null && this.mLastStackFromEnd == this.mStackFromEnd;
    }

    public LinearLayoutManager(int i4) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new J();
        this.mLayoutChunkResult = new K();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        setOrientation(i4);
        assertNotInLayoutOrScroll(null);
        if (this.mReverseLayout) {
            this.mReverseLayout = false;
            requestLayout();
        }
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i4, int i5) {
        this.mOrientation = 1;
        this.mReverseLayout = false;
        this.mShouldReverseLayout = false;
        this.mStackFromEnd = false;
        this.mSmoothScrollbarEnabled = true;
        this.mPendingScrollPosition = -1;
        this.mPendingScrollPositionOffset = Integer.MIN_VALUE;
        this.mPendingSavedState = null;
        this.mAnchorInfo = new J();
        this.mLayoutChunkResult = new K();
        this.mInitialPrefetchItemCount = 2;
        this.mReusableIntPair = new int[2];
        C0278k0 properties = AbstractC0280l0.getProperties(context, attributeSet, i4, i5);
        setOrientation(properties.f3968a);
        boolean z4 = properties.f3970c;
        assertNotInLayoutOrScroll(null);
        if (z4 != this.mReverseLayout) {
            this.mReverseLayout = z4;
            requestLayout();
        }
        setStackFromEnd(properties.f3971d);
    }
}
