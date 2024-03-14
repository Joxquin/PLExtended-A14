package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class L extends AbstractC1229e {

    /* renamed from: d  reason: collision with root package name */
    public final K f11310d;

    public L(K k4) {
        this.f11310d = k4;
    }

    @Override // kotlinx.coroutines.AbstractC1230f
    public final void c(Throwable th) {
        this.f11310d.c();
    }

    @Override // m3.l
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        c((Throwable) obj);
        return e3.f.f9037a;
    }

    public final String toString() {
        return "DisposeOnCancel[" + this.f11310d + "]";
    }
}
