package io.grpc.internal;

import X2.AbstractC0108c0;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class A2 {

    /* renamed from: a  reason: collision with root package name */
    public final AbstractC0108c0 f9828a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f9829b;

    public A2(AbstractC0108c0 abstractC0108c0, Object obj) {
        this.f9828a = abstractC0108c0;
        this.f9829b = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || A2.class != obj.getClass()) {
            return false;
        }
        A2 a22 = (A2) obj;
        return O2.k.a(this.f9828a, a22.f9828a) && O2.k.a(this.f9829b, a22.f9829b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f9828a, this.f9829b});
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f9828a, "provider");
        b4.a(this.f9829b, "config");
        return b4.toString();
    }
}
