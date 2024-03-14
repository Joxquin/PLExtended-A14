package p0;
/* renamed from: p0.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1347i {

    /* renamed from: a  reason: collision with root package name */
    public Object f11926a;

    /* renamed from: b  reason: collision with root package name */
    public Object f11927b;

    public final boolean equals(Object obj) {
        if (obj instanceof L.c) {
            L.c cVar = (L.c) obj;
            Object obj2 = cVar.f1016a;
            Object obj3 = this.f11926a;
            if (obj2 == obj3 || (obj2 != null && obj2.equals(obj3))) {
                Object obj4 = this.f11927b;
                Object obj5 = cVar.f1017b;
                return obj5 == obj4 || (obj5 != null && obj5.equals(obj4));
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f11926a;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f11927b;
        return hashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "Pair{" + this.f11926a + " " + this.f11927b + "}";
    }
}
