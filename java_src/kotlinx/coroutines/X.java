package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class X extends b0 {

    /* renamed from: h  reason: collision with root package name */
    public final m3.l f11326h;

    /* renamed from: i  reason: collision with root package name */
    public final t3.d f11327i = t3.c.b(0);

    public X(m3.l lVar) {
        this.f11326h = lVar;
    }

    @Override // m3.l
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        k((Throwable) obj);
        return e3.f.f9037a;
    }

    @Override // kotlinx.coroutines.AbstractC1253s
    public final void k(Throwable th) {
        if (this.f11327i.a(0, 1)) {
            this.f11326h.invoke(th);
        }
    }
}
