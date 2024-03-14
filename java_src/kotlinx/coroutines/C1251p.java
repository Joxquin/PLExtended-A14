package kotlinx.coroutines;
/* renamed from: kotlinx.coroutines.p  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1251p {

    /* renamed from: a  reason: collision with root package name */
    public final Object f11502a;

    /* renamed from: b  reason: collision with root package name */
    public final AbstractC1229e f11503b;

    /* renamed from: c  reason: collision with root package name */
    public final m3.l f11504c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f11505d;

    /* renamed from: e  reason: collision with root package name */
    public final Throwable f11506e;

    public C1251p(Object obj, AbstractC1229e abstractC1229e, m3.l lVar, Object obj2, Throwable th) {
        this.f11502a = obj;
        this.f11503b = abstractC1229e;
        this.f11504c = lVar;
        this.f11505d = obj2;
        this.f11506e = th;
    }

    public static C1251p a(C1251p c1251p, AbstractC1229e abstractC1229e, Throwable th, int i4) {
        Object obj = (i4 & 1) != 0 ? c1251p.f11502a : null;
        if ((i4 & 2) != 0) {
            abstractC1229e = c1251p.f11503b;
        }
        AbstractC1229e abstractC1229e2 = abstractC1229e;
        m3.l lVar = (i4 & 4) != 0 ? c1251p.f11504c : null;
        Object obj2 = (i4 & 8) != 0 ? c1251p.f11505d : null;
        if ((i4 & 16) != 0) {
            th = c1251p.f11506e;
        }
        c1251p.getClass();
        return new C1251p(obj, abstractC1229e2, lVar, obj2, th);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1251p) {
            C1251p c1251p = (C1251p) obj;
            return kotlin.jvm.internal.h.a(this.f11502a, c1251p.f11502a) && kotlin.jvm.internal.h.a(this.f11503b, c1251p.f11503b) && kotlin.jvm.internal.h.a(this.f11504c, c1251p.f11504c) && kotlin.jvm.internal.h.a(this.f11505d, c1251p.f11505d) && kotlin.jvm.internal.h.a(this.f11506e, c1251p.f11506e);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f11502a;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        AbstractC1229e abstractC1229e = this.f11503b;
        int hashCode2 = (hashCode + (abstractC1229e == null ? 0 : abstractC1229e.hashCode())) * 31;
        m3.l lVar = this.f11504c;
        int hashCode3 = (hashCode2 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        Object obj2 = this.f11505d;
        int hashCode4 = (hashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f11506e;
        return hashCode4 + (th != null ? th.hashCode() : 0);
    }

    public final String toString() {
        return "CompletedContinuation(result=" + this.f11502a + ", cancelHandler=" + this.f11503b + ", onCancellation=" + this.f11504c + ", idempotentResume=" + this.f11505d + ", cancelCause=" + this.f11506e + ")";
    }

    public /* synthetic */ C1251p(Object obj, AbstractC1229e abstractC1229e, m3.l lVar, Throwable th, int i4) {
        this(obj, (i4 & 2) != 0 ? null : abstractC1229e, (i4 & 4) != 0 ? null : lVar, (Object) null, (i4 & 16) != 0 ? null : th);
    }
}
