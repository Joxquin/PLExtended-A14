package Y2;

import X2.T;
import java.io.InputStream;
/* loaded from: classes.dex */
public final class d extends InputStream implements T {

    /* renamed from: d  reason: collision with root package name */
    public byte[][] f2323d;

    /* renamed from: e  reason: collision with root package name */
    public byte[] f2324e;

    /* renamed from: f  reason: collision with root package name */
    public int f2325f;

    /* renamed from: g  reason: collision with root package name */
    public int f2326g;

    /* renamed from: h  reason: collision with root package name */
    public int f2327h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f2328i;

    public d(byte[] bArr) {
        this.f2323d = null;
        this.f2324e = bArr.length > 0 ? bArr : null;
        this.f2327h = bArr.length;
    }

    public final void a() {
        int i4 = this.f2325f + 1;
        this.f2325f = i4;
        this.f2326g = 0;
        byte[][] bArr = this.f2323d;
        if (bArr == null || i4 >= bArr.length) {
            this.f2324e = null;
        } else {
            this.f2324e = bArr[i4];
        }
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f2327h;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f2328i) {
            return;
        }
        this.f2328i = true;
        byte[][] bArr = this.f2323d;
        if (bArr != null) {
            for (byte[] bArr2 : bArr) {
                e.a(bArr2);
            }
        } else {
            byte[] bArr3 = this.f2324e;
            if (bArr3 != null) {
                e.a(bArr3);
            }
        }
        this.f2324e = null;
        this.f2323d = null;
    }

    @Override // java.io.InputStream
    public final int read() {
        byte[] bArr = this.f2324e;
        if (bArr != null) {
            int i4 = this.f2326g;
            int i5 = i4 + 1;
            this.f2326g = i5;
            byte b4 = bArr[i4];
            this.f2327h--;
            if (i5 == bArr.length) {
                a();
            }
            return b4;
        }
        return -1;
    }

    public d(byte[][] bArr, int i4) {
        this.f2323d = bArr;
        this.f2327h = i4;
        if (bArr.length > 0) {
            this.f2324e = bArr[0];
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i4, int i5) {
        int i6 = i5;
        while (true) {
            byte[] bArr2 = this.f2324e;
            if (bArr2 == null) {
                break;
            }
            int[] iArr = {i6, bArr2.length - this.f2326g, this.f2327h};
            int i7 = iArr[0];
            for (int i8 = 1; i8 < 3; i8++) {
                int i9 = iArr[i8];
                if (i9 < i7) {
                    i7 = i9;
                }
            }
            System.arraycopy(this.f2324e, this.f2326g, bArr, i4, i7);
            i4 += i7;
            i6 -= i7;
            this.f2327h -= i7;
            if (i6 == 0) {
                int i10 = this.f2326g + i7;
                this.f2326g = i10;
                if (i10 == this.f2324e.length) {
                    a();
                }
            } else {
                a();
            }
        }
        int i11 = i5 - i6;
        if (i11 > 0 || this.f2327h > 0) {
            return i11;
        }
        return -1;
    }
}
