package com.google.protobuf;

import androidx.fragment.app.C0196d0;
import com.android.launcher3.util.C0479l;
import j.C1080K;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes.dex */
public abstract class ByteString implements Iterable, Serializable {

    /* renamed from: d  reason: collision with root package name */
    public static final ByteString f8505d = new LiteralByteString(T.f8578b);

    /* renamed from: e  reason: collision with root package name */
    public static final C0761k f8506e;
    private int hash = 0;

    /* loaded from: classes.dex */
    final class BoundedByteString extends LiteralByteString {
        private static final long serialVersionUID = 1;
        private final int bytesLength;
        private final int bytesOffset;

        public BoundedByteString(byte[] bArr, int i4, int i5) {
            super(bArr);
            ByteString.i(i4, i4 + i5, bArr.length);
            this.bytesOffset = i4;
            this.bytesLength = i5;
        }

        private void readObject(ObjectInputStream objectInputStream) {
            throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public final byte h(int i4) {
            int i5 = this.bytesLength;
            if (((i5 - (i4 + 1)) | i4) < 0) {
                if (i4 < 0) {
                    throw new ArrayIndexOutOfBoundsException(C1080K.a("Index < 0: ", i4));
                }
                throw new ArrayIndexOutOfBoundsException(C0479l.a("Index > length: ", i4, ", ", i5));
            }
            return this.bytes[this.bytesOffset + i4];
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public final void k(int i4, byte[] bArr) {
            System.arraycopy(this.bytes, this.bytesOffset + 0, bArr, 0, i4);
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public final byte l(int i4) {
            return this.bytes[this.bytesOffset + i4];
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString, com.google.protobuf.ByteString
        public final int size() {
            return this.bytesLength;
        }

        @Override // com.google.protobuf.ByteString.LiteralByteString
        public final int t() {
            return this.bytesOffset;
        }

        public Object writeReplace() {
            return new LiteralByteString(q());
        }
    }

    /* loaded from: classes.dex */
    abstract class LeafByteString extends ByteString {
    }

    /* loaded from: classes.dex */
    class LiteralByteString extends LeafByteString {
        private static final long serialVersionUID = 1;
        protected final byte[] bytes;

        public LiteralByteString(byte[] bArr) {
            bArr.getClass();
            this.bytes = bArr;
        }

        @Override // com.google.protobuf.ByteString
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if ((obj instanceof ByteString) && size() == ((ByteString) obj).size()) {
                if (size() == 0) {
                    return true;
                }
                if (obj instanceof LiteralByteString) {
                    LiteralByteString literalByteString = (LiteralByteString) obj;
                    int o4 = o();
                    int o5 = literalByteString.o();
                    if (o4 == 0 || o5 == 0 || o4 == o5) {
                        int size = size();
                        if (size > literalByteString.size()) {
                            throw new IllegalArgumentException("Length too large: " + size + size());
                        } else if (0 + size > literalByteString.size()) {
                            StringBuilder a4 = C0196d0.a("Ran off end of other: 0, ", size, ", ");
                            a4.append(literalByteString.size());
                            throw new IllegalArgumentException(a4.toString());
                        } else {
                            byte[] bArr = this.bytes;
                            byte[] bArr2 = literalByteString.bytes;
                            int t4 = t() + size;
                            int t5 = t();
                            int t6 = literalByteString.t() + 0;
                            while (t5 < t4) {
                                if (bArr[t5] != bArr2[t6]) {
                                    return false;
                                }
                                t5++;
                                t6++;
                            }
                            return true;
                        }
                    }
                    return false;
                }
                return obj.equals(this);
            }
            return false;
        }

        @Override // com.google.protobuf.ByteString
        public byte h(int i4) {
            return this.bytes[i4];
        }

        @Override // com.google.protobuf.ByteString
        public void k(int i4, byte[] bArr) {
            System.arraycopy(this.bytes, 0, bArr, 0, i4);
        }

        @Override // com.google.protobuf.ByteString
        public byte l(int i4) {
            return this.bytes[i4];
        }

        @Override // com.google.protobuf.ByteString
        public final boolean m() {
            int t4 = t();
            return b1.f8625a.a(this.bytes, t4, size() + t4);
        }

        @Override // com.google.protobuf.ByteString
        public final int n(int i4, int i5) {
            byte[] bArr = this.bytes;
            int t4 = t() + 0;
            Charset charset = T.f8577a;
            for (int i6 = t4; i6 < t4 + i5; i6++) {
                i4 = (i4 * 31) + bArr[i6];
            }
            return i4;
        }

        @Override // com.google.protobuf.ByteString
        public final ByteString p(int i4) {
            int i5 = ByteString.i(0, i4, size());
            return i5 == 0 ? ByteString.f8505d : new BoundedByteString(this.bytes, t() + 0, i5);
        }

        @Override // com.google.protobuf.ByteString
        public final String r(Charset charset) {
            return new String(this.bytes, t(), size(), charset);
        }

        @Override // com.google.protobuf.ByteString
        public final void s(AbstractC0755h abstractC0755h) {
            abstractC0755h.a(this.bytes, t(), size());
        }

        @Override // com.google.protobuf.ByteString
        public int size() {
            return this.bytes.length;
        }

        public int t() {
            return 0;
        }
    }

    static {
        f8506e = C0747d.a() ? new C0761k(1, 0) : new C0761k(0, 0);
    }

    public static int i(int i4, int i5, int i6) {
        int i7 = i5 - i4;
        if ((i4 | i5 | i7 | (i6 - i5)) < 0) {
            if (i4 >= 0) {
                if (i5 < i4) {
                    throw new IndexOutOfBoundsException(C0479l.a("Beginning index larger than ending index: ", i4, ", ", i5));
                }
                throw new IndexOutOfBoundsException(C0479l.a("End index: ", i5, " >= ", i6));
            }
            throw new IndexOutOfBoundsException("Beginning index: " + i4 + " < 0");
        }
        return i7;
    }

    public static ByteString j(byte[] bArr, int i4, int i5) {
        byte[] bArr2;
        int i6 = i4 + i5;
        i(i4, i6, bArr.length);
        switch (f8506e.f8653a) {
            case 0:
                bArr2 = Arrays.copyOfRange(bArr, i4, i6);
                break;
            default:
                byte[] bArr3 = new byte[i5];
                System.arraycopy(bArr, i4, bArr3, 0, i5);
                bArr2 = bArr3;
                break;
        }
        return new LiteralByteString(bArr2);
    }

    public abstract boolean equals(Object obj);

    public abstract byte h(int i4);

    public final int hashCode() {
        int i4 = this.hash;
        if (i4 == 0) {
            int size = size();
            i4 = n(size, size);
            if (i4 == 0) {
                i4 = 1;
            }
            this.hash = i4;
        }
        return i4;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C0757i(this);
    }

    public abstract void k(int i4, byte[] bArr);

    public abstract byte l(int i4);

    public abstract boolean m();

    public abstract int n(int i4, int i5);

    public final int o() {
        return this.hash;
    }

    public abstract ByteString p(int i4);

    public final byte[] q() {
        int size = size();
        if (size == 0) {
            return T.f8578b;
        }
        byte[] bArr = new byte[size];
        k(size, bArr);
        return bArr;
    }

    public abstract String r(Charset charset);

    public abstract void s(AbstractC0755h abstractC0755h);

    public abstract int size();

    public final String toString() {
        String str;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(size());
        if (size() <= 50) {
            str = N0.a(this);
        } else {
            str = N0.a(p(47)) + "...";
        }
        objArr[2] = str;
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }
}
