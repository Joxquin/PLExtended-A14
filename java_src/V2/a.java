package V2;

import java.io.IOException;
import java.io.RandomAccessFile;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public RandomAccessFile f1861a;

    /* renamed from: b  reason: collision with root package name */
    public final int[] f1862b;

    /* renamed from: c  reason: collision with root package name */
    public int f1863c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f1864d = 0;

    /* renamed from: e  reason: collision with root package name */
    public int f1865e = 0;

    /* renamed from: f  reason: collision with root package name */
    public int f1866f = 0;

    /* renamed from: g  reason: collision with root package name */
    public int f1867g = 0;

    public a(String str) {
        this.f1861a = null;
        this.f1862b = null;
        int i4 = 0;
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "r");
        this.f1861a = randomAccessFile;
        try {
            byte[] bArr = new byte[2048];
            randomAccessFile.readFully(bArr);
            this.f1862b = new int[512];
            int i5 = 0;
            while (i4 < 256) {
                int i6 = i5 + 1;
                int i7 = i6 + 1;
                int i8 = (bArr[i5] & 255) | ((bArr[i6] & 255) << 8);
                int i9 = i7 + 1;
                int i10 = i8 | ((bArr[i7] & 255) << 16);
                int i11 = i9 + 1;
                int i12 = i10 | ((bArr[i9] & 255) << 24);
                int i13 = i11 + 1;
                int i14 = i13 + 1;
                int i15 = ((bArr[i13] & 255) << 8) | (bArr[i11] & 255);
                int i16 = i14 + 1;
                int i17 = i15 | ((bArr[i14] & 255) << 16);
                int i18 = i16 + 1;
                int i19 = i17 | ((bArr[i16] & 255) << 24);
                int[] iArr = this.f1862b;
                int i20 = i4 << 1;
                iArr[i20] = i12;
                iArr[i20 + 1] = i19;
                i4++;
                i5 = i18;
            }
        } catch (IOException unused) {
            this.f1862b = null;
        }
    }

    public final synchronized byte[] a(byte[] bArr) {
        boolean z4;
        if (this.f1862b == null) {
            return null;
        }
        if (this.f1863c == 0) {
            long j4 = 5381;
            for (byte b4 : bArr) {
                j4 = ((j4 + ((j4 << 5) & 4294967295L)) & 4294967295L) ^ ((b4 + 256) & 255);
            }
            int i4 = (int) (j4 & 4294967295L);
            int[] iArr = this.f1862b;
            int i5 = (i4 & 255) << 1;
            int i6 = iArr[i5 + 1];
            this.f1865e = i6;
            if (i6 == 0) {
                return null;
            }
            int i7 = iArr[i5];
            this.f1866f = i7;
            this.f1864d = i4;
            this.f1867g = i7 + (((i4 >>> 8) % i6) << 3);
        }
        while (this.f1863c < this.f1865e) {
            try {
                this.f1861a.seek(this.f1867g);
                int readUnsignedByte = this.f1861a.readUnsignedByte() | (this.f1861a.readUnsignedByte() << 8) | (this.f1861a.readUnsignedByte() << 16) | (this.f1861a.readUnsignedByte() << 24);
                int readUnsignedByte2 = this.f1861a.readUnsignedByte() | (this.f1861a.readUnsignedByte() << 8) | (this.f1861a.readUnsignedByte() << 16) | (this.f1861a.readUnsignedByte() << 24);
                if (readUnsignedByte2 == 0) {
                    return null;
                }
                this.f1863c++;
                int i8 = this.f1867g + 8;
                this.f1867g = i8;
                int i9 = this.f1866f;
                if (i8 == (this.f1865e << 3) + i9) {
                    this.f1867g = i9;
                }
                if (readUnsignedByte == this.f1864d) {
                    this.f1861a.seek(readUnsignedByte2);
                    int readUnsignedByte3 = this.f1861a.readUnsignedByte() | (this.f1861a.readUnsignedByte() << 8) | (this.f1861a.readUnsignedByte() << 16) | (this.f1861a.readUnsignedByte() << 24);
                    if (readUnsignedByte3 == bArr.length) {
                        int readUnsignedByte4 = this.f1861a.readUnsignedByte() | (this.f1861a.readUnsignedByte() << 8) | (this.f1861a.readUnsignedByte() << 16) | (this.f1861a.readUnsignedByte() << 24);
                        byte[] bArr2 = new byte[readUnsignedByte3];
                        this.f1861a.readFully(bArr2);
                        int i10 = 0;
                        while (true) {
                            if (i10 >= readUnsignedByte3) {
                                z4 = true;
                                break;
                            } else if (bArr2[i10] != bArr[i10]) {
                                z4 = false;
                                break;
                            } else {
                                i10++;
                            }
                        }
                        if (z4) {
                            byte[] bArr3 = new byte[readUnsignedByte4];
                            this.f1861a.readFully(bArr3);
                            return bArr3;
                        }
                    }
                }
            } catch (IOException unused) {
                return null;
            }
        }
        return null;
    }
}
