package com.google.android.material.appbar;

import C2.i;
import C2.j;
import H.a;
import P.c;
import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0186x;
import androidx.core.view.C0187y;
import androidx.core.view.C0188z;
import androidx.core.view.D;
import androidx.core.view.H;
import androidx.core.view.InterfaceC0176m;
import androidx.core.view.J;
import androidx.core.view.c0;
import com.android.systemui.shared.R;
import i2.C0980a;
import j2.C1114a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import k2.AbstractC1220r;
import k2.AbstractC1221s;
import k2.C1203a;
import k2.C1204b;
import k2.C1205c;
import k2.C1206d;
import k2.C1207e;
import k2.C1208f;
import k2.C1210h;
import k2.C1212j;
import k2.C1213k;
import k2.C1223u;
import k2.C1224v;
import k2.InterfaceC1211i;
import x2.C1480r;
import z.b;
import z.f;
/* loaded from: classes.dex */
public class AppBarLayout extends LinearLayout implements b {

    /* renamed from: d  reason: collision with root package name */
    public int f7683d;

    /* renamed from: e  reason: collision with root package name */
    public int f7684e;

    /* renamed from: f  reason: collision with root package name */
    public int f7685f;

    /* renamed from: g  reason: collision with root package name */
    public int f7686g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7687h;

    /* renamed from: i  reason: collision with root package name */
    public int f7688i;

    /* renamed from: j  reason: collision with root package name */
    public c0 f7689j;

    /* renamed from: k  reason: collision with root package name */
    public List f7690k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f7691l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f7692m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f7693n;

    /* renamed from: o  reason: collision with root package name */
    public final int f7694o;

    /* renamed from: p  reason: collision with root package name */
    public WeakReference f7695p;

    /* renamed from: q  reason: collision with root package name */
    public ValueAnimator f7696q;

    /* renamed from: r  reason: collision with root package name */
    public final List f7697r;

    /* renamed from: s  reason: collision with root package name */
    public int[] f7698s;

    /* renamed from: t  reason: collision with root package name */
    public Drawable f7699t;

    /* renamed from: u  reason: collision with root package name */
    public Behavior f7700u;

    /* loaded from: classes.dex */
    public class BaseBehavior extends AbstractC1220r {

        /* renamed from: j  reason: collision with root package name */
        public int f7701j;

        /* renamed from: k  reason: collision with root package name */
        public int f7702k;

        /* renamed from: l  reason: collision with root package name */
        public ValueAnimator f7703l;

        /* renamed from: m  reason: collision with root package name */
        public C1210h f7704m;

        /* renamed from: n  reason: collision with root package name */
        public WeakReference f7705n;

        /* renamed from: o  reason: collision with root package name */
        public boolean f7706o;

        public BaseBehavior() {
        }

