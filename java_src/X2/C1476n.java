package x2;

import android.graphics.Typeface;
/* renamed from: x2.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1476n extends A2.h {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1478p f12875a;

    public C1476n(C1478p c1478p) {
        this.f12875a = c1478p;
    }

    @Override // A2.h
    public final void a(int i4) {
        C1478p c1478p = this.f12875a;
        c1478p.f12879d = true;
        InterfaceC1477o interfaceC1477o = (InterfaceC1477o) c1478p.f12880e.get();
        if (interfaceC1477o != null) {
            interfaceC1477o.a();
        }
    }

    @Override // A2.h
    public final void b(Typeface typeface, boolean z4) {
        if (z4) {
            return;
        }
        C1478p c1478p = this.f12875a;
        c1478p.f12879d = true;
        InterfaceC1477o interfaceC1477o = (InterfaceC1477o) c1478p.f12880e.get();
        if (interfaceC1477o != null) {
            interfaceC1477o.a();
        }
    }
}
