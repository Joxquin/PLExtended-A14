package kotlinx.coroutines.internal;
/* loaded from: classes.dex */
public abstract class o extends x {

    /* renamed from: a  reason: collision with root package name */
    public final t3.f f11480a = t3.c.d(C1234a.f11459a);

    /* renamed from: b  reason: collision with root package name */
    public final p f11481b;

    /* renamed from: c  reason: collision with root package name */
    public p f11482c;

    public o(p pVar) {
        this.f11481b = pVar;
    }

    @Override // kotlinx.coroutines.internal.x
    public final Object a(Object obj) {
        Object obj2 = this.f11480a.f12366b;
        E e4 = C1234a.f11459a;
        if (obj2 == e4) {
            obj2 = b(obj);
            Object obj3 = this.f11480a.f12366b;
            if (obj3 != e4) {
                obj2 = obj3;
            } else if (!this.f11480a.a(e4, obj2)) {
                obj2 = this.f11480a.f12366b;
            }
        }
        p affected = (p) obj;
        kotlin.jvm.internal.h.e(affected, "affected");
        boolean z4 = obj2 == null;
        p pVar = this.f11481b;
        p pVar2 = z4 ? pVar : this.f11482c;
        if (pVar2 != null && affected.f11483d.a(this, pVar2) && z4) {
            p pVar3 = this.f11482c;
            kotlin.jvm.internal.h.b(pVar3);
            pVar.f(pVar3);
        }
        return obj2;
    }

    public abstract E b(Object obj);
}
