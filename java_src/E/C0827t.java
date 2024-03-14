package e;

import android.view.View;
import android.view.Window;
import androidx.core.view.c0;
import j.C1097o;
import j.InterfaceC1071B;
/* renamed from: e.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0827t implements androidx.core.view.r, InterfaceC1071B {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f8991d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ LayoutInflater$Factory2C0803D f8992e;

    public /* synthetic */ C0827t(LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D, int i4) {
        this.f8991d = i4;
        this.f8992e = layoutInflater$Factory2C0803D;
    }

    @Override // j.InterfaceC1071B
    public final void a(C1097o c1097o, boolean z4) {
        C0802C c0802c;
        int i4 = this.f8991d;
        LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D = this.f8992e;
        switch (i4) {
            case 3:
                layoutInflater$Factory2C0803D.B(c1097o);
                return;
            default:
                C1097o k4 = c1097o.k();
                int i5 = 0;
                boolean z5 = k4 != c1097o;
                if (z5) {
                    c1097o = k4;
                }
                C0802C[] c0802cArr = layoutInflater$Factory2C0803D.f8803N;
                int length = c0802cArr != null ? c0802cArr.length : 0;
                while (true) {
                    if (i5 >= length) {
                        c0802c = null;
                    } else {
                        c0802c = c0802cArr[i5];
                        if (c0802c == null || c0802c.f8777h != c1097o) {
                            i5++;
                        }
                    }
                }
                if (c0802c != null) {
                    if (!z5) {
                        layoutInflater$Factory2C0803D.C(c0802c, z4);
                        return;
                    }
                    layoutInflater$Factory2C0803D.A(c0802c.f8770a, c0802c, k4);
                    layoutInflater$Factory2C0803D.C(c0802c, true);
                    return;
                }
                return;
        }
    }

    @Override // androidx.core.view.r
    public final c0 b(View view, c0 c0Var) {
        int d4 = c0Var.d();
        int T3 = this.f8992e.T(c0Var, null);
        if (d4 != T3) {
            int b4 = c0Var.b();
            int c4 = c0Var.c();
            int a4 = c0Var.a();
            androidx.core.view.T t4 = new androidx.core.view.T(c0Var);
            t4.d(E.b.a(b4, T3, c4, a4));
            c0Var = t4.b();
        }
        return androidx.core.view.J.e(view, c0Var);
    }

    @Override // j.InterfaceC1071B
    public final boolean c(C1097o c1097o) {
        Window.Callback K3;
        int i4 = this.f8991d;
        LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D = this.f8992e;
        switch (i4) {
            case 3:
                Window.Callback K4 = layoutInflater$Factory2C0803D.K();
                if (K4 != null) {
                    K4.onMenuOpened(108, c1097o);
                }
                return true;
            default:
                if (c1097o == c1097o.k() && layoutInflater$Factory2C0803D.f8797H && (K3 = layoutInflater$Factory2C0803D.K()) != null && !layoutInflater$Factory2C0803D.f8808S) {
                    K3.onMenuOpened(108, c1097o);
                }
                return true;
        }
    }
}