        public static View C(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = coordinatorLayout.getChildAt(i4);
                if ((childAt instanceof InterfaceC0176m) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x0071  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static void H(androidx.coordinatorlayout.widget.CoordinatorLayout r7, com.google.android.material.appbar.AppBarLayout r8, int r9, int r10, boolean r11) {
            /*
                int r0 = java.lang.Math.abs(r9)
                int r1 = r8.getChildCount()
                r2 = 0
                r3 = r2
            La:
                r4 = 0
                if (r3 >= r1) goto L21
                android.view.View r5 = r8.getChildAt(r3)
                int r6 = r5.getTop()
                if (r0 < r6) goto L1e
                int r6 = r5.getBottom()
                if (r0 > r6) goto L1e
                goto L22
            L1e:
                int r3 = r3 + 1
                goto La
            L21:
                r5 = r4
            L22:
                r0 = 1
                if (r5 == 0) goto L5e
                android.view.ViewGroup$LayoutParams r1 = r5.getLayoutParams()
                k2.k r1 = (k2.C1213k) r1
                int r1 = r1.f11196a
                r3 = r1 & 1
                if (r3 == 0) goto L5e
                java.util.WeakHashMap r3 = androidx.core.view.J.f3079a
                int r3 = androidx.core.view.C0186x.c(r5)
                if (r10 <= 0) goto L4b
                r10 = r1 & 12
                if (r10 == 0) goto L4b
                int r9 = -r9
                int r10 = r5.getBottom()
                int r10 = r10 - r3
                int r1 = r8.getTopInset()
                int r10 = r10 - r1
                if (r9 < r10) goto L5e
                goto L5c
            L4b:
                r10 = r1 & 2
                if (r10 == 0) goto L5e
                int r9 = -r9
                int r10 = r5.getBottom()
                int r10 = r10 - r3
                int r1 = r8.getTopInset()
                int r10 = r10 - r1
                if (r9 < r10) goto L5e
            L5c:
                r9 = r0
                goto L5f
            L5e:
                r9 = r2
            L5f:
                boolean r10 = r8.f7693n
                if (r10 == 0) goto L6b
                android.view.View r9 = C(r7)
                boolean r9 = r8.k(r9)
            L6b:
                boolean r9 = r8.j(r9)
                if (r11 != 0) goto Lb1
                if (r9 == 0) goto Lb4
                z.k r7 = r7.f3039e
                q.m r7 = r7.f12987b
                java.lang.Object r7 = r7.get(r8)
                java.util.ArrayList r7 = (java.util.ArrayList) r7
                if (r7 != 0) goto L80
                goto L85
            L80:
                java.util.ArrayList r4 = new java.util.ArrayList
                r4.<init>(r7)
            L85:
                if (r4 != 0) goto L8b
                java.util.List r4 = java.util.Collections.emptyList()
            L8b:
                int r7 = r4.size()
                r9 = r2
            L90:
                if (r9 >= r7) goto Laf
                java.lang.Object r10 = r4.get(r9)
                android.view.View r10 = (android.view.View) r10
                android.view.ViewGroup$LayoutParams r10 = r10.getLayoutParams()
                z.f r10 = (z.f) r10
                z.c r10 = r10.f12967a
                boolean r11 = r10 instanceof com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior
                if (r11 == 0) goto Lac
                com.google.android.material.appbar.AppBarLayout$ScrollingViewBehavior r10 = (com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior) r10
                int r7 = r10.f11217f
                if (r7 == 0) goto Laf
                r2 = r0
                goto Laf
            Lac:
                int r9 = r9 + 1
                goto L90
            Laf:
                if (r2 == 0) goto Lb4
            Lb1:
                r8.jumpDrawablesToCurrentState()
            Lb4:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.H(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        public final void B(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i4) {
            int abs = Math.abs(t() - i4);
            float abs2 = Math.abs(0.0f);
            int round = abs2 > 0.0f ? Math.round((abs / abs2) * 1000.0f) * 3 : (int) (((abs / appBarLayout.getHeight()) + 1.0f) * 150.0f);
            int t4 = t();
            if (t4 == i4) {
                ValueAnimator valueAnimator = this.f7703l;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f7703l.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f7703l;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f7703l = valueAnimator3;
                valueAnimator3.setInterpolator(C1114a.f10704e);
                this.f7703l.addUpdateListener(new C1205c(this, coordinatorLayout, appBarLayout));
            } else {
                valueAnimator2.cancel();
            }
            this.f7703l.setDuration(Math.min(round, 600));
            this.f7703l.setIntValues(t4, i4);
            this.f7703l.start();
        }

        public final void D(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i4, int[] iArr) {
            int i5;
            int i6;
            if (i4 != 0) {
                if (i4 < 0) {
                    i5 = -appBarLayout.f();
                    i6 = appBarLayout.c() + i5;
                } else {
                    i5 = -appBarLayout.f();
                    i6 = 0;
                }
                int i7 = i5;
                int i8 = i6;
                if (i7 != i8) {
                    iArr[1] = z(coordinatorLayout, appBarLayout, t() - i4, i7, i8);
                }
            }
            if (appBarLayout.f7693n) {
                appBarLayout.j(appBarLayout.k(view));
            }
        }

        public final C1210h E(Parcelable parcelable, AppBarLayout appBarLayout) {
            int s4 = s();
            int childCount = appBarLayout.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = appBarLayout.getChildAt(i4);
                int bottom = childAt.getBottom() + s4;
                if (childAt.getTop() + s4 <= 0 && bottom >= 0) {
                    if (parcelable == null) {
                        parcelable = c.f1527e;
                    }
                    C1210h c1210h = new C1210h(parcelable);
                    boolean z4 = s4 == 0;
                    c1210h.f11190g = z4;
                    c1210h.f11189f = !z4 && (-s4) >= appBarLayout.f();
                    c1210h.f11191h = i4;
                    WeakHashMap weakHashMap = J.f3079a;
                    c1210h.f11193j = bottom == appBarLayout.getTopInset() + C0186x.c(childAt);
                    c1210h.f11192i = bottom / childAt.getHeight();
                    return c1210h;
                }
            }
            return null;
        }

        public final void F(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            int paddingTop = appBarLayout.getPaddingTop() + appBarLayout.getTopInset();
            int t4 = t() - paddingTop;
            int childCount = appBarLayout.getChildCount();
            int i4 = 0;
            while (true) {
                if (i4 >= childCount) {
                    i4 = -1;
                    break;
                }
                View childAt = appBarLayout.getChildAt(i4);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                C1213k c1213k = (C1213k) childAt.getLayoutParams();
                if ((c1213k.f11196a & 32) == 32) {
                    top -= ((LinearLayout.LayoutParams) c1213k).topMargin;
                    bottom += ((LinearLayout.LayoutParams) c1213k).bottomMargin;
                }
                int i5 = -t4;
                if (top <= i5 && bottom >= i5) {
                    break;
                }
                i4++;
            }
            if (i4 >= 0) {
                View childAt2 = appBarLayout.getChildAt(i4);
                C1213k c1213k2 = (C1213k) childAt2.getLayoutParams();
                int i6 = c1213k2.f11196a;
                if ((i6 & 17) == 17) {
                    int i7 = -childAt2.getTop();
                    int i8 = -childAt2.getBottom();
                    if (i4 == 0) {
                        WeakHashMap weakHashMap = J.f3079a;
                        if (C0186x.a(appBarLayout) && C0186x.a(childAt2)) {
                            i7 -= appBarLayout.getTopInset();
                        }
                    }
                    if ((i6 & 2) == 2) {
                        WeakHashMap weakHashMap2 = J.f3079a;
                        i8 += C0186x.c(childAt2);
                    } else {
                        if ((i6 & 5) == 5) {
                            WeakHashMap weakHashMap3 = J.f3079a;
                            int c4 = C0186x.c(childAt2) + i8;
                            if (t4 < c4) {
                                i7 = c4;
                            } else {
                                i8 = c4;
                            }
                        }
                    }
                    if ((i6 & 32) == 32) {
                        i7 += ((LinearLayout.LayoutParams) c1213k2).topMargin;
                        i8 -= ((LinearLayout.LayoutParams) c1213k2).bottomMargin;
                    }
                    if (t4 < (i8 + i7) / 2) {
                        i7 = i8;
                    }
                    B(coordinatorLayout, appBarLayout, a.b(i7 + paddingTop, -appBarLayout.f(), 0));
                }
            }
        }

        public final void G(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            View view;
            boolean z4;
            boolean z5;
            J.f(coordinatorLayout, M.c.f1335f.a());
            boolean z6 = false;
            J.d(coordinatorLayout, 0);
            J.f(coordinatorLayout, M.c.f1336g.a());
            J.d(coordinatorLayout, 0);
            if (appBarLayout.f() == 0) {
                return;
            }
            int childCount = coordinatorLayout.getChildCount();
            int i4 = 0;
            while (true) {
                if (i4 >= childCount) {
                    view = null;
                    break;
                }
                view = coordinatorLayout.getChildAt(i4);
                if (((f) view.getLayoutParams()).f12967a instanceof ScrollingViewBehavior) {
                    break;
                }
                i4++;
            }
            View view2 = view;
            if (view2 == null) {
                return;
            }
            int childCount2 = appBarLayout.getChildCount();
            int i5 = 0;
            while (true) {
                z4 = true;
                if (i5 >= childCount2) {
                    z5 = false;
                    break;
                } else if (((C1213k) appBarLayout.getChildAt(i5).getLayoutParams()).f11196a != 0) {
                    z5 = true;
                    break;
                } else {
                    i5++;
                }
            }
            if (z5) {
                if (!(H.a(coordinatorLayout) != null)) {
                    J.h(coordinatorLayout, new C1206d(this));
                }
                if (t() != (-appBarLayout.f())) {
                    J.g(coordinatorLayout, M.c.f1335f, new C1208f(appBarLayout, false));
                    z6 = true;
                }
                if (t() != 0) {
                    if (view2.canScrollVertically(-1)) {
                        int i6 = -appBarLayout.c();
                        if (i6 != 0) {
                            J.g(coordinatorLayout, M.c.f1336g, new C1207e(this, coordinatorLayout, appBarLayout, view2, i6));
                        }
                    } else {
                        J.g(coordinatorLayout, M.c.f1336g, new C1208f(appBarLayout, true));
                    }
                    this.f7706o = z4;
                }
                z4 = z6;
                this.f7706o = z4;
            }
        }

        @Override // k2.C1222t, z.c
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i4) {
            int round;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            super.h(coordinatorLayout, appBarLayout, i4);
            int i5 = appBarLayout.f7688i;
            C1210h c1210h = this.f7704m;
            if (c1210h == null || (i5 & 8) != 0) {
                if (i5 != 0) {
                    boolean z4 = (i5 & 4) != 0;
                    if ((i5 & 2) != 0) {
                        int i6 = -appBarLayout.f();
                        if (z4) {
                            B(coordinatorLayout, appBarLayout, i6);
                        } else {
                            A(coordinatorLayout, appBarLayout, i6);
                        }
                    } else if ((i5 & 1) != 0) {
                        if (z4) {
                            B(coordinatorLayout, appBarLayout, 0);
                        } else {
                            A(coordinatorLayout, appBarLayout, 0);
                        }
                    }
                }
            } else if (c1210h.f11189f) {
                A(coordinatorLayout, appBarLayout, -appBarLayout.f());
            } else if (c1210h.f11190g) {
                A(coordinatorLayout, appBarLayout, 0);
            } else {
                View childAt = appBarLayout.getChildAt(c1210h.f11191h);
                int i7 = -childAt.getBottom();
                if (this.f7704m.f11193j) {
                    WeakHashMap weakHashMap = J.f3079a;
                    round = appBarLayout.getTopInset() + C0186x.c(childAt) + i7;
                } else {
                    round = Math.round(childAt.getHeight() * this.f7704m.f11192i) + i7;
                }
                A(coordinatorLayout, appBarLayout, round);
            }
            appBarLayout.f7688i = 0;
            this.f7704m = null;
            int b4 = a.b(s(), -appBarLayout.f(), 0);
            C1223u c1223u = this.f11218a;
            if (c1223u != null) {
                c1223u.b(b4);
            } else {
                this.f11219b = b4;
            }
            H(coordinatorLayout, appBarLayout, s(), 0, true);
            appBarLayout.h(s());
            G(coordinatorLayout, appBarLayout);
            return true;
        }

        @Override // z.c
        public final boolean i(CoordinatorLayout coordinatorLayout, View view, int i4, int i5, int i6) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (((ViewGroup.MarginLayoutParams) ((f) appBarLayout.getLayoutParams())).height == -2) {
                coordinatorLayout.r(appBarLayout, i4, i5, View.MeasureSpec.makeMeasureSpec(0, 0));
                return true;
            }
            return false;
        }

        public boolean isOffsetAnimatorRunning() {
            ValueAnimator valueAnimator = this.f7703l;
            return valueAnimator != null && valueAnimator.isRunning();
        }

        @Override // z.c
        public final /* bridge */ /* synthetic */ void k(CoordinatorLayout coordinatorLayout, View view, View view2, int i4, int i5, int[] iArr, int i6) {
            D(coordinatorLayout, (AppBarLayout) view, view2, i5, iArr);
        }

        @Override // z.c
        public final void l(CoordinatorLayout coordinatorLayout, View view, int i4, int i5, int i6, int[] iArr) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (i6 < 0) {
                iArr[1] = z(coordinatorLayout, appBarLayout, t() - i6, -appBarLayout.d(), 0);
            }
            if (i6 == 0) {
                G(coordinatorLayout, appBarLayout);
            }
        }

        @Override // z.c
        public final void n(View view, Parcelable parcelable) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (!(parcelable instanceof C1210h)) {
                this.f7704m = null;
                return;
            }
            C1210h c1210h = this.f7704m;
            this.f7704m = (C1210h) parcelable;
        }

        @Override // z.c
        public final Parcelable o(View view) {
            AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
            C1210h E3 = E(absSavedState, (AppBarLayout) view);
            return E3 == null ? absSavedState : E3;
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
            if (((r4.f() != 0) && r3.getHeight() - r5.getHeight() <= r4.getHeight()) != false) goto L15;
         */
        @Override // z.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean p(androidx.coordinatorlayout.widget.CoordinatorLayout r3, android.view.View r4, android.view.View r5, int r6, int r7) {
            /*
                r2 = this;
                com.google.android.material.appbar.AppBarLayout r4 = (com.google.android.material.appbar.AppBarLayout) r4
                r6 = r6 & 2
                r0 = 0
                if (r6 == 0) goto L2c
                boolean r6 = r4.f7693n
                r1 = 1
                if (r6 != 0) goto L2b
                int r6 = r4.f()
                if (r6 == 0) goto L14
                r6 = r1
                goto L15
            L14:
                r6 = r0
            L15:
                if (r6 == 0) goto L28
                int r3 = r3.getHeight()
                int r5 = r5.getHeight()
                int r3 = r3 - r5
                int r4 = r4.getHeight()
                if (r3 > r4) goto L28
                r3 = r1
                goto L29
            L28:
                r3 = r0
            L29:
                if (r3 == 0) goto L2c
            L2b:
                r0 = r1
            L2c:
                if (r0 == 0) goto L35
                android.animation.ValueAnimator r3 = r2.f7703l
                if (r3 == 0) goto L35
                r3.cancel()
            L35:
                r3 = 0
                r2.f7705n = r3
                r2.f7702k = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.p(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.View, int, int):boolean");
        }

        @Override // z.c
        public final void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i4) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            if (this.f7702k == 0 || i4 == 1) {
                F(coordinatorLayout, appBarLayout);
                if (appBarLayout.f7693n) {
                    appBarLayout.j(appBarLayout.k(view2));
                }
            }
            this.f7705n = new WeakReference(view2);
        }

        @Override // k2.C1222t
        public final int t() {
            return s() + this.f7701j;
        }

        @Override // k2.AbstractC1220r
        public final boolean v(View view) {
            View view2;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            WeakReference weakReference = this.f7705n;
            return weakReference == null || !((view2 = (View) weakReference.get()) == null || !view2.isShown() || view2.canScrollVertically(-1));
        }

        @Override // k2.AbstractC1220r
        public final int w(View view) {
            return -((AppBarLayout) view).d();
        }

        @Override // k2.AbstractC1220r
        public final int x(View view) {
            return ((AppBarLayout) view).f();
        }

        @Override // k2.AbstractC1220r
        public final void y(View view, CoordinatorLayout coordinatorLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            F(coordinatorLayout, appBarLayout);
            if (appBarLayout.f7693n) {
                appBarLayout.j(appBarLayout.k(C(coordinatorLayout)));
            }
        }

        @Override // k2.AbstractC1220r
        public final int z(CoordinatorLayout coordinatorLayout, View view, int i4, int i5, int i6) {
            int i7;
            boolean z4;
            ArrayList arrayList;
            int i8;
            AppBarLayout appBarLayout = (AppBarLayout) view;
            int t4 = t();
            int i9 = 0;
            if (i5 == 0 || t4 < i5 || t4 > i6) {
                this.f7701j = 0;
            } else {
                int b4 = a.b(i4, i5, i6);
                if (t4 != b4) {
                    if (appBarLayout.f7687h) {
                        int abs = Math.abs(b4);
                        int childCount = appBarLayout.getChildCount();
                        int i10 = 0;
                        while (true) {
                            if (i10 >= childCount) {
                                break;
                            }
                            View childAt = appBarLayout.getChildAt(i10);
                            C1213k c1213k = (C1213k) childAt.getLayoutParams();
                            Interpolator interpolator = c1213k.f11198c;
                            if (abs < childAt.getTop() || abs > childAt.getBottom()) {
                                i10++;
                            } else if (interpolator != null) {
                                int i11 = c1213k.f11196a;
                                if ((i11 & 1) != 0) {
                                    i8 = childAt.getHeight() + ((LinearLayout.LayoutParams) c1213k).topMargin + ((LinearLayout.LayoutParams) c1213k).bottomMargin + 0;
                                    if ((i11 & 2) != 0) {
                                        WeakHashMap weakHashMap = J.f3079a;
                                        i8 -= C0186x.c(childAt);
                                    }
                                } else {
                                    i8 = 0;
                                }
                                WeakHashMap weakHashMap2 = J.f3079a;
                                if (C0186x.a(childAt)) {
                                    i8 -= appBarLayout.getTopInset();
                                }
                                if (i8 > 0) {
                                    float f4 = i8;
                                    i7 = (childAt.getTop() + Math.round(interpolator.getInterpolation((abs - childAt.getTop()) / f4) * f4)) * Integer.signum(b4);
                                }
                            }
                        }
                    }
                    i7 = b4;
                    C1223u c1223u = this.f11218a;
                    if (c1223u != null) {
                        z4 = c1223u.b(i7);
                    } else {
                        this.f11219b = i7;
                        z4 = false;
                    }
                    int i12 = t4 - b4;
                    this.f7701j = b4 - i7;
                    if (z4) {
                        for (int i13 = 0; i13 < appBarLayout.getChildCount(); i13++) {
                            C1213k c1213k2 = (C1213k) appBarLayout.getChildAt(i13).getLayoutParams();
                            C1212j c1212j = c1213k2.f11197b;
                            if (c1212j != null && (c1213k2.f11196a & 1) != 0) {
                                View childAt2 = appBarLayout.getChildAt(i13);
                                Rect rect = c1212j.f11194a;
                                childAt2.getDrawingRect(rect);
                                appBarLayout.offsetDescendantRectToMyCoords(childAt2, rect);
                                rect.offset(0, -appBarLayout.getTopInset());
                                float abs2 = rect.top - Math.abs(s());
                                if (abs2 <= 0.0f) {
                                    float a4 = 1.0f - a.a(Math.abs(abs2 / rect.height()));
                                    float height = (-abs2) - ((rect.height() * 0.3f) * (1.0f - (a4 * a4)));
                                    childAt2.setTranslationY(height);
                                    Rect rect2 = c1212j.f11195b;
                                    childAt2.getDrawingRect(rect2);
                                    rect2.offset(0, (int) (-height));
                                    WeakHashMap weakHashMap3 = J.f3079a;
                                    C0188z.b(childAt2, rect2);
                                } else {
                                    WeakHashMap weakHashMap4 = J.f3079a;
                                    C0188z.b(childAt2, null);
                                    childAt2.setTranslationY(0.0f);
                                }
                            }
                        }
                    }
                    if (!z4 && appBarLayout.f7687h && (arrayList = (ArrayList) coordinatorLayout.f3039e.f12987b.get(appBarLayout)) != null && !arrayList.isEmpty()) {
                        for (int i14 = 0; i14 < arrayList.size(); i14++) {
                            View view2 = (View) arrayList.get(i14);
                            z.c cVar = ((f) view2.getLayoutParams()).f12967a;
                            if (cVar != null) {
                                cVar.d(coordinatorLayout, view2, appBarLayout);
                            }
                        }
                    }
                    appBarLayout.h(s());
                    H(coordinatorLayout, appBarLayout, b4, b4 < t4 ? -1 : 1, false);
                    i9 = i12;
                }
            }
            G(coordinatorLayout, appBarLayout);
            return i9;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes.dex */
    public class Behavior extends BaseBehavior {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* loaded from: classes.dex */
    public class ScrollingViewBehavior extends AbstractC1221s {
        public ScrollingViewBehavior() {
        }

        @Override // z.c
        public final boolean b(View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // z.c
        public final boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            int b4;
            z.c cVar = ((f) view2.getLayoutParams()).f12967a;
            if (cVar instanceof BaseBehavior) {
                int bottom = (view2.getBottom() - view.getTop()) + ((BaseBehavior) cVar).f7701j + this.f11216e;
                if (this.f11217f == 0) {
                    b4 = 0;
                } else {
                    float w4 = w(view2);
                    int i4 = this.f11217f;
                    b4 = a.b((int) (w4 * i4), 0, i4);
                }
                int i5 = bottom - b4;
                WeakHashMap weakHashMap = J.f3079a;
                view.offsetTopAndBottom(i5);
            }
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.f7693n) {
                    appBarLayout.j(appBarLayout.k(view));
                }
            }
            return false;
        }

        @Override // z.c
        public final void e(CoordinatorLayout coordinatorLayout, View view) {
            if (view instanceof AppBarLayout) {
                J.f(coordinatorLayout, M.c.f1335f.a());
                J.d(coordinatorLayout, 0);
                J.f(coordinatorLayout, M.c.f1336g.a());
                J.d(coordinatorLayout, 0);
                J.h(coordinatorLayout, null);
            }
        }

        @Override // z.c
        public final boolean m(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z4) {
            AppBarLayout appBarLayout;
            List d4 = coordinatorLayout.d(view);
            int size = d4.size();
            int i4 = 0;
            while (true) {
                if (i4 >= size) {
                    appBarLayout = null;
                    break;
                }
                View view2 = (View) d4.get(i4);
                if (view2 instanceof AppBarLayout) {
                    appBarLayout = (AppBarLayout) view2;
                    break;
                }
                i4++;
            }
            if (appBarLayout != null) {
                rect.offset(view.getLeft(), view.getTop());
                int width = coordinatorLayout.getWidth();
                int height = coordinatorLayout.getHeight();
                Rect rect2 = this.f11214c;
                rect2.set(0, 0, width, height);
                if (!rect2.contains(rect)) {
                    appBarLayout.i(false, !z4, true);
                    return true;
                }
            }
            return false;
        }

        @Override // k2.AbstractC1221s
        public final AppBarLayout v(List list) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = (View) list.get(i4);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // k2.AbstractC1221s
        public final float w(View view) {
            int i4;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int f4 = appBarLayout.f();
                int c4 = appBarLayout.c();
                z.c cVar = ((f) appBarLayout.getLayoutParams()).f12967a;
                int t4 = cVar instanceof BaseBehavior ? ((BaseBehavior) cVar).t() : 0;
                if ((c4 == 0 || f4 + t4 > c4) && (i4 = f4 - c4) != 0) {
                    return (t4 / i4) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // k2.AbstractC1221s
        public final int x(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).f() : view.getMeasuredHeight();
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0980a.f9648x);
            this.f11217f = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            obtainStyledAttributes.recycle();
        }
    }

    public AppBarLayout(Context context) {
        this(context, null);
    }

    public static C1213k b(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LinearLayout.LayoutParams ? new C1213k((LinearLayout.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C1213k((ViewGroup.MarginLayoutParams) layoutParams) : new C1213k(layoutParams);
    }

    @Override // z.b
    public final z.c a() {
        Behavior behavior = new Behavior();
        this.f7700u = behavior;
        return behavior;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int c() {
        /*
            r9 = this;
            int r0 = r9.f7685f
            r1 = -1
            if (r0 == r1) goto L6
            return r0
        L6:
            int r0 = r9.getChildCount()
            int r0 = r0 + (-1)
            r1 = 0
            r2 = r1
        Le:
            if (r0 < 0) goto L69
            android.view.View r3 = r9.getChildAt(r0)
            int r4 = r3.getVisibility()
            r5 = 8
            if (r4 != r5) goto L1d
            goto L66
        L1d:
            android.view.ViewGroup$LayoutParams r4 = r3.getLayoutParams()
            k2.k r4 = (k2.C1213k) r4
            int r5 = r3.getMeasuredHeight()
            int r6 = r4.f11196a
            r7 = r6 & 5
            r8 = 5
            if (r7 != r8) goto L63
            int r7 = r4.topMargin
            int r4 = r4.bottomMargin
            int r7 = r7 + r4
            r4 = r6 & 8
            if (r4 == 0) goto L3f
            java.util.WeakHashMap r4 = androidx.core.view.J.f3079a
            int r4 = androidx.core.view.C0186x.c(r3)
        L3d:
            int r4 = r4 + r7
            goto L4e
        L3f:
            r4 = r6 & 2
            if (r4 == 0) goto L4c
            java.util.WeakHashMap r4 = androidx.core.view.J.f3079a
            int r4 = androidx.core.view.C0186x.c(r3)
            int r4 = r5 - r4
            goto L3d
        L4c:
            int r4 = r7 + r5
        L4e:
            if (r0 != 0) goto L61
            java.util.WeakHashMap r6 = androidx.core.view.J.f3079a
            boolean r3 = androidx.core.view.C0186x.a(r3)
            if (r3 == 0) goto L61
            int r3 = r9.getTopInset()
            int r5 = r5 - r3
            int r4 = java.lang.Math.min(r4, r5)
        L61:
            int r2 = r2 + r4
            goto L66
        L63:
            if (r2 <= 0) goto L66
            goto L69
        L66:
            int r0 = r0 + (-1)
            goto Le
        L69:
            int r0 = java.lang.Math.max(r1, r2)
            r9.f7685f = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.c():int");
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1213k;
    }

    public final int d() {
        int i4 = this.f7686g;
        if (i4 != -1) {
            return i4;
        }
        int childCount = getChildCount();
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i5 >= childCount) {
                break;
            }
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C1213k c1213k = (C1213k) childAt.getLayoutParams();
                int measuredHeight = ((LinearLayout.LayoutParams) c1213k).topMargin + ((LinearLayout.LayoutParams) c1213k).bottomMargin + childAt.getMeasuredHeight();
                int i7 = c1213k.f11196a;
                if ((i7 & 1) == 0) {
                    break;
                }
                i6 += measuredHeight;
                if ((i7 & 2) != 0) {
                    WeakHashMap weakHashMap = J.f3079a;
                    i6 -= C0186x.c(childAt);
                    break;
                }
            }
            i5++;
        }
        int max = Math.max(0, i6);
        this.f7686g = max;
        return max;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f7699t != null && getTopInset() > 0) {
            int save = canvas.save();
            canvas.translate(0.0f, -this.f7683d);
            this.f7699t.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f7699t;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    public final int e() {
        int topInset = getTopInset();
        WeakHashMap weakHashMap = J.f3079a;
        int c4 = C0186x.c(this);
        if (c4 == 0) {
            int childCount = getChildCount();
            c4 = childCount >= 1 ? C0186x.c(getChildAt(childCount - 1)) : 0;
            if (c4 == 0) {
                return getHeight() / 3;
            }
        }
        return (c4 * 2) + topInset;
    }

    public final int f() {
        int i4 = this.f7684e;
        if (i4 != -1) {
            return i4;
        }
        int childCount = getChildCount();
        int i5 = 0;
        int i6 = 0;
        while (true) {
            if (i5 >= childCount) {
                break;
            }
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C1213k c1213k = (C1213k) childAt.getLayoutParams();
                int measuredHeight = childAt.getMeasuredHeight();
                int i7 = c1213k.f11196a;
                if ((i7 & 1) == 0) {
                    break;
                }
                int i8 = measuredHeight + ((LinearLayout.LayoutParams) c1213k).topMargin + ((LinearLayout.LayoutParams) c1213k).bottomMargin + i6;
                if (i5 == 0) {
                    WeakHashMap weakHashMap = J.f3079a;
                    if (C0186x.a(childAt)) {
                        i8 -= getTopInset();
                    }
                }
                i6 = i8;
                if ((i7 & 2) != 0) {
                    WeakHashMap weakHashMap2 = J.f3079a;
                    i6 -= C0186x.c(childAt);
                    break;
                }
            }
            i5++;
        }
        int max = Math.max(0, i6);
        this.f7684e = max;
        return max;
    }

    public final void g() {
        Behavior behavior = this.f7700u;
        C1210h E3 = (behavior == null || this.f7684e == -1 || this.f7688i != 0) ? null : behavior.E(c.f1527e, this);
        this.f7684e = -1;
        this.f7685f = -1;
        this.f7686g = -1;
        if (E3 != null) {
            Behavior behavior2 = this.f7700u;
            if (behavior2.f7704m != null) {
                return;
            }
            behavior2.f7704m = E3;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C1213k();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return b(layoutParams);
    }

    public final int getTopInset() {
        c0 c0Var = this.f7689j;
        if (c0Var != null) {
            return c0Var.d();
        }
        return 0;
    }

    public final void h(int i4) {
        this.f7683d = i4;
        if (!willNotDraw()) {
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.i(this);
        }
        List list = this.f7690k;
        if (list != null) {
            int size = ((ArrayList) list).size();
            for (int i5 = 0; i5 < size; i5++) {
                InterfaceC1211i interfaceC1211i = (InterfaceC1211i) ((ArrayList) this.f7690k).get(i5);
                if (interfaceC1211i != null) {
                    interfaceC1211i.a(i4);
                }
            }
        }
    }

    public final void i(boolean z4, boolean z5, boolean z6) {
        this.f7688i = (z4 ? 1 : 2) | (z5 ? 4 : 0) | (z6 ? 8 : 0);
        requestLayout();
    }

    public final boolean j(boolean z4) {
        if (this.f7692m != z4) {
            this.f7692m = z4;
            refreshDrawableState();
            if (this.f7693n && (getBackground() instanceof i)) {
                i iVar = (i) getBackground();
                float dimension = getResources().getDimension(R.dimen.design_appbar_elevation);
                float f4 = z4 ? 0.0f : dimension;
                if (!z4) {
                    dimension = 0.0f;
                }
                ValueAnimator valueAnimator = this.f7696q;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                ValueAnimator ofFloat = ValueAnimator.ofFloat(f4, dimension);
                this.f7696q = ofFloat;
                ofFloat.setDuration(getResources().getInteger(R.integer.app_bar_elevation_anim_duration));
                this.f7696q.setInterpolator(C1114a.f10700a);
                this.f7696q.addUpdateListener(new C1204b(this, iVar));
                this.f7696q.start();
            }
            return true;
        }
        return false;
    }

    public final boolean k(View view) {
        int i4;
        if (this.f7695p == null && (i4 = this.f7694o) != -1) {
            View findViewById = view != null ? view.findViewById(i4) : null;
            if (findViewById == null && (getParent() instanceof ViewGroup)) {
                findViewById = ((ViewGroup) getParent()).findViewById(this.f7694o);
            }
            if (findViewById != null) {
                this.f7695p = new WeakReference(findViewById);
            }
        }
        WeakReference weakReference = this.f7695p;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view = view2;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    public final boolean l() {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (childAt.getVisibility() != 8) {
                WeakHashMap weakHashMap = J.f3079a;
                return !C0186x.a(childAt);
            }
            return false;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof i) {
            j.b(this, (i) background);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i4) {
        if (this.f7698s == null) {
            this.f7698s = new int[4];
        }
        int[] iArr = this.f7698s;
        int[] onCreateDrawableState = super.onCreateDrawableState(i4 + iArr.length);
        boolean z4 = this.f7691l;
        iArr[0] = z4 ? R.attr.state_liftable : -2130969884;
        iArr[1] = (z4 && this.f7692m) ? R.attr.state_lifted : -2130969885;
        iArr[2] = z4 ? R.attr.state_collapsible : -2130969881;
        iArr[3] = (z4 && this.f7692m) ? R.attr.state_collapsed : -2130969880;
        return LinearLayout.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference weakReference = this.f7695p;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f7695p = null;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        boolean z5;
        super.onLayout(z4, i4, i5, i6, i7);
        WeakHashMap weakHashMap = J.f3079a;
        boolean z6 = true;
        if (C0186x.a(this) && l()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                getChildAt(childCount).offsetTopAndBottom(topInset);
            }
        }
        g();
        this.f7687h = false;
        int childCount2 = getChildCount();
        int i8 = 0;
        while (true) {
            if (i8 >= childCount2) {
                break;
            } else if (((C1213k) getChildAt(i8).getLayoutParams()).f11198c != null) {
                this.f7687h = true;
                break;
            } else {
                i8++;
            }
        }
        Drawable drawable = this.f7699t;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (!this.f7693n) {
            int childCount3 = getChildCount();
            int i9 = 0;
            while (true) {
                if (i9 >= childCount3) {
                    z5 = false;
                    break;
                }
                int i10 = ((C1213k) getChildAt(i9).getLayoutParams()).f11196a;
                if ((i10 & 1) == 1 && (i10 & 10) != 0) {
                    z5 = true;
                    break;
                }
                i9++;
            }
            if (!z5) {
                z6 = false;
            }
        }
        if (this.f7691l != z6) {
            this.f7691l = z6;
            refreshDrawableState();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        int mode = View.MeasureSpec.getMode(i5);
        if (mode != 1073741824) {
            WeakHashMap weakHashMap = J.f3079a;
            if (C0186x.a(this) && l()) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = a.b(getTopInset() + getMeasuredHeight(), 0, View.MeasureSpec.getSize(i5));
                } else if (mode == 0) {
                    measuredHeight += getTopInset();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        g();
    }

    @Override // android.view.View
    public final void setElevation(float f4) {
        super.setElevation(f4);
        Drawable background = getBackground();
        if (background instanceof i) {
            ((i) background).k(f4);
        }
    }

    @Override // android.widget.LinearLayout
    public final void setOrientation(int i4) {
        if (i4 != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i4);
    }

    @Override // android.view.View
    public final void setVisibility(int i4) {
        super.setVisibility(i4);
        boolean z4 = i4 == 0;
        Drawable drawable = this.f7699t;
        if (drawable != null) {
            drawable.setVisible(z4, false);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f7699t;
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.appBarLayoutStyle);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new C1213k();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return b(layoutParams);
    }

    public AppBarLayout(Context context, AttributeSet attributeSet, int i4) {
        super(H2.a.a(context, attributeSet, i4, R.style.Widget_Design_AppBarLayout), attributeSet, i4);
        this.f7684e = -1;
        this.f7685f = -1;
        this.f7686g = -1;
        boolean z4 = false;
        this.f7688i = 0;
        this.f7697r = new ArrayList();
        Context context2 = getContext();
        setOrientation(1);
        if (getOutlineProvider() == ViewOutlineProvider.BACKGROUND) {
            setOutlineProvider(ViewOutlineProvider.BOUNDS);
        }
        Context context3 = getContext();
        TypedArray d4 = C1480r.d(context3, attributeSet, C1224v.f11225a, i4, R.style.Widget_Design_AppBarLayout, new int[0]);
        try {
            if (d4.hasValue(0)) {
                setStateListAnimator(AnimatorInflater.loadStateListAnimator(context3, d4.getResourceId(0, 0)));
            }
            d4.recycle();
            TypedArray d5 = C1480r.d(context2, attributeSet, C0980a.f9625a, i4, R.style.Widget_Design_AppBarLayout, new int[0]);
            Drawable drawable = d5.getDrawable(0);
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.m(this, drawable);
            if (getBackground() instanceof ColorDrawable) {
                i iVar = new i();
                iVar.l(ColorStateList.valueOf(((ColorDrawable) getBackground()).getColor()));
                iVar.j(context2);
                C0186x.m(this, iVar);
            }
            if (d5.hasValue(4)) {
                i(d5.getBoolean(4, false), false, false);
            }
            if (d5.hasValue(3)) {
                int integer = getResources().getInteger(R.integer.app_bar_elevation_anim_duration);
                StateListAnimator stateListAnimator = new StateListAnimator();
                long j4 = integer;
                stateListAnimator.addState(new int[]{16842910, R.attr.state_liftable, -2130969885}, ObjectAnimator.ofFloat(this, "elevation", 0.0f).setDuration(j4));
                stateListAnimator.addState(new int[]{16842910}, ObjectAnimator.ofFloat(this, "elevation", d5.getDimensionPixelSize(3, 0)).setDuration(j4));
                stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(this, "elevation", 0.0f).setDuration(0L));
                setStateListAnimator(stateListAnimator);
            }
            if (d5.hasValue(2)) {
                setKeyboardNavigationCluster(d5.getBoolean(2, false));
            }
            if (d5.hasValue(1)) {
                setTouchscreenBlocksFocus(d5.getBoolean(1, false));
            }
            this.f7693n = d5.getBoolean(5, false);
            this.f7694o = d5.getResourceId(6, -1);
            Drawable drawable2 = d5.getDrawable(7);
            Drawable drawable3 = this.f7699t;
            if (drawable3 != drawable2) {
                if (drawable3 != null) {
                    drawable3.setCallback(null);
                }
                Drawable mutate = drawable2 != null ? drawable2.mutate() : null;
                this.f7699t = mutate;
                if (mutate != null) {
                    if (mutate.isStateful()) {
                        this.f7699t.setState(getDrawableState());
                    }
                    this.f7699t.setLayoutDirection(C0187y.c(this));
                    this.f7699t.setVisible(getVisibility() == 0, false);
                    this.f7699t.setCallback(this);
                }
                if (this.f7699t != null && getTopInset() > 0) {
                    z4 = true;
                }
                setWillNotDraw(!z4);
                C0186x.i(this);
            }
            d5.recycle();
            D.l(this, new C1203a(this));
        } catch (Throwable th) {
            d4.recycle();
            throw th;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1213k(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1213k(getContext(), attributeSet);
    }
}
