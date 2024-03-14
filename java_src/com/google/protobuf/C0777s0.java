package com.google.protobuf;

import com.google.protobuf.ByteString;
import java.io.IOException;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: com.google.protobuf.s0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0777s0 implements C0 {

    /* renamed from: r  reason: collision with root package name */
    public static final int[] f8692r = new int[0];

    /* renamed from: s  reason: collision with root package name */
    public static final Unsafe f8693s;

    /* renamed from: a  reason: collision with root package name */
    public final int[] f8694a;

    /* renamed from: b  reason: collision with root package name */
    public final Object[] f8695b;

    /* renamed from: c  reason: collision with root package name */
    public final int f8696c;

    /* renamed from: d  reason: collision with root package name */
    public final int f8697d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC0772p0 f8698e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f8699f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f8700g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f8701h;

    /* renamed from: i  reason: collision with root package name */
    public final boolean f8702i;

    /* renamed from: j  reason: collision with root package name */
    public final int[] f8703j;

    /* renamed from: k  reason: collision with root package name */
    public final int f8704k;

    /* renamed from: l  reason: collision with root package name */
    public final int f8705l;

    /* renamed from: m  reason: collision with root package name */
    public final InterfaceC0781u0 f8706m;

    /* renamed from: n  reason: collision with root package name */
    public final AbstractC0746c0 f8707n;

    /* renamed from: o  reason: collision with root package name */
    public final O0 f8708o;

    /* renamed from: p  reason: collision with root package name */
    public final AbstractC0786x f8709p;

    /* renamed from: q  reason: collision with root package name */
    public final InterfaceC0760j0 f8710q;

    static {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new U0());
        } catch (Throwable unused) {
            unsafe = null;
        }
        f8693s = unsafe;
    }

    public C0777s0(int[] iArr, Object[] objArr, int i4, int i5, InterfaceC0772p0 interfaceC0772p0, boolean z4, int[] iArr2, int i6, int i7, InterfaceC0781u0 interfaceC0781u0, AbstractC0746c0 abstractC0746c0, O0 o02, AbstractC0786x abstractC0786x, InterfaceC0760j0 interfaceC0760j0) {
        this.f8694a = iArr;
        this.f8695b = objArr;
        this.f8696c = i4;
        this.f8697d = i5;
        this.f8700g = interfaceC0772p0 instanceof J;
        this.f8701h = z4;
        this.f8699f = abstractC0786x != null && abstractC0786x.e(interfaceC0772p0);
        this.f8702i = false;
        this.f8703j = iArr2;
        this.f8704k = i6;
        this.f8705l = i7;
        this.f8706m = interfaceC0781u0;
        this.f8707n = abstractC0746c0;
        this.f8708o = o02;
        this.f8709p = abstractC0786x;
        this.f8698e = interfaceC0772p0;
        this.f8710q = interfaceC0760j0;
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0340  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0392  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.protobuf.C0777s0 B(com.google.protobuf.InterfaceC0766m0 r33, com.google.protobuf.InterfaceC0781u0 r34, com.google.protobuf.AbstractC0746c0 r35, com.google.protobuf.O0 r36, com.google.protobuf.AbstractC0786x r37, com.google.protobuf.InterfaceC0760j0 r38) {
        /*
            Method dump skipped, instructions count: 1033
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0777s0.B(com.google.protobuf.m0, com.google.protobuf.u0, com.google.protobuf.c0, com.google.protobuf.O0, com.google.protobuf.x, com.google.protobuf.j0):com.google.protobuf.s0");
    }

    public static long C(int i4) {
        return i4 & 1048575;
    }

    public static int D(long j4, Object obj) {
        return ((Integer) X0.o(j4, obj)).intValue();
    }

    public static long E(long j4, Object obj) {
        return ((Long) X0.o(j4, obj)).longValue();
    }

    public static Field N(Class cls, String str) {
        Field[] declaredFields;
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            for (Field field : cls.getDeclaredFields()) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    public static void W(int i4, Object obj, C0776s c0776s) {
        if (!(obj instanceof String)) {
            c0776s.a(i4, (ByteString) obj);
            return;
        }
        c0776s.f8691a.C(i4, (String) obj);
    }

    public static void l(Object obj) {
        if (t(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    public static int m(byte[] bArr, int i4, int i5, WireFormat$FieldType wireFormat$FieldType, Class cls, C0749e c0749e) {
        switch (wireFormat$FieldType.ordinal()) {
            case 0:
                c0749e.f8636c = Double.valueOf(Double.longBitsToDouble(C0751f.c(i4, bArr)));
                return i4 + 8;
            case 1:
                c0749e.f8636c = Float.valueOf(Float.intBitsToFloat(C0751f.b(i4, bArr)));
                return i4 + 4;
            case 2:
            case 3:
                int m4 = C0751f.m(bArr, i4, c0749e);
                c0749e.f8636c = Long.valueOf(c0749e.f8635b);
                return m4;
            case 4:
            case 12:
            case 13:
                int k4 = C0751f.k(bArr, i4, c0749e);
                c0749e.f8636c = Integer.valueOf(c0749e.f8634a);
                return k4;
            case 5:
            case 15:
                c0749e.f8636c = Long.valueOf(C0751f.c(i4, bArr));
                return i4 + 8;
            case 6:
            case 14:
                c0749e.f8636c = Integer.valueOf(C0751f.b(i4, bArr));
                return i4 + 4;
            case 7:
                int m5 = C0751f.m(bArr, i4, c0749e);
                c0749e.f8636c = Boolean.valueOf(c0749e.f8635b != 0);
                return m5;
            case 8:
                return C0751f.h(bArr, i4, c0749e);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                return C0751f.d(C0791z0.f8727c.a(cls), bArr, i4, i5, c0749e);
            case 11:
                return C0751f.a(bArr, i4, c0749e);
            case 16:
                int k5 = C0751f.k(bArr, i4, c0749e);
                c0749e.f8636c = Integer.valueOf(AbstractC0767n.b(c0749e.f8634a));
                return k5;
            case 17:
                int m6 = C0751f.m(bArr, i4, c0749e);
                c0749e.f8636c = Long.valueOf(AbstractC0767n.c(c0749e.f8635b));
                return m6;
        }
    }

    public static P0 r(Object obj) {
        J j4 = (J) obj;
        P0 p02 = j4.unknownFields;
        if (p02 == P0.f8566f) {
            P0 p03 = new P0();
            j4.unknownFields = p03;
            return p03;
        }
        return p02;
    }

    public static boolean t(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof J) {
            return ((J) obj).isMutable();
        }
        return true;
    }

    public static List v(long j4, Object obj) {
        return (List) X0.o(j4, obj);
    }

    public final Object A(int i4, int i5, Object obj) {
        C0 q4 = q(i5);
        if (u(i4, i5, obj)) {
            Object object = f8693s.getObject(obj, T(i5) & 1048575);
            if (t(object)) {
                return object;
            }
            Object i6 = q4.i();
            if (object != null) {
                q4.a(i6, object);
            }
            return i6;
        }
        return q4.i();
    }

    public final int F(Object obj, byte[] bArr, int i4, int i5, int i6, long j4, C0749e c0749e) {
        Object p4 = p(i6);
        Unsafe unsafe = f8693s;
        Object object = unsafe.getObject(obj, j4);
        InterfaceC0760j0 interfaceC0760j0 = this.f8710q;
        if (interfaceC0760j0.c(object)) {
            MapFieldLite f4 = interfaceC0760j0.f();
            interfaceC0760j0.a(f4, object);
            unsafe.putObject(obj, j4, f4);
            object = f4;
        }
        C0756h0 e4 = interfaceC0760j0.e(p4);
        MapFieldLite h4 = interfaceC0760j0.h(object);
        int k4 = C0751f.k(bArr, i4, c0749e);
        int i7 = c0749e.f8634a;
        if (i7 < 0 || i7 > i5 - k4) {
            throw InvalidProtocolBufferException.j();
        }
        int i8 = i7 + k4;
        Object obj2 = e4.f8644b;
        Object obj3 = e4.f8646d;
        Object obj4 = obj3;
        while (k4 < i8) {
            int i9 = k4 + 1;
            int i10 = bArr[k4];
            if (i10 < 0) {
                i9 = C0751f.j(i10, bArr, i9, c0749e);
                i10 = c0749e.f8634a;
            }
            int i11 = i9;
            int i12 = i10 >>> 3;
            int i13 = i10 & 7;
            if (i12 != 1) {
                if (i12 == 2 && i13 == e4.f8645c.c()) {
                    k4 = m(bArr, i11, i5, e4.f8645c, obj3.getClass(), c0749e);
                    obj4 = c0749e.f8636c;
                }
                k4 = C0751f.o(i10, bArr, i11, i5, c0749e);
            } else if (i13 == e4.f8643a.c()) {
                k4 = m(bArr, i11, i5, e4.f8643a, null, c0749e);
                obj2 = c0749e.f8636c;
            } else {
                k4 = C0751f.o(i10, bArr, i11, i5, c0749e);
            }
        }
        if (k4 == i8) {
            h4.put(obj2, obj4);
            return i8;
        }
        throw InvalidProtocolBufferException.g();
    }

    public final int G(Object obj, byte[] bArr, int i4, int i5, int i6, int i7, int i8, int i9, int i10, long j4, int i11, C0749e c0749e) {
        int n4;
        long j5 = this.f8694a[i11 + 2] & 1048575;
        Unsafe unsafe = f8693s;
        switch (i10) {
            case 51:
                if (i8 == 1) {
                    unsafe.putObject(obj, j4, Double.valueOf(Double.longBitsToDouble(C0751f.c(i4, bArr))));
                    int i12 = i4 + 8;
                    unsafe.putInt(obj, j5, i7);
                    return i12;
                }
                return i4;
            case 52:
                if (i8 == 5) {
                    unsafe.putObject(obj, j4, Float.valueOf(Float.intBitsToFloat(C0751f.b(i4, bArr))));
                    int i13 = i4 + 4;
                    unsafe.putInt(obj, j5, i7);
                    return i13;
                }
                return i4;
            case 53:
            case 54:
                if (i8 == 0) {
                    int m4 = C0751f.m(bArr, i4, c0749e);
                    unsafe.putObject(obj, j4, Long.valueOf(c0749e.f8635b));
                    unsafe.putInt(obj, j5, i7);
                    return m4;
                }
                return i4;
            case 55:
            case 62:
                if (i8 == 0) {
                    int k4 = C0751f.k(bArr, i4, c0749e);
                    unsafe.putObject(obj, j4, Integer.valueOf(c0749e.f8634a));
                    unsafe.putInt(obj, j5, i7);
                    return k4;
                }
                return i4;
            case 56:
            case 65:
                if (i8 == 1) {
                    unsafe.putObject(obj, j4, Long.valueOf(C0751f.c(i4, bArr)));
                    int i14 = i4 + 8;
                    unsafe.putInt(obj, j5, i7);
                    return i14;
                }
                return i4;
            case 57:
            case 64:
                if (i8 == 5) {
                    unsafe.putObject(obj, j4, Integer.valueOf(C0751f.b(i4, bArr)));
                    int i15 = i4 + 4;
                    unsafe.putInt(obj, j5, i7);
                    return i15;
                }
                return i4;
            case 58:
                if (i8 == 0) {
                    int m5 = C0751f.m(bArr, i4, c0749e);
                    unsafe.putObject(obj, j4, Boolean.valueOf(c0749e.f8635b != 0));
                    unsafe.putInt(obj, j5, i7);
                    return m5;
                }
                return i4;
            case 59:
                if (i8 == 2) {
                    int k5 = C0751f.k(bArr, i4, c0749e);
                    int i16 = c0749e.f8634a;
                    if (i16 == 0) {
                        unsafe.putObject(obj, j4, "");
                    } else {
                        if ((i9 & 536870912) != 0) {
                            if (!b1.f8625a.a(bArr, k5, k5 + i16)) {
                                throw InvalidProtocolBufferException.c();
                            }
                        }
                        unsafe.putObject(obj, j4, new String(bArr, k5, i16, T.f8577a));
                        k5 += i16;
                    }
                    unsafe.putInt(obj, j5, i7);
                    return k5;
                }
                return i4;
            case 60:
                if (i8 == 2) {
                    Object A3 = A(i7, i11, obj);
                    n4 = C0751f.n(A3, q(i11), bArr, i4, i5, c0749e);
                    S(obj, i7, i11, A3);
                    return n4;
                }
                return i4;
            case 61:
                if (i8 == 2) {
                    int a4 = C0751f.a(bArr, i4, c0749e);
                    unsafe.putObject(obj, j4, c0749e.f8636c);
                    unsafe.putInt(obj, j5, i7);
                    return a4;
                }
                return i4;
            case 63:
                if (i8 == 0) {
                    int k6 = C0751f.k(bArr, i4, c0749e);
                    int i17 = c0749e.f8634a;
                    M o4 = o(i11);
                    if (o4 == null || o4.isInRange(i17)) {
                        unsafe.putObject(obj, j4, Integer.valueOf(i17));
                        unsafe.putInt(obj, j5, i7);
                    } else {
                        r(obj).c(i6, Long.valueOf(i17));
                    }
                    return k6;
                }
                return i4;
            case 66:
                if (i8 == 0) {
                    int k7 = C0751f.k(bArr, i4, c0749e);
                    unsafe.putObject(obj, j4, Integer.valueOf(AbstractC0767n.b(c0749e.f8634a)));
                    unsafe.putInt(obj, j5, i7);
                    return k7;
                }
                return i4;
            case 67:
                if (i8 == 0) {
                    int m6 = C0751f.m(bArr, i4, c0749e);
                    unsafe.putObject(obj, j4, Long.valueOf(AbstractC0767n.c(c0749e.f8635b)));
                    unsafe.putInt(obj, j5, i7);
                    return m6;
                }
                return i4;
            case 68:
                if (i8 == 3) {
                    Object A4 = A(i7, i11, obj);
                    n4 = ((C0777s0) q(i11)).H(A4, bArr, i4, i5, (i6 & (-8)) | 4, c0749e);
                    c0749e.f8636c = A4;
                    S(obj, i7, i11, A4);
                    return n4;
                }
                return i4;
            default:
                return i4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x03be, code lost:
        if (r0 != r33) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x03ec, code lost:
        if (r0 != r15) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x040d, code lost:
        if (r0 != r15) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x040f, code lost:
        r8 = r30;
        r12 = r31;
        r11 = r33;
        r1 = r35;
        r9 = r36;
        r4 = r17;
        r5 = r22;
        r6 = r23;
        r7 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0423, code lost:
        r6 = r35;
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x04c8, code lost:
        if (r5 == r1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x04ca, code lost:
        r28.putInt(r12, r5, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x04d0, code lost:
        r10 = r8.f8704k;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x04d7, code lost:
        if (r10 >= r8.f8705l) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x04d9, code lost:
        r3 = (com.google.protobuf.P0) n(r31, r8.f8703j[r10], r3, r8.f8708o, r31);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x04ef, code lost:
        if (r3 == null) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x04f1, code lost:
        r8.f8708o.n(r12, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x04f6, code lost:
        if (r7 != 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x04fa, code lost:
        if (r6 != r34) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0501, code lost:
        throw com.google.protobuf.InvalidProtocolBufferException.g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0504, code lost:
        if (r6 > r34) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0506, code lost:
        if (r9 != r7) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0508, code lost:
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x050d, code lost:
        throw com.google.protobuf.InvalidProtocolBufferException.g();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int H(java.lang.Object r31, byte[] r32, int r33, int r34, int r35, com.google.protobuf.C0749e r36) {
        /*
            Method dump skipped, instructions count: 1334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0777s0.H(java.lang.Object, byte[], int, int, int, com.google.protobuf.e):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0203  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:114:0x0252 -> B:115:0x0253). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:63:0x0184 -> B:64:0x0185). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x0200 -> B:94:0x0201). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int I(java.lang.Object r16, byte[] r17, int r18, int r19, int r20, int r21, int r22, int r23, long r24, int r26, long r27, com.google.protobuf.C0749e r29) {
        /*
            Method dump skipped, instructions count: 1204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0777s0.I(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.protobuf.e):int");
    }

    public final void J(Object obj, long j4, C0769o c0769o, C0 c02, C0784w c0784w) {
        int x4;
        List c4 = this.f8707n.c(j4, obj);
        int i4 = c0769o.f8677b;
        if ((i4 & 7) != 3) {
            throw InvalidProtocolBufferException.d();
        }
        do {
            Object i5 = c02.i();
            c0769o.c(i5, c02, c0784w);
            c02.d(i5);
            c4.add(i5);
            AbstractC0767n abstractC0767n = c0769o.f8676a;
            if (abstractC0767n.e() || c0769o.f8679d != 0) {
                return;
            }
            x4 = abstractC0767n.x();
        } while (x4 == i4);
        c0769o.f8679d = x4;
    }

    public final void K(Object obj, int i4, C0769o c0769o, C0 c02, C0784w c0784w) {
        int x4;
        List c4 = this.f8707n.c(i4 & 1048575, obj);
        int i5 = c0769o.f8677b;
        if ((i5 & 7) != 2) {
            throw InvalidProtocolBufferException.d();
        }
        do {
            Object i6 = c02.i();
            c0769o.d(i6, c02, c0784w);
            c02.d(i6);
            c4.add(i6);
            AbstractC0767n abstractC0767n = c0769o.f8676a;
            if (abstractC0767n.e() || c0769o.f8679d != 0) {
                return;
            }
            x4 = abstractC0767n.x();
        } while (x4 == i5);
        c0769o.f8679d = x4;
    }

    public final void L(Object obj, int i4, C0769o c0769o) {
        if ((536870912 & i4) != 0) {
            c0769o.x(2);
            X0.x(i4 & 1048575, obj, c0769o.f8676a.w());
        } else if (!this.f8700g) {
            X0.x(i4 & 1048575, obj, c0769o.f());
        } else {
            c0769o.x(2);
            X0.x(i4 & 1048575, obj, c0769o.f8676a.v());
        }
    }

    public final void M(Object obj, int i4, C0769o c0769o) {
        boolean z4 = (536870912 & i4) != 0;
        AbstractC0746c0 abstractC0746c0 = this.f8707n;
        if (z4) {
            c0769o.t(abstractC0746c0.c(i4 & 1048575, obj), true);
        } else {
            c0769o.t(abstractC0746c0.c(i4 & 1048575, obj), false);
        }
    }

    public final void O(int i4, Object obj) {
        int i5 = this.f8694a[i4 + 2];
        long j4 = 1048575 & i5;
        if (j4 == 1048575) {
            return;
        }
        X0.v((1 << (i5 >>> 20)) | X0.m(j4, obj), j4, obj);
    }

    public final void P(int i4, int i5, Object obj) {
        X0.v(i4, this.f8694a[i5 + 2] & 1048575, obj);
    }

    public final int Q(int i4, int i5) {
        int[] iArr = this.f8694a;
        int length = (iArr.length / 3) - 1;
        while (i5 <= length) {
            int i6 = (length + i5) >>> 1;
            int i7 = i6 * 3;
            int i8 = iArr[i7];
            if (i4 == i8) {
                return i7;
            }
            if (i4 < i8) {
                length = i6 - 1;
            } else {
                i5 = i6 + 1;
            }
        }
        return -1;
    }

    public final void R(int i4, Object obj, Object obj2) {
        f8693s.putObject(obj, T(i4) & 1048575, obj2);
        O(i4, obj);
    }

    public final void S(Object obj, int i4, int i5, Object obj2) {
        f8693s.putObject(obj, T(i5) & 1048575, obj2);
        P(i4, i5, obj);
    }

    public final int T(int i4) {
        return this.f8694a[i4 + 1];
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x04ce  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0510  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0542  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0556  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x056c  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0598  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x05ad  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x05c2  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x05d7  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x05f3  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0618  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x03b3  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x03c9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void U(java.lang.Object r19, com.google.protobuf.C0776s r20) {
        /*
            Method dump skipped, instructions count: 1732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0777s0.U(java.lang.Object, com.google.protobuf.s):void");
    }

    public final void V(C0776s c0776s, int i4, Object obj, int i5) {
        if (obj != null) {
            Object p4 = p(i5);
            InterfaceC0760j0 interfaceC0760j0 = this.f8710q;
            C0756h0 e4 = interfaceC0760j0.e(p4);
            MapFieldLite g4 = interfaceC0760j0.g(obj);
            r rVar = c0776s.f8691a;
            rVar.getClass();
            for (Map.Entry entry : g4.entrySet()) {
                rVar.E(i4, 2);
                rVar.G(C0758i0.a(e4, entry.getKey(), entry.getValue()));
                C0758i0.b(rVar, e4, entry.getKey(), entry.getValue());
            }
        }
    }

    @Override // com.google.protobuf.C0
    public final void a(Object obj, Object obj2) {
        l(obj);
        obj2.getClass();
        int i4 = 0;
        while (true) {
            int[] iArr = this.f8694a;
            if (i4 >= iArr.length) {
                Class cls = D0.f8510a;
                O0 o02 = this.f8708o;
                o02.o(obj, o02.k(o02.g(obj), o02.g(obj2)));
                if (this.f8699f) {
                    D0.y(this.f8709p, obj, obj2);
                    return;
                }
                return;
            }
            int T3 = T(i4);
            long j4 = 1048575 & T3;
            int i5 = iArr[i4];
            switch ((T3 & 267386880) >>> 20) {
                case 0:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.t(obj, j4, X0.k(j4, obj2));
                        O(i4, obj);
                        break;
                    }
                case 1:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.u(obj, j4, X0.l(j4, obj2));
                        O(i4, obj);
                        break;
                    }
                case 2:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.w(obj, j4, X0.n(j4, obj2));
                        O(i4, obj);
                        break;
                    }
                case 3:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.w(obj, j4, X0.n(j4, obj2));
                        O(i4, obj);
                        break;
                    }
                case 4:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.v(X0.m(j4, obj2), j4, obj);
                        O(i4, obj);
                        break;
                    }
                case 5:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.w(obj, j4, X0.n(j4, obj2));
                        O(i4, obj);
                        break;
                    }
                case 6:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.v(X0.m(j4, obj2), j4, obj);
                        O(i4, obj);
                        break;
                    }
                case 7:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.p(obj, j4, X0.g(j4, obj2));
                        O(i4, obj);
                        break;
                    }
                case 8:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.x(j4, obj, X0.o(j4, obj2));
                        O(i4, obj);
                        break;
                    }
                case 9:
                    x(i4, obj, obj2);
                    break;
                case 10:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.x(j4, obj, X0.o(j4, obj2));
                        O(i4, obj);
                        break;
                    }
                case 11:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.v(X0.m(j4, obj2), j4, obj);
                        O(i4, obj);
                        break;
                    }
                case 12:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.v(X0.m(j4, obj2), j4, obj);
                        O(i4, obj);
                        break;
                    }
                case 13:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.v(X0.m(j4, obj2), j4, obj);
                        O(i4, obj);
                        break;
                    }
                case 14:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.w(obj, j4, X0.n(j4, obj2));
                        O(i4, obj);
                        break;
                    }
                case 15:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.v(X0.m(j4, obj2), j4, obj);
                        O(i4, obj);
                        break;
                    }
                case 16:
                    if (!s(i4, obj2)) {
                        break;
                    } else {
                        X0.w(obj, j4, X0.n(j4, obj2));
                        O(i4, obj);
                        break;
                    }
                case 17:
                    x(i4, obj, obj2);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.f8707n.b(j4, obj, obj2);
                    break;
                case 50:
                    Class cls2 = D0.f8510a;
                    X0.x(j4, obj, this.f8710q.a(X0.o(j4, obj), X0.o(j4, obj2)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (!u(i5, i4, obj2)) {
                        break;
                    } else {
                        X0.x(j4, obj, X0.o(j4, obj2));
                        P(i5, i4, obj);
                        break;
                    }
                case 60:
                    y(i4, obj, obj2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (!u(i5, i4, obj2)) {
                        break;
                    } else {
                        X0.x(j4, obj, X0.o(j4, obj2));
                        P(i5, i4, obj);
                        break;
                    }
                case 68:
                    y(i4, obj, obj2);
                    break;
            }
            i4 += 3;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x02ce  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02f5  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0304  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0434  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0465  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0491  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x04b4  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x026e  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x02a6  */
    @Override // com.google.protobuf.C0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.lang.Object r22, com.google.protobuf.C0776s r23) {
        /*
            Method dump skipped, instructions count: 1382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0777s0.b(java.lang.Object, com.google.protobuf.s):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:167:0x0652 A[Catch: all -> 0x0679, TryCatch #4 {all -> 0x0679, blocks: (B:165:0x064d, B:167:0x0652, B:168:0x0656), top: B:193:0x064d }] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0682 A[LOOP:2: B:183:0x0680->B:184:0x0682, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0694  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x065c A[SYNTHETIC] */
    @Override // com.google.protobuf.C0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(java.lang.Object r21, com.google.protobuf.C0769o r22, com.google.protobuf.C0784w r23) {
        /*
            Method dump skipped, instructions count: 1830
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0777s0.c(java.lang.Object, com.google.protobuf.o, com.google.protobuf.w):void");
    }

    @Override // com.google.protobuf.C0
    public final void d(Object obj) {
        if (t(obj)) {
            if (obj instanceof J) {
                J j4 = (J) obj;
                j4.setMemoizedSerializedSize(Integer.MAX_VALUE);
                j4.memoizedHashCode = 0;
                j4.markImmutable();
            }
            int length = this.f8694a.length;
            for (int i4 = 0; i4 < length; i4 += 3) {
                int T3 = T(i4);
                long j5 = 1048575 & T3;
                int i5 = (T3 & 267386880) >>> 20;
                Unsafe unsafe = f8693s;
                if (i5 != 9) {
                    switch (i5) {
                        case 17:
                            break;
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                            this.f8707n.a(j5, obj);
                            continue;
                        case 50:
                            Object object = unsafe.getObject(obj, j5);
                            if (object != null) {
                                unsafe.putObject(obj, j5, this.f8710q.d(object));
                            } else {
                                continue;
                            }
                        default:
                    }
                }
                if (s(i4, obj)) {
                    q(i4).d(unsafe.getObject(obj, j5));
                }
            }
            this.f8708o.j(obj);
            if (this.f8699f) {
                this.f8709p.f(obj);
            }
        }
    }

    @Override // com.google.protobuf.C0
    public final boolean e(Object obj) {
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            boolean z4 = true;
            if (i5 >= this.f8704k) {
                return !this.f8699f || this.f8709p.c(obj).g();
            }
            int i7 = this.f8703j[i5];
            int[] iArr = this.f8694a;
            int i8 = iArr[i7];
            int T3 = T(i7);
            int i9 = iArr[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i4) {
                if (i10 != 1048575) {
                    i6 = f8693s.getInt(obj, i10);
                }
                i4 = i10;
            }
            if ((268435456 & T3) != 0) {
                if (!(i4 == 1048575 ? s(i7, obj) : (i6 & i11) != 0)) {
                    return false;
                }
            }
            int i12 = (267386880 & T3) >>> 20;
            if (i12 == 9 || i12 == 17) {
                if (i4 == 1048575) {
                    z4 = s(i7, obj);
                } else if ((i11 & i6) == 0) {
                    z4 = false;
                }
                if (z4 && !q(i7).e(X0.o(T3 & 1048575, obj))) {
                    return false;
                }
            } else {
                if (i12 != 27) {
                    if (i12 == 60 || i12 == 68) {
                        if (u(i8, i7, obj) && !q(i7).e(X0.o(T3 & 1048575, obj))) {
                            return false;
                        }
                    } else if (i12 != 49) {
                        if (i12 != 50) {
                            continue;
                        } else {
                            Object o4 = X0.o(T3 & 1048575, obj);
                            InterfaceC0760j0 interfaceC0760j0 = this.f8710q;
                            MapFieldLite g4 = interfaceC0760j0.g(o4);
                            if (!g4.isEmpty() && interfaceC0760j0.e(p(i7)).f8645c.a() == WireFormat$JavaType.f8611l) {
                                Iterator it = g4.values().iterator();
                                C0 c02 = null;
                                while (true) {
                                    if (!it.hasNext()) {
                                        break;
                                    }
                                    Object next = it.next();
                                    if (c02 == null) {
                                        c02 = C0791z0.f8727c.a(next.getClass());
                                    }
                                    if (!c02.e(next)) {
                                        z4 = false;
                                        break;
                                    }
                                }
                            }
                            if (!z4) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) X0.o(T3 & 1048575, obj);
                if (!list.isEmpty()) {
                    C0 q4 = q(i7);
                    int i13 = 0;
                    while (true) {
                        if (i13 >= list.size()) {
                            break;
                        } else if (!q4.e(list.get(i13))) {
                            z4 = false;
                            break;
                        } else {
                            i13++;
                        }
                    }
                }
                if (!z4) {
                    return false;
                }
            }
            i5++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01aa, code lost:
        if (java.lang.Float.floatToIntBits(com.google.protobuf.X0.l(r7, r11)) == java.lang.Float.floatToIntBits(com.google.protobuf.X0.l(r7, r12))) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01c5, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.protobuf.X0.k(r7, r11)) == java.lang.Double.doubleToLongBits(com.google.protobuf.X0.k(r7, r12))) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003d, code lost:
        if (com.google.protobuf.D0.z(com.google.protobuf.X0.o(r7, r11), com.google.protobuf.X0.o(r7, r12)) != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006f, code lost:
        if (com.google.protobuf.D0.z(com.google.protobuf.X0.o(r7, r11), com.google.protobuf.X0.o(r7, r12)) != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0083, code lost:
        if (com.google.protobuf.X0.n(r7, r11) == com.google.protobuf.X0.n(r7, r12)) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0095, code lost:
        if (com.google.protobuf.X0.m(r7, r11) == com.google.protobuf.X0.m(r7, r12)) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a9, code lost:
        if (com.google.protobuf.X0.n(r7, r11) == com.google.protobuf.X0.n(r7, r12)) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bb, code lost:
        if (com.google.protobuf.X0.m(r7, r11) == com.google.protobuf.X0.m(r7, r12)) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00cd, code lost:
        if (com.google.protobuf.X0.m(r7, r11) == com.google.protobuf.X0.m(r7, r12)) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00df, code lost:
        if (com.google.protobuf.X0.m(r7, r11) == com.google.protobuf.X0.m(r7, r12)) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f5, code lost:
        if (com.google.protobuf.D0.z(com.google.protobuf.X0.o(r7, r11), com.google.protobuf.X0.o(r7, r12)) != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x010b, code lost:
        if (com.google.protobuf.D0.z(com.google.protobuf.X0.o(r7, r11), com.google.protobuf.X0.o(r7, r12)) != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0121, code lost:
        if (com.google.protobuf.D0.z(com.google.protobuf.X0.o(r7, r11), com.google.protobuf.X0.o(r7, r12)) != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0133, code lost:
        if (com.google.protobuf.X0.g(r7, r11) == com.google.protobuf.X0.g(r7, r12)) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0145, code lost:
        if (com.google.protobuf.X0.m(r7, r11) == com.google.protobuf.X0.m(r7, r12)) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0159, code lost:
        if (com.google.protobuf.X0.n(r7, r11) == com.google.protobuf.X0.n(r7, r12)) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x016b, code lost:
        if (com.google.protobuf.X0.m(r7, r11) == com.google.protobuf.X0.m(r7, r12)) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x017e, code lost:
        if (com.google.protobuf.X0.n(r7, r11) == com.google.protobuf.X0.n(r7, r12)) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0191, code lost:
        if (com.google.protobuf.X0.n(r7, r11) == com.google.protobuf.X0.n(r7, r12)) goto L88;
     */
    @Override // com.google.protobuf.C0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(java.lang.Object r11, java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 644
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0777s0.f(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x029c, code lost:
        if (r0 != r32) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02a0, code lost:
        r4 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02d0, code lost:
        if (r0 != r15) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x02f0, code lost:
        if (r0 != r15) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x02f2, code lost:
        r2 = r19;
        r6 = r25;
     */
    @Override // com.google.protobuf.C0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(java.lang.Object r30, byte[] r31, int r32, int r33, com.google.protobuf.C0749e r34) {
        /*
            Method dump skipped, instructions count: 888
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0777s0.g(java.lang.Object, byte[], int, int, com.google.protobuf.e):void");
    }

    @Override // com.google.protobuf.C0
    public final int h(Object obj) {
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z4;
        int i8;
        int i9;
        int l4;
        int b4;
        int i10;
        int f4;
        int d4;
        int g4;
        int i11;
        int k4;
        int i12;
        int i13;
        int l5;
        int i14;
        int f5;
        int i15;
        int i16;
        int i17;
        int l6;
        int i18;
        int f6;
        int d5;
        int i19;
        int i20;
        int h4;
        int b5;
        int g5;
        int i21;
        int k5;
        int i22 = 267386880;
        boolean z5 = this.f8701h;
        InterfaceC0760j0 interfaceC0760j0 = this.f8710q;
        Unsafe unsafe = f8693s;
        boolean z6 = this.f8702i;
        O0 o02 = this.f8708o;
        int[] iArr = this.f8694a;
        int i23 = 1048575;
        if (z5) {
            int i24 = 0;
            int i25 = 0;
            while (i24 < iArr.length) {
                int T3 = T(i24);
                int i26 = (T3 & i22) >>> 20;
                int i27 = iArr[i24];
                long j4 = T3 & i23;
                int i28 = (i26 < FieldType.f8515d.a() || i26 > FieldType.f8516e.a()) ? 0 : iArr[i24 + 2] & i23;
                switch (i26) {
                    case 0:
                        if (s(i24, obj)) {
                            i15 = r.i(i27);
                            d5 = i15 + 8;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (s(i24, obj)) {
                            i16 = r.i(i27);
                            d5 = i16 + 4;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (s(i24, obj)) {
                            long n4 = X0.n(j4, obj);
                            i17 = r.i(i27);
                            l6 = r.l(n4);
                            d5 = l6 + i17;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (s(i24, obj)) {
                            long n5 = X0.n(j4, obj);
                            i17 = r.i(i27);
                            l6 = r.l(n5);
                            d5 = l6 + i17;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (s(i24, obj)) {
                            int m4 = X0.m(j4, obj);
                            i18 = r.i(i27);
                            f6 = r.f(m4);
                            d5 = f6 + i18;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (s(i24, obj)) {
                            d5 = r.d(i27);
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (s(i24, obj)) {
                            d5 = r.c(i27);
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (s(i24, obj)) {
                            i19 = r.i(i27);
                            d5 = i19 + 1;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (!s(i24, obj)) {
                            break;
                        } else {
                            Object o4 = X0.o(j4, obj);
                            if (o4 instanceof ByteString) {
                                b5 = r.b(i27, (ByteString) o4);
                                i25 += b5;
                                break;
                            } else {
                                i20 = r.i(i27);
                                h4 = r.h((String) o4);
                                b5 = h4 + i20;
                                i25 += b5;
                            }
                        }
                    case 9:
                        if (s(i24, obj)) {
                            d5 = D0.l(i27, q(i24), X0.o(j4, obj));
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (s(i24, obj)) {
                            d5 = r.b(i27, (ByteString) X0.o(j4, obj));
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (s(i24, obj)) {
                            d5 = r.j(i27, X0.m(j4, obj));
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (s(i24, obj)) {
                            int m5 = X0.m(j4, obj);
                            i18 = r.i(i27);
                            f6 = r.f(m5);
                            d5 = f6 + i18;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (s(i24, obj)) {
                            i16 = r.i(i27);
                            d5 = i16 + 4;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (s(i24, obj)) {
                            i15 = r.i(i27);
                            d5 = i15 + 8;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (s(i24, obj)) {
                            int m6 = X0.m(j4, obj);
                            i18 = r.i(i27);
                            f6 = r.k((m6 >> 31) ^ (m6 << 1));
                            d5 = f6 + i18;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (s(i24, obj)) {
                            long n6 = X0.n(j4, obj);
                            i17 = r.i(i27);
                            l6 = r.l((n6 >> 63) ^ (n6 << 1));
                            d5 = l6 + i17;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (s(i24, obj)) {
                            d5 = r.e(i27, (InterfaceC0772p0) X0.o(j4, obj), q(i24));
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        d5 = D0.f(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 19:
                        d5 = D0.d(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 20:
                        d5 = D0.j(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 21:
                        d5 = D0.u(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 22:
                        d5 = D0.h(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 23:
                        d5 = D0.f(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 24:
                        d5 = D0.d(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 25:
                        List v4 = v(j4, obj);
                        Class cls = D0.f8510a;
                        int size = v4.size();
                        if (size != 0) {
                            d5 = (r.i(i27) + 1) * size;
                            i25 += d5;
                            break;
                        }
                        d5 = 0;
                        i25 += d5;
                    case 26:
                        d5 = D0.r(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 27:
                        d5 = D0.m(i27, v(j4, obj), q(i24));
                        i25 += d5;
                        break;
                    case 28:
                        d5 = D0.a(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 29:
                        d5 = D0.s(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 30:
                        d5 = D0.b(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 31:
                        d5 = D0.d(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 32:
                        d5 = D0.f(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 33:
                        d5 = D0.n(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 34:
                        d5 = D0.p(i27, v(j4, obj));
                        i25 += d5;
                        break;
                    case 35:
                        g5 = D0.g((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 36:
                        g5 = D0.e((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 37:
                        g5 = D0.k((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 38:
                        g5 = D0.v((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 39:
                        g5 = D0.i((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 40:
                        g5 = D0.g((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 41:
                        g5 = D0.e((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 42:
                        Class cls2 = D0.f8510a;
                        g5 = ((List) unsafe.getObject(obj, j4)).size();
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 43:
                        g5 = D0.t((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 44:
                        g5 = D0.c((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 45:
                        g5 = D0.e((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 46:
                        g5 = D0.g((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 47:
                        g5 = D0.o((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 48:
                        g5 = D0.q((List) unsafe.getObject(obj, j4));
                        if (g5 <= 0) {
                            break;
                        } else {
                            if (z6) {
                                unsafe.putInt(obj, i28, g5);
                            }
                            i21 = r.i(i27);
                            k5 = r.k(g5);
                            i25 += k5 + i21 + g5;
                            break;
                        }
                    case 49:
                        List v5 = v(j4, obj);
                        C0 q4 = q(i24);
                        Class cls3 = D0.f8510a;
                        int size2 = v5.size();
                        if (size2 != 0) {
                            int i29 = 0;
                            for (int i30 = 0; i30 < size2; i30++) {
                                i29 = r.e(i27, (InterfaceC0772p0) v5.get(i30), q4) + i29;
                            }
                            d5 = i29;
                            i25 += d5;
                            break;
                        }
                        d5 = 0;
                        i25 += d5;
                    case 50:
                        d5 = interfaceC0760j0.b(i27, X0.o(j4, obj), p(i24));
                        i25 += d5;
                        break;
                    case 51:
                        if (u(i27, i24, obj)) {
                            i15 = r.i(i27);
                            d5 = i15 + 8;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (u(i27, i24, obj)) {
                            i16 = r.i(i27);
                            d5 = i16 + 4;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (u(i27, i24, obj)) {
                            long E3 = E(j4, obj);
                            i17 = r.i(i27);
                            l6 = r.l(E3);
                            d5 = l6 + i17;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (u(i27, i24, obj)) {
                            long E4 = E(j4, obj);
                            i17 = r.i(i27);
                            l6 = r.l(E4);
                            d5 = l6 + i17;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (u(i27, i24, obj)) {
                            int D3 = D(j4, obj);
                            i18 = r.i(i27);
                            f6 = r.f(D3);
                            d5 = f6 + i18;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (u(i27, i24, obj)) {
                            d5 = r.d(i27);
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (u(i27, i24, obj)) {
                            d5 = r.c(i27);
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (u(i27, i24, obj)) {
                            i19 = r.i(i27);
                            d5 = i19 + 1;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (!u(i27, i24, obj)) {
                            break;
                        } else {
                            Object o5 = X0.o(j4, obj);
                            if (o5 instanceof ByteString) {
                                b5 = r.b(i27, (ByteString) o5);
                                i25 += b5;
                                break;
                            } else {
                                i20 = r.i(i27);
                                h4 = r.h((String) o5);
                                b5 = h4 + i20;
                                i25 += b5;
                            }
                        }
                    case 60:
                        if (u(i27, i24, obj)) {
                            d5 = D0.l(i27, q(i24), X0.o(j4, obj));
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (u(i27, i24, obj)) {
                            d5 = r.b(i27, (ByteString) X0.o(j4, obj));
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (u(i27, i24, obj)) {
                            d5 = r.j(i27, D(j4, obj));
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (u(i27, i24, obj)) {
                            int D4 = D(j4, obj);
                            i18 = r.i(i27);
                            f6 = r.f(D4);
                            d5 = f6 + i18;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (u(i27, i24, obj)) {
                            i16 = r.i(i27);
                            d5 = i16 + 4;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (u(i27, i24, obj)) {
                            i15 = r.i(i27);
                            d5 = i15 + 8;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (u(i27, i24, obj)) {
                            int D5 = D(j4, obj);
                            i18 = r.i(i27);
                            f6 = r.k((D5 >> 31) ^ (D5 << 1));
                            d5 = f6 + i18;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (u(i27, i24, obj)) {
                            long E5 = E(j4, obj);
                            i17 = r.i(i27);
                            l6 = r.l((E5 >> 63) ^ (E5 << 1));
                            d5 = l6 + i17;
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (u(i27, i24, obj)) {
                            d5 = r.e(i27, (InterfaceC0772p0) X0.o(j4, obj), q(i24));
                            i25 += d5;
                            break;
                        } else {
                            break;
                        }
                }
                i24 += 3;
                i22 = 267386880;
                i23 = 1048575;
            }
            return o02.h(o02.g(obj)) + i25;
        }
        int i31 = 0;
        int i32 = 0;
        int i33 = 0;
        int i34 = 1048575;
        while (i31 < iArr.length) {
            int T4 = T(i31);
            int i35 = iArr[i31];
            int i36 = (T4 & 267386880) >>> 20;
            if (i36 <= 17) {
                i6 = iArr[i31 + 2];
                int i37 = i6 & 1048575;
                i7 = 1 << (i6 >>> 20);
                if (i37 != i34) {
                    i4 = i32;
                    i33 = unsafe.getInt(obj, i37);
                    i34 = i37;
                } else {
                    i4 = i32;
                }
                i5 = 1048575;
            } else {
                i4 = i32;
                if (!z6 || i36 < FieldType.f8515d.a() || i36 > FieldType.f8516e.a()) {
                    i5 = 1048575;
                    i6 = 0;
                } else {
                    i5 = 1048575;
                    i6 = iArr[i31 + 2] & 1048575;
                }
                i7 = 0;
            }
            int i38 = T4 & i5;
            int i39 = i34;
            long j5 = i38;
            switch (i36) {
                case 0:
                    z4 = true;
                    if ((i33 & i7) != 0) {
                        i8 = r.i(i35) + 8;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 1:
                    z4 = true;
                    if ((i33 & i7) != 0) {
                        i8 = r.i(i35) + 4;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 2:
                    z4 = true;
                    if ((i33 & i7) != 0) {
                        long j6 = unsafe.getLong(obj, j5);
                        i9 = r.i(i35);
                        l4 = r.l(j6);
                        i8 = i9 + l4;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 3:
                    z4 = true;
                    if ((i33 & i7) != 0) {
                        long j7 = unsafe.getLong(obj, j5);
                        i9 = r.i(i35);
                        l4 = r.l(j7);
                        i8 = i9 + l4;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 4:
                    z4 = true;
                    if ((i33 & i7) != 0) {
                        i8 = r.f(unsafe.getInt(obj, j5)) + r.i(i35);
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 5:
                    z4 = true;
                    if ((i33 & i7) != 0) {
                        i8 = r.d(i35);
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 6:
                    z4 = true;
                    if ((i33 & i7) != 0) {
                        i8 = r.c(i35);
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 7:
                    if ((i33 & i7) != 0) {
                        z4 = true;
                        i8 = r.i(i35) + 1;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 8:
                    if ((i33 & i7) != 0) {
                        Object object = unsafe.getObject(obj, j5);
                        b4 = object instanceof ByteString ? r.b(i35, (ByteString) object) : r.h((String) object) + r.i(i35);
                        i32 = i4 + b4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 9:
                    if ((i33 & i7) != 0) {
                        i8 = D0.l(i35, q(i31), unsafe.getObject(obj, j5));
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 10:
                    if ((i33 & i7) != 0) {
                        i8 = r.b(i35, (ByteString) unsafe.getObject(obj, j5));
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 11:
                    if ((i33 & i7) != 0) {
                        i8 = r.j(i35, unsafe.getInt(obj, j5));
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 12:
                    if ((i33 & i7) != 0) {
                        int i40 = unsafe.getInt(obj, j5);
                        i10 = r.i(i35);
                        f4 = r.f(i40);
                        i8 = f4 + i10;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 13:
                    if ((i33 & i7) != 0) {
                        b4 = r.i(i35) + 4;
                        i32 = i4 + b4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 14:
                    if ((i33 & i7) != 0) {
                        i8 = r.i(i35) + 8;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 15:
                    if ((i33 & i7) != 0) {
                        int i41 = unsafe.getInt(obj, j5);
                        i10 = r.i(i35);
                        f4 = r.k((i41 >> 31) ^ (i41 << 1));
                        i8 = f4 + i10;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 16:
                    if ((i33 & i7) != 0) {
                        long j8 = unsafe.getLong(obj, j5);
                        i8 = r.i(i35) + r.l((j8 >> 63) ^ (j8 << 1));
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    } else {
                        z4 = true;
                        i32 = i4;
                        i31 += 3;
                        i34 = i39;
                    }
                case 17:
                    if ((i33 & i7) != 0) {
                        i8 = r.e(i35, (InterfaceC0772p0) unsafe.getObject(obj, j5), q(i31));
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 18:
                    i8 = D0.f(i35, (List) unsafe.getObject(obj, j5));
                    z4 = true;
                    i32 = i4 + i8;
                    i31 += 3;
                    i34 = i39;
                case 19:
                    d4 = D0.d(i35, (List) unsafe.getObject(obj, j5));
                    i32 = i4 + d4;
                    z4 = true;
                    i31 += 3;
                    i34 = i39;
                case 20:
                    d4 = D0.j(i35, (List) unsafe.getObject(obj, j5));
                    i32 = i4 + d4;
                    z4 = true;
                    i31 += 3;
                    i34 = i39;
                case 21:
                    d4 = D0.u(i35, (List) unsafe.getObject(obj, j5));
                    i32 = i4 + d4;
                    z4 = true;
                    i31 += 3;
                    i34 = i39;
                case 22:
                    d4 = D0.h(i35, (List) unsafe.getObject(obj, j5));
                    i32 = i4 + d4;
                    z4 = true;
                    i31 += 3;
                    i34 = i39;
                case 23:
                    d4 = D0.f(i35, (List) unsafe.getObject(obj, j5));
                    i32 = i4 + d4;
                    z4 = true;
                    i31 += 3;
                    i34 = i39;
                case 24:
                    d4 = D0.d(i35, (List) unsafe.getObject(obj, j5));
                    i32 = i4 + d4;
                    z4 = true;
                    i31 += 3;
                    i34 = i39;
                case 25:
                    Class cls4 = D0.f8510a;
                    int size3 = ((List) unsafe.getObject(obj, j5)).size();
                    d4 = size3 == 0 ? 0 : (r.i(i35) + 1) * size3;
                    i32 = i4 + d4;
                    z4 = true;
                    i31 += 3;
                    i34 = i39;
                case 26:
                    i8 = D0.r(i35, (List) unsafe.getObject(obj, j5));
                    z4 = true;
                    i32 = i4 + i8;
                    i31 += 3;
                    i34 = i39;
                case 27:
                    i8 = D0.m(i35, (List) unsafe.getObject(obj, j5), q(i31));
                    z4 = true;
                    i32 = i4 + i8;
                    i31 += 3;
                    i34 = i39;
                case 28:
                    i8 = D0.a(i35, (List) unsafe.getObject(obj, j5));
                    z4 = true;
                    i32 = i4 + i8;
                    i31 += 3;
                    i34 = i39;
                case 29:
                    i8 = D0.s(i35, (List) unsafe.getObject(obj, j5));
                    z4 = true;
                    i32 = i4 + i8;
                    i31 += 3;
                    i34 = i39;
                case 30:
                    d4 = D0.b(i35, (List) unsafe.getObject(obj, j5));
                    i32 = i4 + d4;
                    z4 = true;
                    i31 += 3;
                    i34 = i39;
                case 31:
                    d4 = D0.d(i35, (List) unsafe.getObject(obj, j5));
                    i32 = i4 + d4;
                    z4 = true;
                    i31 += 3;
                    i34 = i39;
                case 32:
                    d4 = D0.f(i35, (List) unsafe.getObject(obj, j5));
                    i32 = i4 + d4;
                    z4 = true;
                    i31 += 3;
                    i34 = i39;
                case 33:
                    d4 = D0.n(i35, (List) unsafe.getObject(obj, j5));
                    i32 = i4 + d4;
                    z4 = true;
                    i31 += 3;
                    i34 = i39;
                case 34:
                    d4 = D0.p(i35, (List) unsafe.getObject(obj, j5));
                    i32 = i4 + d4;
                    z4 = true;
                    i31 += 3;
                    i34 = i39;
                case 35:
                    g4 = D0.g((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 36:
                    g4 = D0.e((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 37:
                    g4 = D0.k((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 38:
                    g4 = D0.v((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 39:
                    g4 = D0.i((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 40:
                    g4 = D0.g((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 41:
                    g4 = D0.e((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 42:
                    Class cls5 = D0.f8510a;
                    g4 = ((List) unsafe.getObject(obj, j5)).size();
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 43:
                    g4 = D0.t((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 44:
                    g4 = D0.c((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 45:
                    g4 = D0.e((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 46:
                    g4 = D0.g((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 47:
                    g4 = D0.o((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 48:
                    g4 = D0.q((List) unsafe.getObject(obj, j5));
                    if (g4 > 0) {
                        if (z6) {
                            unsafe.putInt(obj, i6, g4);
                        }
                        i11 = r.i(i35);
                        k4 = r.k(g4);
                        i32 = k4 + i11 + g4 + i4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 49:
                    List list = (List) unsafe.getObject(obj, j5);
                    C0 q5 = q(i31);
                    Class cls6 = D0.f8510a;
                    int size4 = list.size();
                    if (size4 == 0) {
                        i8 = 0;
                    } else {
                        int i42 = 0;
                        int i43 = 0;
                        while (i42 < size4) {
                            i43 += r.e(i35, (InterfaceC0772p0) list.get(i42), q5);
                            i42++;
                            list = list;
                        }
                        i8 = i43;
                    }
                    z4 = true;
                    i32 = i4 + i8;
                    i31 += 3;
                    i34 = i39;
                case 50:
                    i8 = interfaceC0760j0.b(i35, unsafe.getObject(obj, j5), p(i31));
                    z4 = true;
                    i32 = i4 + i8;
                    i31 += 3;
                    i34 = i39;
                case 51:
                    if (u(i35, i31, obj)) {
                        i12 = r.i(i35);
                        i8 = i12 + 8;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 52:
                    if (u(i35, i31, obj)) {
                        i8 = r.i(i35) + 4;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 53:
                    if (u(i35, i31, obj)) {
                        long E6 = E(j5, obj);
                        i13 = r.i(i35);
                        l5 = r.l(E6);
                        i8 = i13 + l5;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 54:
                    if (u(i35, i31, obj)) {
                        long E7 = E(j5, obj);
                        i13 = r.i(i35);
                        l5 = r.l(E7);
                        i8 = i13 + l5;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 55:
                    if (u(i35, i31, obj)) {
                        int D6 = D(j5, obj);
                        i14 = r.i(i35);
                        f5 = r.f(D6);
                        i8 = f5 + i14;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 56:
                    if (u(i35, i31, obj)) {
                        i8 = r.d(i35);
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 57:
                    if (u(i35, i31, obj)) {
                        b4 = r.c(i35);
                        i32 = i4 + b4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 58:
                    if (u(i35, i31, obj)) {
                        i8 = r.i(i35) + 1;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 59:
                    if (u(i35, i31, obj)) {
                        Object object2 = unsafe.getObject(obj, j5);
                        b4 = object2 instanceof ByteString ? r.b(i35, (ByteString) object2) : r.h((String) object2) + r.i(i35);
                        i32 = i4 + b4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 60:
                    if (u(i35, i31, obj)) {
                        i8 = D0.l(i35, q(i31), unsafe.getObject(obj, j5));
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 61:
                    if (u(i35, i31, obj)) {
                        i8 = r.b(i35, (ByteString) unsafe.getObject(obj, j5));
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 62:
                    if (u(i35, i31, obj)) {
                        i8 = r.j(i35, D(j5, obj));
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 63:
                    if (u(i35, i31, obj)) {
                        int D7 = D(j5, obj);
                        i14 = r.i(i35);
                        f5 = r.f(D7);
                        i8 = f5 + i14;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 64:
                    if (u(i35, i31, obj)) {
                        b4 = r.i(i35) + 4;
                        i32 = i4 + b4;
                        z4 = true;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 65:
                    if (u(i35, i31, obj)) {
                        i12 = r.i(i35);
                        i8 = i12 + 8;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 66:
                    if (u(i35, i31, obj)) {
                        int D8 = D(j5, obj);
                        i14 = r.i(i35);
                        f5 = r.k((D8 >> 31) ^ (D8 << 1));
                        i8 = f5 + i14;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 67:
                    if (u(i35, i31, obj)) {
                        long E8 = E(j5, obj);
                        i13 = r.i(i35);
                        l5 = r.l((E8 >> 63) ^ (E8 << 1));
                        i8 = i13 + l5;
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                case 68:
                    if (u(i35, i31, obj)) {
                        i8 = r.e(i35, (InterfaceC0772p0) unsafe.getObject(obj, j5), q(i31));
                        z4 = true;
                        i32 = i4 + i8;
                        i31 += 3;
                        i34 = i39;
                    }
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
                default:
                    z4 = true;
                    i32 = i4;
                    i31 += 3;
                    i34 = i39;
            }
        }
        int h5 = o02.h(o02.g(obj)) + i32;
        if (this.f8699f) {
            B c4 = this.f8709p.c(obj);
            int i44 = 0;
            int i45 = 0;
            while (true) {
                L0 l02 = c4.f8498a;
                if (i44 < l02.e()) {
                    Map.Entry d6 = l02.d(i44);
                    i45 = B.d((A) d6.getKey(), d6.getValue()) + i45;
                    i44++;
                } else {
                    for (Map.Entry entry : l02.f()) {
                        i45 = B.d((A) entry.getKey(), entry.getValue()) + i45;
                    }
                    h5 += i45;
                }
            }
        }
        return h5;
    }

    @Override // com.google.protobuf.C0
    public final Object i() {
        return this.f8706m.a(this.f8698e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00da, code lost:
        if (r4 != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01f2, code lost:
        if (r4 != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01f5, code lost:
        r8 = 1237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x01f6, code lost:
        r4 = r8;
     */
    @Override // com.google.protobuf.C0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int j(java.lang.Object r11) {
        /*
            Method dump skipped, instructions count: 756
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0777s0.j(java.lang.Object):int");
    }

    public final boolean k(int i4, Object obj, Object obj2) {
        return s(i4, obj) == s(i4, obj2);
    }

    public final Object n(Object obj, int i4, Object obj2, O0 o02, Object obj3) {
        M o4;
        int i5 = this.f8694a[i4];
        Object o5 = X0.o(T(i4) & 1048575, obj);
        if (o5 == null || (o4 = o(i4)) == null) {
            return obj2;
        }
        InterfaceC0760j0 interfaceC0760j0 = this.f8710q;
        MapFieldLite h4 = interfaceC0760j0.h(o5);
        C0756h0 e4 = interfaceC0760j0.e(p(i4));
        Iterator it = h4.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!o4.isInRange(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    obj2 = o02.f(obj3);
                }
                int a4 = C0758i0.a(e4, entry.getKey(), entry.getValue());
                byte[] bArr = new byte[a4];
                Logger logger = r.f8687b;
                C0771p c0771p = new C0771p(bArr, 0, a4);
                try {
                    C0758i0.b(c0771p, e4, entry.getKey(), entry.getValue());
                    if (c0771p.J() != 0) {
                        throw new IllegalStateException("Did not write as much data as expected.");
                    }
                    o02.d(obj2, i5, new ByteString.LiteralByteString(bArr));
                    it.remove();
                } catch (IOException e5) {
                    throw new RuntimeException(e5);
                }
            }
        }
        return obj2;
    }

    public final M o(int i4) {
        return (M) this.f8695b[((i4 / 3) * 2) + 1];
    }

    public final Object p(int i4) {
        return this.f8695b[(i4 / 3) * 2];
    }

    public final C0 q(int i4) {
        int i5 = (i4 / 3) * 2;
        Object[] objArr = this.f8695b;
        C0 c02 = (C0) objArr[i5];
        if (c02 != null) {
            return c02;
        }
        C0 a4 = C0791z0.f8727c.a((Class) objArr[i5 + 1]);
        objArr[i5] = a4;
        return a4;
    }

    public final boolean s(int i4, Object obj) {
        boolean equals;
        int i5 = this.f8694a[i4 + 2];
        long j4 = i5 & 1048575;
        if (j4 != 1048575) {
            return ((1 << (i5 >>> 20)) & X0.m(j4, obj)) != 0;
        }
        int T3 = T(i4);
        long j5 = T3 & 1048575;
        switch ((T3 & 267386880) >>> 20) {
            case 0:
                return Double.doubleToRawLongBits(X0.k(j5, obj)) != 0;
            case 1:
                return Float.floatToRawIntBits(X0.l(j5, obj)) != 0;
            case 2:
                return X0.n(j5, obj) != 0;
            case 3:
                return X0.n(j5, obj) != 0;
            case 4:
                return X0.m(j5, obj) != 0;
            case 5:
                return X0.n(j5, obj) != 0;
            case 6:
                return X0.m(j5, obj) != 0;
            case 7:
                return X0.g(j5, obj);
            case 8:
                Object o4 = X0.o(j5, obj);
                if (o4 instanceof String) {
                    equals = ((String) o4).isEmpty();
                    break;
                } else if (o4 instanceof ByteString) {
                    equals = ByteString.f8505d.equals(o4);
                    break;
                } else {
                    throw new IllegalArgumentException();
                }
            case 9:
                return X0.o(j5, obj) != null;
            case 10:
                equals = ByteString.f8505d.equals(X0.o(j5, obj));
                break;
            case 11:
                return X0.m(j5, obj) != 0;
            case 12:
                return X0.m(j5, obj) != 0;
            case 13:
                return X0.m(j5, obj) != 0;
            case 14:
                return X0.n(j5, obj) != 0;
            case 15:
                return X0.m(j5, obj) != 0;
            case 16:
                return X0.n(j5, obj) != 0;
            case 17:
                return X0.o(j5, obj) != null;
            default:
                throw new IllegalArgumentException();
        }
        return !equals;
    }

    public final boolean u(int i4, int i5, Object obj) {
        return X0.m((long) (this.f8694a[i5 + 2] & 1048575), obj) == i4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0089, code lost:
        r8.put(r1, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x008f, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void w(java.lang.Object r8, int r9, java.lang.Object r10, com.google.protobuf.C0784w r11, com.google.protobuf.C0769o r12) {
        /*
            r7 = this;
            int r9 = r7.T(r9)
            r0 = 1048575(0xfffff, float:1.469367E-39)
            r9 = r9 & r0
            long r0 = (long) r9
            java.lang.Object r9 = com.google.protobuf.X0.o(r0, r8)
            com.google.protobuf.j0 r7 = r7.f8710q
            if (r9 != 0) goto L19
            com.google.protobuf.MapFieldLite r9 = r7.f()
            com.google.protobuf.X0.x(r0, r8, r9)
            goto L2a
        L19:
            boolean r2 = r7.c(r9)
            if (r2 == 0) goto L2a
            com.google.protobuf.MapFieldLite r2 = r7.f()
            r7.a(r2, r9)
            com.google.protobuf.X0.x(r0, r8, r2)
            r9 = r2
        L2a:
            com.google.protobuf.MapFieldLite r8 = r7.h(r9)
            com.google.protobuf.h0 r7 = r7.e(r10)
            r9 = 2
            r12.x(r9)
            com.google.protobuf.n r10 = r12.f8676a
            int r0 = r10.y()
            int r0 = r10.h(r0)
            java.lang.Object r1 = r7.f8644b
            java.lang.Object r2 = r7.f8646d
            r3 = r2
        L45:
            int r4 = r12.a()     // Catch: java.lang.Throwable -> L90
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 == r5) goto L89
            boolean r5 = r10.e()     // Catch: java.lang.Throwable -> L90
            if (r5 == 0) goto L55
            goto L89
        L55:
            r5 = 1
            java.lang.String r6 = "Unable to parse map entry."
            if (r4 == r5) goto L74
            if (r4 == r9) goto L69
            boolean r4 = r12.y()     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L7c java.lang.Throwable -> L90
            if (r4 == 0) goto L63
            goto L45
        L63:
            com.google.protobuf.InvalidProtocolBufferException r4 = new com.google.protobuf.InvalidProtocolBufferException     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L7c java.lang.Throwable -> L90
            r4.<init>(r6)     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L7c java.lang.Throwable -> L90
            throw r4     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L7c java.lang.Throwable -> L90
        L69:
            com.google.protobuf.WireFormat$FieldType r4 = r7.f8645c     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L7c java.lang.Throwable -> L90
            java.lang.Class r5 = r2.getClass()     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L7c java.lang.Throwable -> L90
            java.lang.Object r3 = r12.j(r4, r5, r11)     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L7c java.lang.Throwable -> L90
            goto L45
        L74:
            com.google.protobuf.WireFormat$FieldType r4 = r7.f8643a     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L7c java.lang.Throwable -> L90
            r5 = 0
            java.lang.Object r1 = r12.j(r4, r5, r5)     // Catch: com.google.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L7c java.lang.Throwable -> L90
            goto L45
        L7c:
            boolean r4 = r12.y()     // Catch: java.lang.Throwable -> L90
            if (r4 == 0) goto L83
            goto L45
        L83:
            com.google.protobuf.InvalidProtocolBufferException r7 = new com.google.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L90
            r7.<init>(r6)     // Catch: java.lang.Throwable -> L90
            throw r7     // Catch: java.lang.Throwable -> L90
        L89:
            r8.put(r1, r3)     // Catch: java.lang.Throwable -> L90
            r10.g(r0)
            return
        L90:
            r7 = move-exception
            r10.g(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0777s0.w(java.lang.Object, int, java.lang.Object, com.google.protobuf.w, com.google.protobuf.o):void");
    }

    public final void x(int i4, Object obj, Object obj2) {
        if (s(i4, obj2)) {
            long T3 = T(i4) & 1048575;
            Unsafe unsafe = f8693s;
            Object object = unsafe.getObject(obj2, T3);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f8694a[i4] + " is present but null: " + obj2);
            }
            C0 q4 = q(i4);
            if (!s(i4, obj)) {
                if (t(object)) {
                    Object i5 = q4.i();
                    q4.a(i5, object);
                    unsafe.putObject(obj, T3, i5);
                } else {
                    unsafe.putObject(obj, T3, object);
                }
                O(i4, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, T3);
            if (!t(object2)) {
                Object i6 = q4.i();
                q4.a(i6, object2);
                unsafe.putObject(obj, T3, i6);
                object2 = i6;
            }
            q4.a(object2, object);
        }
    }

    public final void y(int i4, Object obj, Object obj2) {
        int[] iArr;
        int i5 = this.f8694a[i4];
        if (u(i5, i4, obj2)) {
            long T3 = T(i4) & 1048575;
            Unsafe unsafe = f8693s;
            Object object = unsafe.getObject(obj2, T3);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i4] + " is present but null: " + obj2);
            }
            C0 q4 = q(i4);
            if (!u(i5, i4, obj)) {
                if (t(object)) {
                    Object i6 = q4.i();
                    q4.a(i6, object);
                    unsafe.putObject(obj, T3, i6);
                } else {
                    unsafe.putObject(obj, T3, object);
                }
                P(i5, i4, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, T3);
            if (!t(object2)) {
                Object i7 = q4.i();
                q4.a(i7, object2);
                unsafe.putObject(obj, T3, i7);
                object2 = i7;
            }
            q4.a(object2, object);
        }
    }

    public final Object z(int i4, Object obj) {
        C0 q4 = q(i4);
        long T3 = T(i4) & 1048575;
        if (s(i4, obj)) {
            Object object = f8693s.getObject(obj, T3);
            if (t(object)) {
                return object;
            }
            Object i5 = q4.i();
            if (object != null) {
                q4.a(i5, object);
            }
            return i5;
        }
        return q4.i();
    }
}
