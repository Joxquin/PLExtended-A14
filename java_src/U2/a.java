package U2;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final ByteBuffer f1775a;

    public a(byte[] bArr, int i4) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, 0, i4);
        this.f1775a = wrap;
        wrap.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static int a(int i4) {
        if ((i4 & (-128)) == 0) {
            return 1;
        }
        if ((i4 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i4) == 0) {
            return 3;
        }
        return (i4 & (-268435456)) == 0 ? 4 : 5;
    }

    public final void b(int i4, int i5) {
        d((i4 << 3) | 0);
        if (i5 >= 0) {
            d(i5);
            return;
        }
        long j4 = i5;
        while (((-128) & j4) != 0) {
            c((((int) j4) & 127) | 128);
            j4 >>>= 7;
        }
        c((int) j4);
    }

    public final void c(int i4) {
        byte b4 = (byte) i4;
        ByteBuffer byteBuffer = this.f1775a;
        if (byteBuffer.hasRemaining()) {
            byteBuffer.put(b4);
            return;
        }
        final int position = byteBuffer.position();
        final int limit = byteBuffer.limit();
        throw new IOException(position, limit) { // from class: com.google.protobuf.nano.CodedOutputByteBufferNano$OutOfSpaceException
            private static final long serialVersionUID = -6947486886997889499L;

            {
                super("CodedOutputStream was writing to a flat byte array and ran out of space (pos " + position + " limit " + limit + ").");
            }
        };
    }

    public final void d(int i4) {
        while ((i4 & (-128)) != 0) {
            c((i4 & 127) | 128);
            i4 >>>= 7;
        }
        c(i4);
    }
}
