package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class g0 extends kotlinx.coroutines.internal.o {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ h0 f11422d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f11423e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(kotlinx.coroutines.internal.p pVar, h0 h0Var, Object obj) {
        super(pVar);
        this.f11422d = h0Var;
        this.f11423e = obj;
    }

    @Override // kotlinx.coroutines.internal.o
    public final kotlinx.coroutines.internal.E b(Object obj) {
        kotlinx.coroutines.internal.p affected = (kotlinx.coroutines.internal.p) obj;
        kotlin.jvm.internal.h.e(affected, "affected");
        if (this.f11422d.N() == this.f11423e) {
            return null;
        }
        return kotlinx.coroutines.internal.n.f11479a;
    }
}
