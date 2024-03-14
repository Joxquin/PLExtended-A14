package okio;

import kotlin.collections.m;
import kotlin.jvm.internal.h;
import x3.a;
import y3.c;
/* loaded from: classes.dex */
public final class SegmentedByteString extends ByteString {

    /* renamed from: g  reason: collision with root package name */
    public final transient byte[][] f11882g;

    /* renamed from: h  reason: collision with root package name */
    public final transient int[] f11883h;

    public SegmentedByteString(byte[][] bArr, int[] iArr) {
        super(ByteString.f11879f.c());
        this.f11882g = bArr;
        this.f11883h = iArr;
    }

    private final Object writeReplace() {
        return new ByteString(l());
    }

    @Override // okio.ByteString
    public final int d() {
        return this.f11883h[this.f11882g.length - 1];
    }

    @Override // okio.ByteString
    public final String e() {
        return new ByteString(l()).e();
    }

    @Override // okio.ByteString
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ByteString) {
                ByteString byteString = (ByteString) obj;
                if (byteString.d() != d() || !k(byteString, d())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // okio.ByteString
    public final byte[] g() {
        return l();
    }

    @Override // okio.ByteString
    public final byte h(int i4) {
        a.b(this.f11883h[this.f11882g.length - 1], i4, 1L);
        int a4 = c.a(this, i4);
        int i5 = a4 == 0 ? 0 : this.f11883h[a4 - 1];
        int[] iArr = this.f11883h;
        byte[][] bArr = this.f11882g;
        return bArr[a4][(i4 - i5) + iArr[bArr.length + a4]];
    }

    @Override // okio.ByteString
    public final int hashCode() {
        int i4 = this.f11880d;
        if (i4 != 0) {
            return i4;
        }
        int length = this.f11882g.length;
        int i5 = 0;
        int i6 = 1;
        int i7 = 0;
        while (i5 < length) {
            int[] iArr = this.f11883h;
            int i8 = iArr[length + i5];
            int i9 = iArr[i5];
            byte[] bArr = this.f11882g[i5];
            int i10 = (i9 - i7) + i8;
            while (i8 < i10) {
                i6 = (i6 * 31) + bArr[i8];
                i8++;
            }
            i5++;
            i7 = i9;
        }
        this.f11880d = i6;
        return i6;
    }

    @Override // okio.ByteString
    public final boolean i(int i4, int i5, int i6, byte[] other) {
        h.e(other, "other");
        if (i4 < 0 || i4 > d() - i6 || i5 < 0 || i5 > other.length - i6) {
            return false;
        }
        int i7 = i6 + i4;
        int a4 = c.a(this, i4);
        while (i4 < i7) {
            int i8 = a4 == 0 ? 0 : this.f11883h[a4 - 1];
            int[] iArr = this.f11883h;
            int i9 = iArr[this.f11882g.length + a4];
            int min = Math.min(i7, (iArr[a4] - i8) + i8) - i4;
            if (!a.a((i4 - i8) + i9, i5, min, this.f11882g[a4], other)) {
                return false;
            }
            i5 += min;
            i4 += min;
            a4++;
        }
        return true;
    }

    @Override // okio.ByteString
    public final boolean k(ByteString other, int i4) {
        h.e(other, "other");
        if (d() - i4 < 0) {
            return false;
        }
        int i5 = i4 + 0;
        int a4 = c.a(this, 0);
        int i6 = 0;
        int i7 = 0;
        while (i6 < i5) {
            int i8 = a4 == 0 ? 0 : this.f11883h[a4 - 1];
            int[] iArr = this.f11883h;
            int i9 = iArr[this.f11882g.length + a4];
            int min = Math.min(i5, (iArr[a4] - i8) + i8) - i6;
            if (!other.i(i7, (i6 - i8) + i9, min, this.f11882g[a4])) {
                return false;
            }
            i7 += min;
            i6 += min;
            a4++;
        }
        return true;
    }

    public final byte[] l() {
        byte[] bArr = new byte[d()];
        int length = this.f11882g.length;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < length) {
            int[] iArr = this.f11883h;
            int i7 = iArr[length + i4];
            int i8 = iArr[i4];
            int i9 = i8 - i5;
            m.b(i6, i7, i7 + i9, this.f11882g[i4], bArr);
            i6 += i9;
            i4++;
            i5 = i8;
        }
        return bArr;
    }

    @Override // okio.ByteString
    public final String toString() {
        return new ByteString(l()).toString();
    }
}
