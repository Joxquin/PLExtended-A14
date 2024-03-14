package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.C0186x;
import androidx.core.view.C0187y;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends AbstractC0280l0 implements z0 {

    /* renamed from: a  reason: collision with root package name */
    public int f3877a;

    /* renamed from: b  reason: collision with root package name */
    public Q0[] f3878b;

    /* renamed from: c  reason: collision with root package name */
    public T f3879c;

    /* renamed from: d  reason: collision with root package name */
    public T f3880d;

    /* renamed from: e  reason: collision with root package name */
    public int f3881e;

    /* renamed from: f  reason: collision with root package name */
    public int f3882f;

    /* renamed from: g  reason: collision with root package name */
    public final I f3883g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f3884h;

    /* renamed from: j  reason: collision with root package name */
    public BitSet f3886j;

    /* renamed from: m  reason: collision with root package name */
    public final O0 f3889m;

    /* renamed from: n  reason: collision with root package name */
    public final int f3890n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f3891o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f3892p;

    /* renamed from: q  reason: collision with root package name */
    public P0 f3893q;

    /* renamed from: r  reason: collision with root package name */
    public final Rect f3894r;

    /* renamed from: s  reason: collision with root package name */
    public final K0 f3895s;

    /* renamed from: t  reason: collision with root package name */
    public final boolean f3896t;

    /* renamed from: u  reason: collision with root package name */
    public int[] f3897u;

    /* renamed from: v  reason: collision with root package name */
    public final J0 f3898v;

    /* renamed from: i  reason: collision with root package name */
    public boolean f3885i = false;

    /* renamed from: k  reason: collision with root package name */
    public int f3887k = -1;

    /* renamed from: l  reason: collision with root package name */
    public int f3888l = Integer.MIN_VALUE;

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i4, int i5) {
        this.f3877a = -1;
        this.f3884h = false;
        O0 o02 = new O0();
        this.f3889m = o02;
        this.f3890n = 2;
        this.f3894r = new Rect();
        this.f3895s = new K0(this);
        this.f3896t = true;
        this.f3898v = new J0(this);
        C0278k0 properties = AbstractC0280l0.getProperties(context, attributeSet, i4, i5);
        int i6 = properties.f3968a;
        if (i6 != 0 && i6 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i6 != this.f3881e) {
            this.f3881e = i6;
            T t4 = this.f3879c;
            this.f3879c = this.f3880d;
            this.f3880d = t4;
            requestLayout();
        }
        int i7 = properties.f3969b;
        assertNotInLayoutOrScroll(null);
        if (i7 != this.f3877a) {
            o02.a();
            requestLayout();
            this.f3877a = i7;
            this.f3886j = new BitSet(this.f3877a);
            this.f3878b = new Q0[this.f3877a];
            for (int i8 = 0; i8 < this.f3877a; i8++) {
                this.f3878b[i8] = new Q0(this, i8);
            }
            requestLayout();
        }
        boolean z4 = properties.f3970c;
        assertNotInLayoutOrScroll(null);
        P0 p02 = this.f3893q;
        if (p02 != null && p02.f3859k != z4) {
            p02.f3859k = z4;
        }
        this.f3884h = z4;
        requestLayout();
        this.f3883g = new I();
        this.f3879c = T.a(this, this.f3881e);
        this.f3880d = T.a(this, 1 - this.f3881e);
    }

    public static int x(int i4, int i5, int i6) {
        if (i5 == 0 && i6 == 0) {
            return i4;
        }
        int mode = View.MeasureSpec.getMode(i4);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i4) - i5) - i6), mode) : i4;
    }

    public final int a(int i4) {
        if (getChildCount() == 0) {
            return this.f3885i ? 1 : -1;
        }
        return (i4 < h()) != this.f3885i ? -1 : 1;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void assertNotInLayoutOrScroll(String str) {
        if (this.f3893q == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    public final boolean b() {
        int h4;
        if (getChildCount() != 0 && this.f3890n != 0 && this.mIsAttachedToWindow) {
            if (this.f3885i) {
                h4 = i();
                h();
            } else {
                h4 = h();
                i();
            }
            if (h4 == 0 && m() != null) {
                this.f3889m.a();
                this.mRequestedSimpleAnimations = true;
                requestLayout();
                return true;
            }
        }
        return false;
    }

    public final int c(C0295t0 c0295t0, I i4, A0 a02) {
        Q0 q02;
        int i5;
        int c4;
        int h4;
        int c5;
        View view;
        int i6;
        int i7;
        int i8;
        C0295t0 c0295t02 = c0295t0;
        int i9 = 0;
        int i10 = 1;
        this.f3886j.set(0, this.f3877a, true);
        I i11 = this.f3883g;
        int i12 = i11.f3809i ? i4.f3805e == 1 ? Integer.MAX_VALUE : Integer.MIN_VALUE : i4.f3805e == 1 ? i4.f3807g + i4.f3802b : i4.f3806f - i4.f3802b;
        int i13 = i4.f3805e;
        for (int i14 = 0; i14 < this.f3877a; i14++) {
            if (!this.f3878b[i14].f3863a.isEmpty()) {
                w(this.f3878b[i14], i13, i12);
            }
        }
        int f4 = this.f3885i ? this.f3879c.f() : this.f3879c.h();
        boolean z4 = false;
        while (true) {
            int i15 = i4.f3803c;
            int i16 = -1;
            if (((i15 < 0 || i15 >= a02.b()) ? i9 : i10) == 0 || (!i11.f3809i && this.f3886j.isEmpty())) {
                break;
            }
            View view2 = c0295t02.l(i4.f3803c, Long.MAX_VALUE).itemView;
            i4.f3803c += i4.f3804d;
            L0 l02 = (L0) view2.getLayoutParams();
            int a4 = l02.a();
            O0 o02 = this.f3889m;
            int[] iArr = o02.f3850a;
            int i17 = (iArr == null || a4 >= iArr.length) ? -1 : iArr[a4];
            if ((i17 == -1 ? i10 : i9) != 0) {
                if (p(i4.f3805e)) {
                    i7 = this.f3877a - i10;
                    i8 = -1;
                } else {
                    i16 = this.f3877a;
                    i7 = i9;
                    i8 = i10;
                }
                Q0 q03 = null;
                if (i4.f3805e == i10) {
                    int h5 = this.f3879c.h();
                    int i18 = Integer.MAX_VALUE;
                    while (i7 != i16) {
                        Q0 q04 = this.f3878b[i7];
                        int f5 = q04.f(h5);
                        if (f5 < i18) {
                            i18 = f5;
                            q03 = q04;
                        }
                        i7 += i8;
                    }
                } else {
                    int f6 = this.f3879c.f();
                    int i19 = Integer.MIN_VALUE;
                    while (i7 != i16) {
                        Q0 q05 = this.f3878b[i7];
                        int i20 = q05.i(f6);
                        if (i20 > i19) {
                            q03 = q05;
                            i19 = i20;
                        }
                        i7 += i8;
                    }
                }
                q02 = q03;
                o02.b(a4);
                o02.f3850a[a4] = q02.f3867e;
            } else {
                q02 = this.f3878b[i17];
            }
            Q0 q06 = q02;
            l02.f3841e = q06;
            if (i4.f3805e == 1) {
                addView(view2);
            } else {
                addView$1(view2);
            }
            if (this.f3881e == 1) {
                n(view2, AbstractC0280l0.getChildMeasureSpec(false, this.f3882f, getWidthMode(), 0, ((ViewGroup.MarginLayoutParams) l02).width), AbstractC0280l0.getChildMeasureSpec(true, getHeight(), getHeightMode(), getPaddingBottom() + getPaddingTop(), ((ViewGroup.MarginLayoutParams) l02).height));
            } else {
                n(view2, AbstractC0280l0.getChildMeasureSpec(true, getWidth(), getWidthMode(), getPaddingRight() + getPaddingLeft(), ((ViewGroup.MarginLayoutParams) l02).width), AbstractC0280l0.getChildMeasureSpec(false, this.f3882f, getHeightMode(), 0, ((ViewGroup.MarginLayoutParams) l02).height));
            }
            if (i4.f3805e == 1) {
                int f7 = q06.f(f4);
                c4 = f7;
                i5 = this.f3879c.c(view2) + f7;
            } else {
                int i21 = q06.i(f4);
                i5 = i21;
                c4 = i21 - this.f3879c.c(view2);
            }
            if (i4.f3805e == 1) {
                Q0 q07 = l02.f3841e;
                q07.getClass();
                L0 l03 = (L0) view2.getLayoutParams();
                l03.f3841e = q07;
                ArrayList arrayList = q07.f3863a;
                arrayList.add(view2);
                q07.f3865c = Integer.MIN_VALUE;
                if (arrayList.size() == 1) {
                    q07.f3864b = Integer.MIN_VALUE;
                }
                if (l03.c() || l03.b()) {
                    q07.f3866d = q07.f3868f.f3879c.c(view2) + q07.f3866d;
                }
            } else {
                Q0 q08 = l02.f3841e;
                q08.getClass();
                L0 l04 = (L0) view2.getLayoutParams();
                l04.f3841e = q08;
                ArrayList arrayList2 = q08.f3863a;
                arrayList2.add(0, view2);
                q08.f3864b = Integer.MIN_VALUE;
                if (arrayList2.size() == 1) {
                    q08.f3865c = Integer.MIN_VALUE;
                }
                if (l04.c() || l04.b()) {
                    q08.f3866d = q08.f3868f.f3879c.c(view2) + q08.f3866d;
                }
            }
            if (isLayoutRTL() && this.f3881e == 1) {
                c5 = this.f3880d.f() - (((this.f3877a - 1) - q06.f3867e) * this.f3882f);
                h4 = c5 - this.f3880d.c(view2);
            } else {
                h4 = this.f3880d.h() + (q06.f3867e * this.f3882f);
                c5 = this.f3880d.c(view2) + h4;
            }
            int i22 = c5;
            int i23 = h4;
            if (this.f3881e == 1) {
                view = view2;
                layoutDecoratedWithMargins(view2, i23, c4, i22, i5);
            } else {
                view = view2;
                layoutDecoratedWithMargins(view, c4, i23, i5, i22);
            }
            w(q06, i11.f3805e, i12);
            r(c0295t0, i11);
            if (i11.f3808h && view.hasFocusable()) {
                i6 = 0;
                this.f3886j.set(q06.f3867e, false);
            } else {
                i6 = 0;
            }
            c0295t02 = c0295t0;
            i9 = i6;
            z4 = true;
            i10 = 1;
        }
        C0295t0 c0295t03 = c0295t02;
        int i24 = i9;
        if (!z4) {
            r(c0295t03, i11);
        }
        int h6 = i11.f3805e == -1 ? this.f3879c.h() - k(this.f3879c.h()) : j(this.f3879c.f()) - this.f3879c.f();
        return h6 > 0 ? Math.min(i4.f3802b, h6) : i24;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final boolean canScrollHorizontally() {
        return this.f3881e == 0;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final boolean canScrollVertically() {
        return this.f3881e == 1;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final boolean checkLayoutParams(C0282m0 c0282m0) {
        return c0282m0 instanceof L0;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void collectAdjacentPrefetchPositions(int i4, int i5, A0 a02, C c4) {
        I i6;
        int f4;
        int i7;
        if (this.f3881e != 0) {
            i4 = i5;
        }
        if (getChildCount() == 0 || i4 == 0) {
            return;
        }
        q(i4, a02);
        int[] iArr = this.f3897u;
        if (iArr == null || iArr.length < this.f3877a) {
            this.f3897u = new int[this.f3877a];
        }
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int i10 = this.f3877a;
            i6 = this.f3883g;
            if (i8 >= i10) {
                break;
            }
            if (i6.f3804d == -1) {
                f4 = i6.f3806f;
                i7 = this.f3878b[i8].i(f4);
            } else {
                f4 = this.f3878b[i8].f(i6.f3807g);
                i7 = i6.f3807g;
            }
            int i11 = f4 - i7;
            if (i11 >= 0) {
                this.f3897u[i9] = i11;
                i9++;
            }
            i8++;
        }
        Arrays.sort(this.f3897u, 0, i9);
        for (int i12 = 0; i12 < i9; i12++) {
            int i13 = i6.f3803c;
            if (!(i13 >= 0 && i13 < a02.b())) {
                return;
            }
            c4.a(i6.f3803c, this.f3897u[i12]);
            i6.f3803c += i6.f3804d;
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final int computeHorizontalScrollExtent(A0 a02) {
        return computeScrollExtent(a02);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final int computeHorizontalScrollOffset(A0 a02) {
        return computeScrollOffset(a02);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final int computeHorizontalScrollRange(A0 a02) {
        return computeScrollRange(a02);
    }

    public final int computeScrollExtent(A0 a02) {
        if (getChildCount() == 0) {
            return 0;
        }
        T t4 = this.f3879c;
        boolean z4 = this.f3896t;
        return H0.a(a02, t4, e(!z4), d(!z4), this, this.f3896t);
    }

    public final int computeScrollOffset(A0 a02) {
        if (getChildCount() == 0) {
            return 0;
        }
        T t4 = this.f3879c;
        boolean z4 = this.f3896t;
        return H0.b(a02, t4, e(!z4), d(!z4), this, this.f3896t, this.f3885i);
    }

    public final int computeScrollRange(A0 a02) {
        if (getChildCount() == 0) {
            return 0;
        }
        T t4 = this.f3879c;
        boolean z4 = this.f3896t;
        return H0.c(a02, t4, e(!z4), d(!z4), this, this.f3896t);
    }

    @Override // androidx.recyclerview.widget.z0
    public final PointF computeScrollVectorForPosition(int i4) {
        int a4 = a(i4);
        PointF pointF = new PointF();
        if (a4 == 0) {
            return null;
        }
        if (this.f3881e == 0) {
            pointF.x = a4;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = a4;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final int computeVerticalScrollExtent(A0 a02) {
        return computeScrollExtent(a02);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final int computeVerticalScrollOffset(A0 a02) {
        return computeScrollOffset(a02);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final int computeVerticalScrollRange(A0 a02) {
        return computeScrollRange(a02);
    }

    public final View d(boolean z4) {
        int h4 = this.f3879c.h();
        int f4 = this.f3879c.f();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int d4 = this.f3879c.d(childAt);
            int b4 = this.f3879c.b(childAt);
            if (b4 > h4 && d4 < f4) {
                if (b4 <= f4 || !z4) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final View e(boolean z4) {
        int h4 = this.f3879c.h();
        int f4 = this.f3879c.f();
        int childCount = getChildCount();
        View view = null;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            int d4 = this.f3879c.d(childAt);
            if (this.f3879c.b(childAt) > h4 && d4 < f4) {
                if (d4 >= h4 || !z4) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final void f(C0295t0 c0295t0, A0 a02, boolean z4) {
        int f4;
        int j4 = j(Integer.MIN_VALUE);
        if (j4 != Integer.MIN_VALUE && (f4 = this.f3879c.f() - j4) > 0) {
            int i4 = f4 - (-scrollBy(-f4, c0295t0, a02));
            if (!z4 || i4 <= 0) {
                return;
            }
            this.f3879c.m(i4);
        }
    }

    public final void g(C0295t0 c0295t0, A0 a02, boolean z4) {
        int h4;
        int k4 = k(Integer.MAX_VALUE);
        if (k4 != Integer.MAX_VALUE && (h4 = k4 - this.f3879c.h()) > 0) {
            int scrollBy = h4 - scrollBy(h4, c0295t0, a02);
            if (!z4 || scrollBy <= 0) {
                return;
            }
            this.f3879c.m(-scrollBy);
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final C0282m0 generateDefaultLayoutParams() {
        return this.f3881e == 0 ? new L0(-2, -1) : new L0(-1, -2);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final C0282m0 generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new L0(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final int getColumnCountForAccessibility(C0295t0 c0295t0, A0 a02) {
        if (this.f3881e == 1) {
            return Math.min(this.f3877a, a02.b());
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final int getRowCountForAccessibility(C0295t0 c0295t0, A0 a02) {
        if (this.f3881e == 0) {
            return Math.min(this.f3877a, a02.b());
        }
        return -1;
    }

    public final int h() {
        if (getChildCount() == 0) {
            return 0;
        }
        return AbstractC0280l0.getPosition(getChildAt(0));
    }

    public final int i() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return AbstractC0280l0.getPosition(getChildAt(childCount - 1));
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final boolean isAutoMeasureEnabled() {
        return this.f3890n != 0;
    }

    public final boolean isLayoutRTL() {
        RecyclerView recyclerView = this.mRecyclerView;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        return C0187y.c(recyclerView) == 1;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final boolean isLayoutReversed() {
        return this.f3884h;
    }

    public final int j(int i4) {
        int f4 = this.f3878b[0].f(i4);
        for (int i5 = 1; i5 < this.f3877a; i5++) {
            int f5 = this.f3878b[i5].f(i4);
            if (f5 > f4) {
                f4 = f5;
            }
        }
        return f4;
    }

    public final int k(int i4) {
        int i5 = this.f3878b[0].i(i4);
        for (int i6 = 1; i6 < this.f3877a; i6++) {
            int i7 = this.f3878b[i6].i(i4);
            if (i7 < i5) {
                i5 = i7;
            }
        }
        return i5;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(int r8, int r9, int r10) {
        /*
            r7 = this;
            boolean r0 = r7.f3885i
            if (r0 == 0) goto L9
            int r0 = r7.i()
            goto Ld
        L9:
            int r0 = r7.h()
        Ld:
            r1 = 8
            if (r10 != r1) goto L1a
            if (r8 >= r9) goto L16
            int r2 = r9 + 1
            goto L1c
        L16:
            int r2 = r8 + 1
            r3 = r9
            goto L1d
        L1a:
            int r2 = r8 + r9
        L1c:
            r3 = r8
        L1d:
            androidx.recyclerview.widget.O0 r4 = r7.f3889m
            r4.c(r3)
            r5 = 1
            if (r10 == r5) goto L36
            r6 = 2
            if (r10 == r6) goto L32
            if (r10 == r1) goto L2b
            goto L39
        L2b:
            r4.e(r8, r5)
            r4.d(r9, r5)
            goto L39
        L32:
            r4.e(r8, r9)
            goto L39
        L36:
            r4.d(r8, r9)
        L39:
            if (r2 > r0) goto L3c
            return
        L3c:
            boolean r8 = r7.f3885i
            if (r8 == 0) goto L45
            int r8 = r7.h()
            goto L49
        L45:
            int r8 = r7.i()
        L49:
            if (r3 > r8) goto L4e
            r7.requestLayout()
        L4e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.l(int, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d1, code lost:
        if (r10 == r11) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e3, code lost:
        if (r10 == r11) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00e5, code lost:
        r10 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e7, code lost:
        r10 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View m() {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m():android.view.View");
    }

    public final void n(View view, int i4, int i5) {
        RecyclerView recyclerView = this.mRecyclerView;
        Rect rect = this.f3894r;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.getItemDecorInsetsForChild(view));
        }
        L0 l02 = (L0) view.getLayoutParams();
        int x4 = x(i4, ((ViewGroup.MarginLayoutParams) l02).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) l02).rightMargin + rect.right);
        int x5 = x(i5, ((ViewGroup.MarginLayoutParams) l02).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) l02).bottomMargin + rect.bottom);
        if (shouldMeasureChild(view, x4, x5, l02)) {
            view.measure(x4, x5);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:251:0x0408, code lost:
        if (b() != false) goto L262;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o(androidx.recyclerview.widget.C0295t0 r17, androidx.recyclerview.widget.A0 r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 1062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.o(androidx.recyclerview.widget.t0, androidx.recyclerview.widget.A0, boolean):void");
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void offsetChildrenHorizontal(int i4) {
        super.offsetChildrenHorizontal(i4);
        for (int i5 = 0; i5 < this.f3877a; i5++) {
            Q0 q02 = this.f3878b[i5];
            int i6 = q02.f3864b;
            if (i6 != Integer.MIN_VALUE) {
                q02.f3864b = i6 + i4;
            }
            int i7 = q02.f3865c;
            if (i7 != Integer.MIN_VALUE) {
                q02.f3865c = i7 + i4;
            }
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void offsetChildrenVertical(int i4) {
        super.offsetChildrenVertical(i4);
        for (int i5 = 0; i5 < this.f3877a; i5++) {
            Q0 q02 = this.f3878b[i5];
            int i6 = q02.f3864b;
            if (i6 != Integer.MIN_VALUE) {
                q02.f3864b = i6 + i4;
            }
            int i7 = q02.f3865c;
            if (i7 != Integer.MIN_VALUE) {
                q02.f3865c = i7 + i4;
            }
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onAdapterChanged() {
        this.f3889m.a();
        for (int i4 = 0; i4 < this.f3877a; i4++) {
            this.f3878b[i4].b();
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onDetachedFromWindow(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.mRecyclerView;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.f3898v);
        }
        for (int i4 = 0; i4 < this.f3877a; i4++) {
            this.f3878b[i4].b();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x004a, code lost:
        if (r8.f3881e == 1) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x004f, code lost:
        if (r8.f3881e == 0) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x005d, code lost:
        if (isLayoutRTL() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0069, code lost:
        if (isLayoutRTL() == false) goto L113;
     */
    @Override // androidx.recyclerview.widget.AbstractC0280l0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onFocusSearchFailed(android.view.View r9, int r10, androidx.recyclerview.widget.C0295t0 r11, androidx.recyclerview.widget.A0 r12) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.t0, androidx.recyclerview.widget.A0):android.view.View");
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View e4 = e(false);
            View d4 = d(false);
            if (e4 == null || d4 == null) {
                return;
            }
            int position = AbstractC0280l0.getPosition(e4);
            int position2 = AbstractC0280l0.getPosition(d4);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
                return;
            }
            accessibilityEvent.setFromIndex(position2);
            accessibilityEvent.setToIndex(position);
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onInitializeAccessibilityNodeInfo(C0295t0 c0295t0, A0 a02, M.e eVar) {
        super.onInitializeAccessibilityNodeInfo(c0295t0, a02, eVar);
        eVar.h("androidx.recyclerview.widget.StaggeredGridLayoutManager");
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onInitializeAccessibilityNodeInfoForItem(C0295t0 c0295t0, A0 a02, View view, M.e eVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof L0)) {
            onInitializeAccessibilityNodeInfoForItem(view, eVar);
            return;
        }
        L0 l02 = (L0) layoutParams;
        if (this.f3881e == 0) {
            Q0 q02 = l02.f3841e;
            eVar.i(M.d.a(q02 != null ? q02.f3867e : -1, 1, -1, -1, false, false));
            return;
        }
        Q0 q03 = l02.f3841e;
        eVar.i(M.d.a(-1, -1, q03 != null ? q03.f3867e : -1, 1, false, false));
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onItemsAdded(RecyclerView recyclerView, int i4, int i5) {
        l(i4, i5, 1);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onItemsChanged(RecyclerView recyclerView) {
        this.f3889m.a();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onItemsMoved(RecyclerView recyclerView, int i4, int i5) {
        l(i4, i5, 8);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onItemsRemoved(RecyclerView recyclerView, int i4, int i5) {
        l(i4, i5, 2);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onItemsUpdated(RecyclerView recyclerView, int i4, int i5, Object obj) {
        l(i4, i5, 4);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onLayoutChildren(C0295t0 c0295t0, A0 a02) {
        o(c0295t0, a02, true);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onLayoutCompleted(A0 a02) {
        this.f3887k = -1;
        this.f3888l = Integer.MIN_VALUE;
        this.f3893q = null;
        this.f3895s.a();
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof P0) {
            P0 p02 = (P0) parcelable;
            this.f3893q = p02;
            if (this.f3887k != -1) {
                p02.f3855g = null;
                p02.f3854f = 0;
                p02.f3852d = -1;
                p02.f3853e = -1;
                p02.f3855g = null;
                p02.f3854f = 0;
                p02.f3856h = 0;
                p02.f3857i = null;
                p02.f3858j = null;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final Parcelable onSaveInstanceState() {
        int i4;
        int h4;
        int[] iArr;
        if (this.f3893q != null) {
            return new P0(this.f3893q);
        }
        P0 p02 = new P0();
        p02.f3859k = this.f3884h;
        p02.f3860l = this.f3891o;
        p02.f3861m = this.f3892p;
        O0 o02 = this.f3889m;
        if (o02 == null || (iArr = o02.f3850a) == null) {
            p02.f3856h = 0;
        } else {
            p02.f3857i = iArr;
            p02.f3856h = iArr.length;
            p02.f3858j = o02.f3851b;
        }
        if (getChildCount() > 0) {
            p02.f3852d = this.f3891o ? i() : h();
            View d4 = this.f3885i ? d(true) : e(true);
            p02.f3853e = d4 != null ? AbstractC0280l0.getPosition(d4) : -1;
            int i5 = this.f3877a;
            p02.f3854f = i5;
            p02.f3855g = new int[i5];
            for (int i6 = 0; i6 < this.f3877a; i6++) {
                if (this.f3891o) {
                    i4 = this.f3878b[i6].f(Integer.MIN_VALUE);
                    if (i4 != Integer.MIN_VALUE) {
                        h4 = this.f3879c.f();
                        i4 -= h4;
                        p02.f3855g[i6] = i4;
                    } else {
                        p02.f3855g[i6] = i4;
                    }
                } else {
                    i4 = this.f3878b[i6].i(Integer.MIN_VALUE);
                    if (i4 != Integer.MIN_VALUE) {
                        h4 = this.f3879c.h();
                        i4 -= h4;
                        p02.f3855g[i6] = i4;
                    } else {
                        p02.f3855g[i6] = i4;
                    }
                }
            }
        } else {
            p02.f3852d = -1;
            p02.f3853e = -1;
            p02.f3854f = 0;
        }
        return p02;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void onScrollStateChanged(int i4) {
        if (i4 == 0) {
            b();
        }
    }

    public final boolean p(int i4) {
        if (this.f3881e == 0) {
            return (i4 == -1) != this.f3885i;
        }
        return ((i4 == -1) == this.f3885i) == isLayoutRTL();
    }

    public final void q(int i4, A0 a02) {
        int h4;
        int i5;
        if (i4 > 0) {
            h4 = i();
            i5 = 1;
        } else {
            h4 = h();
            i5 = -1;
        }
        I i6 = this.f3883g;
        i6.f3801a = true;
        v(h4, a02);
        u(i5);
        i6.f3803c = h4 + i6.f3804d;
        i6.f3802b = Math.abs(i4);
    }

    public final void r(C0295t0 c0295t0, I i4) {
        if (!i4.f3801a || i4.f3809i) {
            return;
        }
        if (i4.f3802b == 0) {
            if (i4.f3805e == -1) {
                s(i4.f3807g, c0295t0);
                return;
            } else {
                t(i4.f3806f, c0295t0);
                return;
            }
        }
        int i5 = 1;
        if (i4.f3805e == -1) {
            int i6 = i4.f3806f;
            int i7 = this.f3878b[0].i(i6);
            while (i5 < this.f3877a) {
                int i8 = this.f3878b[i5].i(i6);
                if (i8 > i7) {
                    i7 = i8;
                }
                i5++;
            }
            int i9 = i6 - i7;
            s(i9 < 0 ? i4.f3807g : i4.f3807g - Math.min(i9, i4.f3802b), c0295t0);
            return;
        }
        int i10 = i4.f3807g;
        int f4 = this.f3878b[0].f(i10);
        while (i5 < this.f3877a) {
            int f5 = this.f3878b[i5].f(i10);
            if (f5 < f4) {
                f4 = f5;
            }
            i5++;
        }
        int i11 = f4 - i4.f3807g;
        t(i11 < 0 ? i4.f3806f : Math.min(i11, i4.f3802b) + i4.f3806f, c0295t0);
    }

    public final void resolveShouldLayoutReverse() {
        if (this.f3881e == 1 || !isLayoutRTL()) {
            this.f3885i = this.f3884h;
        } else {
            this.f3885i = !this.f3884h;
        }
    }

    public final void s(int i4, C0295t0 c0295t0) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.f3879c.d(childAt) < i4 || this.f3879c.l(childAt) < i4) {
                return;
            }
            L0 l02 = (L0) childAt.getLayoutParams();
            l02.getClass();
            if (l02.f3841e.f3863a.size() == 1) {
                return;
            }
            Q0 q02 = l02.f3841e;
            ArrayList arrayList = q02.f3863a;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            L0 h4 = Q0.h(view);
            h4.f3841e = null;
            if (h4.c() || h4.b()) {
                q02.f3866d -= q02.f3868f.f3879c.c(view);
            }
            if (size == 1) {
                q02.f3864b = Integer.MIN_VALUE;
            }
            q02.f3865c = Integer.MIN_VALUE;
            removeAndRecycleView(childAt, c0295t0);
        }
    }

    public final int scrollBy(int i4, C0295t0 c0295t0, A0 a02) {
        if (getChildCount() == 0 || i4 == 0) {
            return 0;
        }
        q(i4, a02);
        I i5 = this.f3883g;
        int c4 = c(c0295t0, i5, a02);
        if (i5.f3802b >= c4) {
            i4 = i4 < 0 ? -c4 : c4;
        }
        this.f3879c.m(-i4);
        this.f3891o = this.f3885i;
        i5.f3802b = 0;
        r(c0295t0, i5);
        return i4;
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final int scrollHorizontallyBy(int i4, C0295t0 c0295t0, A0 a02) {
        return scrollBy(i4, c0295t0, a02);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void scrollToPosition(int i4) {
        P0 p02 = this.f3893q;
        if (p02 != null && p02.f3852d != i4) {
            p02.f3855g = null;
            p02.f3854f = 0;
            p02.f3852d = -1;
            p02.f3853e = -1;
        }
        this.f3887k = i4;
        this.f3888l = Integer.MIN_VALUE;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final int scrollVerticallyBy(int i4, C0295t0 c0295t0, A0 a02) {
        return scrollBy(i4, c0295t0, a02);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void setMeasuredDimension(Rect rect, int i4, int i5) {
        int chooseSize;
        int chooseSize2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.f3881e == 1) {
            int height = rect.height() + paddingBottom;
            RecyclerView recyclerView = this.mRecyclerView;
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            chooseSize2 = AbstractC0280l0.chooseSize(i5, height, C0186x.c(recyclerView));
            chooseSize = AbstractC0280l0.chooseSize(i4, (this.f3882f * this.f3877a) + paddingRight, C0186x.d(this.mRecyclerView));
        } else {
            int width = rect.width() + paddingRight;
            RecyclerView recyclerView2 = this.mRecyclerView;
            WeakHashMap weakHashMap2 = androidx.core.view.J.f3079a;
            chooseSize = AbstractC0280l0.chooseSize(i4, width, C0186x.d(recyclerView2));
            chooseSize2 = AbstractC0280l0.chooseSize(i5, (this.f3882f * this.f3877a) + paddingBottom, C0186x.c(this.mRecyclerView));
        }
        RecyclerView.access$500(this.mRecyclerView, chooseSize, chooseSize2);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final void smoothScrollToPosition(RecyclerView recyclerView, int i4) {
        O o4 = new O(recyclerView.getContext());
        o4.g(i4);
        startSmoothScroll(o4);
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final boolean supportsPredictiveItemAnimations() {
        return this.f3893q == null;
    }

    public final void t(int i4, C0295t0 c0295t0) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.f3879c.b(childAt) > i4 || this.f3879c.k(childAt) > i4) {
                return;
            }
            L0 l02 = (L0) childAt.getLayoutParams();
            l02.getClass();
            if (l02.f3841e.f3863a.size() == 1) {
                return;
            }
            Q0 q02 = l02.f3841e;
            ArrayList arrayList = q02.f3863a;
            View view = (View) arrayList.remove(0);
            L0 h4 = Q0.h(view);
            h4.f3841e = null;
            if (arrayList.size() == 0) {
                q02.f3865c = Integer.MIN_VALUE;
            }
            if (h4.c() || h4.b()) {
                q02.f3866d -= q02.f3868f.f3879c.c(view);
            }
            q02.f3864b = Integer.MIN_VALUE;
            removeAndRecycleView(childAt, c0295t0);
        }
    }

    public final void u(int i4) {
        I i5 = this.f3883g;
        i5.f3805e = i4;
        i5.f3804d = this.f3885i != (i4 == -1) ? -1 : 1;
    }

    public final void v(int i4, A0 a02) {
        int i5;
        int i6;
        int i7;
        I i8 = this.f3883g;
        boolean z4 = false;
        i8.f3802b = 0;
        i8.f3803c = i4;
        O o4 = this.mSmoothScroller;
        if (!(o4 != null && o4.d()) || (i7 = a02.f3758a) == -1) {
            i5 = 0;
            i6 = 0;
        } else {
            if (this.f3885i == (i7 < i4)) {
                i5 = this.f3879c.i();
                i6 = 0;
            } else {
                i6 = this.f3879c.i();
                i5 = 0;
            }
        }
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView != null && recyclerView.mClipToPadding) {
            i8.f3806f = this.f3879c.h() - i6;
            i8.f3807g = this.f3879c.f() + i5;
        } else {
            i8.f3807g = this.f3879c.e() + i5;
            i8.f3806f = -i6;
        }
        i8.f3808h = false;
        i8.f3801a = true;
        if (this.f3879c.g() == 0 && this.f3879c.e() == 0) {
            z4 = true;
        }
        i8.f3809i = z4;
    }

    public final void w(Q0 q02, int i4, int i5) {
        int i6 = q02.f3866d;
        int i7 = q02.f3867e;
        if (i4 != -1) {
            int i8 = q02.f3865c;
            if (i8 == Integer.MIN_VALUE) {
                q02.a();
                i8 = q02.f3865c;
            }
            if (i8 - i6 >= i5) {
                this.f3886j.set(i7, false);
                return;
            }
            return;
        }
        int i9 = q02.f3864b;
        if (i9 == Integer.MIN_VALUE) {
            View view = (View) q02.f3863a.get(0);
            L0 h4 = Q0.h(view);
            q02.f3864b = q02.f3868f.f3879c.d(view);
            h4.getClass();
            i9 = q02.f3864b;
        }
        if (i9 + i6 <= i5) {
            this.f3886j.set(i7, false);
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0280l0
    public final C0282m0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new L0((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new L0(layoutParams);
    }
}
