package com.google.protobuf;

import com.google.protobuf.ByteString;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.protobuf.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0765m extends AbstractC0767n {

    /* renamed from: e  reason: collision with root package name */
    public final InputStream f8664e;

    /* renamed from: f  reason: collision with root package name */
    public final byte[] f8665f;

    /* renamed from: g  reason: collision with root package name */
    public int f8666g;

    /* renamed from: h  reason: collision with root package name */
    public int f8667h;

    /* renamed from: i  reason: collision with root package name */
    public int f8668i;

    /* renamed from: j  reason: collision with root package name */
    public int f8669j;

    /* renamed from: k  reason: collision with root package name */
    public int f8670k;

    /* renamed from: l  reason: collision with root package name */
    public int f8671l = Integer.MAX_VALUE;

    public C0765m(InputStream inputStream) {
        Charset charset = T.f8577a;
        this.f8664e = inputStream;
        this.f8665f = new byte[4096];
        this.f8666g = 0;
        this.f8668i = 0;
        this.f8670k = 0;
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final boolean A(int i4) {
        int x4;
        int i5 = i4 & 7;
        int i6 = 0;
        if (i5 == 0) {
            int i7 = this.f8666g - this.f8668i;
            byte[] bArr = this.f8665f;
            if (i7 >= 10) {
                while (i6 < 10) {
                    int i8 = this.f8668i;
                    this.f8668i = i8 + 1;
                    if (bArr[i8] < 0) {
                        i6++;
                    }
                }
                throw InvalidProtocolBufferException.e();
            }
            while (i6 < 10) {
                if (this.f8668i == this.f8666g) {
                    K(1);
                }
                int i9 = this.f8668i;
                this.f8668i = i9 + 1;
                if (bArr[i9] < 0) {
                    i6++;
                }
            }
            throw InvalidProtocolBufferException.e();
            return true;
        } else if (i5 == 1) {
            L(8);
            return true;
        } else if (i5 == 2) {
            L(G());
            return true;
        } else if (i5 != 3) {
            if (i5 != 4) {
                if (i5 == 5) {
                    L(4);
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

    public final byte[] B(int i4) {
        byte[] C3 = C(i4);
        if (C3 != null) {
            return C3;
        }
        int i5 = this.f8668i;
        int i6 = this.f8666g;
        int i7 = i6 - i5;
        this.f8670k += i6;
        this.f8668i = 0;
        this.f8666g = 0;
        List D3 = D(i4 - i7);
        byte[] bArr = new byte[i4];
        System.arraycopy(this.f8665f, i5, bArr, 0, i7);
        Iterator it = ((ArrayList) D3).iterator();
        while (it.hasNext()) {
            byte[] bArr2 = (byte[]) it.next();
            System.arraycopy(bArr2, 0, bArr, i7, bArr2.length);
            i7 += bArr2.length;
        }
        return bArr;
    }

    public final byte[] C(int i4) {
        if (i4 == 0) {
            return T.f8578b;
        }
        if (i4 >= 0) {
            int i5 = this.f8670k;
            int i6 = this.f8668i;
            int i7 = i5 + i6 + i4;
            if (i7 - this.f8674c <= 0) {
                int i8 = this.f8671l;
                if (i7 > i8) {
                    L((i8 - i5) - i6);
                    throw InvalidProtocolBufferException.j();
                }
                int i9 = this.f8666g - i6;
                int i10 = i4 - i9;
                InputStream inputStream = this.f8664e;
                if (i10 >= 4096) {
                    try {
                        if (i10 > inputStream.available()) {
                            return null;
                        }
                    } catch (InvalidProtocolBufferException e4) {
                        e4.h();
                        throw e4;
                    }
                }
                byte[] bArr = new byte[i4];
                System.arraycopy(this.f8665f, this.f8668i, bArr, 0, i9);
                this.f8670k += this.f8666g;
                this.f8668i = 0;
                this.f8666g = 0;
                while (i9 < i4) {
                    try {
                        int read = inputStream.read(bArr, i9, i4 - i9);
                        if (read == -1) {
                            throw InvalidProtocolBufferException.j();
                        }
                        this.f8670k += read;
                        i9 += read;
                    } catch (InvalidProtocolBufferException e5) {
                        e5.h();
                        throw e5;
                    }
                }
                return bArr;
            }
            throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        throw InvalidProtocolBufferException.f();
    }

    public final List D(int i4) {
        ArrayList arrayList = new ArrayList();
        while (i4 > 0) {
            int min = Math.min(i4, 4096);
            byte[] bArr = new byte[min];
            int i5 = 0;
            while (i5 < min) {
                int read = this.f8664e.read(bArr, i5, min - i5);
                if (read == -1) {
                    throw InvalidProtocolBufferException.j();
                }
                this.f8670k += read;
                i5 += read;
            }
            i4 -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    public final int E() {
        int i4 = this.f8668i;
        if (this.f8666g - i4 < 4) {
            K(4);
            i4 = this.f8668i;
        }
        this.f8668i = i4 + 4;
        byte[] bArr = this.f8665f;
        return ((bArr[i4 + 3] & 255) << 24) | (bArr[i4] & 255) | ((bArr[i4 + 1] & 255) << 8) | ((bArr[i4 + 2] & 255) << 16);
    }

    public final long F() {
        int i4 = this.f8668i;
        if (this.f8666g - i4 < 8) {
            K(8);
            i4 = this.f8668i;
        }
        this.f8668i = i4 + 8;
        byte[] bArr = this.f8665f;
        return ((bArr[i4 + 1] & 255) << 8) | (bArr[i4] & 255) | ((bArr[i4 + 2] & 255) << 16) | ((bArr[i4 + 3] & 255) << 24) | ((bArr[i4 + 4] & 255) << 32) | ((bArr[i4 + 5] & 255) << 40) | ((bArr[i4 + 6] & 255) << 48) | ((bArr[i4 + 7] & 255) << 56);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0068, code lost:
        if (r3[r2] < 0) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int G() {
        /*
            r5 = this;
            int r0 = r5.f8668i
            int r1 = r5.f8666g
            if (r1 != r0) goto L7
            goto L6a
        L7:
            int r2 = r0 + 1
            byte[] r3 = r5.f8665f
            r0 = r3[r0]
            if (r0 < 0) goto L12
            r5.f8668i = r2
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
            long r0 = r5.I()
            int r5 = (int) r0
            return r5
        L70:
            r5.f8668i = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C0765m.G():int");
    }

    public final long H() {
        long j4;
        long j5;
        long j6;
        int i4;
        int i5 = this.f8668i;
        int i6 = this.f8666g;
        if (i6 != i5) {
            int i7 = i5 + 1;
            byte[] bArr = this.f8665f;
            byte b4 = bArr[i5];
            if (b4 >= 0) {
                this.f8668i = i7;
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
                            this.f8668i = i8;
                            return j5;
                        }
                        i4 = i12 ^ (-2080896);
                    }
                    i8 = i10;
                    j5 = j4;
                    this.f8668i = i8;
                    return j5;
                }
                i4 = i9 ^ (-128);
                j5 = i4;
                this.f8668i = i8;
                return j5;
            }
        }
        return I();
    }

    public final long I() {
        long j4 = 0;
        for (int i4 = 0; i4 < 64; i4 += 7) {
            if (this.f8668i == this.f8666g) {
                K(1);
            }
            int i5 = this.f8668i;
            this.f8668i = i5 + 1;
            byte b4 = this.f8665f[i5];
            j4 |= (b4 & Byte.MAX_VALUE) << i4;
            if ((b4 & 128) == 0) {
                return j4;
            }
        }
        throw InvalidProtocolBufferException.e();
    }

    public final void J() {
        int i4 = this.f8666g + this.f8667h;
        this.f8666g = i4;
        int i5 = this.f8670k + i4;
        int i6 = this.f8671l;
        if (i5 <= i6) {
            this.f8667h = 0;
            return;
        }
        int i7 = i5 - i6;
        this.f8667h = i7;
        this.f8666g = i4 - i7;
    }

    public final void K(int i4) {
        if (M(i4)) {
            return;
        }
        if (i4 <= (this.f8674c - this.f8670k) - this.f8668i) {
            throw InvalidProtocolBufferException.j();
        }
        throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public final void L(int i4) {
        int i5 = this.f8666g;
        int i6 = this.f8668i;
        if (i4 <= i5 - i6 && i4 >= 0) {
            this.f8668i = i6 + i4;
            return;
        }
        InputStream inputStream = this.f8664e;
        if (i4 < 0) {
            throw InvalidProtocolBufferException.f();
        }
        int i7 = this.f8670k;
        int i8 = i7 + i6;
        int i9 = i8 + i4;
        int i10 = this.f8671l;
        if (i9 > i10) {
            L((i10 - i7) - i6);
            throw InvalidProtocolBufferException.j();
        }
        this.f8670k = i8;
        int i11 = i5 - i6;
        this.f8666g = 0;
        this.f8668i = 0;
        while (i11 < i4) {
            long j4 = i4 - i11;
            try {
                try {
                    long skip = inputStream.skip(j4);
                    int i12 = (skip > 0L ? 1 : (skip == 0L ? 0 : -1));
                    if (i12 < 0 || skip > j4) {
                        throw new IllegalStateException(inputStream.getClass() + "#skip returned invalid result: " + skip + "\nThe InputStream implementation is buggy.");
                    } else if (i12 == 0) {
                        break;
                    } else {
                        i11 += (int) skip;
                    }
                } catch (InvalidProtocolBufferException e4) {
                    e4.h();
                    throw e4;
                }
            } catch (Throwable th) {
                this.f8670k += i11;
                J();
                throw th;
            }
        }
        this.f8670k += i11;
        J();
        if (i11 >= i4) {
            return;
        }
        int i13 = this.f8666g;
        int i14 = i13 - this.f8668i;
        this.f8668i = i13;
        K(1);
        while (true) {
            int i15 = i4 - i14;
            int i16 = this.f8666g;
            if (i15 <= i16) {
                this.f8668i = i15;
                return;
            }
            i14 += i16;
            this.f8668i = i16;
            K(1);
        }
    }

    public final boolean M(int i4) {
        InputStream inputStream;
        int i5 = this.f8668i;
        int i6 = i5 + i4;
        int i7 = this.f8666g;
        if (i6 <= i7) {
            throw new IllegalStateException("refillBuffer() called when " + i4 + " bytes were already available in buffer");
        }
        int i8 = this.f8674c;
        int i9 = this.f8670k;
        if (i4 <= (i8 - i9) - i5 && i9 + i5 + i4 <= this.f8671l) {
            byte[] bArr = this.f8665f;
            if (i5 > 0) {
                if (i7 > i5) {
                    System.arraycopy(bArr, i5, bArr, 0, i7 - i5);
                }
                this.f8670k += i5;
                this.f8666g -= i5;
                this.f8668i = 0;
            }
            int i10 = this.f8666g;
            int min = Math.min(bArr.length - i10, (this.f8674c - this.f8670k) - i10);
            try {
                int read = this.f8664e.read(bArr, i10, min);
                if (read == 0 || read < -1 || read > bArr.length) {
                    throw new IllegalStateException(inputStream.getClass() + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
                } else if (read > 0) {
                    this.f8666g += read;
                    J();
                    if (this.f8666g >= i4) {
                        return true;
                    }
                    return M(i4);
                } else {
                    return false;
                }
            } catch (InvalidProtocolBufferException e4) {
                e4.h();
                throw e4;
            }
        }
        return false;
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final void a(int i4) {
        if (this.f8669j != i4) {
            throw new InvalidProtocolBufferException("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int d() {
        return this.f8670k + this.f8668i;
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final boolean e() {
        return this.f8668i == this.f8666g && !M(1);
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final void g(int i4) {
        this.f8671l = i4;
        J();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int h(int i4) {
        if (i4 >= 0) {
            int i5 = this.f8670k + this.f8668i + i4;
            int i6 = this.f8671l;
            if (i5 <= i6) {
                this.f8671l = i5;
                J();
                return i6;
            }
            throw InvalidProtocolBufferException.j();
        }
        throw InvalidProtocolBufferException.f();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final boolean i() {
        return H() != 0;
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final ByteString j() {
        int G3 = G();
        int i4 = this.f8666g;
        int i5 = this.f8668i;
        int i6 = i4 - i5;
        byte[] bArr = this.f8665f;
        if (G3 <= i6 && G3 > 0) {
            ByteString j4 = ByteString.j(bArr, i5, G3);
            this.f8668i += G3;
            return j4;
        } else if (G3 == 0) {
            return ByteString.f8505d;
        } else {
            byte[] C3 = C(G3);
            if (C3 != null) {
                return ByteString.j(C3, 0, C3.length);
            }
            int i7 = this.f8668i;
            int i8 = this.f8666g;
            int i9 = i8 - i7;
            this.f8670k += i8;
            this.f8668i = 0;
            this.f8666g = 0;
            List D3 = D(G3 - i9);
            byte[] bArr2 = new byte[G3];
            System.arraycopy(bArr, i7, bArr2, 0, i9);
            Iterator it = ((ArrayList) D3).iterator();
            while (it.hasNext()) {
                byte[] bArr3 = (byte[]) it.next();
                System.arraycopy(bArr3, 0, bArr2, i9, bArr3.length);
                i9 += bArr3.length;
            }
            ByteString byteString = ByteString.f8505d;
            return new ByteString.LiteralByteString(bArr2);
        }
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final double k() {
        return Double.longBitsToDouble(F());
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int l() {
        return G();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int m() {
        return E();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final long n() {
        return F();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final float o() {
        return Float.intBitsToFloat(E());
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int p() {
        return G();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final long q() {
        return H();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int r() {
        return E();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final long s() {
        return F();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int t() {
        return AbstractC0767n.b(G());
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final long u() {
        return AbstractC0767n.c(H());
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final String v() {
        int G3 = G();
        byte[] bArr = this.f8665f;
        if (G3 > 0) {
            int i4 = this.f8666g;
            int i5 = this.f8668i;
            if (G3 <= i4 - i5) {
                String str = new String(bArr, i5, G3, T.f8577a);
                this.f8668i += G3;
                return str;
            }
        }
        if (G3 == 0) {
            return "";
        }
        if (G3 <= this.f8666g) {
            K(G3);
            String str2 = new String(bArr, this.f8668i, G3, T.f8577a);
            this.f8668i += G3;
            return str2;
        }
        return new String(B(G3), T.f8577a);
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final String w() {
        int G3 = G();
        int i4 = this.f8668i;
        int i5 = this.f8666g;
        int i6 = i5 - i4;
        byte[] bArr = this.f8665f;
        if (G3 <= i6 && G3 > 0) {
            this.f8668i = i4 + G3;
        } else if (G3 == 0) {
            return "";
        } else {
            i4 = 0;
            if (G3 <= i5) {
                K(G3);
                this.f8668i = G3 + 0;
            } else {
                bArr = B(G3);
            }
        }
        return b1.b(bArr, i4, G3);
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int x() {
        if (e()) {
            this.f8669j = 0;
            return 0;
        }
        int G3 = G();
        this.f8669j = G3;
        if ((G3 >>> 3) != 0) {
            return G3;
        }
        throw InvalidProtocolBufferException.b();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final int y() {
        return G();
    }

    @Override // com.google.protobuf.AbstractC0767n
    public final long z() {
        return H();
    }
}
