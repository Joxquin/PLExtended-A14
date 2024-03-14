package X2;
/* renamed from: X2.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0135q {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f2214a = 1;

    /* renamed from: b  reason: collision with root package name */
    public C0107c f2215b;

    /* renamed from: c  reason: collision with root package name */
    public C0115g f2216c;

    /* renamed from: d  reason: collision with root package name */
    public int f2217d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2218e;

    public C0135q(C0107c c0107c, C0115g c0115g, int i4, boolean z4) {
        O2.m.h(c0107c, "transportAttrs");
        this.f2215b = c0107c;
        O2.m.h(c0115g, "callOptions");
        this.f2216c = c0115g;
        this.f2217d = i4;
        this.f2218e = z4;
    }

    public final String toString() {
        switch (this.f2214a) {
            case 1:
                O2.i b4 = O2.j.b(this);
                b4.a(this.f2215b, "transportAttrs");
                b4.a(this.f2216c, "callOptions");
                b4.d(String.valueOf(this.f2217d), "previousAttempts");
                b4.c("isTransparentRetry", this.f2218e);
                return b4.toString();
            default:
                return super.toString();
        }
    }
}
