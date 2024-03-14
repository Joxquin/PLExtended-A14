package okio;

import j.C1080K;
import java.io.EOFException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.Arrays;
import kotlin.jvm.internal.h;
import s3.b;
import x3.a;
/* loaded from: classes.dex */
public class ByteString implements Serializable, Comparable {

    /* renamed from: f  reason: collision with root package name */
    public static final ByteString f11879f = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;

    /* renamed from: d  reason: collision with root package name */
    public transient int f11880d;
    private final byte[] data;

    /* renamed from: e  reason: collision with root package name */
    public transient String f11881e;

    public ByteString(byte[] data) {
        h.e(data, "data");
        this.data = data;
    }

    public static final ByteString a(String str) {
        byte[] bytes = str.getBytes(b.f12286a);
        h.d(bytes, "this as java.lang.String).getBytes(charset)");
        ByteString byteString = new ByteString(bytes);
        byteString.f11881e = str;
        return byteString;
    }

    private final void readObject(ObjectInputStream objectInputStream) {
        int readInt = objectInputStream.readInt();
        int i4 = 0;
        if (!(readInt >= 0)) {
            throw new IllegalArgumentException(C1080K.a("byteCount < 0: ", readInt).toString());
        }
        byte[] bArr = new byte[readInt];
        while (i4 < readInt) {
            int read = objectInputStream.read(bArr, i4, readInt - i4);
            if (read == -1) {
                throw new EOFException();
            }
            i4 += read;
        }
        ByteString byteString = new ByteString(bArr);
        Field declaredField = ByteString.class.getDeclaredField("data");
        declaredField.setAccessible(true);
        declaredField.set(this, byteString.data);
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    public final byte[] c() {
        return this.data;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0032 A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int compareTo(java.lang.Object r8) {
        /*
            r7 = this;
            okio.ByteString r8 = (okio.ByteString) r8
            java.lang.String r0 = "other"
            kotlin.jvm.internal.h.e(r8, r0)
            int r0 = r7.d()
            int r1 = r8.d()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = r3
        L15:
            if (r4 >= r2) goto L2b
            byte r5 = r7.h(r4)
            r5 = r5 & 255(0xff, float:3.57E-43)
            byte r6 = r8.h(r4)
            r6 = r6 & 255(0xff, float:3.57E-43)
            if (r5 != r6) goto L28
            int r4 = r4 + 1
            goto L15
        L28:
            if (r5 >= r6) goto L32
            goto L30
        L2b:
            if (r0 != r1) goto L2e
            goto L33
        L2e:
            if (r0 >= r1) goto L32
        L30:
            r3 = -1
            goto L33
        L32:
            r3 = 1
        L33:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.compareTo(java.lang.Object):int");
    }

    public int d() {
        return this.data.length;
    }

    public String e() {
        byte[] bArr = this.data;
        char[] cArr = new char[bArr.length * 2];
        int i4 = 0;
        for (byte b4 : bArr) {
            int i5 = i4 + 1;
            char[] cArr2 = y3.b.f12964a;
            cArr[i4] = cArr2[(b4 >> 4) & 15];
            i4 = i5 + 1;
            cArr[i5] = cArr2[b4 & 15];
        }
        return new String(cArr);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            int d4 = byteString.d();
            byte[] bArr = this.data;
            if (d4 == bArr.length && byteString.i(0, 0, bArr.length, bArr)) {
                return true;
            }
        }
        return false;
    }

    public byte[] g() {
        return this.data;
    }

    public byte h(int i4) {
        return this.data[i4];
    }

    public int hashCode() {
        int i4 = this.f11880d;
        if (i4 != 0) {
            return i4;
        }
        int hashCode = Arrays.hashCode(this.data);
        this.f11880d = hashCode;
        return hashCode;
    }

    public boolean i(int i4, int i5, int i6, byte[] other) {
        h.e(other, "other");
        if (i4 >= 0) {
            byte[] bArr = this.data;
            if (i4 <= bArr.length - i6 && i5 >= 0 && i5 <= other.length - i6 && a.a(i4, i5, i6, bArr, other)) {
                return true;
            }
        }
        return false;
    }

    public boolean k(ByteString byteString, int i4) {
        return byteString.i(0, 0, i4, this.data);
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x00fc, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x010d, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x011c, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x012e, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x013b, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x0185, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0196, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x01a7, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:197:0x01b6, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x01cc, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x01d9, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:212:0x01e0, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:245:0x0221, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:247:0x0224, code lost:
        r4 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0098, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00a7, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00b2, code lost:
        if (r3 == 64) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0224 A[EDGE_INSN: B:273:0x0224->B:247:0x0224 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0224 A[EDGE_INSN: B:278:0x0224->B:247:0x0224 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0224 A[EDGE_INSN: B:283:0x0224->B:247:0x0224 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:295:0x0224 A[EDGE_INSN: B:295:0x0224->B:247:0x0224 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0224 A[EDGE_INSN: B:300:0x0224->B:247:0x0224 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.toString():java.lang.String");
    }
}
