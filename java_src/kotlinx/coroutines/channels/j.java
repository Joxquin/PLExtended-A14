package kotlinx.coroutines.channels;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: b  reason: collision with root package name */
    public static final i f11376b = new i();

    /* renamed from: a  reason: collision with root package name */
    public final Object f11377a;

    public final boolean equals(Object obj) {
        if (obj instanceof j) {
            return kotlin.jvm.internal.h.a(this.f11377a, ((j) obj).f11377a);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.f11377a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        Object obj = this.f11377a;
        if (obj instanceof h) {
            return ((h) obj).toString();
        }
        return "Value(" + obj + ")";
    }
}
