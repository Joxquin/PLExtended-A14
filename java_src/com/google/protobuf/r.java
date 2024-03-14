package com.google.protobuf;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public abstract class r extends AbstractC0755h {

    /* renamed from: b  reason: collision with root package name */
    public static final Logger f8687b = Logger.getLogger(r.class.getName());

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f8688c = X0.f8619e;

    /* renamed from: a  reason: collision with root package name */
    public C0776s f8689a;

    public static int b(int i4, ByteString byteString) {
        int i5 = i(i4);
        int size = byteString.size();
        return k(size) + size + i5;
    }

    public static int c(int i4) {
        return i(i4) + 4;
    }

    public static int d(int i4) {
        return i(i4) + 8;
    }

    @Deprecated
    public static int e(int i4, InterfaceC0772p0 interfaceC0772p0, C0 c02) {
        return ((AbstractC0743b) interfaceC0772p0).getSerializedSize(c02) + (i(i4) * 2);
    }

    public static int f(int i4) {
        if (i4 >= 0) {
            return k(i4);
        }
        return 10;
    }

    public static int g(X x4) {
        int size = x4.f8614b != null ? x4.f8614b.size() : x4.f8613a != null ? x4.f8613a.getSerializedSize() : 0;
        return k(size) + size;
    }

    public static int h(String str) {
        int length;
        try {
            length = b1.d(str);
        } catch (Utf8$UnpairedSurrogateException unused) {
            length = str.getBytes(T.f8577a).length;
        }
        return k(length) + length;
    }

    public static int i(int i4) {
        return k((i4 << 3) | 0);
    }

    public static int j(int i4, int i5) {
        return k(i5) + i(i4);
    }

    public static int k(int i4) {
        if ((i4 & (-128)) == 0) {
            return 1;
        }
        if ((i4 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i4) == 0) {
            return 3;
        }
        return (i4 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int l(long j4) {
        int i4;
        if (((-128) & j4) == 0) {
            return 1;
        }
        if (j4 < 0) {
            return 10;
        }
        if (((-34359738368L) & j4) != 0) {
            j4 >>>= 28;
            i4 = 6;
        } else {
            i4 = 2;
        }
        if (((-2097152) & j4) != 0) {
            i4 += 2;
            j4 >>>= 14;
        }
        return (j4 & (-16384)) != 0 ? i4 + 1 : i4;
    }

    public abstract void A(int i4, InterfaceC0772p0 interfaceC0772p0);

    public abstract void B(int i4, ByteString byteString);

    public abstract void C(int i4, String str);

    public abstract void D(String str);

    public abstract void E(int i4, int i5);

    public abstract void F(int i4, int i5);

    public abstract void G(int i4);

    public abstract void H(int i4, long j4);

    public abstract void I(long j4);

    public final void m(String str, Utf8$UnpairedSurrogateException utf8$UnpairedSurrogateException) {
        f8687b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) utf8$UnpairedSurrogateException);
        byte[] bytes = str.getBytes(T.f8577a);
        try {
            G(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (IndexOutOfBoundsException e4) {
            throw new CodedOutputStream$OutOfSpaceException(e4);
        }
    }

    public abstract void n(byte b4);

    public abstract void o(int i4, boolean z4);

    public abstract void p(byte[] bArr, int i4);

    public abstract void q(int i4, ByteString byteString);

    public abstract void r(ByteString byteString);

    public abstract void s(int i4, int i5);

    public abstract void t(int i4);

    public abstract void u(int i4, long j4);

    public abstract void v(long j4);

    public abstract void w(int i4, int i5);

    public abstract void x(int i4);

    public abstract void y(int i4, InterfaceC0772p0 interfaceC0772p0, C0 c02);

    public abstract void z(InterfaceC0772p0 interfaceC0772p0);
}
