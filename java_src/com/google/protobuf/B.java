package com.google.protobuf;

import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public final class B {

    /* renamed from: d  reason: collision with root package name */
    public static final B f8497d = new B(0);

    /* renamed from: a  reason: collision with root package name */
    public final L0 f8498a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f8499b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f8500c;

    public B() {
        int i4 = L0.f8556j;
        this.f8498a = new E0(16);
    }

    public static int b(WireFormat$FieldType wireFormat$FieldType, int i4, Object obj) {
        int i5 = r.i(i4);
        if (wireFormat$FieldType == WireFormat$FieldType.f8593m) {
            i5 *= 2;
        }
        return c(wireFormat$FieldType, obj) + i5;
    }

    public static int c(WireFormat$FieldType wireFormat$FieldType, Object obj) {
        switch (wireFormat$FieldType.ordinal()) {
            case 0:
                ((Double) obj).doubleValue();
                Logger logger = r.f8687b;
                return 8;
            case 1:
                ((Float) obj).floatValue();
                Logger logger2 = r.f8687b;
                return 4;
            case 2:
                return r.l(((Long) obj).longValue());
            case 3:
                return r.l(((Long) obj).longValue());
            case 4:
                return r.f(((Integer) obj).intValue());
            case 5:
                ((Long) obj).longValue();
                Logger logger3 = r.f8687b;
                return 8;
            case 6:
                ((Integer) obj).intValue();
                Logger logger4 = r.f8687b;
                return 4;
            case 7:
                ((Boolean) obj).booleanValue();
                Logger logger5 = r.f8687b;
                return 1;
            case 8:
                if (obj instanceof ByteString) {
                    Logger logger6 = r.f8687b;
                    int size = ((ByteString) obj).size();
                    return r.k(size) + size;
                }
                return r.h((String) obj);
            case 9:
                Logger logger7 = r.f8687b;
                return ((InterfaceC0772p0) obj).getSerializedSize();
            case 10:
                if (obj instanceof W) {
                    return r.g((W) obj);
                }
                Logger logger8 = r.f8687b;
                int serializedSize = ((InterfaceC0772p0) obj).getSerializedSize();
                return r.k(serializedSize) + serializedSize;
            case 11:
                if (obj instanceof ByteString) {
                    Logger logger9 = r.f8687b;
                    int size2 = ((ByteString) obj).size();
                    return r.k(size2) + size2;
                }
                Logger logger10 = r.f8687b;
                int length = ((byte[]) obj).length;
                return r.k(length) + length;
            case 12:
                return r.k(((Integer) obj).intValue());
            case 13:
                return obj instanceof L ? r.f(((L) obj).getNumber()) : r.f(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).intValue();
                Logger logger11 = r.f8687b;
                return 4;
            case 15:
                ((Long) obj).longValue();
                Logger logger12 = r.f8687b;
                return 8;
            case 16:
                int intValue = ((Integer) obj).intValue();
                return r.k((intValue >> 31) ^ (intValue << 1));
            case 17:
                long longValue = ((Long) obj).longValue();
                return r.l((longValue >> 63) ^ (longValue << 1));
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int d(A a4, Object obj) {
        a4.f();
        a4.getNumber();
        a4.b();
        return b(null, 0, obj);
    }

    public static int f(Map.Entry entry) {
        A a4 = (A) entry.getKey();
        Object value = entry.getValue();
        if (a4.m() == WireFormat$JavaType.f8611l) {
            a4.b();
            a4.n();
            if (value instanceof W) {
                ((A) entry.getKey()).getNumber();
                return r.g((W) value) + r.i(3) + r.j(2, 0) + (r.i(1) * 2);
            }
            ((A) entry.getKey()).getNumber();
            int j4 = r.j(2, 0) + (r.i(1) * 2);
            int i4 = r.i(3);
            int serializedSize = ((InterfaceC0772p0) value).getSerializedSize();
            return r.k(serializedSize) + serializedSize + i4 + j4;
        }
        return d(a4, value);
    }

    public static boolean h(Map.Entry entry) {
        A a4 = (A) entry.getKey();
        if (a4.m() == WireFormat$JavaType.f8611l) {
            a4.b();
            Object value = entry.getValue();
            if (value instanceof InterfaceC0774q0) {
                return ((InterfaceC0774q0) value).isInitialized();
            }
            if (value instanceof W) {
                return true;
            }
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        }
        return true;
    }

    public static void m(A a4, Object obj) {
        a4.f();
        Charset charset = T.f8577a;
        obj.getClass();
        throw null;
    }

    public static void n(r rVar, WireFormat$FieldType wireFormat$FieldType, int i4, Object obj) {
        if (wireFormat$FieldType == WireFormat$FieldType.f8593m) {
            rVar.E(i4, 3);
            ((InterfaceC0772p0) obj).writeTo(rVar);
            rVar.E(i4, 4);
            return;
        }
        rVar.E(i4, wireFormat$FieldType.c());
        switch (wireFormat$FieldType.ordinal()) {
            case 0:
                rVar.v(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                return;
            case 1:
                rVar.t(Float.floatToRawIntBits(((Float) obj).floatValue()));
                return;
            case 2:
                rVar.I(((Long) obj).longValue());
                return;
            case 3:
                rVar.I(((Long) obj).longValue());
                return;
            case 4:
                rVar.x(((Integer) obj).intValue());
                return;
            case 5:
                rVar.v(((Long) obj).longValue());
                return;
            case 6:
                rVar.t(((Integer) obj).intValue());
                return;
            case 7:
                rVar.n(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                return;
            case 8:
                if (obj instanceof ByteString) {
                    rVar.r((ByteString) obj);
                    return;
                } else {
                    rVar.D((String) obj);
                    return;
                }
            case 9:
                ((InterfaceC0772p0) obj).writeTo(rVar);
                return;
            case 10:
                rVar.z((InterfaceC0772p0) obj);
                return;
            case 11:
                if (obj instanceof ByteString) {
                    rVar.r((ByteString) obj);
                    return;
                }
                byte[] bArr = (byte[]) obj;
                rVar.p(bArr, bArr.length);
                return;
            case 12:
                rVar.G(((Integer) obj).intValue());
                return;
            case 13:
                if (obj instanceof L) {
                    rVar.x(((L) obj).getNumber());
                    return;
                } else {
                    rVar.x(((Integer) obj).intValue());
                    return;
                }
            case 14:
                rVar.t(((Integer) obj).intValue());
                return;
            case 15:
                rVar.v(((Long) obj).longValue());
                return;
            case 16:
                int intValue = ((Integer) obj).intValue();
                rVar.G((intValue >> 31) ^ (intValue << 1));
                return;
            case 17:
                long longValue = ((Long) obj).longValue();
                rVar.I((longValue >> 63) ^ (longValue << 1));
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public final B clone() {
        L0 l02;
        B b4 = new B();
        int i4 = 0;
        while (true) {
            l02 = this.f8498a;
            if (i4 >= l02.e()) {
                break;
            }
            Map.Entry d4 = l02.d(i4);
            b4.l((A) d4.getKey(), d4.getValue());
            i4++;
        }
        for (Map.Entry entry : l02.f()) {
            b4.l((A) entry.getKey(), entry.getValue());
        }
        b4.f8500c = this.f8500c;
        return b4;
    }

    public final Object e(A a4) {
        Object obj = this.f8498a.get(a4);
        return obj instanceof W ? ((W) obj).a(null) : obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof B) {
            return this.f8498a.equals(((B) obj).f8498a);
        }
        return false;
    }

    public final boolean g() {
        int i4 = 0;
        while (true) {
            L0 l02 = this.f8498a;
            if (i4 >= l02.e()) {
                for (Map.Entry entry : l02.f()) {
                    if (!h(entry)) {
                        return false;
                    }
                }
                return true;
            } else if (!h(l02.d(i4))) {
                return false;
            } else {
                i4++;
            }
        }
    }

    public final int hashCode() {
        return this.f8498a.hashCode();
    }

    public final Iterator i() {
        boolean z4 = this.f8500c;
        L0 l02 = this.f8498a;
        return z4 ? new V(l02.entrySet().iterator()) : l02.entrySet().iterator();
    }

    public final void j() {
        if (this.f8499b) {
            return;
        }
        int i4 = 0;
        while (true) {
            L0 l02 = this.f8498a;
            if (i4 >= l02.e()) {
                l02.h();
                this.f8499b = true;
                return;
            }
            Map.Entry d4 = l02.d(i4);
            if (d4.getValue() instanceof J) {
                ((J) d4.getValue()).makeImmutable();
            }
            i4++;
        }
    }

    public final void k(Map.Entry entry) {
        A a4 = (A) entry.getKey();
        byte[] value = entry.getValue();
        if (value instanceof W) {
            value = ((W) value).a(null);
        }
        a4.b();
        WireFormat$JavaType m4 = a4.m();
        WireFormat$JavaType wireFormat$JavaType = WireFormat$JavaType.f8611l;
        L0 l02 = this.f8498a;
        if (m4 != wireFormat$JavaType) {
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                byte[] bArr2 = new byte[bArr.length];
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                value = bArr2;
            }
            l02.put(a4, value);
            return;
        }
        Object e4 = e(a4);
        if (e4 != null) {
            l02.put(a4, a4.j(((InterfaceC0772p0) e4).toBuilder$1(), (InterfaceC0772p0) value).build());
            return;
        }
        if (value instanceof byte[]) {
            byte[] bArr3 = (byte[]) value;
            byte[] bArr4 = new byte[bArr3.length];
            System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
            value = bArr4;
        }
        l02.put(a4, value);
    }

    public final void l(A a4, Object obj) {
        a4.b();
        m(a4, obj);
        throw null;
    }

    public B(int i4) {
        int i5 = L0.f8556j;
        this.f8498a = new E0(0);
        j();
        j();
    }
}
