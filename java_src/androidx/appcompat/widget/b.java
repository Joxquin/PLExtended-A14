package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.J;
import androidx.core.view.O;
import com.android.systemui.shared.R;
import d.C0792a;
import e.C0827t;
import j.C1097o;
import j.r;
import k.C1123G;
import k.C1141i;
import k.C1151n;
import k.InterfaceC1152n0;
import k.J0;
import k.R0;
import k.Z0;
import k.a1;
/* loaded from: classes.dex */
public final class b implements InterfaceC1152n0 {

    /* renamed from: a  reason: collision with root package name */
    public final Toolbar f2688a;

    /* renamed from: b  reason: collision with root package name */
    public int f2689b;

    /* renamed from: c  reason: collision with root package name */
    public View f2690c;

    /* renamed from: d  reason: collision with root package name */
    public Drawable f2691d;

    /* renamed from: e  reason: collision with root package name */
    public Drawable f2692e;

    /* renamed from: f  reason: collision with root package name */
    public Drawable f2693f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2694g;

    /* renamed from: h  reason: collision with root package name */
    public CharSequence f2695h;

    /* renamed from: i  reason: collision with root package name */
    public CharSequence f2696i;

    /* renamed from: j  reason: collision with root package name */
    public CharSequence f2697j;

    /* renamed from: k  reason: collision with root package name */
    public Window.Callback f2698k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f2699l;

    /* renamed from: m  reason: collision with root package name */
    public C1151n f2700m;

    /* renamed from: n  reason: collision with root package name */
    public int f2701n;

    /* renamed from: o  reason: collision with root package name */
    public Drawable f2702o;

