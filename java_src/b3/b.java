package b3;

import O2.i;
import O2.k;
import O2.m;
import X2.L0;
import X2.W;
/* loaded from: classes.dex */
public final class b extends e {

    /* renamed from: a  reason: collision with root package name */
    public final L0 f4239a;

    public b(L0 l02) {
        m.h(l02, "status");
        this.f4239a = l02;
    }

    @Override // X2.V
    public final W e() {
        L0 l02 = this.f4239a;
        return l02.d() ? W.f2169e : W.a(l02);
    }

    @Override // b3.e
    public final boolean h(e eVar) {
        if (eVar instanceof b) {
            b bVar = (b) eVar;
            L0 l02 = bVar.f4239a;
            L0 l03 = this.f4239a;
            if (k.a(l03, l02) || (l03.d() && bVar.f4239a.d())) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        i iVar = new i(b.class.getSimpleName());
        iVar.a(this.f4239a, "status");
        return iVar.toString();
    }
}
