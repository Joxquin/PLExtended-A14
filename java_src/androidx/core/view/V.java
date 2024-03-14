package androidx.core.view;

import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import java.util.Objects;
/* loaded from: classes.dex */
public class V extends a0 {

    /* renamed from: c  reason: collision with root package name */
    public final WindowInsets f3091c;

    /* renamed from: d  reason: collision with root package name */
    public E.b[] f3092d;

    /* renamed from: e  reason: collision with root package name */
    public E.b f3093e;

    /* renamed from: f  reason: collision with root package name */
    public c0 f3094f;

    /* renamed from: g  reason: collision with root package name */
    public E.b f3095g;

    public V(c0 c0Var, WindowInsets windowInsets) {
        super(c0Var);
        this.f3093e = null;
        this.f3091c = windowInsets;
    }

    private E.b r(int i4, boolean z4) {
        E.b bVar = E.b.f328e;
        for (int i5 = 1; i5 <= 256; i5 <<= 1) {
            if ((i4 & i5) != 0) {
                E.b s4 = s(i5, z4);
                bVar = E.b.a(Math.max(bVar.f329a, s4.f329a), Math.max(bVar.f330b, s4.f330b), Math.max(bVar.f331c, s4.f331c), Math.max(bVar.f332d, s4.f332d));
            }
        }
        return bVar;
    }

    private E.b t() {
        c0 c0Var = this.f3094f;
        return c0Var != null ? c0Var.f3106a.h() : E.b.f328e;
    }

    private E.b u(View view) {
        throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
    }

    @Override // androidx.core.view.a0
    public void d(View view) {
        E.b u4 = u(view);
        if (u4 == null) {
            u4 = E.b.f328e;
        }
        w(u4);
    }

    @Override // androidx.core.view.a0
    public boolean equals(Object obj) {
        if (super.equals(obj)) {
            return Objects.equals(this.f3095g, ((V) obj).f3095g);
        }
        return false;
    }

    @Override // androidx.core.view.a0
    public E.b f(int i4) {
        return r(i4, false);
    }

    @Override // androidx.core.view.a0
    public final E.b j() {
        if (this.f3093e == null) {
            WindowInsets windowInsets = this.f3091c;
            this.f3093e = E.b.a(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.f3093e;
    }

    @Override // androidx.core.view.a0
    public c0 l(int i4, int i5, int i6, int i7) {
        T t4 = new T(c0.g(this.f3091c, null));
        t4.d(c0.e(j(), i4, i5, i6, i7));
        t4.c(c0.e(h(), i4, i5, i6, i7));
        return t4.b();
    }

    @Override // androidx.core.view.a0
    public boolean n() {
        return this.f3091c.isRound();
    }

    @Override // androidx.core.view.a0
    public boolean o(int i4) {
        for (int i5 = 1; i5 <= 256; i5 <<= 1) {
            if ((i4 & i5) != 0 && !v(i5)) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.core.view.a0
    public void p(E.b[] bVarArr) {
        this.f3092d = bVarArr;
    }

    @Override // androidx.core.view.a0
    public void q(c0 c0Var) {
        this.f3094f = c0Var;
    }

    public E.b s(int i4, boolean z4) {
        E.b h4;
        int i5;
        if (i4 == 1) {
            return z4 ? E.b.a(0, Math.max(t().f330b, j().f330b), 0, 0) : E.b.a(0, j().f330b, 0, 0);
        }
        if (i4 == 2) {
            if (z4) {
                E.b t4 = t();
                E.b h5 = h();
                return E.b.a(Math.max(t4.f329a, h5.f329a), 0, Math.max(t4.f331c, h5.f331c), Math.max(t4.f332d, h5.f332d));
            }
            E.b j4 = j();
            c0 c0Var = this.f3094f;
            h4 = c0Var != null ? c0Var.f3106a.h() : null;
            int i6 = j4.f332d;
            if (h4 != null) {
                i6 = Math.min(i6, h4.f332d);
            }
            return E.b.a(j4.f329a, 0, j4.f331c, i6);
        }
        E.b bVar = E.b.f328e;
        if (i4 == 8) {
            E.b[] bVarArr = this.f3092d;
            h4 = bVarArr != null ? bVarArr[3] : null;
            if (h4 != null) {
                return h4;
            }
            E.b j5 = j();
            E.b t5 = t();
            int i7 = j5.f332d;
            if (i7 > t5.f332d) {
                return E.b.a(0, 0, 0, i7);
            }
            E.b bVar2 = this.f3095g;
            return (bVar2 == null || bVar2.equals(bVar) || (i5 = this.f3095g.f332d) <= t5.f332d) ? bVar : E.b.a(0, 0, 0, i5);
        } else if (i4 != 16) {
            if (i4 != 32) {
                if (i4 != 64) {
                    if (i4 != 128) {
                        return bVar;
                    }
                    c0 c0Var2 = this.f3094f;
                    C0167d e4 = c0Var2 != null ? c0Var2.f3106a.e() : e();
                    if (e4 != null) {
                        DisplayCutout displayCutout = e4.f3107a;
                        return E.b.a(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom());
                    }
                    return bVar;
                }
                return k();
            }
            return g();
        } else {
            return i();
        }
    }

    public boolean v(int i4) {
        if (i4 != 1 && i4 != 2) {
            if (i4 == 4) {
                return false;
            }
            if (i4 != 8 && i4 != 128) {
                return true;
            }
        }
        return !s(i4, false).equals(E.b.f328e);
    }

    public void w(E.b bVar) {
        this.f3095g = bVar;
    }
}
