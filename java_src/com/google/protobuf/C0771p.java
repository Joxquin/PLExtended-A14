package com.google.protobuf;
/* renamed from: com.google.protobuf.p  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0771p extends r {

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f8680d;

    /* renamed from: e  reason: collision with root package name */
    public final int f8681e;

    /* renamed from: f  reason: collision with root package name */
    public int f8682f;

    public C0771p(byte[] bArr, int i4, int i5) {
        if (bArr == null) {
            throw new NullPointerException("buffer");
        }
        int i6 = i4 + i5;
        if ((i4 | i5 | (bArr.length - i6)) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i4), Integer.valueOf(i5)));
        }
        this.f8680d = bArr;
        this.f8682f = i4;
        this.f8681e = i6;
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
        int i4 = this.f8682f;
        try {
            int k4 = r.k(str.length() * 3);
            int k5 = r.k(str.length());
            int i5 = this.f8681e;
            byte[] bArr = this.f8680d;
            if (k5 == k4) {
                int i6 = i4 + k5;
                this.f8682f = i6;
                int c4 = b1.c(str, bArr, i6, i5 - i6);
                this.f8682f = i4;
                G((c4 - i4) - k5);
                this.f8682f = c4;
            } else {
                G(b1.d(str));
                int i7 = this.f8682f;
                this.f8682f = b1.c(str, bArr, i7, i5 - i7);
            }
        } catch (Utf8$UnpairedSurrogateException e4) {
            this.f8682f = i4;
            m(str, e4);
        } catch (IndexOutOfBoundsException e5) {
            throw new CodedOutputStream$OutOfSpaceException(e5);
        }
    }

    @Override // com.google.protobuf.r
    public final void E(int i4, int i5) {
        G((i4 << 3) | i5);
    }

    @Override // com.google.protobuf.r
    public final void F(int i4, int i5) {
        E(i4, 0);
        G(i5);
    }

    @Override // com.google.protobuf.r
    public final void G(int i4) {
        while (true) {
            int i5 = i4 & (-128);
            byte[] bArr = this.f8680d;
            if (i5 == 0) {
                int i6 = this.f8682f;
                this.f8682f = i6 + 1;
                bArr[i6] = (byte) i4;
                return;
            }
            try {
                int i7 = this.f8682f;
                this.f8682f = i7 + 1;
                bArr[i7] = (byte) ((i4 & 127) | 128);
                i4 >>>= 7;
            } catch (IndexOutOfBoundsException e4) {
                throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8682f), Integer.valueOf(this.f8681e), 1), e4);
            }
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8682f), Integer.valueOf(this.f8681e), 1), e4);
        }
    }

    @Override // com.google.protobuf.r
    public final void H(int i4, long j4) {
        E(i4, 0);
        I(j4);
    }

    @Override // com.google.protobuf.r
    public final void I(long j4) {
        int i4 = this.f8681e;
        byte[] bArr = this.f8680d;
        if (r.f8688c && i4 - this.f8682f >= 10) {
            while ((j4 & (-128)) != 0) {
                int i5 = this.f8682f;
                this.f8682f = i5 + 1;
                X0.q(bArr, i5, (byte) ((((int) j4) & 127) | 128));
                j4 >>>= 7;
            }
            int i6 = this.f8682f;
            this.f8682f = i6 + 1;
            X0.q(bArr, i6, (byte) j4);
            return;
        }
        while ((j4 & (-128)) != 0) {
            try {
                int i7 = this.f8682f;
                this.f8682f = i7 + 1;
                bArr[i7] = (byte) ((((int) j4) & 127) | 128);
                j4 >>>= 7;
            } catch (IndexOutOfBoundsException e4) {
                throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8682f), Integer.valueOf(i4), 1), e4);
            }
        }
        int i8 = this.f8682f;
        this.f8682f = i8 + 1;
        bArr[i8] = (byte) j4;
    }

    public final int J() {
        return this.f8681e - this.f8682f;
    }

    public final void K(byte[] bArr, int i4, int i5) {
        try {
            System.arraycopy(bArr, i4, this.f8680d, this.f8682f, i5);
            this.f8682f += i5;
        } catch (IndexOutOfBoundsException e4) {
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8682f), Integer.valueOf(this.f8681e), Integer.valueOf(i5)), e4);
        }
    }

    @Override // com.google.protobuf.AbstractC0755h
    public final void a(byte[] bArr, int i4, int i5) {
        K(bArr, i4, i5);
    }

    @Override // com.google.protobuf.r
    public final void n(byte b4) {
        try {
            byte[] bArr = this.f8680d;
            int i4 = this.f8682f;
            this.f8682f = i4 + 1;
            bArr[i4] = b4;
        } catch (IndexOutOfBoundsException e4) {
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8682f), Integer.valueOf(this.f8681e), 1), e4);
        }
    }

    @Override // com.google.protobuf.r
    public final void o(int i4, boolean z4) {
        E(i4, 0);
        n(z4 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.protobuf.r
    public final void p(byte[] bArr, int i4) {
        G(i4);
        K(bArr, 0, i4);
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
        E(i4, 5);
        t(i5);
    }

    @Override // com.google.protobuf.r
    public final void t(int i4) {
        try {
            byte[] bArr = this.f8680d;
            int i5 = this.f8682f;
            int i6 = i5 + 1;
            bArr[i5] = (byte) (i4 & 255);
            int i7 = i6 + 1;
            bArr[i6] = (byte) ((i4 >> 8) & 255);
            int i8 = i7 + 1;
            bArr[i7] = (byte) ((i4 >> 16) & 255);
            this.f8682f = i8 + 1;
            bArr[i8] = (byte) ((i4 >> 24) & 255);
        } catch (IndexOutOfBoundsException e4) {
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8682f), Integer.valueOf(this.f8681e), 1), e4);
        }
    }

    @Override // com.google.protobuf.r
    public final void u(int i4, long j4) {
        E(i4, 1);
        v(j4);
    }

    @Override // com.google.protobuf.r
    public final void v(long j4) {
        try {
            byte[] bArr = this.f8680d;
            int i4 = this.f8682f;
            int i5 = i4 + 1;
            bArr[i4] = (byte) (((int) j4) & 255);
            int i6 = i5 + 1;
            bArr[i5] = (byte) (((int) (j4 >> 8)) & 255);
            int i7 = i6 + 1;
            bArr[i6] = (byte) (((int) (j4 >> 16)) & 255);
            int i8 = i7 + 1;
            bArr[i7] = (byte) (((int) (j4 >> 24)) & 255);
            int i9 = i8 + 1;
            bArr[i8] = (byte) (((int) (j4 >> 32)) & 255);
            int i10 = i9 + 1;
            bArr[i9] = (byte) (((int) (j4 >> 40)) & 255);
            int i11 = i10 + 1;
            bArr[i10] = (byte) (((int) (j4 >> 48)) & 255);
            this.f8682f = i11 + 1;
            bArr[i11] = (byte) (((int) (j4 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e4) {
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8682f), Integer.valueOf(this.f8681e), 1), e4);
        }
    }

    @Override // com.google.protobuf.r
    public final void w(int i4, int i5) {
        E(i4, 0);
        x(i5);
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
