package X2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class X {

    /* renamed from: a  reason: collision with root package name */
    public final List f2174a;

    /* renamed from: b  reason: collision with root package name */
    public final C0107c f2175b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f2176c;

    public X(List list, C0107c c0107c, Object obj) {
        O2.m.h(list, "addresses");
        this.f2174a = Collections.unmodifiableList(new ArrayList(list));
        O2.m.h(c0107c, "attributes");
        this.f2175b = c0107c;
        this.f2176c = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof X) {
            X x4 = (X) obj;
            return O2.k.a(this.f2174a, x4.f2174a) && O2.k.a(this.f2175b, x4.f2175b) && O2.k.a(this.f2176c, x4.f2176c);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2174a, this.f2175b, this.f2176c});
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f2174a, "addresses");
        b4.a(this.f2175b, "attributes");
        b4.a(this.f2176c, "loadBalancingPolicyConfig");
        return b4.toString();
    }
}
