package X2;

import java.util.Map;
/* renamed from: X2.c0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0108c0 extends V {

    /* renamed from: a  reason: collision with root package name */
    public static final w0 f2183a = new w0(new C0106b0());

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public abstract String h();

    public final int hashCode() {
        return super.hashCode();
    }

    public abstract int i();

    public abstract boolean j();

    public w0 k(Map map) {
        return f2183a;
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(h(), "policy");
        b4.d(String.valueOf(i()), "priority");
        b4.c("available", j());
        return b4.toString();
    }
}
