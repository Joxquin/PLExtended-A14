package com.google.protobuf;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class D0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Class f8510a;

    /* renamed from: b  reason: collision with root package name */
    public static final O0 f8511b;

    /* renamed from: c  reason: collision with root package name */
    public static final O0 f8512c;

    /* renamed from: d  reason: collision with root package name */
    public static final Q0 f8513d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessageV3");
        } catch (Throwable unused) {
            cls = null;
        }
        f8510a = cls;
        f8511b = x(false);
        f8512c = x(true);
        f8513d = new Q0();
    }

    public static Object A(Object obj, int i4, int i5, Object obj2, O0 o02) {
        if (obj2 == null) {
            obj2 = o02.f(obj);
        }
        o02.e(i4, i5, obj2);
        return obj2;
    }

    public static void B(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                rVar.o(i4, ((Boolean) list.get(i5)).booleanValue());
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            ((Boolean) list.get(i7)).booleanValue();
            Logger logger = r.f8687b;
            i6++;
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            rVar.n(((Boolean) list.get(i5)).booleanValue() ? (byte) 1 : (byte) 0);
            i5++;
        }
    }

    public static void C(int i4, List list, C0776s c0776s) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c0776s.getClass();
        for (int i5 = 0; i5 < list.size(); i5++) {
            c0776s.f8691a.q(i4, (ByteString) list.get(i5));
        }
    }

    public static void D(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                double doubleValue = ((Double) list.get(i5)).doubleValue();
                rVar.getClass();
                rVar.u(i4, Double.doubleToRawLongBits(doubleValue));
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            ((Double) list.get(i7)).doubleValue();
            Logger logger = r.f8687b;
            i6 += 8;
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            rVar.v(Double.doubleToRawLongBits(((Double) list.get(i5)).doubleValue()));
            i5++;
        }
    }

    public static void E(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                rVar.w(i4, ((Integer) list.get(i5)).intValue());
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            i6 += r.f(((Integer) list.get(i7)).intValue());
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            rVar.x(((Integer) list.get(i5)).intValue());
            i5++;
        }
    }

    public static void F(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                rVar.s(i4, ((Integer) list.get(i5)).intValue());
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            ((Integer) list.get(i7)).intValue();
            Logger logger = r.f8687b;
            i6 += 4;
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            rVar.t(((Integer) list.get(i5)).intValue());
            i5++;
        }
    }

    public static void G(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                rVar.u(i4, ((Long) list.get(i5)).longValue());
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            ((Long) list.get(i7)).longValue();
            Logger logger = r.f8687b;
            i6 += 8;
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            rVar.v(((Long) list.get(i5)).longValue());
            i5++;
        }
    }

    public static void H(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                float floatValue = ((Float) list.get(i5)).floatValue();
                rVar.getClass();
                rVar.s(i4, Float.floatToRawIntBits(floatValue));
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            ((Float) list.get(i7)).floatValue();
            Logger logger = r.f8687b;
            i6 += 4;
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            rVar.t(Float.floatToRawIntBits(((Float) list.get(i5)).floatValue()));
            i5++;
        }
    }

    public static void I(int i4, List list, C0776s c0776s, C0 c02) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c0776s.getClass();
        for (int i5 = 0; i5 < list.size(); i5++) {
            c0776s.e(i4, c02, list.get(i5));
        }
    }

    public static void J(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                rVar.w(i4, ((Integer) list.get(i5)).intValue());
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            i6 += r.f(((Integer) list.get(i7)).intValue());
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            rVar.x(((Integer) list.get(i5)).intValue());
            i5++;
        }
    }

    public static void K(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                rVar.H(i4, ((Long) list.get(i5)).longValue());
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            i6 += r.l(((Long) list.get(i7)).longValue());
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            rVar.I(((Long) list.get(i5)).longValue());
            i5++;
        }
    }

    public static void L(int i4, List list, C0776s c0776s, C0 c02) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c0776s.getClass();
        for (int i5 = 0; i5 < list.size(); i5++) {
            c0776s.f8691a.y(i4, (InterfaceC0772p0) list.get(i5), c02);
        }
    }

    public static void M(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                rVar.s(i4, ((Integer) list.get(i5)).intValue());
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            ((Integer) list.get(i7)).intValue();
            Logger logger = r.f8687b;
            i6 += 4;
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            rVar.t(((Integer) list.get(i5)).intValue());
            i5++;
        }
    }

    public static void N(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                rVar.u(i4, ((Long) list.get(i5)).longValue());
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            ((Long) list.get(i7)).longValue();
            Logger logger = r.f8687b;
            i6 += 8;
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            rVar.v(((Long) list.get(i5)).longValue());
            i5++;
        }
    }

    public static void O(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                int intValue = ((Integer) list.get(i5)).intValue();
                rVar.F(i4, (intValue >> 31) ^ (intValue << 1));
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            int intValue2 = ((Integer) list.get(i7)).intValue();
            i6 += r.k((intValue2 >> 31) ^ (intValue2 << 1));
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            int intValue3 = ((Integer) list.get(i5)).intValue();
            rVar.G((intValue3 >> 31) ^ (intValue3 << 1));
            i5++;
        }
    }

    public static void P(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                long longValue = ((Long) list.get(i5)).longValue();
                rVar.H(i4, (longValue >> 63) ^ (longValue << 1));
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            long longValue2 = ((Long) list.get(i7)).longValue();
            i6 += r.l((longValue2 >> 63) ^ (longValue2 << 1));
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            long longValue3 = ((Long) list.get(i5)).longValue();
            rVar.I((longValue3 >> 63) ^ (longValue3 << 1));
            i5++;
        }
    }

    public static void Q(int i4, List list, C0776s c0776s) {
        if (list == null || list.isEmpty()) {
            return;
        }
        c0776s.getClass();
        boolean z4 = list instanceof Z;
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                rVar.C(i4, (String) list.get(i5));
                i5++;
            }
            return;
        }
        Z z5 = (Z) list;
        while (i5 < list.size()) {
            Object e4 = z5.e(i5);
            if (e4 instanceof String) {
                rVar.C(i4, (String) e4);
            } else {
                rVar.q(i4, (ByteString) e4);
            }
            i5++;
        }
    }

    public static void R(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                rVar.F(i4, ((Integer) list.get(i5)).intValue());
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            i6 += r.k(((Integer) list.get(i7)).intValue());
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            rVar.G(((Integer) list.get(i5)).intValue());
            i5++;
        }
    }

    public static void S(int i4, List list, C0776s c0776s, boolean z4) {
        if (list == null || list.isEmpty()) {
            return;
        }
        r rVar = c0776s.f8691a;
        int i5 = 0;
        if (!z4) {
            while (i5 < list.size()) {
                rVar.H(i4, ((Long) list.get(i5)).longValue());
                i5++;
            }
            return;
        }
        rVar.E(i4, 2);
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            i6 += r.l(((Long) list.get(i7)).longValue());
        }
        rVar.G(i6);
        while (i5 < list.size()) {
            rVar.I(((Long) list.get(i5)).longValue());
            i5++;
        }
    }

    public static int a(int i4, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i5 = r.i(i4) * size;
        for (int i6 = 0; i6 < list.size(); i6++) {
            int size2 = ((ByteString) list.get(i6)).size();
            i5 += r.k(size2) + size2;
        }
        return i5;
    }

    public static int b(int i4, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (r.i(i4) * size) + c(list);
    }

    public static int c(List list) {
        int i4;
        int size = list.size();
        int i5 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof K) {
            K k4 = (K) list;
            i4 = 0;
            while (i5 < size) {
                k4.j(i5);
                i4 += r.f(k4.f8553e[i5]);
                i5++;
            }
        } else {
            i4 = 0;
            while (i5 < size) {
                i4 += r.f(((Integer) list.get(i5)).intValue());
                i5++;
            }
        }
        return i4;
    }

    public static int d(int i4, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return r.c(i4) * size;
    }

    public static int e(List list) {
        return list.size() * 4;
    }

    public static int f(int i4, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return r.d(i4) * size;
    }

    public static int g(List list) {
        return list.size() * 8;
    }

    public static int h(int i4, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (r.i(i4) * size) + i(list);
    }

    public static int i(List list) {
        int i4;
        int size = list.size();
        int i5 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof K) {
            K k4 = (K) list;
            i4 = 0;
            while (i5 < size) {
                k4.j(i5);
                i4 += r.f(k4.f8553e[i5]);
                i5++;
            }
        } else {
            i4 = 0;
            while (i5 < size) {
                i4 += r.f(((Integer) list.get(i5)).intValue());
                i5++;
            }
        }
        return i4;
    }

    public static int j(int i4, List list) {
        if (list.size() == 0) {
            return 0;
        }
        return (r.i(i4) * list.size()) + k(list);
    }

    public static int k(List list) {
        int i4;
        int size = list.size();
        int i5 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0748d0) {
            C0748d0 c0748d0 = (C0748d0) list;
            i4 = 0;
            while (i5 < size) {
                c0748d0.j(i5);
                i4 += r.l(c0748d0.f8632e[i5]);
                i5++;
            }
        } else {
            i4 = 0;
            while (i5 < size) {
                i4 += r.l(((Long) list.get(i5)).longValue());
                i5++;
            }
        }
        return i4;
    }

    public static int l(int i4, C0 c02, Object obj) {
        if (obj instanceof X) {
            return r.g((X) obj) + r.i(i4);
        }
        int i5 = r.i(i4);
        int serializedSize = ((AbstractC0743b) ((InterfaceC0772p0) obj)).getSerializedSize(c02);
        return r.k(serializedSize) + serializedSize + i5;
    }

    public static int m(int i4, List list, C0 c02) {
        int k4;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i5 = r.i(i4) * size;
        for (int i6 = 0; i6 < size; i6++) {
            Object obj = list.get(i6);
            if (obj instanceof X) {
                k4 = r.g((X) obj);
            } else {
                int serializedSize = ((AbstractC0743b) ((InterfaceC0772p0) obj)).getSerializedSize(c02);
                k4 = serializedSize + r.k(serializedSize);
            }
            i5 += k4;
        }
        return i5;
    }

    public static int n(int i4, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (r.i(i4) * size) + o(list);
    }

    public static int o(List list) {
        int i4;
        int size = list.size();
        int i5 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof K) {
            K k4 = (K) list;
            i4 = 0;
            while (i5 < size) {
                k4.j(i5);
                int i6 = k4.f8553e[i5];
                i4 += r.k((i6 >> 31) ^ (i6 << 1));
                i5++;
            }
        } else {
            i4 = 0;
            while (i5 < size) {
                int intValue = ((Integer) list.get(i5)).intValue();
                i4 += r.k((intValue >> 31) ^ (intValue << 1));
                i5++;
            }
        }
        return i4;
    }

    public static int p(int i4, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (r.i(i4) * size) + q(list);
    }

    public static int q(List list) {
        int i4;
        int size = list.size();
        int i5 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0748d0) {
            C0748d0 c0748d0 = (C0748d0) list;
            i4 = 0;
            while (i5 < size) {
                c0748d0.j(i5);
                long j4 = c0748d0.f8632e[i5];
                i4 += r.l((j4 >> 63) ^ (j4 << 1));
                i5++;
            }
        } else {
            i4 = 0;
            while (i5 < size) {
                long longValue = ((Long) list.get(i5)).longValue();
                i4 += r.l((longValue >> 63) ^ (longValue << 1));
                i5++;
            }
        }
        return i4;
    }

    public static int r(int i4, List list) {
        int h4;
        int h5;
        int size = list.size();
        int i5 = 0;
        if (size == 0) {
            return 0;
        }
        int i6 = r.i(i4) * size;
        if (list instanceof Z) {
            Z z4 = (Z) list;
            while (i5 < size) {
                Object e4 = z4.e(i5);
                if (e4 instanceof ByteString) {
                    int size2 = ((ByteString) e4).size();
                    h5 = r.k(size2) + size2;
                } else {
                    h5 = r.h((String) e4);
                }
                i6 += h5;
                i5++;
            }
        } else {
            while (i5 < size) {
                Object obj = list.get(i5);
                if (obj instanceof ByteString) {
                    int size3 = ((ByteString) obj).size();
                    h4 = r.k(size3) + size3;
                } else {
                    h4 = r.h((String) obj);
                }
                i6 += h4;
                i5++;
            }
        }
        return i6;
    }

    public static int s(int i4, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (r.i(i4) * size) + t(list);
    }

    public static int t(List list) {
        int i4;
        int size = list.size();
        int i5 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof K) {
            K k4 = (K) list;
            i4 = 0;
            while (i5 < size) {
                k4.j(i5);
                i4 += r.k(k4.f8553e[i5]);
                i5++;
            }
        } else {
            i4 = 0;
            while (i5 < size) {
                i4 += r.k(((Integer) list.get(i5)).intValue());
                i5++;
            }
        }
        return i4;
    }

    public static int u(int i4, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (r.i(i4) * size) + v(list);
    }

    public static int v(List list) {
        int i4;
        int size = list.size();
        int i5 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof C0748d0) {
            C0748d0 c0748d0 = (C0748d0) list;
            i4 = 0;
            while (i5 < size) {
                c0748d0.j(i5);
                i4 += r.l(c0748d0.f8632e[i5]);
                i5++;
            }
        } else {
            i4 = 0;
            while (i5 < size) {
                i4 += r.l(((Long) list.get(i5)).longValue());
                i5++;
            }
        }
        return i4;
    }

    public static Object w(Object obj, int i4, List list, M m4, Object obj2, O0 o02) {
        if (m4 == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i5 = 0;
            for (int i6 = 0; i6 < size; i6++) {
                int intValue = ((Integer) list.get(i6)).intValue();
                if (m4.isInRange(intValue)) {
                    if (i6 != i5) {
                        list.set(i5, Integer.valueOf(intValue));
                    }
                    i5++;
                } else {
                    obj2 = A(obj, i4, intValue, obj2, o02);
                }
            }
            if (i5 != size) {
                list.subList(i5, size).clear();
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!m4.isInRange(intValue2)) {
                    obj2 = A(obj, i4, intValue2, obj2, o02);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    public static O0 x(boolean z4) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (O0) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z4));
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static void y(AbstractC0786x abstractC0786x, Object obj, Object obj2) {
        L0 l02;
        B c4 = abstractC0786x.c(obj2);
        if (c4.f8498a.isEmpty()) {
            return;
        }
        B d4 = abstractC0786x.d(obj);
        d4.getClass();
        int i4 = 0;
        while (true) {
            l02 = c4.f8498a;
            if (i4 >= l02.e()) {
                break;
            }
            d4.k(l02.d(i4));
            i4++;
        }
        for (Map.Entry entry : l02.f()) {
            d4.k(entry);
        }
    }

    public static boolean z(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
