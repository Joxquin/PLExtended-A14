package com.google.protobuf;
/* loaded from: classes.dex */
public abstract class O0 {
    public abstract void a(int i4, int i5, Object obj);

    public abstract void b(int i4, long j4, Object obj);

    public abstract void c(int i4, Object obj, Object obj2);

    public abstract void d(Object obj, int i4, ByteString byteString);

    public abstract void e(int i4, long j4, Object obj);

    public abstract P0 f(Object obj);

    public abstract P0 g(Object obj);

    public abstract int h(Object obj);

    public abstract int i(Object obj);

    public abstract void j(Object obj);

    public abstract P0 k(Object obj, Object obj2);

    public final boolean l(Object obj, C0769o c0769o) {
        int i4 = c0769o.f8677b;
        int i5 = i4 >>> 3;
        int i6 = i4 & 7;
        AbstractC0767n abstractC0767n = c0769o.f8676a;
        if (i6 == 0) {
            c0769o.x(0);
            e(i5, abstractC0767n.q(), obj);
            return true;
        } else if (i6 == 1) {
            c0769o.x(1);
            b(i5, abstractC0767n.n(), obj);
            return true;
        } else if (i6 == 2) {
            d(obj, i5, c0769o.f());
            return true;
        } else if (i6 != 3) {
            if (i6 != 4) {
                if (i6 == 5) {
                    c0769o.x(5);
                    a(i5, abstractC0767n.m(), obj);
                    return true;
                }
                throw InvalidProtocolBufferException.d();
            }
            return false;
        } else {
            P0 m4 = m();
            int i7 = (i5 << 3) | 4;
            while (c0769o.a() != Integer.MAX_VALUE && l(m4, c0769o)) {
            }
            if (i7 == c0769o.f8677b) {
                c(i5, obj, q(m4));
                return true;
            }
            throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
        }
    }

    public abstract P0 m();

    public abstract void n(Object obj, Object obj2);

    public abstract void o(Object obj, Object obj2);

    public abstract void p();

    public abstract P0 q(Object obj);

    public abstract void r(Object obj, C0776s c0776s);

    public abstract void s(Object obj, C0776s c0776s);
}
