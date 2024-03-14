package x3;

import com.android.launcher3.util.C0479l;
import com.android.systemui.shared.system.SysUiStatsLog;
import j.C1080K;
import java.io.Closeable;
import java.io.EOFException;
import java.io.Flushable;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import okio.ByteString;
import okio.SegmentedByteString;
/* loaded from: classes.dex */
public final class b implements c, Closeable, Flushable, WritableByteChannel, Cloneable, ByteChannel {

    /* renamed from: d  reason: collision with root package name */
    public l f12891d;

    /* renamed from: e  reason: collision with root package name */
    public long f12892e;

    public final byte a(long j4) {
        a.b(this.f12892e, j4, 1L);
        l lVar = this.f12891d;
        if (lVar == null) {
            kotlin.jvm.internal.h.b(null);
            throw null;
        }
        long j5 = this.f12892e;
        if (j5 - j4 < j4) {
            while (j5 > j4) {
                lVar = lVar.f12914g;
                kotlin.jvm.internal.h.b(lVar);
                j5 -= lVar.f12910c - lVar.f12909b;
            }
            return lVar.f12908a[(int) ((lVar.f12909b + j4) - j5)];
        }
        long j6 = 0;
        while (true) {
            int i4 = lVar.f12910c;
            int i5 = lVar.f12909b;
            long j7 = (i4 - i5) + j6;
            if (j7 > j4) {
                return lVar.f12908a[(int) ((i5 + j4) - j6)];
            }
            lVar = lVar.f12913f;
            kotlin.jvm.internal.h.b(lVar);
            j6 = j7;
        }
    }

    public final long b(ByteString targetBytes, long j4) {
        int i4;
        int i5;
        int i6;
        int i7;
        kotlin.jvm.internal.h.e(targetBytes, "targetBytes");
        long j5 = 0;
        if (!(j4 >= 0)) {
            throw new IllegalArgumentException(("fromIndex < 0: " + j4).toString());
        }
        l lVar = this.f12891d;
        if (lVar != null) {
            long j6 = this.f12892e;
            if (j6 - j4 < j4) {
                while (j6 > j4) {
                    lVar = lVar.f12914g;
                    kotlin.jvm.internal.h.b(lVar);
                    j6 -= lVar.f12910c - lVar.f12909b;
                }
                if (targetBytes.d() == 2) {
                    byte h4 = targetBytes.h(0);
                    byte h5 = targetBytes.h(1);
                    while (j6 < this.f12892e) {
                        i6 = (int) ((lVar.f12909b + j4) - j6);
                        int i8 = lVar.f12910c;
                        while (i6 < i8) {
                            byte b4 = lVar.f12908a[i6];
                            if (b4 == h4 || b4 == h5) {
                                i7 = lVar.f12909b;
                                return (i6 - i7) + j6;
                            }
                            i6++;
                        }
                        j6 += lVar.f12910c - lVar.f12909b;
                        lVar = lVar.f12913f;
                        kotlin.jvm.internal.h.b(lVar);
                        j4 = j6;
                    }
                } else {
                    byte[] g4 = targetBytes.g();
                    while (j6 < this.f12892e) {
                        i6 = (int) ((lVar.f12909b + j4) - j6);
                        int i9 = lVar.f12910c;
                        while (i6 < i9) {
                            byte b5 = lVar.f12908a[i6];
                            for (byte b6 : g4) {
                                if (b5 == b6) {
                                    i7 = lVar.f12909b;
                                    return (i6 - i7) + j6;
                                }
                            }
                            i6++;
                        }
                        j6 += lVar.f12910c - lVar.f12909b;
                        lVar = lVar.f12913f;
                        kotlin.jvm.internal.h.b(lVar);
                        j4 = j6;
                    }
                }
            } else {
                while (true) {
                    long j7 = (lVar.f12910c - lVar.f12909b) + j5;
                    if (j7 > j4) {
                        break;
                    }
                    lVar = lVar.f12913f;
                    kotlin.jvm.internal.h.b(lVar);
                    j5 = j7;
                }
                if (targetBytes.d() == 2) {
                    byte h6 = targetBytes.h(0);
                    byte h7 = targetBytes.h(1);
                    while (j5 < this.f12892e) {
                        i4 = (int) ((lVar.f12909b + j4) - j5);
                        int i10 = lVar.f12910c;
                        while (i4 < i10) {
                            byte b7 = lVar.f12908a[i4];
                            if (b7 == h6 || b7 == h7) {
                                i5 = lVar.f12909b;
                                return (i4 - i5) + j5;
                            }
                            i4++;
                        }
                        j5 += lVar.f12910c - lVar.f12909b;
                        lVar = lVar.f12913f;
                        kotlin.jvm.internal.h.b(lVar);
                        j4 = j5;
                    }
                } else {
                    byte[] g5 = targetBytes.g();
                    while (j5 < this.f12892e) {
                        i4 = (int) ((lVar.f12909b + j4) - j5);
                        int i11 = lVar.f12910c;
                        while (i4 < i11) {
                            byte b8 = lVar.f12908a[i4];
                            for (byte b9 : g5) {
                                if (b8 == b9) {
                                    i5 = lVar.f12909b;
                                    return (i4 - i5) + j5;
                                }
                            }
                            i4++;
                        }
                        j5 += lVar.f12910c - lVar.f12909b;
                        lVar = lVar.f12913f;
                        kotlin.jvm.internal.h.b(lVar);
                        j4 = j5;
                    }
                }
            }
        }
        return -1L;
    }

