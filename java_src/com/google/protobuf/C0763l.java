package com.google.protobuf;

import com.google.protobuf.ByteString;
import java.util.Arrays;
/* renamed from: com.google.protobuf.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0763l extends AbstractC0767n {

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f8654e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f8655f;

    /* renamed from: g  reason: collision with root package name */
    public int f8656g;

    /* renamed from: h  reason: collision with root package name */
    public int f8657h;

    /* renamed from: i  reason: collision with root package name */
    public int f8658i;

    /* renamed from: j  reason: collision with root package name */
    public final int f8659j;

    /* renamed from: k  reason: collision with root package name */
    public int f8660k;

    /* renamed from: l  reason: collision with root package name */
    public int f8661l = Integer.MAX_VALUE;

    public C0763l(byte[] bArr, int i4, int i5, boolean z4) {
        this.f8654e = bArr;
        this.f8656g = i5 + i4;
        this.f8658i = i4;
        this.f8659j = i4;
        this.f8655f = z4;
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final boolean A(int i4) {
        int x4;
        int i5 = i4 & 7;
        int i6 = 0;
        if (i5 == 0) {
            int i7 = this.f8656g - this.f8658i;
            byte[] bArr = this.f8654e;
            if (i7 >= 10) {
                while (i6 < 10) {
                    int i8 = this.f8658i;
                    this.f8658i = i8 + 1;
                    if (bArr[i8] < 0) {
                        i6++;
                    }
                }
                throw InvalidProtocolBufferException.e();
            }
            while (i6 < 10) {
                int i9 = this.f8658i;
                if (i9 == this.f8656g) {
                    throw InvalidProtocolBufferException.j();
                }
                this.f8658i = i9 + 1;
                if (bArr[i9] < 0) {
                    i6++;
                }
            }
            throw InvalidProtocolBufferException.e();
            return true;
        } else if (i5 == 1) {
            G(8);
            return true;
        } else if (i5 == 2) {
            G(D());
            return true;
        } else if (i5 != 3) {
            if (i5 != 4) {
                if (i5 == 5) {
                    G(4);
                    return true;
                }
                throw InvalidProtocolBufferException.d();
            }
            return false;
        } else {
            do {
                x4 = x();
                if (x4 == 0) {
                    break;
                }
            } while (A(x4));
            a(((i4 >>> 3) << 3) | 4);
            return true;
        }
    }

    public final int B() {
        int i4 = this.f8658i;
        if (this.f8656g - i4 >= 4) {
            this.f8658i = i4 + 4;
            byte[] bArr = this.f8654e;
            return ((bArr[i4 + 3] & 255) << 24) | (bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16);
        }
        throw InvalidProtocolBufferException.j();
    }

    public final long C() {
        int i4 = this.f8658i;
        if (this.f8656g - i4 >= 8) {
            this.f8658i = i4 + 8;
            byte[] bArr = this.f8654e;
            return ((bArr[i4 + 1] & 255) << 8) | (bArr[i4] & 255) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 3] & 255) << 24) | ((bArr[i4 + 4] & 255) << 32) | ((bArr[i4 + 5] & 255) << 40) | ((bArr[i4 + 6] & 255) << 48) | ((bArr[i4 + 7] & 255) << 56);
        }
        throw InvalidProtocolBufferException.j();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        if (r3[r2] < 0) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int D() {
        /*
            r5 = this;
            int r0 = r5.f8658i
            int r1 = r5.f8656g
            if (r1 != r0) goto L7
            goto L6a
        L7:
            int r2 = r0 + 1
            byte[] r3 = r5.f8654e
            r0 = r3[r0]
            if (r0 < 0) goto L12
            r5.f8658i = r2
            return r0
        L12:
            int r1 = r1 - r2
            r4 = 9
            if (r1 >= r4) goto L18
            goto L6a
        L18:
            int r1 = r2 + 1
            r2 = r3[r2]
            int r2 = r2 << 7
            r0 = r0 ^ r2
            if (r0 >= 0) goto L24
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L70
        L24:
            int r2 = r1 + 1
            r1 = r3[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L31
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L2f:
            r1 = r2
            goto L70
        L31:
            int r1 = r2 + 1
            r2 = r3[r2]
            int r2 = r2 << 21
            r0 = r0 ^ r2
            if (r0 >= 0) goto L3f
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L70
        L3f:
            int r2 = r1 + 1
            r1 = r3[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L2f
            int r1 = r2 + 1
            r2 = r3[r2]
            if (r2 >= 0) goto L70
            int r2 = r1 + 1
            r1 = r3[r1]
            if (r1 >= 0) goto L2f
            int r1 = r2 + 1
            r2 = r3[r2]
            if (r2 >= 0) goto L70
            int r2 = r1 + 1
            r1 = r3[r1]
            if (r1 >= 0) goto L2f
            int r1 = r2 + 1
            r2 = r3[r2]
            if (r2 >= 0) goto L70
        L6a:
            long r0 = r5.F()
            int r5 = (int) r0
            return r5
        L70:
            r5.f8658i = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0763l.D():int");
    }

    public final long E() {
        long j4;
        long j5;
        long j6;
        int i4;
        int i5 = this.f8658i;
        int i6 = this.f8656g;
        if (i6 != i5) {
            int i7 = i5 + 1;
            byte[] bArr = this.f8654e;
            byte b4 = bArr[i5];
            if (b4 >= 0) {
                this.f8658i = i7;
                return b4;
            } else if (i6 - i7 >= 9) {
                int i8 = i7 + 1;
                int i9 = b4 ^ (bArr[i7] << 7);
                if (i9 >= 0) {
                    int i10 = i8 + 1;
                    int i11 = i9 ^ (bArr[i8] << 14);
                    if (i11 >= 0) {
                        j4 = i11 ^ 16256;
                    } else {
                        i8 = i10 + 1;
                        int i12 = i11 ^ (bArr[i10] << 21);
                        if (i12 >= 0) {
                            long j7 = i12;
                            int i13 = i8 + 1;
                            long j8 = (bArr[i8] << 28) ^ j7;
                            if (j8 >= 0) {
                                j5 = j8 ^ 266354560;
                                i8 = i13;
                            } else {
                                int i14 = i13 + 1;
                                long j9 = j8 ^ (bArr[i13] << 35);
                                if (j9 < 0) {
                                    j6 = -34093383808L;
                                } else {
                                    i10 = i14 + 1;
                                    long j10 = j9 ^ (bArr[i14] << 42);
                                    if (j10 >= 0) {
                                        j4 = j10 ^ 4363953127296L;
                                    } else {
                                        i14 = i10 + 1;
                                        j9 = j10 ^ (bArr[i10] << 49);
                                        if (j9 < 0) {
                                            j6 = -558586000294016L;
                                        } else {
                                            i10 = i14 + 1;
                                            j4 = (j9 ^ (bArr[i14] << 56)) ^ 71499008037633920L;
                                            if (j4 < 0) {
                                                i14 = i10 + 1;
                                                if (bArr[i10] >= 0) {
                                                    j5 = j4;
                                                    i8 = i14;
                                                }
                                            }
                                        }
                                    }
                                }
                                j5 = j6 ^ j9;
                                i8 = i14;
                            }
                            this.f8658i = i8;
                            return j5;
                        }
                        i4 = i12 ^ (-2080896);
                    }
                    i8 = i10;
                    j5 = j4;
                    this.f8658i = i8;
                    return j5;
                }
                i4 = i9 ^ (-128);
                j5 = i4;
                this.f8658i = i8;
                return j5;
            }
        }
        return F();
    }

    public final long F() {
        long j4 = 0;
        for (int i4 = 0; i4 < 64; i4 += 7) {
            int i5 = this.f8658i;
            if (i5 == this.f8656g) {
                throw InvalidProtocolBufferException.j();
            }
            this.f8658i = i5 + 1;
            byte b4 = this.f8654e[i5];
            j4 |= (b4 & Byte.MAX_VALUE) << i4;
            if ((b4 & 128) == 0) {
                return j4;
            }
        }
        throw InvalidProtocolBufferException.e();
    }

    public final void G(int i4) {
        if (i4 >= 0) {
            int i5 = this.f8656g;
            int i6 = this.f8658i;
            if (i4 <= i5 - i6) {
                this.f8658i = i6 + i4;
                return;
            }
        }
        if (i4 >= 0) {
            throw InvalidProtocolBufferException.j();
        }
        throw InvalidProtocolBufferException.f();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final void a(int i4) {
        if (this.f8660k != i4) {
            throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int d() {
        return this.f8658i - this.f8659j;
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final boolean e() {
        return this.f8658i == this.f8656g;
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final void g(int i4) {
        this.f8661l = i4;
        int i5 = this.f8656g + this.f8657h;
        this.f8656g = i5;
        int i6 = i5 - this.f8659j;
        if (i6 <= i4) {
            this.f8657h = 0;
            return;
        }
        int i7 = i6 - i4;
        this.f8657h = i7;
        this.f8656g = i5 - i7;
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int h(int i4) {
        if (i4 >= 0) {
            int i5 = this.f8658i;
            int i6 = this.f8659j;
            int i7 = (i5 - i6) + i4;
            if (i7 >= 0) {
                int i8 = this.f8661l;
                if (i7 <= i8) {
                    this.f8661l = i7;
                    int i9 = this.f8656g + this.f8657h;
                    this.f8656g = i9;
                    int i10 = i9 - i6;
                    if (i10 > i7) {
                        int i11 = i10 - i7;
                        this.f8657h = i11;
                        this.f8656g = i9 - i11;
                    } else {
                        this.f8657h = 0;
                    }
                    return i8;
                }
                throw InvalidProtocolBufferException.j();
            }
            throw InvalidProtocolBufferException.g();
        }
        throw InvalidProtocolBufferException.f();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final boolean i() {
        return E() != 0;
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final ByteString j() {
        byte[] bArr;
        int D3 = D();
        byte[] bArr2 = this.f8654e;
        if (D3 > 0) {
            int i4 = this.f8656g;
            int i5 = this.f8658i;
            if (D3 <= i4 - i5) {
                ByteString j4 = ByteString.j(bArr2, i5, D3);
                this.f8658i += D3;
                return j4;
            }
        }
        if (D3 == 0) {
            return ByteString.f8505d;
        }
        if (D3 > 0) {
            int i6 = this.f8656g;
            int i7 = this.f8658i;
            if (D3 <= i6 - i7) {
                int i8 = D3 + i7;
                this.f8658i = i8;
                bArr = Arrays.copyOfRange(bArr2, i7, i8);
                ByteString byteString = ByteString.f8505d;
                return new ByteString.LiteralByteString(bArr);
            }
        }
        if (D3 <= 0) {
            if (D3 == 0) {
                bArr = T.f8578b;
                ByteString byteString2 = ByteString.f8505d;
                return new ByteString.LiteralByteString(bArr);
            }
            throw InvalidProtocolBufferException.f();
        }
        throw InvalidProtocolBufferException.j();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final double k() {
        return Double.longBitsToDouble(C());
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int l() {
        return D();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int m() {
        return B();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final long n() {
        return C();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final float o() {
        return Float.intBitsToFloat(B());
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int p() {
        return D();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final long q() {
        return E();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int r() {
        return B();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final long s() {
        return C();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int t() {
        return AbstractC0767n.b(D());
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final long u() {
        return AbstractC0767n.c(E());
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final String v() {
        int D3 = D();
        if (D3 > 0) {
            int i4 = this.f8656g;
            int i5 = this.f8658i;
            if (D3 <= i4 - i5) {
                String str = new String(this.f8654e, i5, D3, T.f8577a);
                this.f8658i += D3;
                return str;
            }
        }
        if (D3 == 0) {
            return "";
        }
        if (D3 < 0) {
            throw InvalidProtocolBufferException.f();
        }
        throw InvalidProtocolBufferException.j();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final String w() {
        int D3 = D();
        if (D3 > 0) {
            int i4 = this.f8656g;
            int i5 = this.f8658i;
            if (D3 <= i4 - i5) {
                String b4 = b1.b(this.f8654e, i5, D3);
                this.f8658i += D3;
                return b4;
            }
        }
        if (D3 == 0) {
            return "";
        }
        if (D3 <= 0) {
            throw InvalidProtocolBufferException.f();
        }
        throw InvalidProtocolBufferException.j();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int x() {
        if (e()) {
            this.f8660k = 0;
            return 0;
        }
        int D3 = D();
        this.f8660k = D3;
        if ((D3 >>> 3) != 0) {
            return D3;
        }
        throw InvalidProtocolBufferException.b();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int y() {
        return D();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final long z() {
        return E();
    }
}
