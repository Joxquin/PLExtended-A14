package com.google.protobuf;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class Q0 extends O0 {
    @Override // com.google.protobuf.O0
    public final void a(int i4, int i5, Object obj) {
        ((P0) obj).c((i4 << 3) | 5, Integer.valueOf(i5));
    }

    @Override // com.google.protobuf.O0
    public final void b(int i4, long j4, Object obj) {
        ((P0) obj).c((i4 << 3) | 1, Long.valueOf(j4));
    }

    @Override // com.google.protobuf.O0
    public final void c(int i4, Object obj, Object obj2) {
        ((P0) obj).c((i4 << 3) | 3, (P0) obj2);
    }

    @Override // com.google.protobuf.O0
    public final void d(Object obj, int i4, ByteString byteString) {
        ((P0) obj).c((i4 << 3) | 2, byteString);
    }

    @Override // com.google.protobuf.O0
    public final void e(int i4, long j4, Object obj) {
        ((P0) obj).c((i4 << 3) | 0, Long.valueOf(j4));
    }

    @Override // com.google.protobuf.O0
    public final P0 f(Object obj) {
        J j4 = (J) obj;
        P0 p02 = j4.unknownFields;
        if (p02 == P0.f8566f) {
            P0 p03 = new P0();
            j4.unknownFields = p03;
            return p03;
        }
        return p02;
    }

    @Override // com.google.protobuf.O0
    public final P0 g(Object obj) {
        return ((J) obj).unknownFields;
    }

    @Override // com.google.protobuf.O0
    public final int h(Object obj) {
        return ((P0) obj).b();
    }

    @Override // com.google.protobuf.O0
    public final int i(Object obj) {
        P0 p02 = (P0) obj;
        int i4 = p02.f8570d;
        if (i4 != -1) {
            return i4;
        }
        int i5 = 0;
        for (int i6 = 0; i6 < p02.f8567a; i6++) {
            i5 += r.b(3, (ByteString) p02.f8569c[i6]) + r.j(2, p02.f8568b[i6] >>> 3) + (r.i(1) * 2);
        }
        p02.f8570d = i5;
        return i5;
    }

    @Override // com.google.protobuf.O0
    public final void j(Object obj) {
        ((J) obj).unknownFields.f8571e = false;
    }

    @Override // com.google.protobuf.O0
    public final P0 k(Object obj, Object obj2) {
        P0 p02 = (P0) obj;
        P0 p03 = (P0) obj2;
        P0 p04 = P0.f8566f;
        if (p04.equals(p03)) {
            return p02;
        }
        if (p04.equals(p02)) {
            int i4 = p02.f8567a + p03.f8567a;
            int[] copyOf = Arrays.copyOf(p02.f8568b, i4);
            System.arraycopy(p03.f8568b, 0, copyOf, p02.f8567a, p03.f8567a);
            Object[] copyOf2 = Arrays.copyOf(p02.f8569c, i4);
            System.arraycopy(p03.f8569c, 0, copyOf2, p02.f8567a, p03.f8567a);
            return new P0(i4, copyOf, copyOf2, true);
        }
        p02.getClass();
        if (p03.equals(p04)) {
            return p02;
        }
        if (p02.f8571e) {
            int i5 = p02.f8567a + p03.f8567a;
            p02.a(i5);
            System.arraycopy(p03.f8568b, 0, p02.f8568b, p02.f8567a, p03.f8567a);
            System.arraycopy(p03.f8569c, 0, p02.f8569c, p02.f8567a, p03.f8567a);
            p02.f8567a = i5;
            return p02;
        }
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.O0
    public final P0 m() {
        return new P0();
    }

    @Override // com.google.protobuf.O0
    public final void n(Object obj, Object obj2) {
        ((J) obj).unknownFields = (P0) obj2;
    }

    @Override // com.google.protobuf.O0
    public final void o(Object obj, Object obj2) {
        ((J) obj).unknownFields = (P0) obj2;
    }

    @Override // com.google.protobuf.O0
    public final void p() {
    }

    @Override // com.google.protobuf.O0
    public final P0 q(Object obj) {
        P0 p02 = (P0) obj;
        p02.f8571e = false;
        return p02;
    }

    @Override // com.google.protobuf.O0
    public final void r(Object obj, C0776s c0776s) {
        P0 p02 = (P0) obj;
        p02.getClass();
        c0776s.getClass();
        for (int i4 = 0; i4 < p02.f8567a; i4++) {
            c0776s.g(p02.f8568b[i4] >>> 3, p02.f8569c[i4]);
        }
    }

    @Override // com.google.protobuf.O0
    public final void s(Object obj, C0776s c0776s) {
        ((P0) obj).d(c0776s);
    }
}
