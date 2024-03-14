package X2;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class K0 implements InterfaceC0136q0 {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f2119a = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};

    @Override // X2.InterfaceC0136q0
    /* renamed from: a */
    public final byte[] mo10a(Object obj) {
        byte[] bytes = ((String) obj).getBytes(O2.e.f1511b);
        int i4 = 0;
        while (i4 < bytes.length) {
            byte b4 = bytes[i4];
            if (b4 < 32 || b4 >= 126 || b4 == 37) {
                byte[] bArr = new byte[((bytes.length - i4) * 3) + i4];
                if (i4 != 0) {
                    System.arraycopy(bytes, 0, bArr, 0, i4);
                }
                int i5 = i4;
                while (i4 < bytes.length) {
                    byte b5 = bytes[i4];
                    if (b5 < 32 || b5 >= 126 || b5 == 37) {
                        bArr[i5] = 37;
                        byte[] bArr2 = f2119a;
                        bArr[i5 + 1] = bArr2[(b5 >> 4) & 15];
                        bArr[i5 + 2] = bArr2[b5 & 15];
                        i5 += 3;
                    } else {
                        bArr[i5] = b5;
                        i5++;
                    }
                    i4++;
                }
                return Arrays.copyOf(bArr, i5);
            }
            i4++;
        }
        return bytes;
    }

    @Override // X2.InterfaceC0136q0
    public final Object b(byte[] bArr) {
        for (int i4 = 0; i4 < bArr.length; i4++) {
            byte b4 = bArr[i4];
            if (b4 < 32 || b4 >= 126 || (b4 == 37 && i4 + 2 < bArr.length)) {
                ByteBuffer allocate = ByteBuffer.allocate(bArr.length);
                int i5 = 0;
                while (i5 < bArr.length) {
                    if (bArr[i5] == 37 && i5 + 2 < bArr.length) {
                        try {
                            allocate.put((byte) Integer.parseInt(new String(bArr, i5 + 1, 2, O2.e.f1510a), 16));
                            i5 += 3;
                        } catch (NumberFormatException unused) {
                        }
                    }
                    allocate.put(bArr[i5]);
                    i5++;
                }
                return new String(allocate.array(), 0, allocate.position(), O2.e.f1511b);
            }
        }
        return new String(bArr, 0);
    }
}
