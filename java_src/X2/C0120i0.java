package X2;
/* renamed from: X2.i0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0120i0 extends AbstractC0130n0 {

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC0122j0 f2201e;

    public C0120i0(String str, InterfaceC0122j0 interfaceC0122j0) {
        super(str, false, interfaceC0122j0);
        O2.m.f(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
        O2.m.h(interfaceC0122j0, "marshaller");
        this.f2201e = interfaceC0122j0;
    }

    @Override // X2.AbstractC0130n0
    public final Object b(byte[] bArr) {
        return this.f2201e.c(new String(bArr, O2.e.f1510a));
    }

    @Override // X2.AbstractC0130n0
    public final byte[] c(Object obj) {
        return this.f2201e.a(obj).getBytes(O2.e.f1510a);
    }
}
