package com.google.android.material.appbar;

import A2.d;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.A;
import androidx.core.view.B;
import androidx.core.view.C0186x;
import androidx.core.view.C0187y;
import androidx.core.view.D;
import androidx.core.view.J;
import androidx.core.view.c0;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import com.google.android.material.internal.a;
import i2.C0980a;
import j2.C1114a;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import k2.C1215m;
import k2.C1216n;
import k2.C1217o;
import k2.C1218p;
import k2.C1223u;
import u2.C1424a;
import x2.C1467e;
import x2.C1480r;
/* loaded from: classes.dex */
public class CollapsingToolbarLayout extends FrameLayout {

    /* renamed from: A  reason: collision with root package name */
    public c0 f7707A;

    /* renamed from: B  reason: collision with root package name */
    public int f7708B;

    /* renamed from: C  reason: collision with root package name */
    public final boolean f7709C;

    /* renamed from: D  reason: collision with root package name */
    public int f7710D;

    /* renamed from: E  reason: collision with root package name */
    public final boolean f7711E;

    /* renamed from: d  reason: collision with root package name */
    public boolean f7712d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7713e;

    /* renamed from: f  reason: collision with root package name */
    public ViewGroup f7714f;

    /* renamed from: g  reason: collision with root package name */
    public View f7715g;

    /* renamed from: h  reason: collision with root package name */
    public View f7716h;

    /* renamed from: i  reason: collision with root package name */
    public final int f7717i;

    /* renamed from: j  reason: collision with root package name */
    public final int f7718j;

    /* renamed from: k  reason: collision with root package name */
    public final int f7719k;

    /* renamed from: l  reason: collision with root package name */
    public final int f7720l;

    /* renamed from: m  reason: collision with root package name */
    public final Rect f7721m;

    /* renamed from: n  reason: collision with root package name */
    public final a f7722n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f7723o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f7724p;

    /* renamed from: q  reason: collision with root package name */
    public Drawable f7725q;

    /* renamed from: r  reason: collision with root package name */
    public Drawable f7726r;

    /* renamed from: s  reason: collision with root package name */
    public int f7727s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f7728t;

    /* renamed from: u  reason: collision with root package name */
    public ValueAnimator f7729u;

    /* renamed from: v  reason: collision with root package name */
    public final long f7730v;

    /* renamed from: w  reason: collision with root package name */
    public final int f7731w;

    /* renamed from: x  reason: collision with root package name */
    public C1218p f7732x;

    /* renamed from: y  reason: collision with root package name */
    public int f7733y;

    /* renamed from: z  reason: collision with root package name */
    public int f7734z;

    public CollapsingToolbarLayout(Context context) {
        this(context, null);
    }

    public static C1223u c(View view) {
        C1223u c1223u = (C1223u) view.getTag(R.id.view_offset_helper);
        if (c1223u == null) {
            C1223u c1223u2 = new C1223u(view);
            view.setTag(R.id.view_offset_helper, c1223u2);
            return c1223u2;
        }
        return c1223u;
    }

