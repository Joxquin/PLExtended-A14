package X2;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class w0 {

    /* renamed from: a  reason: collision with root package name */
    public final L0 f2247a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f2248b;

    public w0(Object obj) {
        this.f2248b = obj;
        this.f2247a = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w0.class != obj.getClass()) {
            return false;
        }
        w0 w0Var = (w0) obj;
        return O2.k.a(this.f2247a, w0Var.f2247a) && O2.k.a(this.f2248b, w0Var.f2248b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2247a, this.f2248b});
    }

    public final String toString() {
        Object obj = this.f2248b;
        if (obj != null) {
            O2.i b4 = O2.j.b(this);
            b4.a(obj, "config");
            return b4.toString();
        }
        O2.i b5 = O2.j.b(this);
        b5.a(this.f2247a, "error");
        return b5.toString();
    }

    public w0(L0 l02) {
        this.f2248b = null;
        O2.m.h(l02, "status");
        this.f2247a = l02;
        O2.m.d("cannot use OK status: %s", l02, !l02.d());
    }
}