    public b(Toolbar toolbar) {
        Drawable drawable;
        this.f2701n = 0;
        this.f2688a = toolbar;
        CharSequence charSequence = toolbar.f2641A;
        this.f2695h = charSequence;
        this.f2696i = toolbar.f2642B;
        this.f2694g = charSequence != null;
        C1123G c1123g = toolbar.f2661g;
        this.f2693f = c1123g != null ? c1123g.getDrawable() : null;
        R0 m4 = R0.m(toolbar.getContext(), null, C0792a.f8731a, R.attr.actionBarStyle);
        this.f2702o = m4.e(15);
        CharSequence k4 = m4.k(27);
        if (!TextUtils.isEmpty(k4)) {
            this.f2694g = true;
            this.f2695h = k4;
            if ((this.f2689b & 8) != 0) {
                toolbar.x(k4);
                if (this.f2694g) {
                    J.i(toolbar.getRootView(), k4);
                }
            }
        }
        CharSequence k5 = m4.k(25);
        if (!TextUtils.isEmpty(k5)) {
            this.f2696i = k5;
            if ((this.f2689b & 8) != 0) {
                toolbar.w(k5);
            }
        }
        Drawable e4 = m4.e(20);
        if (e4 != null) {
            this.f2692e = e4;
            w();
        }
        Drawable e5 = m4.e(17);
        if (e5 != null) {
            this.f2691d = e5;
            w();
        }
        if (this.f2693f == null && (drawable = this.f2702o) != null) {
            this.f2693f = drawable;
            if ((this.f2689b & 4) != 0) {
                toolbar.v(drawable);
            } else {
                toolbar.v(null);
            }
        }
        n(m4.h(10, 0));
        int i4 = m4.i(9, 0);
        if (i4 != 0) {
            View inflate = LayoutInflater.from(toolbar.getContext()).inflate(i4, (ViewGroup) toolbar, false);
            View view = this.f2690c;
            if (view != null && (this.f2689b & 16) != 0) {
                toolbar.removeView(view);
            }
            this.f2690c = inflate;
            if (inflate != null && (this.f2689b & 16) != 0) {
                toolbar.addView(inflate);
            }
            n(this.f2689b | 16);
        }
        int layoutDimension = m4.f10822b.getLayoutDimension(13, 0);
        if (layoutDimension > 0) {
            ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
            layoutParams.height = layoutDimension;
            toolbar.setLayoutParams(layoutParams);
        }
        int c4 = m4.c(7, -1);
        int c5 = m4.c(3, -1);
        if (c4 >= 0 || c5 >= 0) {
            int max = Math.max(c4, 0);
            int max2 = Math.max(c5, 0);
            if (toolbar.f2677w == null) {
                toolbar.f2677w = new J0();
            }
            toolbar.f2677w.a(max, max2);
        }
        int i5 = m4.i(28, 0);
        if (i5 != 0) {
            Context context = toolbar.getContext();
            toolbar.f2669o = i5;
            AppCompatTextView appCompatTextView = toolbar.f2659e;
            if (appCompatTextView != null) {
                appCompatTextView.setTextAppearance(context, i5);
            }
        }
        int i6 = m4.i(26, 0);
        if (i6 != 0) {
            Context context2 = toolbar.getContext();
            toolbar.f2670p = i6;
            AppCompatTextView appCompatTextView2 = toolbar.f2660f;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setTextAppearance(context2, i6);
            }
        }
        int i7 = m4.i(22, 0);
        if (i7 != 0 && toolbar.f2668n != i7) {
            toolbar.f2668n = i7;
            if (i7 == 0) {
                toolbar.f2667m = toolbar.getContext();
            } else {
                toolbar.f2667m = new ContextThemeWrapper(toolbar.getContext(), i7);
            }
        }
        m4.n();
        if (R.string.abc_action_bar_up_description != this.f2701n) {
            this.f2701n = R.string.abc_action_bar_up_description;
            C1123G c1123g2 = toolbar.f2661g;
            if (TextUtils.isEmpty(c1123g2 != null ? c1123g2.getContentDescription() : null)) {
                int i8 = this.f2701n;
                this.f2697j = i8 == 0 ? null : getContext().getString(i8);
                v();
            }
        }
        C1123G c1123g3 = toolbar.f2661g;
        this.f2697j = c1123g3 != null ? c1123g3.getContentDescription() : null;
        Z0 z02 = new Z0(this);
        toolbar.e();
        toolbar.f2661g.setOnClickListener(z02);
    }

    @Override // k.InterfaceC1152n0
    public final void a(CharSequence charSequence) {
        if (this.f2694g) {
            return;
        }
        this.f2695h = charSequence;
        if ((this.f2689b & 8) != 0) {
            Toolbar toolbar = this.f2688a;
            toolbar.x(charSequence);
            if (this.f2694g) {
                J.i(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // k.InterfaceC1152n0
    public final boolean b() {
        ActionMenuView actionMenuView = this.f2688a.f2658d;
        if (actionMenuView != null) {
            C1151n c1151n = actionMenuView.f2573w;
            return c1151n != null && c1151n.k();
        }
        return false;
    }

    @Override // k.InterfaceC1152n0
    public final void c(Window.Callback callback) {
        this.f2698k = callback;
    }

    @Override // k.InterfaceC1152n0
    public final void collapseActionView() {
        a aVar = this.f2688a.f2655O;
        r rVar = aVar == null ? null : aVar.f2686e;
        if (rVar != null) {
            rVar.collapseActionView();
        }
    }

    @Override // k.InterfaceC1152n0
    public final void d() {
        this.f2699l = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @Override // k.InterfaceC1152n0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e() {
        /*
            r3 = this;
            androidx.appcompat.widget.Toolbar r3 = r3.f2688a
            androidx.appcompat.widget.ActionMenuView r3 = r3.f2658d
            r0 = 0
            if (r3 == 0) goto L22
            k.n r3 = r3.f2573w
            r1 = 1
            if (r3 == 0) goto L1e
            k.k r2 = r3.f10942v
            if (r2 != 0) goto L19
            boolean r3 = r3.k()
            if (r3 == 0) goto L17
            goto L19
        L17:
            r3 = r0
            goto L1a
        L19:
            r3 = r1
        L1a:
            if (r3 == 0) goto L1e
            r3 = r1
            goto L1f
        L1e:
            r3 = r0
        L1f:
            if (r3 == 0) goto L22
            r0 = r1
        L22:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.b.e():boolean");
    }

    @Override // k.InterfaceC1152n0
    public final boolean f() {
        ActionMenuView actionMenuView = this.f2688a.f2658d;
        if (actionMenuView != null) {
            C1151n c1151n = actionMenuView.f2573w;
            return c1151n != null && c1151n.e();
        }
        return false;
    }

    @Override // k.InterfaceC1152n0
    public final void g(C1097o c1097o, C0827t c0827t) {
        C1151n c1151n = this.f2700m;
        Toolbar toolbar = this.f2688a;
        if (c1151n == null) {
            this.f2700m = new C1151n(toolbar.getContext());
        }
        C1151n c1151n2 = this.f2700m;
        c1151n2.f10928h = c0827t;
        if (c1097o == null && toolbar.f2658d == null) {
            return;
        }
        toolbar.d();
        C1097o c1097o2 = toolbar.f2658d.f2569s;
        if (c1097o2 == c1097o) {
            return;
        }
        if (c1097o2 != null) {
            c1097o2.r(toolbar.f2654N);
            c1097o2.r(toolbar.f2655O);
        }
        if (toolbar.f2655O == null) {
            toolbar.f2655O = new a(toolbar);
        }
        c1151n2.f10938r = true;
        if (c1097o != null) {
            c1097o.b(c1151n2, toolbar.f2667m);
            c1097o.b(toolbar.f2655O, toolbar.f2667m);
        } else {
            c1151n2.f(toolbar.f2667m, null);
            toolbar.f2655O.f(toolbar.f2667m, null);
            c1151n2.d();
            toolbar.f2655O.d();
        }
        ActionMenuView actionMenuView = toolbar.f2658d;
        int i4 = toolbar.f2668n;
        if (actionMenuView.f2571u != i4) {
            actionMenuView.f2571u = i4;
            if (i4 == 0) {
                actionMenuView.f2570t = actionMenuView.getContext();
            } else {
                actionMenuView.f2570t = new ContextThemeWrapper(actionMenuView.getContext(), i4);
            }
        }
        ActionMenuView actionMenuView2 = toolbar.f2658d;
        actionMenuView2.f2573w = c1151n2;
        c1151n2.f10931k = actionMenuView2;
        actionMenuView2.f2569s = c1151n2.f10926f;
        toolbar.f2654N = c1151n2;
        toolbar.z();
    }

    @Override // k.InterfaceC1152n0
    public final Context getContext() {
        return this.f2688a.getContext();
    }

    @Override // k.InterfaceC1152n0
    public final boolean h() {
        ActionMenuView actionMenuView = this.f2688a.f2658d;
        if (actionMenuView != null) {
            C1151n c1151n = actionMenuView.f2573w;
            return c1151n != null && c1151n.l();
        }
        return false;
    }

    @Override // k.InterfaceC1152n0
    public final boolean i() {
        ActionMenuView actionMenuView;
        Toolbar toolbar = this.f2688a;
        return toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f2658d) != null && actionMenuView.f2572v;
    }

    @Override // k.InterfaceC1152n0
    public final void j() {
        C1151n c1151n;
        ActionMenuView actionMenuView = this.f2688a.f2658d;
        if (actionMenuView == null || (c1151n = actionMenuView.f2573w) == null) {
            return;
        }
        c1151n.e();
        C1141i c1141i = c1151n.f10941u;
        if (c1141i == null || !c1141i.b()) {
            return;
        }
        c1141i.f10464j.dismiss();
    }

    @Override // k.InterfaceC1152n0
    public final void k(int i4) {
        this.f2688a.setVisibility(i4);
    }

    @Override // k.InterfaceC1152n0
    public final void l() {
    }

    @Override // k.InterfaceC1152n0
    public final boolean m() {
        a aVar = this.f2688a.f2655O;
        return (aVar == null || aVar.f2686e == null) ? false : true;
    }

    @Override // k.InterfaceC1152n0
    public final void n(int i4) {
        View view;
        int i5 = this.f2689b ^ i4;
        this.f2689b = i4;
        if (i5 != 0) {
            int i6 = i5 & 4;
            Toolbar toolbar = this.f2688a;
            if (i6 != 0) {
                if ((i4 & 4) != 0) {
                    v();
                }
                if ((this.f2689b & 4) != 0) {
                    Drawable drawable = this.f2693f;
                    if (drawable == null) {
                        drawable = this.f2702o;
                    }
                    toolbar.v(drawable);
                } else {
                    toolbar.v(null);
                }
            }
            if ((i5 & 3) != 0) {
                w();
            }
            if ((i5 & 8) != 0) {
                if ((i4 & 8) != 0) {
                    toolbar.x(this.f2695h);
                    toolbar.w(this.f2696i);
                } else {
                    toolbar.x(null);
                    toolbar.w(null);
                }
            }
            if ((i5 & 16) == 0 || (view = this.f2690c) == null) {
                return;
            }
            if ((i4 & 16) != 0) {
                toolbar.addView(view);
            } else {
                toolbar.removeView(view);
            }
        }
    }

    @Override // k.InterfaceC1152n0
    public final void o() {
    }

    @Override // k.InterfaceC1152n0
    public final int p() {
        return this.f2689b;
    }

    @Override // k.InterfaceC1152n0
    public final void q() {
    }

    @Override // k.InterfaceC1152n0
    public final O r(int i4, long j4) {
        O a4 = J.a(this.f2688a);
        a4.a(i4 == 0 ? 1.0f : 0.0f);
        a4.c(j4);
        a4.d(new a1(this, i4));
        return a4;
    }

    @Override // k.InterfaceC1152n0
    public final void s() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // k.InterfaceC1152n0
    public final void t() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // k.InterfaceC1152n0
    public final void u(boolean z4) {
        Toolbar toolbar = this.f2688a;
        toolbar.f2656P = z4;
        toolbar.requestLayout();
    }

    public final void v() {
        if ((this.f2689b & 4) != 0) {
            boolean isEmpty = TextUtils.isEmpty(this.f2697j);
            Toolbar toolbar = this.f2688a;
            if (!isEmpty) {
                toolbar.u(this.f2697j);
                return;
            }
            int i4 = this.f2701n;
            toolbar.u(i4 != 0 ? toolbar.getContext().getText(i4) : null);
        }
    }

    public final void w() {
        Drawable drawable;
        int i4 = this.f2689b;
        if ((i4 & 2) == 0) {
            drawable = null;
        } else if ((i4 & 1) != 0) {
            drawable = this.f2692e;
            if (drawable == null) {
                drawable = this.f2691d;
            }
        } else {
            drawable = this.f2691d;
        }
        this.f2688a.t(drawable);
    }
}