    public final void a() {
        View view;
        if (this.f7712d) {
            ViewGroup viewGroup = null;
            this.f7714f = null;
            this.f7715g = null;
            int i4 = this.f7713e;
            if (i4 != -1) {
                ViewGroup viewGroup2 = (ViewGroup) findViewById(i4);
                this.f7714f = viewGroup2;
                if (viewGroup2 != null) {
                    ViewParent parent = viewGroup2.getParent();
                    View view2 = viewGroup2;
                    while (parent != this && parent != null) {
                        if (parent instanceof View) {
                            view2 = (View) parent;
                        }
                        parent = parent.getParent();
                        view2 = view2;
                    }
                    this.f7715g = view2;
                }
            }
            if (this.f7714f == null) {
                int childCount = getChildCount();
                int i5 = 0;
                while (true) {
                    if (i5 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i5);
                    if ((childAt instanceof Toolbar) || (childAt instanceof android.widget.Toolbar)) {
                        viewGroup = (ViewGroup) childAt;
                        break;
                    }
                    i5++;
                }
                this.f7714f = viewGroup;
            }
            if (!this.f7723o && (view = this.f7716h) != null) {
                ViewParent parent2 = view.getParent();
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(this.f7716h);
                }
            }
            if (this.f7723o && this.f7714f != null) {
                if (this.f7716h == null) {
                    this.f7716h = new View(getContext());
                }
                if (this.f7716h.getParent() == null) {
                    this.f7714f.addView(this.f7716h, -1, -1);
                }
            }
            this.f7712d = false;
        }
    }

    public final int b() {
        int i4 = this.f7731w;
        if (i4 >= 0) {
            return i4 + this.f7708B + this.f7710D;
        }
        c0 c0Var = this.f7707A;
        int d4 = c0Var != null ? c0Var.d() : 0;
        WeakHashMap weakHashMap = J.f3079a;
        int c4 = C0186x.c(this);
        return c4 > 0 ? Math.min((c4 * 2) + d4, getHeight()) : getHeight() / 3;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1217o;
    }

    public final void d(Drawable drawable) {
        Drawable drawable2 = this.f7725q;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f7725q = mutate;
            if (mutate != null) {
                int width = getWidth();
                int height = getHeight();
                ViewGroup viewGroup = this.f7714f;
                if ((this.f7734z == 1) && viewGroup != null && this.f7723o) {
                    height = viewGroup.getBottom();
                }
                mutate.setBounds(0, 0, width, height);
                this.f7725q.setCallback(this);
                this.f7725q.setAlpha(this.f7727s);
            }
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.i(this);
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        a();
        if (this.f7714f == null && (drawable = this.f7725q) != null && this.f7727s > 0) {
            drawable.mutate().setAlpha(this.f7727s);
            this.f7725q.draw(canvas);
        }
        if (this.f7723o && this.f7724p) {
            if (this.f7714f != null && this.f7725q != null && this.f7727s > 0) {
                if (this.f7734z == 1) {
                    a aVar = this.f7722n;
                    if (aVar.f8021b < aVar.f8027e) {
                        int save = canvas.save();
                        canvas.clipRect(this.f7725q.getBounds(), Region.Op.DIFFERENCE);
                        this.f7722n.d(canvas);
                        canvas.restoreToCount(save);
                    }
                }
            }
            this.f7722n.d(canvas);
        }
        if (this.f7726r == null || this.f7727s <= 0) {
            return;
        }
        c0 c0Var = this.f7707A;
        int d4 = c0Var != null ? c0Var.d() : 0;
        if (d4 > 0) {
            this.f7726r.setBounds(0, -this.f7733y, getWidth(), d4 - this.f7733y);
            this.f7726r.mutate().setAlpha(this.f7727s);
            this.f7726r.draw(canvas);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0018, code lost:
        r3 = true;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean drawChild(android.graphics.Canvas r7, android.view.View r8, long r9) {
        /*
            r6 = this;
            android.graphics.drawable.Drawable r0 = r6.f7725q
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L4d
            int r3 = r6.f7727s
            if (r3 <= 0) goto L4d
            android.view.View r3 = r6.f7715g
            if (r3 == 0) goto L14
            if (r3 != r6) goto L11
            goto L14
        L11:
            if (r8 != r3) goto L1a
            goto L18
        L14:
            android.view.ViewGroup r3 = r6.f7714f
            if (r8 != r3) goto L1a
        L18:
            r3 = r1
            goto L1b
        L1a:
            r3 = r2
        L1b:
            if (r3 == 0) goto L4d
            int r3 = r6.getWidth()
            int r4 = r6.getHeight()
            int r5 = r6.f7734z
            if (r5 != r1) goto L2b
            r5 = r1
            goto L2c
        L2b:
            r5 = r2
        L2c:
            if (r5 == 0) goto L38
            if (r8 == 0) goto L38
            boolean r5 = r6.f7723o
            if (r5 == 0) goto L38
            int r4 = r8.getBottom()
        L38:
            r0.setBounds(r2, r2, r3, r4)
            android.graphics.drawable.Drawable r0 = r6.f7725q
            android.graphics.drawable.Drawable r0 = r0.mutate()
            int r3 = r6.f7727s
            r0.setAlpha(r3)
            android.graphics.drawable.Drawable r0 = r6.f7725q
            r0.draw(r7)
            r0 = r1
            goto L4e
        L4d:
            r0 = r2
        L4e:
            boolean r6 = super.drawChild(r7, r8, r9)
            if (r6 != 0) goto L58
            if (r0 == 0) goto L57
            goto L58
        L57:
            r1 = r2
        L58:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f7726r;
        boolean z4 = false;
        if (drawable != null && drawable.isStateful()) {
            z4 = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f7725q;
        if (drawable2 != null && drawable2.isStateful()) {
            z4 |= drawable2.setState(drawableState);
        }
        a aVar = this.f7722n;
        if (aVar != null) {
            z4 |= aVar.q(drawableState);
        }
        if (z4) {
            invalidate();
        }
    }

    public final void e() {
        int i4;
        ViewGroup viewGroup;
        if (this.f7725q == null && this.f7726r == null) {
            return;
        }
        boolean z4 = true;
        boolean z5 = getHeight() + this.f7733y < b();
        WeakHashMap weakHashMap = J.f3079a;
        if (!A.c(this) || isInEditMode()) {
            z4 = false;
        }
        if (this.f7728t != z5) {
            if (z4) {
                i4 = z5 ? 255 : 0;
                a();
                ValueAnimator valueAnimator = this.f7729u;
                if (valueAnimator == null) {
                    ValueAnimator valueAnimator2 = new ValueAnimator();
                    this.f7729u = valueAnimator2;
                    valueAnimator2.setInterpolator(i4 > this.f7727s ? C1114a.f10702c : C1114a.f10703d);
                    this.f7729u.addUpdateListener(new C1216n(this));
                } else if (valueAnimator.isRunning()) {
                    this.f7729u.cancel();
                }
                this.f7729u.setDuration(this.f7730v);
                this.f7729u.setIntValues(this.f7727s, i4);
                this.f7729u.start();
            } else {
                i4 = z5 ? 255 : 0;
                if (i4 != this.f7727s) {
                    if (this.f7725q != null && (viewGroup = this.f7714f) != null) {
                        C0186x.i(viewGroup);
                    }
                    this.f7727s = i4;
                    C0186x.i(this);
                }
            }
            this.f7728t = z5;
        }
    }

    public final void f(boolean z4, int i4, int i5, int i6, int i7) {
        View view;
        int i8;
        int i9;
        int i10;
        int i11;
        if (!this.f7723o || (view = this.f7716h) == null) {
            return;
        }
        WeakHashMap weakHashMap = J.f3079a;
        boolean z5 = false;
        boolean z6 = A.b(view) && this.f7716h.getVisibility() == 0;
        this.f7724p = z6;
        if (z6 || z4) {
            boolean z7 = C0187y.c(this) == 1;
            View view2 = this.f7715g;
            if (view2 == null) {
                view2 = this.f7714f;
            }
            int height = ((getHeight() - c(view2).f11221b) - view2.getHeight()) - ((FrameLayout.LayoutParams) ((C1217o) view2.getLayoutParams())).bottomMargin;
            C1467e.a(this, this.f7716h, this.f7721m);
            ViewGroup viewGroup = this.f7714f;
            if (viewGroup instanceof Toolbar) {
                Toolbar toolbar = (Toolbar) viewGroup;
                i9 = toolbar.f2673s;
                i10 = toolbar.f2674t;
                i11 = toolbar.f2675u;
                i8 = toolbar.f2676v;
            } else if (viewGroup instanceof android.widget.Toolbar) {
                android.widget.Toolbar toolbar2 = (android.widget.Toolbar) viewGroup;
                i9 = toolbar2.getTitleMarginStart();
                i10 = toolbar2.getTitleMarginEnd();
                i11 = toolbar2.getTitleMarginTop();
                i8 = toolbar2.getTitleMarginBottom();
            } else {
                i8 = 0;
                i9 = 0;
                i10 = 0;
                i11 = 0;
            }
            a aVar = this.f7722n;
            Rect rect = this.f7721m;
            int i12 = rect.left + (z7 ? i10 : i9);
            int i13 = rect.top + height + i11;
            int i14 = rect.right;
            if (!z7) {
                i9 = i10;
            }
            int i15 = i14 - i9;
            int i16 = (rect.bottom + height) - i8;
            Rect rect2 = aVar.f8033h;
            if (!(rect2.left == i12 && rect2.top == i13 && rect2.right == i15 && rect2.bottom == i16)) {
                rect2.set(i12, i13, i15, i16);
                aVar.f8011S = true;
            }
            a aVar2 = this.f7722n;
            int i17 = z7 ? this.f7719k : this.f7717i;
            int i18 = this.f7721m.top + this.f7718j;
            int i19 = (i6 - i4) - (z7 ? this.f7717i : this.f7719k);
            int i20 = (i7 - i5) - this.f7720l;
            Rect rect3 = aVar2.f8031g;
            if (rect3.left == i17 && rect3.top == i18 && rect3.right == i19 && rect3.bottom == i20) {
                z5 = true;
            }
            if (!z5) {
                rect3.set(i17, i18, i19, i20);
                aVar2.f8011S = true;
            }
            this.f7722n.i(z4);
        }
    }

    public final void g() {
        if (this.f7714f != null && this.f7723o && TextUtils.isEmpty(this.f7722n.f7999G)) {
            ViewGroup viewGroup = this.f7714f;
            CharSequence title = viewGroup instanceof Toolbar ? ((Toolbar) viewGroup).f2641A : viewGroup instanceof android.widget.Toolbar ? ((android.widget.Toolbar) viewGroup).getTitle() : null;
            a aVar = this.f7722n;
            if (title == null || !TextUtils.equals(aVar.f7999G, title)) {
                aVar.f7999G = title;
                aVar.f8000H = null;
                Bitmap bitmap = aVar.f8003K;
                if (bitmap != null) {
                    bitmap.recycle();
                    aVar.f8003K = null;
                }
                aVar.i(false);
            }
            setContentDescription(this.f7723o ? this.f7722n.f7999G : null);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C1217o();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (this.f7734z == 1) {
                appBarLayout.f7693n = false;
            }
            WeakHashMap weakHashMap = J.f3079a;
            setFitsSystemWindows(C0186x.a(appBarLayout));
            if (this.f7732x == null) {
                this.f7732x = new C1218p(this);
            }
            C1218p c1218p = this.f7732x;
            if (appBarLayout.f7690k == null) {
                appBarLayout.f7690k = new ArrayList();
            }
            if (c1218p != null && !((ArrayList) appBarLayout.f7690k).contains(c1218p)) {
                ((ArrayList) appBarLayout.f7690k).add(c1218p);
            }
            B.c(this);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f7722n.h(configuration);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        List list;
        ViewParent parent = getParent();
        C1218p c1218p = this.f7732x;
        if (c1218p != null && (parent instanceof AppBarLayout) && (list = ((AppBarLayout) parent).f7690k) != null && c1218p != null) {
            ((ArrayList) list).remove(c1218p);
        }
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        c0 c0Var = this.f7707A;
        if (c0Var != null) {
            int d4 = c0Var.d();
            int childCount = getChildCount();
            for (int i8 = 0; i8 < childCount; i8++) {
                View childAt = getChildAt(i8);
                WeakHashMap weakHashMap = J.f3079a;
                if (!C0186x.a(childAt) && childAt.getTop() < d4) {
                    childAt.offsetTopAndBottom(d4);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i9 = 0; i9 < childCount2; i9++) {
            C1223u c4 = c(getChildAt(i9));
            View view = c4.f11220a;
            c4.f11221b = view.getTop();
            c4.f11222c = view.getLeft();
        }
        f(false, i4, i5, i6, i7);
        g();
        e();
        int childCount3 = getChildCount();
        for (int i10 = 0; i10 < childCount3; i10++) {
            c(getChildAt(i10)).a();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        int measuredHeight;
        int measuredHeight2;
        a();
        super.onMeasure(i4, i5);
        int mode = View.MeasureSpec.getMode(i5);
        c0 c0Var = this.f7707A;
        int d4 = c0Var != null ? c0Var.d() : 0;
        if ((mode == 0 || this.f7709C) && d4 > 0) {
            this.f7708B = d4;
            super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + d4, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        }
        if (this.f7711E && this.f7722n.f8046n0 > 1) {
            g();
            f(true, 0, 0, getMeasuredWidth(), getMeasuredHeight());
            a aVar = this.f7722n;
            int i6 = aVar.f8049p;
            if (i6 > 1) {
                TextPaint textPaint = aVar.f8013U;
                textPaint.setTextSize(aVar.f8041l);
                textPaint.setTypeface(aVar.f8060z);
                textPaint.setLetterSpacing(aVar.f8032g0);
                this.f7710D = (i6 - 1) * Math.round(textPaint.descent() + (-textPaint.ascent()));
                super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + this.f7710D, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
            }
        }
        ViewGroup viewGroup = this.f7714f;
        if (viewGroup != null) {
            View view = this.f7715g;
            if (view == null || view == this) {
                ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    measuredHeight = viewGroup.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                } else {
                    measuredHeight = viewGroup.getMeasuredHeight();
                }
                setMinimumHeight(measuredHeight);
                return;
            }
            ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                measuredHeight2 = view.getMeasuredHeight() + marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
            } else {
                measuredHeight2 = view.getMeasuredHeight();
            }
            setMinimumHeight(measuredHeight2);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i4, int i5, int i6, int i7) {
        super.onSizeChanged(i4, i5, i6, i7);
        Drawable drawable = this.f7725q;
        if (drawable != null) {
            ViewGroup viewGroup = this.f7714f;
            if ((this.f7734z == 1) && viewGroup != null && this.f7723o) {
                i5 = viewGroup.getBottom();
            }
            drawable.setBounds(0, 0, i4, i5);
        }
    }

    @Override // android.view.View
    public final void setVisibility(int i4) {
        super.setVisibility(i4);
        boolean z4 = i4 == 0;
        Drawable drawable = this.f7726r;
        if (drawable != null && drawable.isVisible() != z4) {
            this.f7726r.setVisible(z4, false);
        }
        Drawable drawable2 = this.f7725q;
        if (drawable2 == null || drawable2.isVisible() == z4) {
            return;
        }
        this.f7725q.setVisible(z4, false);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f7725q || drawable == this.f7726r;
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.collapsingToolbarLayoutStyle);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateDefaultLayoutParams() {
        return new C1217o();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C1217o(getContext(), attributeSet);
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i4) {
        super(H2.a.a(context, attributeSet, i4, R.style.Widget_Design_CollapsingToolbar), attributeSet, i4);
        int i5;
        ColorStateList a4;
        TextUtils.TruncateAt truncateAt;
        this.f7712d = true;
        this.f7721m = new Rect();
        this.f7731w = -1;
        this.f7708B = 0;
        this.f7710D = 0;
        Context context2 = getContext();
        a aVar = new a(this);
        this.f7722n = aVar;
        aVar.f8015W = C1114a.f10704e;
        aVar.i(false);
        aVar.f8002J = false;
        C1424a c1424a = new C1424a(context2);
        TypedArray d4 = C1480r.d(context2, attributeSet, C0980a.f9631g, i4, R.style.Widget_Design_CollapsingToolbar, new int[0]);
        int i6 = d4.getInt(4, 8388691);
        if (aVar.f8037j != i6) {
            aVar.f8037j = i6;
            aVar.i(false);
        }
        int i7 = d4.getInt(0, 8388627);
        if (aVar.f8039k != i7) {
            aVar.f8039k = i7;
            aVar.i(false);
        }
        int dimensionPixelSize = d4.getDimensionPixelSize(5, 0);
        this.f7720l = dimensionPixelSize;
        this.f7719k = dimensionPixelSize;
        this.f7718j = dimensionPixelSize;
        this.f7717i = dimensionPixelSize;
        if (d4.hasValue(8)) {
            this.f7717i = d4.getDimensionPixelSize(8, 0);
        }
        if (d4.hasValue(7)) {
            this.f7719k = d4.getDimensionPixelSize(7, 0);
        }
        if (d4.hasValue(9)) {
            this.f7718j = d4.getDimensionPixelSize(9, 0);
        }
        if (d4.hasValue(6)) {
            this.f7720l = d4.getDimensionPixelSize(6, 0);
        }
        boolean z4 = d4.getBoolean(20, true);
        this.f7723o = z4;
        CharSequence text = d4.getText(18);
        if (text == null || !TextUtils.equals(aVar.f7999G, text)) {
            aVar.f7999G = text;
            aVar.f8000H = null;
            Bitmap bitmap = aVar.f8003K;
            if (bitmap != null) {
                bitmap.recycle();
                aVar.f8003K = null;
            }
            aVar.i(false);
        }
        setContentDescription(z4 ? aVar.f7999G : null);
        aVar.m(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
        aVar.j(R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
        if (d4.hasValue(10)) {
            aVar.m(d4.getResourceId(10, 0));
        }
        if (d4.hasValue(1)) {
            aVar.j(d4.getResourceId(1, 0));
        }
        if (d4.hasValue(22)) {
            int i8 = d4.getInt(22, -1);
            if (i8 == 0) {
                truncateAt = TextUtils.TruncateAt.START;
            } else if (i8 == 1) {
                truncateAt = TextUtils.TruncateAt.MIDDLE;
            } else if (i8 != 3) {
                truncateAt = TextUtils.TruncateAt.END;
            } else {
                truncateAt = TextUtils.TruncateAt.MARQUEE;
            }
            aVar.f7998F = truncateAt;
            aVar.i(false);
        }
        if (d4.hasValue(11) && aVar.f8045n != (a4 = d.a(context2, d4, 11))) {
            aVar.f8045n = a4;
            aVar.i(false);
        }
        if (d4.hasValue(2)) {
            aVar.k(d.a(context2, d4, 2));
        }
        this.f7731w = d4.getDimensionPixelSize(16, -1);
        if (d4.hasValue(14) && (i5 = d4.getInt(14, 1)) != aVar.f8046n0) {
            aVar.f8046n0 = i5;
            Bitmap bitmap2 = aVar.f8003K;
            if (bitmap2 != null) {
                bitmap2.recycle();
                aVar.f8003K = null;
            }
            aVar.i(false);
        }
        if (d4.hasValue(21)) {
            aVar.f8014V = AnimationUtils.loadInterpolator(context2, d4.getResourceId(21, 0));
            aVar.i(false);
        }
        this.f7730v = d4.getInt(15, 600);
        d(d4.getDrawable(3));
        Drawable drawable = d4.getDrawable(17);
        Drawable drawable2 = this.f7726r;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f7726r = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.f7726r.setState(getDrawableState());
                }
                Drawable drawable3 = this.f7726r;
                WeakHashMap weakHashMap = J.f3079a;
                drawable3.setLayoutDirection(C0187y.c(this));
                this.f7726r.setVisible(getVisibility() == 0, false);
                this.f7726r.setCallback(this);
                this.f7726r.setAlpha(this.f7727s);
            }
            WeakHashMap weakHashMap2 = J.f3079a;
            C0186x.i(this);
        }
        int i9 = d4.getInt(19, 0);
        this.f7734z = i9;
        boolean z5 = i9 == 1;
        aVar.f8023c = z5;
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            AppBarLayout appBarLayout = (AppBarLayout) parent;
            if (this.f7734z == 1) {
                appBarLayout.f7693n = false;
            }
        }
        if (z5 && this.f7725q == null) {
            d(new ColorDrawable(c1424a.a(getResources().getDimension(R.dimen.design_appbar_elevation), c1424a.f12437d)));
        }
        this.f7713e = d4.getResourceId(23, -1);
        this.f7709C = d4.getBoolean(13, false);
        this.f7711E = d4.getBoolean(12, false);
        d4.recycle();
        setWillNotDraw(false);
        C1215m c1215m = new C1215m(this);
        WeakHashMap weakHashMap3 = J.f3079a;
        D.l(this, c1215m);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C1217o(layoutParams);
    }
}
