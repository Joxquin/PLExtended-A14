package io.grpc.internal;

import X2.C0115g;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class P1 {

    /* renamed from: a  reason: collision with root package name */
    public final C0115g f9978a;

    /* renamed from: b  reason: collision with root package name */
    public final X2.r0 f9979b;

    /* renamed from: c  reason: collision with root package name */
    public final X2.u0 f9980c;

    public P1(X2.u0 u0Var, X2.r0 r0Var, C0115g c0115g) {
        O2.m.h(u0Var, "method");
        this.f9980c = u0Var;
        O2.m.h(r0Var, "headers");
        this.f9979b = r0Var;
        O2.m.h(c0115g, "callOptions");
        this.f9978a = c0115g;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || P1.class != obj.getClass()) {
            return false;
        }
        P1 p12 = (P1) obj;
        return O2.k.a(this.f9978a, p12.f9978a) && O2.k.a(this.f9979b, p12.f9979b) && O2.k.a(this.f9980c, p12.f9980c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f9978a, this.f9979b, this.f9980c});
    }

    public final String toString() {
        return "[method=" + this.f9980c + " headers=" + this.f9979b + " callOptions=" + this.f9978a + "]";
    }
}
