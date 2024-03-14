package com.google.protobuf;

import com.google.protobuf.ByteString;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;
/* renamed from: com.google.protobuf.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0743b implements InterfaceC0772p0 {
    protected int memoizedHashCode = 0;

    public static void addAll(Iterable iterable, S s4) {
        Charset charset = T.f8577a;
        iterable.getClass();
        if (iterable instanceof Z) {
            List f4 = ((Z) iterable).f();
            Z z4 = (Z) s4;
            int size = s4.size();
            for (Object obj : f4) {
                if (obj == null) {
                    String str = "Element at index " + (z4.size() - size) + " is null.";
                    int size2 = z4.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            break;
                        }
                        z4.remove(size2);
                    }
                    throw new NullPointerException(str);
                } else if (obj instanceof ByteString) {
                    z4.c((ByteString) obj);
                } else {
                    z4.add((String) obj);
                }
            }
        } else if (iterable instanceof InterfaceC0789y0) {
            s4.addAll((Collection) iterable);
        } else {
            if ((s4 instanceof ArrayList) && (iterable instanceof Collection)) {
                ((ArrayList) s4).ensureCapacity(((Collection) iterable).size() + s4.size());
            }
            int size3 = s4.size();
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    String str2 = "Element at index " + (s4.size() - size3) + " is null.";
                    int size4 = s4.size();
                    while (true) {
                        size4--;
                        if (size4 < size3) {
                            break;
                        }
                        s4.remove(size4);
                    }
                    throw new NullPointerException(str2);
                }
                s4.add(obj2);
            }
        }
    }

    private String getSerializingExceptionMessage(String str) {
        return "Serializing " + getClass().getName() + " to a " + str + " threw an IOException (should never happen).";
    }

    public int getMemoizedSerializedSize() {
        throw new UnsupportedOperationException();
    }

    public int getSerializedSize(C0 c02) {
        int memoizedSerializedSize = getMemoizedSerializedSize();
        if (memoizedSerializedSize == -1) {
            int h4 = c02.h(this);
            setMemoizedSerializedSize(h4);
            return h4;
        }
        return memoizedSerializedSize;
    }

    public void setMemoizedSerializedSize(int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.InterfaceC0772p0
    public final byte[] toByteArray() {
        try {
            int serializedSize = ((J) this).getSerializedSize(null);
            byte[] bArr = new byte[serializedSize];
            Logger logger = r.f8687b;
            C0771p c0771p = new C0771p(bArr, 0, serializedSize);
            ((J) this).writeTo(c0771p);
            if (c0771p.J() == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e4) {
            throw new RuntimeException(getSerializingExceptionMessage("byte array"), e4);
        }
    }

    @Override // com.google.protobuf.InterfaceC0772p0
    public final ByteString toByteString() {
        try {
            int serializedSize = ((J) this).getSerializedSize(null);
            ByteString byteString = ByteString.f8505d;
            byte[] bArr = new byte[serializedSize];
            Logger logger = r.f8687b;
            C0771p c0771p = new C0771p(bArr, 0, serializedSize);
            ((J) this).writeTo(c0771p);
            if (c0771p.J() == 0) {
                return new ByteString.LiteralByteString(bArr);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e4) {
            throw new RuntimeException(getSerializingExceptionMessage("ByteString"), e4);
        }
    }
}