    public final byte c() {
        if (this.f12892e != 0) {
            l lVar = this.f12891d;
            kotlin.jvm.internal.h.b(lVar);
            int i4 = lVar.f12909b;
            int i5 = lVar.f12910c;
            int i6 = i4 + 1;
            byte b4 = lVar.f12908a[i4];
            this.f12892e--;
            if (i6 == i5) {
                this.f12891d = lVar.a();
                m.a(lVar);
            } else {
                lVar.f12909b = i6;
            }
            return b4;
        }
        throw new EOFException();
    }

    public final Object clone() {
        b bVar = new b();
        if (this.f12892e != 0) {
            l lVar = this.f12891d;
            kotlin.jvm.internal.h.b(lVar);
            l c4 = lVar.c();
            bVar.f12891d = c4;
            c4.f12914g = c4;
            c4.f12913f = c4;
            for (l lVar2 = lVar.f12913f; lVar2 != lVar; lVar2 = lVar2.f12913f) {
                l lVar3 = c4.f12914g;
                kotlin.jvm.internal.h.b(lVar3);
                kotlin.jvm.internal.h.b(lVar2);
                lVar3.b(lVar2.c());
            }
            bVar.f12892e = this.f12892e;
        }
        return bVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
    }

    public final byte[] d(long j4) {
        int i4 = 0;
        if (!(j4 >= 0 && j4 <= 2147483647L)) {
            throw new IllegalArgumentException(("byteCount: " + j4).toString());
        } else if (this.f12892e >= j4) {
            int i5 = (int) j4;
            byte[] bArr = new byte[i5];
            while (i4 < i5) {
                int read = read(bArr, i4, i5 - i4);
                if (read == -1) {
                    throw new EOFException();
                }
                i4 += read;
            }
            return bArr;
        } else {
            throw new EOFException();
        }
    }

