package io.grpc.internal;

import java.util.Arrays;
import java.util.Map;
/* loaded from: classes.dex */
public final class z2 {

    /* renamed from: a  reason: collision with root package name */
    public final String f10451a;

    /* renamed from: b  reason: collision with root package name */
    public final Map f10452b;

    public z2(Map map, String str) {
        O2.m.h(str, "policyName");
        this.f10451a = str;
        O2.m.h(map, "rawConfigValue");
        this.f10452b = map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof z2) {
            z2 z2Var = (z2) obj;
            return this.f10451a.equals(z2Var.f10451a) && this.f10452b.equals(z2Var.f10452b);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f10451a, this.f10452b});
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f10451a, "policyName");
        b4.a(this.f10452b, "rawConfigValue");
        return b4.toString();
    }
}
