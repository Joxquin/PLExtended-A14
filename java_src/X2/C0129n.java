package X2;
/* renamed from: X2.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0129n extends AbstractC0117h {

    /* renamed from: d  reason: collision with root package name */
    public final AbstractC0117h f2203d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC0125l f2204e;

    public C0129n(AbstractC0117h abstractC0117h, InterfaceC0125l interfaceC0125l) {
        this.f2203d = abstractC0117h;
        O2.m.h(interfaceC0125l, "interceptor");
        this.f2204e = interfaceC0125l;
    }

    @Override // X2.AbstractC0117h
    public final String a() {
        return this.f2203d.a();
    }

    @Override // X2.AbstractC0117h
    public final AbstractC0123k g(u0 u0Var, C0115g c0115g) {
        return this.f2204e.a();
    }
}
