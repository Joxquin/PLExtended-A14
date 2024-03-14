package X2;
/* renamed from: X2.p0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0134p0 extends AbstractC0130n0 {

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC0136q0 f2213e;

    public C0134p0(String str, boolean z4, InterfaceC0136q0 interfaceC0136q0) {
        super(str, z4, interfaceC0136q0);
        O2.m.f(!str.endsWith("-bin"), "ASCII header is named %s.  Only binary headers may end with %s", str, "-bin");
        this.f2213e = interfaceC0136q0;
    }

    @Override // X2.AbstractC0130n0
    public final Object b(byte[] bArr) {
        return this.f2213e.b(bArr);
    }

    @Override // X2.AbstractC0130n0
    public final byte[] c(Object obj) {
        return this.f2213e.mo10a(obj);
    }
}
