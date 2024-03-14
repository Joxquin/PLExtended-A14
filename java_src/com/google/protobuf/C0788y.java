package com.google.protobuf;

import java.util.Map;
/* renamed from: com.google.protobuf.y  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0788y extends AbstractC0786x {
    @Override // com.google.protobuf.AbstractC0786x
    public final void a(Map.Entry entry) {
        ((H) entry.getKey()).getClass();
    }

    @Override // com.google.protobuf.AbstractC0786x
    public final I b(C0784w c0784w, InterfaceC0772p0 interfaceC0772p0, int i4) {
        c0784w.getClass();
        return (I) c0784w.f8722a.get(new C0782v(i4, interfaceC0772p0));
    }

    @Override // com.google.protobuf.AbstractC0786x
    public final B c(Object obj) {
        return ((G) obj).extensions;
    }

    @Override // com.google.protobuf.AbstractC0786x
    public final B d(Object obj) {
        G g4 = (G) obj;
        B b4 = g4.extensions;
        if (b4.f8499b) {
            g4.extensions = b4.clone();
        }
        return g4.extensions;
    }

    @Override // com.google.protobuf.AbstractC0786x
    public final boolean e(InterfaceC0772p0 interfaceC0772p0) {
        return interfaceC0772p0 instanceof G;
    }

    @Override // com.google.protobuf.AbstractC0786x
    public final void f(Object obj) {
        ((G) obj).extensions.j();
    }

    @Override // com.google.protobuf.AbstractC0786x
    public final Object g(Object obj) {
        I i4 = (I) obj;
        throw null;
    }

    @Override // com.google.protobuf.AbstractC0786x
    public final void h(Object obj) {
        I i4 = (I) obj;
        throw null;
    }

    @Override // com.google.protobuf.AbstractC0786x
    public final void i(Object obj) {
        I i4 = (I) obj;
        throw null;
    }

    @Override // com.google.protobuf.AbstractC0786x
    public final void j(Map.Entry entry) {
        ((H) entry.getKey()).getClass();
        throw null;
    }
}
