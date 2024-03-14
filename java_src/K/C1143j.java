package k;

import j.C1097o;
import j.InterfaceC1071B;
import j.SubMenuC1081L;
/* renamed from: k.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1143j implements InterfaceC1071B {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1151n f10903d;

    public C1143j(C1151n c1151n, int i4) {
        if (i4 != 1) {
            this.f10903d = c1151n;
        } else {
            this.f10903d = c1151n;
        }
    }

    @Override // j.InterfaceC1071B
    public final void a(C1097o c1097o, boolean z4) {
        if (c1097o instanceof SubMenuC1081L) {
            c1097o.k().c(false);
        }
        InterfaceC1071B interfaceC1071B = this.f10903d.f10928h;
        if (interfaceC1071B != null) {
            interfaceC1071B.a(c1097o, z4);
        }
    }

    @Override // j.InterfaceC1071B
    public final boolean c(C1097o c1097o) {
        C1151n c1151n = this.f10903d;
        if (c1097o == c1151n.f10926f) {
            return false;
        }
        ((SubMenuC1081L) c1097o).f10491B.getClass();
        c1151n.getClass();
        InterfaceC1071B interfaceC1071B = c1151n.f10928h;
        if (interfaceC1071B != null) {
            return interfaceC1071B.c(c1097o);
        }
        return false;
    }
}
