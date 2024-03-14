package kotlin;

import java.io.Serializable;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class Pair implements Serializable {
    private final Object first;
    private final Object second;

    public Pair(Object obj, Object obj2) {
        this.first = obj;
        this.second = obj2;
    }

    public final Object a() {
        return this.first;
    }

    public final Object b() {
        return this.second;
    }

    public final Object c() {
        return this.first;
    }

    public final Object d() {
        return this.second;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            return h.a(this.first, pair.first) && h.a(this.second, pair.second);
        }
        return false;
    }

    public final int hashCode() {
        Object obj = this.first;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.second;
        return hashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.first + ", " + this.second + ')';
    }
}
