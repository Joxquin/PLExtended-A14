package kotlinx.coroutines;
/* loaded from: classes.dex */
public abstract class d0 extends AbstractC1253s implements K, V {

    /* renamed from: g  reason: collision with root package name */
    public h0 f11383g;

    @Override // kotlinx.coroutines.V
    public final boolean a() {
        return true;
    }

    @Override // kotlinx.coroutines.V
    public final l0 b() {
        return null;
    }

    @Override // kotlinx.coroutines.K
    public final void c() {
        Object N3;
        Object g4;
        kotlinx.coroutines.internal.p pVar;
        kotlinx.coroutines.internal.y yVar;
        h0 l4 = l();
        do {
            N3 = l4.N();
            if (!(N3 instanceof d0)) {
                if (!(N3 instanceof V) || ((V) N3).b() == null) {
                    return;
                }
                do {
                    g4 = g();
                    if (g4 instanceof kotlinx.coroutines.internal.y) {
                        kotlinx.coroutines.internal.p pVar2 = ((kotlinx.coroutines.internal.y) g4).f11496a;
                        return;
                    } else if (g4 == this) {
                        kotlinx.coroutines.internal.p pVar3 = (kotlinx.coroutines.internal.p) g4;
                        return;
                    } else {
                        kotlin.jvm.internal.h.c(g4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
                        pVar = (kotlinx.coroutines.internal.p) g4;
                        yVar = (kotlinx.coroutines.internal.y) pVar.f11485f.f12366b;
                        if (yVar == null) {
                            yVar = new kotlinx.coroutines.internal.y(pVar);
                            pVar.f11485f.c(yVar);
                        }
                    }
                } while (!this.f11483d.a(g4, yVar));
                pVar.e();
                return;
            } else if (N3 != this) {
                return;
            }
        } while (!l4.f11429d.a(N3, i0.f11438g));
    }

    public final h0 l() {
        h0 h0Var = this.f11383g;
        if (h0Var != null) {
            return h0Var;
        }
        kotlin.jvm.internal.h.g("job");
        throw null;
    }

    @Override // kotlinx.coroutines.internal.p
    public final String toString() {
        String a4 = D.a(this);
        String b4 = D.b(this);
        String b5 = D.b(l());
        return a4 + "@" + b4 + "[job@" + b5 + "]";
    }
}
