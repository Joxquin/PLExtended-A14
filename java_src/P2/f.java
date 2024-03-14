package P2;

import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Queue;
/* loaded from: classes.dex */
public final class f {
    static {
        new e();
    }

    public static byte[] a(Queue queue, int i4) {
        ArrayDeque arrayDeque = (ArrayDeque) queue;
        if (arrayDeque.isEmpty()) {
            return new byte[0];
        }
        byte[] bArr = (byte[]) arrayDeque.remove();
        if (bArr.length == i4) {
            return bArr;
        }
        int length = i4 - bArr.length;
        byte[] copyOf = Arrays.copyOf(bArr, i4);
        while (length > 0) {
            byte[] bArr2 = (byte[]) arrayDeque.remove();
            int min = Math.min(length, bArr2.length);
            System.arraycopy(bArr2, 0, copyOf, i4 - length, min);
            length -= min;
        }
        return copyOf;
    }

    public static byte[] b(InputStream inputStream) {
        inputStream.getClass();
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int min = Math.min(8192, Math.max(128, Integer.highestOneBit(0) * 2));
        int i4 = 0;
        while (i4 < 2147483639) {
            int min2 = Math.min(min, 2147483639 - i4);
            byte[] bArr = new byte[min2];
            arrayDeque.add(bArr);
            int i5 = 0;
            while (i5 < min2) {
                int read = inputStream.read(bArr, i5, min2 - i5);
                if (read == -1) {
                    return a(arrayDeque, i4);
                }
                i5 += read;
                i4 += read;
            }
            long j4 = min * (min < 4096 ? 4 : 2);
            min = j4 > 2147483647L ? Integer.MAX_VALUE : j4 < -2147483648L ? Integer.MIN_VALUE : (int) j4;
        }
        if (inputStream.read() == -1) {
            return a(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }
}
