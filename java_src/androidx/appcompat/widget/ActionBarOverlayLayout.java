package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.core.view.B;
import androidx.core.view.C0180q;
import androidx.core.view.C0186x;
import androidx.core.view.D;
import androidx.core.view.InterfaceC0178o;
import androidx.core.view.InterfaceC0179p;
import androidx.core.view.J;
import androidx.core.view.T;
import androidx.core.view.a0;
import androidx.core.view.c0;
import com.android.systemui.shared.R;
import e.C0827t;
import i.l;
import j.C1097o;
import java.util.WeakHashMap;
import k.C1133e;
import k.C1139h;
import k.InterfaceC1137g;
import k.InterfaceC1150m0;
import k.InterfaceC1152n0;
import k.RunnableC1135f;
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements InterfaceC1150m0, InterfaceC0178o, InterfaceC0179p {

    /* renamed from: E  reason: collision with root package name */
    public static final int[] f2537E = {R.attr.actionBarSize, 16842841};

    /* renamed from: A  reason: collision with root package name */
    public final C1133e f2538A;

    /* renamed from: B  reason: collision with root package name */
    public final RunnableC1135f f2539B;

    /* renamed from: C  reason: collision with root package name */
    public final RunnableC1135f f2540C;

    /* renamed from: D  reason: collision with root package name */
    public final C0180q f2541D;

    /* renamed from: d  reason: collision with root package name */
    public int f2542d;

    /* renamed from: e  reason: collision with root package name */
    public int f2543e;

    /* renamed from: f  reason: collision with root package name */
    public ContentFrameLayout f2544f;

    /* renamed from: g  reason: collision with root package name */
    public ActionBarContainer f2545g;

    /* renamed from: h  reason: collision with root package name */
    public InterfaceC1152n0 f2546h;

    /* renamed from: i  reason: collision with root package name */
    public Drawable f2547i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f2548j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f2549k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f2550l;

    /* renamed from: m  reason: collision with root package name */
    public boolean f2551m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f2552n;

    /* renamed from: o  reason: collision with root package name */
    public int f2553o;

    /* renamed from: p  reason: collision with root package name */
    public int f2554p;

    /* renamed from: q  reason: collision with root package name */
    public final Rect f2555q;

    /* renamed from: r  reason: collision with root package name */
    public final Rect f2556r;

    /* renamed from: s  reason: collision with root package name */
    public final Rect f2557s;

    /* renamed from: t  reason: collision with root package name */
    public c0 f2558t;

    /* renamed from: u  reason: collision with root package name */
    public c0 f2559u;

    /* renamed from: v  reason: collision with root package name */
    public c0 f2560v;

    /* renamed from: w  reason: collision with root package name */
    public c0 f2561w;

    /* renamed from: x  reason: collision with root package name */
    public InterfaceC1137g f2562x;

    /* renamed from: y  reason: collision with root package name */
    public OverScroller f2563y;

    /* renamed from: z  reason: collision with root package name */
    public ViewPropertyAnimator f2564z;

    public ActionBarOverlayLayout(Context context) {
        this(context, null);
    }

    public static boolean r(View view, Rect rect, boolean z4) {
        boolean z5;
        C1139h c1139h = (C1139h) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) c1139h).leftMargin;
        int i5 = rect.left;
        if (i4 != i5) {
            ((ViewGroup.MarginLayoutParams) c1139h).leftMargin = i5;
            z5 = true;
        } else {
            z5 = false;
        }
        int i6 = ((ViewGroup.MarginLayoutParams) c1139h).topMargin;
        int i7 = rect.top;
        if (i6 != i7) {
            ((ViewGroup.MarginLayoutParams) c1139h).topMargin = i7;
            z5 = true;
        }
        int i8 = ((ViewGroup.MarginLayoutParams) c1139h).rightMargin;
        int i9 = rect.right;
        if (i8 != i9) {
            ((ViewGroup.MarginLayoutParams) c1139h).rightMargin = i9;
            z5 = true;
        }
        if (z4) {
            int i10 = ((ViewGroup.MarginLayoutParams) c1139h).bottomMargin;
            int i11 = rect.bottom;
            if (i10 != i11) {
                ((ViewGroup.MarginLayoutParams) c1139h).bottomMargin = i11;
                return true;
            }
        }
        return z5;
    }

    @Override // k.InterfaceC1150m0
    public final void a(CharSequence charSequence) {
        u();
        this.f2546h.a(charSequence);
    }

    @Override // k.InterfaceC1150m0
    public final boolean b() {
        u();
        return this.f2546h.b();
    }

    @Override // k.InterfaceC1150m0
    public final void c(Window.Callback callback) {
        u();
        this.f2546h.c(callback);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1139h;
    }

    @Override // k.InterfaceC1150m0
    public final void d() {
        u();
        this.f2546h.d();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i4;
        super.draw(canvas);
        if (this.f2547i == null || this.f2548j) {
            return;
        }
        if (this.f2545g.getVisibility() == 0) {
            i4 = (int) (this.f2545g.getTranslationY() + this.f2545g.getBottom() + 0.5f);
        } else {
            i4 = 0;
        }
        this.f2547i.setBounds(0, i4, getWidth(), this.f2547i.getIntrinsicHeight() + i4);
        this.f2547i.draw(canvas);
    }

    @Override // k.InterfaceC1150m0
    public final boolean e() {
        u();
        return this.f2546h.e();
    }

    @Override // k.InterfaceC1150m0
    public final boolean f() {
        u();
        return this.f2546h.f();
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // k.InterfaceC1150m0
    public final void g(C1097o c1097o, C0827t c0827t) {
        u();
        this.f2546h.g(c1097o, c0827t);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C1139h();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1139h(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final int getNestedScrollAxes() {
        C0180q c0180q = this.f2541D;
        return c0180q.f3126b | c0180q.f3125a;
    }

    @Override // k.InterfaceC1150m0
    public final boolean h() {
        u();
        return this.f2546h.h();
    }

    @Override // k.InterfaceC1150m0
    public final boolean i() {
        u();
        return this.f2546h.i();
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final void j(View view, View view2, int i4, int i5) {
        if (i5 == 0) {
            onNestedScrollAccepted(view, view2, i4);
        }
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final void k(View view, int i4) {
        if (i4 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final void l(View view, int i4, int i5, int[] iArr, int i6) {
        if (i6 == 0) {
            onNestedPreScroll(view, i4, i5, iArr);
        }
    }

    @Override // k.InterfaceC1150m0
    public final void m(int i4) {
        u();
        if (i4 == 2) {
            this.f2546h.s();
        } else if (i4 == 5) {
            this.f2546h.t();
        } else if (i4 != 109) {
        } else {
            this.f2549k = true;
            this.f2548j = getContext().getApplicationInfo().targetSdkVersion < 19;
        }
    }

    @Override // k.InterfaceC1150m0
    public final void n() {
        u();
        this.f2546h.j();
    }

    @Override // androidx.core.view.InterfaceC0179p
    public final void o(View view, int i4, int i5, int i6, int i7, int i8, int[] iArr) {
        p(view, i4, i5, i6, i7, i8);
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        u();
        c0 g4 = c0.g(windowInsets, this);
        boolean r4 = r(this.f2545g, new Rect(g4.b(), g4.d(), g4.c(), g4.a()), false);
        Rect rect = this.f2555q;
        WeakHashMap weakHashMap = J.f3079a;
        D.a(this, g4, rect);
        Rect rect2 = this.f2555q;
        int i4 = rect2.left;
        int i5 = rect2.top;
        int i6 = rect2.right;
        int i7 = rect2.bottom;
        a0 a0Var = g4.f3106a;
        c0 l4 = a0Var.l(i4, i5, i6, i7);
        this.f2558t = l4;
        boolean z4 = true;
        if (!this.f2559u.equals(l4)) {
            this.f2559u = this.f2558t;
            r4 = true;
        }
        if (this.f2556r.equals(this.f2555q)) {
            z4 = r4;
        } else {
            this.f2556r.set(this.f2555q);
        }
        if (z4) {
            requestLayout();
        }
        return a0Var.a().f3106a.c().f3106a.b().f();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        t(getContext());
        WeakHashMap weakHashMap = J.f3079a;
        B.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        s();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                C1139h c1139h = (C1139h) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i9 = ((ViewGroup.MarginLayoutParams) c1139h).leftMargin + paddingLeft;
                int i10 = ((ViewGroup.MarginLayoutParams) c1139h).topMargin + paddingTop;
                childAt.layout(i9, i10, measuredWidth + i9, measuredHeight + i10);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i4, int i5) {
        int measuredHeight;
        u();
        measureChildWithMargins(this.f2545g, i4, 0, i5, 0);
        C1139h c1139h = (C1139h) this.f2545g.getLayoutParams();
        int max = Math.max(0, this.f2545g.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c1139h).leftMargin + ((ViewGroup.MarginLayoutParams) c1139h).rightMargin);
        int max2 = Math.max(0, this.f2545g.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c1139h).topMargin + ((ViewGroup.MarginLayoutParams) c1139h).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f2545g.getMeasuredState());
        WeakHashMap weakHashMap = J.f3079a;
        boolean z4 = (C0186x.e(this) & 256) != 0;
        if (z4) {
            measuredHeight = this.f2542d;
            if (this.f2550l) {
                this.f2545g.getClass();
            }
        } else {
            measuredHeight = this.f2545g.getVisibility() != 8 ? this.f2545g.getMeasuredHeight() : 0;
        }
        this.f2557s.set(this.f2555q);
        c0 c0Var = this.f2558t;
        this.f2560v = c0Var;
        if (this.f2549k || z4) {
            E.b a4 = E.b.a(c0Var.b(), this.f2560v.d() + measuredHeight, this.f2560v.c(), this.f2560v.a() + 0);
            T t4 = new T(this.f2560v);
            t4.d(a4);
            this.f2560v = t4.b();
        } else {
            Rect rect = this.f2557s;
            rect.top += measuredHeight;
            rect.bottom += 0;
            this.f2560v = c0Var.f3106a.l(0, measuredHeight, 0, 0);
        }
        r(this.f2544f, this.f2557s, true);
        if (!this.f2561w.equals(this.f2560v)) {
            c0 c0Var2 = this.f2560v;
            this.f2561w = c0Var2;
            J.b(this.f2544f, c0Var2);
        }
        measureChildWithMargins(this.f2544f, i4, 0, i5, 0);
        C1139h c1139h2 = (C1139h) this.f2544f.getLayoutParams();
        int max3 = Math.max(max, this.f2544f.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c1139h2).leftMargin + ((ViewGroup.MarginLayoutParams) c1139h2).rightMargin);
        int max4 = Math.max(max2, this.f2544f.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c1139h2).topMargin + ((ViewGroup.MarginLayoutParams) c1139h2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f2544f.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + max3, getSuggestedMinimumWidth()), i4, combineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + max4, getSuggestedMinimumHeight()), i5, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f4, float f5, boolean z4) {
        if (this.f2551m && z4) {
            this.f2563y.fling(0, 0, 0, (int) f5, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
            if (this.f2563y.getFinalY() > this.f2545g.getHeight()) {
                s();
                this.f2540C.run();
            } else {
                s();
                this.f2539B.run();
            }
            this.f2552n = true;
            return true;
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f4, float f5) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i4, int i5, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i4, int i5, int i6, int i7) {
        int i8 = this.f2553o + i5;
        this.f2553o = i8;
        s();
        this.f2545g.setTranslationY(-Math.max(0, Math.min(i8, this.f2545g.getHeight())));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i4) {
        e.T t4;
        l lVar;
        this.f2541D.f3125a = i4;
        ActionBarContainer actionBarContainer = this.f2545g;
        this.f2553o = actionBarContainer != null ? -((int) actionBarContainer.getTranslationY()) : 0;
        s();
        InterfaceC1137g interfaceC1137g = this.f2562x;
        if (interfaceC1137g == null || (lVar = (t4 = (e.T) interfaceC1137g).f8899t) == null) {
            return;
        }
        lVar.a();
        t4.f8899t = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i4) {
        if ((i4 & 2) == 0 || this.f2545g.getVisibility() != 0) {
            return false;
        }
        return this.f2551m;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.f2551m || this.f2552n) {
            return;
        }
        if (this.f2553o <= this.f2545g.getHeight()) {
            s();
            postDelayed(this.f2539B, 600L);
            return;
        }
        s();
        postDelayed(this.f2540C, 600L);
    }

    @Override // android.view.View
    @Deprecated
    public final void onWindowSystemUiVisibilityChanged(int i4) {
        super.onWindowSystemUiVisibilityChanged(i4);
        u();
        int i5 = this.f2554p ^ i4;
        this.f2554p = i4;
        boolean z4 = (i4 & 4) == 0;
        boolean z5 = (i4 & 256) != 0;
        InterfaceC1137g interfaceC1137g = this.f2562x;
        if (interfaceC1137g != null) {
            ((e.T) interfaceC1137g).f8895p = !z5;
            if (z4 || !z5) {
                e.T t4 = (e.T) interfaceC1137g;
                if (t4.f8896q) {
                    t4.f8896q = false;
                    t4.g(true);
                }
            } else {
                e.T t5 = (e.T) interfaceC1137g;
                if (!t5.f8896q) {
                    t5.f8896q = true;
                    t5.g(true);
                }
            }
        }
        if ((i5 & 256) == 0 || this.f2562x == null) {
            return;
        }
        WeakHashMap weakHashMap = J.f3079a;
        B.c(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i4) {
        super.onWindowVisibilityChanged(i4);
        this.f2543e = i4;
        InterfaceC1137g interfaceC1137g = this.f2562x;
        if (interfaceC1137g != null) {
            ((e.T) interfaceC1137g).f8894o = i4;
        }
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final void p(View view, int i4, int i5, int i6, int i7, int i8) {
        if (i8 == 0) {
            onNestedScroll(view, i4, i5, i6, i7);
        }
    }

    @Override // androidx.core.view.InterfaceC0178o
    public final boolean q(View view, View view2, int i4, int i5) {
        return i5 == 0 && onStartNestedScroll(view, view2, i4);
    }

    public final void s() {
        removeCallbacks(this.f2539B);
        removeCallbacks(this.f2540C);
        ViewPropertyAnimator viewPropertyAnimator = this.f2564z;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public final void t(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f2537E);
        this.f2542d = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f2547i = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.f2548j = context.getApplicationInfo().targetSdkVersion < 19;
        this.f2563y = new OverScroller(context);
    }

    public final void u() {
        InterfaceC1152n0 interfaceC1152n0;
        if (this.f2544f == null) {
            this.f2544f = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f2545g = (ActionBarContainer) findViewById(R.id.action_bar_container);
            View findViewById = findViewById(R.id.action_bar);
            if (findViewById instanceof InterfaceC1152n0) {
                interfaceC1152n0 = (InterfaceC1152n0) findViewById;
            } else if (!(findViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById.getClass().getSimpleName()));
            } else {
                Toolbar toolbar = (Toolbar) findViewById;
                if (toolbar.f2653M == null) {
                    toolbar.f2653M = new b(toolbar);
                }
                interfaceC1152n0 = toolbar.f2653M;
            }
            this.f2546h = interfaceC1152n0;
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2543e = 0;
        this.f2555q = new Rect();
        this.f2556r = new Rect();
        this.f2557s = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        c0 c0Var = c0.f3105b;
        this.f2558t = c0Var;
        this.f2559u = c0Var;
        this.f2560v = c0Var;
        this.f2561w = c0Var;
        this.f2538A = new C1133e(this);
        this.f2539B = new RunnableC1135f(this, 0);
        this.f2540C = new RunnableC1135f(this, 1);
        t(context);
        this.f2541D = new C0180q();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C1139h(layoutParams);
    }
}
