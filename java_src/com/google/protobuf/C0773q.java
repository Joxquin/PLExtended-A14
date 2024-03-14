package com.google.protobuf;

import java.io.OutputStream;
/* renamed from: com.google.protobuf.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0773q extends r {

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f8683d;

    /* renamed from: e  reason: collision with root package name */
    public final int f8684e;

    /* renamed from: f  reason: collision with root package name */
    public int f8685f;

    /* renamed from: g  reason: collision with root package name */
    public final OutputStream f8686g;

    public C0773q(OutputStream outputStream, int i4) {
        if (i4 < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        int max = Math.max(i4, 20);
        this.f8683d = new byte[max];
        this.f8684e = max;
        this.f8686g = outputStream;
    }

    @Override // com.google.protobuf.r
    public final void A(int i4, InterfaceC0772p0 interfaceC0772p0) {
        E(1, 3);
        F(2, i4);
        E(3, 2);
        z(interfaceC0772p0);
        E(1, 4);
    }

    @Override // com.google.protobuf.r
    public final void B(int i4, ByteString byteString) {
        E(1, 3);
        F(2, i4);
        q(3, byteString);
        E(1, 4);
    }

    @Override // com.google.protobuf.r
    public final void C(int i4, String str) {
        E(i4, 2);
        D(str);
    }

    @Override // com.google.protobuf.r
    public final void D(String str) {
        try {
            int length = str.length() * 3;
            int k4 = r.k(length);
            int i4 = k4 + length;
            int i5 = this.f8684e;
            if (i4 > i5) {
                byte[] bArr = new byte[length];
                int c4 = b1.c(str, bArr, 0, length);
                G(c4);
                Q(bArr, 0, c4);
                return;
            }
            if (i4 > i5 - this.f8685f) {
                O();
            }
            int k5 = r.k(str.length());
            int i6 = this.f8685f;
            byte[] bArr2 = this.f8683d;
            try {
                try {
                    if (k5 == k4) {
                        int i7 = i6 + k5;
                        this.f8685f = i7;
                        int c5 = b1.c(str, bArr2, i7, i5 - i7);
                        this.f8685f = i6;
                        M((c5 - i6) - k5);
                        this.f8685f = c5;
                    } else {
                        int d4 = b1.d(str);
                        M(d4);
                        this.f8685f = b1.c(str, bArr2, this.f8685f, d4);
                    }
                } catch (Utf8$UnpairedSurrogateException e4) {
                    this.f8685f = i6;
                    throw e4;
                }
            } catch (ArrayIndexOutOfBoundsException e5) {
                throw new CodedOutputStream$OutOfSpaceException(e5);
            }
        } catch (Utf8$UnpairedSurrogateException e6) {
            m(str, e6);
        }
    }

    @Override // com.google.protobuf.r
    public final void E(int i4, int i5) {
        G((i4 << 3) | i5);
    }

    @Override // com.google.protobuf.r
    public final void F(int i4, int i5) {
        P(20);
        L(i4, 0);
        M(i5);
    }

    @Override // com.google.protobuf.r
    public final void G(int i4) {
        P(5);
        M(i4);
    }

    @Override // com.google.protobuf.r
    public final void H(int i4, long j4) {
        P(20);
        L(i4, 0);
        N(j4);
    }

    @Override // com.google.protobuf.r
    public final void I(long j4) {
        P(10);
        N(j4);
    }

    public final void J(int i4) {
        int i5 = this.f8685f;
        int i6 = i5 + 1;
        byte[] bArr = this.f8683d;
        bArr[i5] = (byte) (i4 & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((i4 >> 8) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((i4 >> 16) & 255);
        this.f8685f = i8 + 1;
        bArr[i8] = (byte) ((i4 >> 24) & 255);
    }

    public final void K(long j4) {
        int i4 = this.f8685f;
        int i5 = i4 + 1;
        byte[] bArr = this.f8683d;
        bArr[i4] = (byte) (j4 & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j4 >> 8) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j4 >> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) (255 & (j4 >> 24));
        int i9 = i8 + 1;
        bArr[i8] = (byte) (((int) (j4 >> 32)) & 255);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (((int) (j4 >> 40)) & 255);
        int i11 = i10 + 1;
        bArr[i10] = (byte) (((int) (j4 >> 48)) & 255);
        this.f8685f = i11 + 1;
        bArr[i11] = (byte) (((int) (j4 >> 56)) & 255);
    }

    public final void L(int i4, int i5) {
        M((i4 << 3) | i5);
    }

    public final void M(int i4) {
        boolean z4 = r.f8688c;
        byte[] bArr = this.f8683d;
        if (z4) {
            while ((i4 & (-128)) != 0) {
                int i5 = this.f8685f;
                this.f8685f = i5 + 1;
                X0.q(bArr, i5, (byte) ((i4 & 127) | 128));
                i4 >>>= 7;
            }
            int i6 = this.f8685f;
            this.f8685f = i6 + 1;
            X0.q(bArr, i6, (byte) i4);
            return;
        }
        while ((i4 & (-128)) != 0) {
            int i7 = this.f8685f;
            this.f8685f = i7 + 1;
            bArr[i7] = (byte) ((i4 & 127) | 128);
            i4 >>>= 7;
        }
        int i8 = this.f8685f;
        this.f8685f = i8 + 1;
        bArr[i8] = (byte) i4;
    }

    public final void N(long j4) {
        boolean z4 = r.f8688c;
        byte[] bArr = this.f8683d;
        if (z4) {
            while ((j4 & (-128)) != 0) {
                int i4 = this.f8685f;
                this.f8685f = i4 + 1;
                X0.q(bArr, i4, (byte) ((((int) j4) & 127) | 128));
                j4 >>>= 7;
            }
            int i5 = this.f8685f;
            this.f8685f = i5 + 1;
            X0.q(bArr, i5, (byte) j4);
            return;
        }
        while ((j4 & (-128)) != 0) {
            int i6 = this.f8685f;
            this.f8685f = i6 + 1;
            bArr[i6] = (byte) ((((int) j4) & 127) | 128);
            j4 >>>= 7;
        }
        int i7 = this.f8685f;
        this.f8685f = i7 + 1;
        bArr[i7] = (byte) j4;
    }

    public final void O() {
        this.f8686g.write(this.f8683d, 0, this.f8685f);
        this.f8685f = 0;
    }

    public final void P(int i4) {
        if (this.f8684e - this.f8685f < i4) {
            O();
        }
    }

    public final void Q(byte[] bArr, int i4, int i5) {
        int i6 = this.f8685f;
        int i7 = this.f8684e;
        int i8 = i7 - i6;
        byte[] bArr2 = this.f8683d;
        if (i8 >= i5) {
            System.arraycopy(bArr, i4, bArr2, i6, i5);
            this.f8685f += i5;
            return;
        }
        System.arraycopy(bArr, i4, bArr2, i6, i8);
        int i9 = i4 + i8;
        int i10 = i5 - i8;
        this.f8685f = i7;
        O();
        if (i10 > i7) {
            this.f8686g.write(bArr, i9, i10);
            return;
        }
        System.arraycopy(bArr, i9, bArr2, 0, i10);
        this.f8685f = i10;
    }

    @Override // com.google.protobuf.AbstractC0755h
    public final void a(byte[] bArr, int i4, int i5) {
        Q(bArr, i4, i5);
    }

    @Override // com.google.protobuf.r
    public final void n(byte b4) {
        if (this.f8685f == this.f8684e) {
            O();
        }
        int i4 = this.f8685f;
        this.f8685f = i4 + 1;
        this.f8683d[i4] = b4;
    }

    @Override // com.google.protobuf.r
    public final void o(int i4, boolean z4) {
        P(11);
        L(i4, 0);
        byte b4 = z4 ? (byte) 1 : (byte) 0;
        int i5 = this.f8685f;
        this.f8685f = i5 + 1;
        this.f8683d[i5] = b4;
    }

    @Override // com.google.protobuf.r
    public final void p(byte[] bArr, int i4) {
        G(i4);
        Q(bArr, 0, i4);
    }

    @Override // com.google.protobuf.r
    public final void q(int i4, ByteString byteString) {
        E(i4, 2);
        r(byteString);
    }

    @Override // com.google.protobuf.r
    public final void r(ByteString byteString) {
        G(byteString.size());
        byteString.s(this);
    }

    @Override // com.google.protobuf.r
    public final void s(int i4, int i5) {
        P(14);
        L(i4, 5);
        J(i5);
    }

    @Override // com.google.protobuf.r
    public final void t(int i4) {
        P(4);
        J(i4);
    }

    @Override // com.google.protobuf.r
    public final void u(int i4, long j4) {
        P(18);
        L(i4, 1);
        K(j4);
    }

    @Override // com.google.protobuf.r
    public final void v(long j4) {
        P(8);
        K(j4);
    }

    @Override // com.google.protobuf.r
    public final void w(int i4, int i5) {
        P(20);
        L(i4, 0);
        if (i5 >= 0) {
            M(i5);
        } else {
            N(i5);
        }
    }

    @Override // com.google.protobuf.r
    public final void x(int i4) {
        if (i4 >= 0) {
            G(i4);
        } else {
            I(i4);
        }
    }

    @Override // com.google.protobuf.r
    public final void y(int i4, InterfaceC0772p0 interfaceC0772p0, C0 c02) {
        E(i4, 2);
        G(((AbstractC0743b) interfaceC0772p0).getSerializedSize(c02));
        c02.b(interfaceC0772p0, this.f8689a);
    }

    @Override // com.google.protobuf.r
    public final void z(InterfaceC0772p0 interfaceC0772p0) {
        G(interfaceC0772p0.getSerializedSize());
        interfaceC0772p0.writeTo(this);
    }
}
