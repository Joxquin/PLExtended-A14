package kotlin.jvm.internal;
/* loaded from: classes.dex */
public final class i implements c {

    /* renamed from: d  reason: collision with root package name */
    public final Class f11264d;

    public i(Class jClass) {
        h.e(jClass, "jClass");
        this.f11264d = jClass;
    }

    @Override // kotlin.jvm.internal.c
    public final Class a() {
        return this.f11264d;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof i) {
            if (h.a(this.f11264d, ((i) obj).f11264d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f11264d.hashCode();
    }

    public final String toString() {
        return this.f11264d.toString() + " (Kotlin reflection is not available)";
    }
}