    public final ByteString e() {
        long j4 = this.f12892e;
        if (!(j4 >= 0 && j4 <= 2147483647L)) {
            throw new IllegalArgumentException(("byteCount: " + j4).toString());
        } else if (j4 >= j4) {
            if (j4 >= 4096) {
                ByteString k4 = k((int) j4);
                j(j4);
                return k4;
            }
            return new ByteString(d(j4));
        } else {
            throw new EOFException();
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof b) {
                long j4 = this.f12892e;
                b bVar = (b) obj;
                if (j4 == bVar.f12892e) {
                    if (j4 != 0) {
                        l lVar = this.f12891d;
                        kotlin.jvm.internal.h.b(lVar);
                        l lVar2 = bVar.f12891d;
                        kotlin.jvm.internal.h.b(lVar2);
                        int i4 = lVar.f12909b;
                        int i5 = lVar2.f12909b;
                        long j5 = 0;
                        while (j5 < this.f12892e) {
                            long min = Math.min(lVar.f12910c - i4, lVar2.f12910c - i5);
                            long j6 = 0;
                            while (j6 < min) {
                                int i6 = i4 + 1;
                                byte b4 = lVar.f12908a[i4];
                                int i7 = i5 + 1;
                                if (b4 == lVar2.f12908a[i5]) {
                                    j6++;
                                    i5 = i7;
                                    i4 = i6;
                                }
                            }
                            if (i4 == lVar.f12910c) {
                                l lVar3 = lVar.f12913f;
                                kotlin.jvm.internal.h.b(lVar3);
                                i4 = lVar3.f12909b;
                                lVar = lVar3;
                            }
                            if (i5 == lVar2.f12910c) {
                                lVar2 = lVar2.f12913f;
                                kotlin.jvm.internal.h.b(lVar2);
                                i5 = lVar2.f12909b;
                            }
                            j5 += min;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // x3.c
    public final boolean f(long j4) {
        return this.f12892e >= j4;
    }

    @Override // java.io.Flushable
    public final void flush() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0154, code lost:
        return r2;
     */
    @Override // x3.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long g(x3.b r17, long r18) {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: x3.b.g(x3.b, long):long");
    }

    public final String h(long j4, Charset charset) {
        kotlin.jvm.internal.h.e(charset, "charset");
        int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (!(i4 >= 0 && j4 <= 2147483647L)) {
            throw new IllegalArgumentException(("byteCount: " + j4).toString());
        } else if (this.f12892e >= j4) {
            if (i4 == 0) {
                return "";
            }
            l lVar = this.f12891d;
            kotlin.jvm.internal.h.b(lVar);
            int i5 = lVar.f12909b;
            if (i5 + j4 > lVar.f12910c) {
                return new String(d(j4), charset);
            }
            int i6 = (int) j4;
            String str = new String(lVar.f12908a, i5, i6, charset);
            int i7 = lVar.f12909b + i6;
            lVar.f12909b = i7;
            this.f12892e -= j4;
            if (i7 == lVar.f12910c) {
                this.f12891d = lVar.a();
                m.a(lVar);
            }
            return str;
        } else {
            throw new EOFException();
        }
    }

    public final int hashCode() {
        l lVar = this.f12891d;
        if (lVar == null) {
            return 0;
        }
        int i4 = 1;
        do {
            int i5 = lVar.f12910c;
            for (int i6 = lVar.f12909b; i6 < i5; i6++) {
                i4 = (i4 * 31) + lVar.f12908a[i6];
            }
            lVar = lVar.f12913f;
            kotlin.jvm.internal.h.b(lVar);
        } while (lVar != this.f12891d);
        return i4;
    }

    public final String i(long j4) {
        return h(j4, s3.b.f12286a);
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    public final void j(long j4) {
        while (j4 > 0) {
            l lVar = this.f12891d;
            if (lVar == null) {
                throw new EOFException();
            }
            int min = (int) Math.min(j4, lVar.f12910c - lVar.f12909b);
            long j5 = min;
            this.f12892e -= j5;
            j4 -= j5;
            int i4 = lVar.f12909b + min;
            lVar.f12909b = i4;
            if (i4 == lVar.f12910c) {
                this.f12891d = lVar.a();
                m.a(lVar);
            }
        }
    }

    public final ByteString k(int i4) {
        if (i4 == 0) {
            return ByteString.f11879f;
        }
        a.b(this.f12892e, 0L, i4);
        l lVar = this.f12891d;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i6 < i4) {
            kotlin.jvm.internal.h.b(lVar);
            int i8 = lVar.f12910c;
            int i9 = lVar.f12909b;
            if (i8 == i9) {
                throw new AssertionError("s.limit == s.pos");
            }
            i6 += i8 - i9;
            i7++;
            lVar = lVar.f12913f;
        }
        byte[][] bArr = new byte[i7];
        int[] iArr = new int[i7 * 2];
        l lVar2 = this.f12891d;
        int i10 = 0;
        while (i5 < i4) {
            kotlin.jvm.internal.h.b(lVar2);
            bArr[i10] = lVar2.f12908a;
            i5 += lVar2.f12910c - lVar2.f12909b;
            iArr[i10] = Math.min(i5, i4);
            iArr[i10 + i7] = lVar2.f12909b;
            lVar2.f12911d = true;
            i10++;
            lVar2 = lVar2.f12913f;
        }
        return new SegmentedByteString(bArr, iArr);
    }

    public final l l(int i4) {
        boolean z4 = true;
        if ((i4 < 1 || i4 > 8192) ? false : false) {
            l lVar = this.f12891d;
            if (lVar == null) {
                l b4 = m.b();
                this.f12891d = b4;
                b4.f12914g = b4;
                b4.f12913f = b4;
                return b4;
            }
            l lVar2 = lVar.f12914g;
            kotlin.jvm.internal.h.b(lVar2);
            if (lVar2.f12910c + i4 > 8192 || !lVar2.f12912e) {
                l b5 = m.b();
                lVar2.b(b5);
                return b5;
            }
            return lVar2;
        }
        throw new IllegalArgumentException("unexpected capacity".toString());
    }

    @Override // x3.c
    public final b m() {
        return this;
    }

    public final void n(int i4) {
        l l4 = l(4);
        int i5 = l4.f12910c;
        int i6 = i5 + 1;
        byte[] bArr = l4.f12908a;
        bArr[i5] = (byte) ((i4 >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((i4 >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((i4 >>> 8) & 255);
        bArr[i8] = (byte) (i4 & 255);
        l4.f12910c = i8 + 1;
        this.f12892e += 4;
    }

    public final void o(String str, int i4, int i5) {
        char charAt;
        if (!(i4 >= 0)) {
            throw new IllegalArgumentException(C1080K.a("beginIndex < 0: ", i4).toString());
        }
        if (!(i5 >= i4)) {
            throw new IllegalArgumentException(C0479l.a("endIndex < beginIndex: ", i5, " < ", i4).toString());
        }
        if (!(i5 <= str.length())) {
            throw new IllegalArgumentException(C0479l.a("endIndex > string.length: ", i5, " > ", str.length()).toString());
        }
        while (i4 < i5) {
            char charAt2 = str.charAt(i4);
            if (charAt2 < 128) {
                l l4 = l(1);
                int i6 = l4.f12910c - i4;
                int min = Math.min(i5, 8192 - i6);
                int i7 = i4 + 1;
                byte[] bArr = l4.f12908a;
                bArr[i4 + i6] = (byte) charAt2;
                while (true) {
                    i4 = i7;
                    if (i4 >= min || (charAt = str.charAt(i4)) >= 128) {
                        break;
                    }
                    i7 = i4 + 1;
                    bArr[i4 + i6] = (byte) charAt;
                }
                int i8 = l4.f12910c;
                int i9 = (i6 + i4) - i8;
                l4.f12910c = i8 + i9;
                this.f12892e += i9;
            } else {
                if (charAt2 < 2048) {
                    l l5 = l(2);
                    int i10 = l5.f12910c;
                    byte[] bArr2 = l5.f12908a;
                    bArr2[i10] = (byte) ((charAt2 >> 6) | 192);
                    bArr2[i10 + 1] = (byte) ((charAt2 & '?') | 128);
                    l5.f12910c = i10 + 2;
                    this.f12892e += 2;
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    l l6 = l(3);
                    int i11 = l6.f12910c;
                    byte[] bArr3 = l6.f12908a;
                    bArr3[i11] = (byte) ((charAt2 >> '\f') | SysUiStatsLog.BACK_GESTURE_REPORTED_REPORTED);
                    bArr3[i11 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                    bArr3[i11 + 2] = (byte) ((charAt2 & '?') | 128);
                    l6.f12910c = i11 + 3;
                    this.f12892e += 3;
                } else {
                    int i12 = i4 + 1;
                    char charAt3 = i12 < i5 ? str.charAt(i12) : (char) 0;
                    if (charAt2 <= 56319) {
                        if (56320 <= charAt3 && charAt3 < 57344) {
                            int i13 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                            l l7 = l(4);
                            int i14 = l7.f12910c;
                            byte[] bArr4 = l7.f12908a;
                            bArr4[i14] = (byte) ((i13 >> 18) | 240);
                            bArr4[i14 + 1] = (byte) (((i13 >> 12) & 63) | 128);
                            bArr4[i14 + 2] = (byte) (((i13 >> 6) & 63) | 128);
                            bArr4[i14 + 3] = (byte) ((i13 & 63) | 128);
                            l7.f12910c = i14 + 4;
                            this.f12892e += 4;
                            i4 += 2;
                        }
                    }
                    l l8 = l(1);
                    int i15 = l8.f12910c;
                    l8.f12910c = i15 + 1;
                    l8.f12908a[i15] = (byte) 63;
                    this.f12892e++;
                    i4 = i12;
                }
                i4++;
            }
        }
    }

    @Override // x3.c
    public final long p(ByteString targetBytes) {
        kotlin.jvm.internal.h.e(targetBytes, "targetBytes");
        return b(targetBytes, 0L);
    }

    @Override // x3.c
    public final int q(h options) {
        kotlin.jvm.internal.h.e(options, "options");
        int a4 = y3.a.a(this, options, false);
        if (a4 == -1) {
            return -1;
        }
        j(options.f12896d[a4].d());
        return a4;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer sink) {
        kotlin.jvm.internal.h.e(sink, "sink");
        l lVar = this.f12891d;
        if (lVar == null) {
            return -1;
        }
        int min = Math.min(sink.remaining(), lVar.f12910c - lVar.f12909b);
        sink.put(lVar.f12908a, lVar.f12909b, min);
        int i4 = lVar.f12909b + min;
        lVar.f12909b = i4;
        this.f12892e -= min;
        if (i4 == lVar.f12910c) {
            this.f12891d = lVar.a();
            m.a(lVar);
        }
        return min;
    }

    public final String toString() {
        long j4 = this.f12892e;
        if (j4 <= 2147483647L) {
            return k((int) j4).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + j4).toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer source) {
        kotlin.jvm.internal.h.e(source, "source");
        int remaining = source.remaining();
        int i4 = remaining;
        while (i4 > 0) {
            l l4 = l(1);
            int min = Math.min(i4, 8192 - l4.f12910c);
            source.get(l4.f12908a, l4.f12910c, min);
            i4 -= min;
            l4.f12910c += min;
        }
        this.f12892e += remaining;
        return remaining;
    }

    public final int read(byte[] sink, int i4, int i5) {
        kotlin.jvm.internal.h.e(sink, "sink");
        a.b(sink.length, i4, i5);
        l lVar = this.f12891d;
        if (lVar == null) {
            return -1;
        }
        int min = Math.min(i5, lVar.f12910c - lVar.f12909b);
        int i6 = lVar.f12909b;
        kotlin.collections.m.b(i4, i6, i6 + min, lVar.f12908a, sink);
        int i7 = lVar.f12909b + min;
        lVar.f12909b = i7;
        this.f12892e -= min;
        if (i7 == lVar.f12910c) {
            this.f12891d = lVar.a();
            m.a(lVar);
        }
        return min;
    }
}
