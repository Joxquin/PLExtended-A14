package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class e0 extends d0 {

    /* renamed from: h  reason: collision with root package name */
    public final h0 f11384h;

    /* renamed from: i  reason: collision with root package name */
    public final f0 f11385i;

    /* renamed from: j  reason: collision with root package name */
    public final C1249n f11386j;

    /* renamed from: k  reason: collision with root package name */
    public final Object f11387k;

    public e0(h0 parent, f0 state, C1249n c1249n, Object obj) {
        kotlin.jvm.internal.h.e(parent, "parent");
        kotlin.jvm.internal.h.e(state, "state");
        this.f11384h = parent;
        this.f11385i = state;
        this.f11386j = c1249n;
        this.f11387k = obj;
    }

    @Override // m3.l
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        k((Throwable) obj);
        return e3.f.f9037a;
    }

    @Override // kotlinx.coroutines.AbstractC1253s
    public final void k(Throwable th) {
        h0 h0Var = this.f11384h;
        h0Var.getClass();
        C1249n T3 = h0.T(this.f11386j);
        f0 f0Var = this.f11385i;
        Object obj = this.f11387k;
        if (T3 == null || !h0Var.b0(f0Var, T3, obj)) {
            h0Var.C(h0Var.K(f0Var, obj));
        }
    }
}
