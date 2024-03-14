package io.grpc.internal;

import X2.AbstractC0108c0;
import X2.C0112e0;
import com.google.common.base.VerifyException;
import io.grpc.Status$Code;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class B2 {
    public static Set a(Map map, String str) {
        Status$Code valueOf;
        List b4 = O0.b(map, str);
        if (b4 == null) {
            return null;
        }
        EnumSet noneOf = EnumSet.noneOf(Status$Code.class);
        for (Object obj : b4) {
            if (obj instanceof Double) {
                Double d4 = (Double) obj;
                int intValue = d4.intValue();
                O2.t.a("Status code %s is not integral", obj, ((double) intValue) == d4.doubleValue());
                valueOf = X2.L0.c(intValue).f2137a;
                O2.t.a("Status code %s is not valid", obj, valueOf.d() == d4.intValue());
            } else if (!(obj instanceof String)) {
                throw new VerifyException("Can not convert status code " + obj + " to Status.Code, because its type is " + obj.getClass());
            } else {
                try {
                    valueOf = Status$Code.valueOf((String) obj);
                } catch (IllegalArgumentException e4) {
                    throw new VerifyException("Status code " + obj + " is not valid", e4);
                }
            }
            noneOf.add(valueOf);
        }
        return Collections.unmodifiableSet(noneOf);
    }

    public static List b(Map map) {
        String g4;
        ArrayList arrayList = new ArrayList();
        if (map.containsKey("loadBalancingConfig")) {
            List b4 = O0.b(map, "loadBalancingConfig");
            if (b4 == null) {
                b4 = null;
            } else {
                O0.a(b4);
            }
            arrayList.addAll(b4);
        }
        if (arrayList.isEmpty() && (g4 = O0.g(map, "loadBalancingPolicy")) != null) {
            arrayList.add(Collections.singletonMap(g4.toLowerCase(Locale.ROOT), Collections.emptyMap()));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public static X2.w0 c(List list, C0112e0 c0112e0) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            z2 z2Var = (z2) it.next();
            String str = z2Var.f10451a;
            AbstractC0108c0 a4 = c0112e0.a(str);
            if (a4 != null) {
                if (!arrayList.isEmpty()) {
                    Logger.getLogger(B2.class.getName()).log(Level.FINEST, "{0} specified by Service Config are not available", arrayList);
                }
                X2.w0 k4 = a4.k(z2Var.f10452b);
                return k4.f2247a != null ? k4 : new X2.w0(new A2(a4, k4.f2248b));
            }
            arrayList.add(str);
        }
        X2.L0 l02 = X2.L0.f2128g;
        return new X2.w0(l02.f("None of " + arrayList + " specified by Service Config are available."));
    }

    public static List d(List list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Map map = (Map) it.next();
            if (map.size() != 1) {
                throw new RuntimeException("There are " + map.size() + " fields in a LoadBalancingConfig object. Exactly one is expected. Config=" + map);
            }
            String str = (String) ((Map.Entry) map.entrySet().iterator().next()).getKey();
            arrayList.add(new z2(O0.f(map, str), str));
        }
        return Collections.unmodifiableList(arrayList);
    }
}
