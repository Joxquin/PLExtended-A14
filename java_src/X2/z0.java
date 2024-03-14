package X2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class z0 {

    /* renamed from: a  reason: collision with root package name */
    public final List f2253a;

    /* renamed from: b  reason: collision with root package name */
    public final C0107c f2254b;

    /* renamed from: c  reason: collision with root package name */
    public final w0 f2255c;

    public z0(List list, C0107c c0107c, w0 w0Var) {
        this.f2253a = Collections.unmodifiableList(new ArrayList(list));
        O2.m.h(c0107c, "attributes");
        this.f2254b = c0107c;
        this.f2255c = w0Var;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof z0) {
            z0 z0Var = (z0) obj;
            return O2.k.a(this.f2253a, z0Var.f2253a) && O2.k.a(this.f2254b, z0Var.f2254b) && O2.k.a(this.f2255c, z0Var.f2255c);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2253a, this.f2254b, this.f2255c});
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f2253a, "addresses");
        b4.a(this.f2254b, "attributes");
        b4.a(this.f2255c, "serviceConfig");
        return b4.toString();
    }
}
