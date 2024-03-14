package io.grpc.internal;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class C1 {

    /* renamed from: a  reason: collision with root package name */
    public final A1 f9838a;

    /* renamed from: b  reason: collision with root package name */
    public final Map f9839b;

    /* renamed from: c  reason: collision with root package name */
    public final Map f9840c;

    /* renamed from: d  reason: collision with root package name */
    public final q2 f9841d;

    /* renamed from: e  reason: collision with root package name */
    public final Object f9842e;

    /* renamed from: f  reason: collision with root package name */
    public final Map f9843f;

    public C1(A1 a12, Map map, Map map2, q2 q2Var, Object obj, Map map3) {
        this.f9838a = a12;
        this.f9839b = Collections.unmodifiableMap(new HashMap(map));
        this.f9840c = Collections.unmodifiableMap(new HashMap(map2));
        this.f9841d = q2Var;
        this.f9842e = obj;
        this.f9843f = map3 != null ? Collections.unmodifiableMap(new HashMap(map3)) : null;
    }

    public static C1 a(Map map, boolean z4, int i4, int i5, Object obj) {
        q2 q2Var;
        q2 q2Var2;
        Map f4;
        if (z4) {
            if (map == null || (f4 = O0.f(map, "retryThrottling")) == null) {
                q2Var2 = null;
            } else {
                float floatValue = O0.d(f4, "maxTokens").floatValue();
                float floatValue2 = O0.d(f4, "tokenRatio").floatValue();
                O2.m.k("maxToken should be greater than zero", floatValue > 0.0f);
                O2.m.k("tokenRatio should be greater than zero", floatValue2 > 0.0f);
                q2Var2 = new q2(floatValue, floatValue2);
            }
            q2Var = q2Var2;
        } else {
            q2Var = null;
        }
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        Map f5 = map == null ? null : O0.f(map, "healthCheckConfig");
        List<Map> b4 = O0.b(map, "methodConfig");
        if (b4 == null) {
            b4 = null;
        } else {
            O0.a(b4);
        }
        if (b4 == null) {
            return new C1(null, hashMap, hashMap2, q2Var, obj, f5);
        }
        A1 a12 = null;
        for (Map map2 : b4) {
            A1 a13 = new A1(map2, z4, i4, i5);
            List<Map> b5 = O0.b(map2, "name");
            if (b5 == null) {
                b5 = null;
            } else {
                O0.a(b5);
            }
            if (b5 != null && !b5.isEmpty()) {
                for (Map map3 : b5) {
                    String g4 = O0.g(map3, "service");
                    String g5 = O0.g(map3, "method");
                    if (O2.l.a(g4)) {
                        O2.m.d("missing service name for method %s", g5, O2.l.a(g5));
                        O2.m.d("Duplicate default method config in service config %s", map, a12 == null);
                        a12 = a13;
                    } else if (O2.l.a(g5)) {
                        O2.m.d("Duplicate service %s", g4, !hashMap2.containsKey(g4));
                        hashMap2.put(g4, a13);
                    } else {
                        String a4 = X2.u0.a(g4, g5);
                        O2.m.d("Duplicate method name %s", a4, !hashMap.containsKey(a4));
                        hashMap.put(a4, a13);
                    }
                }
            }
        }
        return new C1(a12, hashMap, hashMap2, q2Var, obj, f5);
    }

    public final B1 b() {
        if (this.f9840c.isEmpty() && this.f9839b.isEmpty() && this.f9838a == null) {
            return null;
        }
        return new B1(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1.class != obj.getClass()) {
            return false;
        }
        C1 c12 = (C1) obj;
        return O2.k.a(this.f9838a, c12.f9838a) && O2.k.a(this.f9839b, c12.f9839b) && O2.k.a(this.f9840c, c12.f9840c) && O2.k.a(this.f9841d, c12.f9841d) && O2.k.a(this.f9842e, c12.f9842e);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f9838a, this.f9839b, this.f9840c, this.f9841d, this.f9842e});
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.a(this.f9838a, "defaultMethodConfig");
        b4.a(this.f9839b, "serviceMethodMap");
        b4.a(this.f9840c, "serviceMap");
        b4.a(this.f9841d, "retryThrottling");
        b4.a(this.f9842e, "loadBalancingConfig");
        return b4.toString();
    }
}
