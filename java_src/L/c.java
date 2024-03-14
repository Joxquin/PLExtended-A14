package L;

import java.util.Objects;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final Object f1016a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f1017b;

    public c(Object obj, Object obj2) {
        this.f1016a = obj;
        this.f1017b = obj2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            c cVar = (c) obj;
            return Objects.equals(cVar.f1016a, this.f1016a) && Objects.equals(cVar.f1017b, this.f1017b);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f1016a;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f1017b;
        return hashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "Pair{" + this.f1016a + " " + this.f1017b + "}";
    }
}
