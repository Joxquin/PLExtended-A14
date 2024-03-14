package androidx.recyclerview.widget;
/* renamed from: androidx.recyclerview.widget.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0257a {

    /* renamed from: a  reason: collision with root package name */
    public int f3918a;

    /* renamed from: b  reason: collision with root package name */
    public int f3919b;

    /* renamed from: c  reason: collision with root package name */
    public Object f3920c;

    /* renamed from: d  reason: collision with root package name */
    public int f3921d;

    public C0257a(Object obj, int i4, int i5, int i6) {
        this.f3918a = i4;
        this.f3919b = i5;
        this.f3921d = i6;
        this.f3920c = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0257a) {
            C0257a c0257a = (C0257a) obj;
            int i4 = this.f3918a;
            if (i4 != c0257a.f3918a) {
                return false;
            }
            if (i4 == 8 && Math.abs(this.f3921d - this.f3919b) == 1 && this.f3921d == c0257a.f3919b && this.f3919b == c0257a.f3921d) {
                return true;
            }
            if (this.f3921d == c0257a.f3921d && this.f3919b == c0257a.f3919b) {
                Object obj2 = this.f3920c;
                if (obj2 != null) {
                    if (!obj2.equals(c0257a.f3920c)) {
                        return false;
                    }
                } else if (c0257a.f3920c != null) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return (((this.f3918a * 31) + this.f3919b) * 31) + this.f3921d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i4 = this.f3918a;
        sb.append(i4 != 1 ? i4 != 2 ? i4 != 4 ? i4 != 8 ? "??" : "mv" : "up" : "rm" : "add");
        sb.append(",s:");
        sb.append(this.f3919b);
        sb.append("c:");
        sb.append(this.f3921d);
        sb.append(",p:");
        sb.append(this.f3920c);
        sb.append("]");
        return sb.toString();
    }
}
