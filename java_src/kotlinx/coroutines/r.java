package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public final Object f11510a;

    /* renamed from: b  reason: collision with root package name */
    public final m3.l f11511b;

    public r(Object obj, m3.l onCancellation) {
        kotlin.jvm.internal.h.e(onCancellation, "onCancellation");
        this.f11510a = obj;
        this.f11511b = onCancellation;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r) {
            r rVar = (r) obj;
            return kotlin.jvm.internal.h.a(this.f11510a, rVar.f11510a) && kotlin.jvm.internal.h.a(this.f11511b, rVar.f11511b);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f11510a;
        return this.f11511b.hashCode() + ((obj == null ? 0 : obj.hashCode()) * 31);
    }

    public final String toString() {
        return "CompletedWithCancellation(result=" + this.f11510a + ", onCancellation=" + this.f11511b + ")";
    }
}
