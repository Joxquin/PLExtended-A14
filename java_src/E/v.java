package e;

import android.view.MenuItem;
import android.view.ViewGroup;
import i.AbstractC0970b;
import i.C0974f;
import i.InterfaceC0969a;
import j.C1097o;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class v implements InterfaceC0969a {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC0969a f8995a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ LayoutInflater$Factory2C0803D f8996b;

    public v(LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D, C0974f c0974f) {
        this.f8996b = layoutInflater$Factory2C0803D;
        this.f8995a = c0974f;
    }

    @Override // i.InterfaceC0969a
    public final boolean a(AbstractC0970b abstractC0970b, MenuItem menuItem) {
        return this.f8995a.a(abstractC0970b, menuItem);
    }

    @Override // i.InterfaceC0969a
    public final boolean b(AbstractC0970b abstractC0970b, C1097o c1097o) {
        ViewGroup viewGroup = this.f8996b.f8792C;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        androidx.core.view.B.c(viewGroup);
        return this.f8995a.b(abstractC0970b, c1097o);
    }

    @Override // i.InterfaceC0969a
    public final void c(AbstractC0970b abstractC0970b) {
        this.f8995a.c(abstractC0970b);
        LayoutInflater$Factory2C0803D layoutInflater$Factory2C0803D = this.f8996b;
        if (layoutInflater$Factory2C0803D.f8838x != null) {
            layoutInflater$Factory2C0803D.f8827m.getDecorView().removeCallbacks(layoutInflater$Factory2C0803D.f8839y);
        }
        if (layoutInflater$Factory2C0803D.f8837w != null) {
            androidx.core.view.O o4 = layoutInflater$Factory2C0803D.f8840z;
            if (o4 != null) {
                o4.b();
            }
            androidx.core.view.O a4 = androidx.core.view.J.a(layoutInflater$Factory2C0803D.f8837w);
            a4.a(0.0f);
            layoutInflater$Factory2C0803D.f8840z = a4;
            a4.d(new u(2, this));
        }
        InterfaceC0824p interfaceC0824p = layoutInflater$Factory2C0803D.f8829o;
        if (interfaceC0824p != null) {
            interfaceC0824p.a();
        }
        layoutInflater$Factory2C0803D.f8836v = null;
        ViewGroup viewGroup = layoutInflater$Factory2C0803D.f8792C;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        androidx.core.view.B.c(viewGroup);
        layoutInflater$Factory2C0803D.S();
    }

    @Override // i.InterfaceC0969a
    public final boolean d(AbstractC0970b abstractC0970b, C1097o c1097o) {
        return this.f8995a.d(abstractC0970b, c1097o);
    }
}
