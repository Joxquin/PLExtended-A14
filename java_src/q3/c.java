package q3;
/* loaded from: classes.dex */
public final class c extends a {

    /* renamed from: g  reason: collision with root package name */
    public static final c f12060g = new c(1, 0);

    public c(int i4, int i5) {
        super(i4, i5, 1);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (this.f12053d != cVar.f12053d || this.f12054e != cVar.f12054e) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return this.f12054e + (this.f12053d * 31);
    }

    public final boolean isEmpty() {
        return this.f12053d > this.f12054e;
    }

    public final String toString() {
        return this.f12053d + ".." + this.f12054e;
    }
}
