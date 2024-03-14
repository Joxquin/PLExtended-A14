package com.google.protobuf;

import f2.C0880X;
import j.C1080K;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public abstract class J extends AbstractC0743b {
    private static final int MEMOIZED_SERIALIZED_SIZE_MASK = Integer.MAX_VALUE;
    private static final int MUTABLE_FLAG_MASK = Integer.MIN_VALUE;
    static final int UNINITIALIZED_HASH_CODE = 0;
    static final int UNINITIALIZED_SERIALIZED_SIZE = Integer.MAX_VALUE;
    private static Map defaultInstanceMap = new ConcurrentHashMap();
    private int memoizedSerializedSize = -1;
    protected P0 unknownFields = P0.f8566f;

    public static J getDefaultInstance(Class cls) {
        J j4 = (J) defaultInstanceMap.get(cls);
        if (j4 == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                j4 = (J) defaultInstanceMap.get(cls);
            } catch (ClassNotFoundException e4) {
                throw new IllegalStateException("Class initialization cannot fail.", e4);
            }
        }
        if (j4 == null) {
            j4 = (J) ((J) X0.b(cls)).dynamicMethod(GeneratedMessageLite$MethodToInvoke.GET_DEFAULT_INSTANCE);
            if (j4 == null) {
                throw new IllegalStateException();
            }
            defaultInstanceMap.put(cls, j4);
        }
        return j4;
    }

    public static Object invokeOrDie(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e4) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e4);
        } catch (InvocationTargetException e5) {
            Throwable cause = e5.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    public static S mutableCopy(S s4) {
        int size = s4.size();
        return s4.b(size == 0 ? 10 : size * 2);
    }

    public static J parseFrom(J j4, byte[] bArr) {
        J parsePartialFrom = parsePartialFrom(j4, bArr, bArr.length, C0784w.a());
        if (isInitialized(parsePartialFrom, true)) {
            return parsePartialFrom;
        }
        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(new UninitializedMessageException().getMessage());
        invalidProtocolBufferException.i(parsePartialFrom);
        throw invalidProtocolBufferException;
    }

    private static J parsePartialFrom(J j4, byte[] bArr, int i4, C0784w c0784w) {
        J j5 = (J) j4.dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_MUTABLE_INSTANCE);
        try {
            C0791z0 c0791z0 = C0791z0.f8727c;
            c0791z0.getClass();
            C0 a4 = c0791z0.a(j5.getClass());
            a4.g(j5, bArr, 0, 0 + i4, new C0749e(c0784w));
            a4.d(j5);
            return j5;
        } catch (InvalidProtocolBufferException e4) {
            e = e4;
            if (e.a()) {
                e = new InvalidProtocolBufferException(e);
            }
            e.i(j5);
            throw e;
        } catch (UninitializedMessageException e5) {
            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e5.getMessage());
            invalidProtocolBufferException.i(j5);
            throw invalidProtocolBufferException;
        } catch (IOException e6) {
            if (e6.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e6.getCause());
            }
            InvalidProtocolBufferException invalidProtocolBufferException2 = new InvalidProtocolBufferException(e6);
            invalidProtocolBufferException2.i(j5);
            throw invalidProtocolBufferException2;
        } catch (IndexOutOfBoundsException unused) {
            InvalidProtocolBufferException j6 = InvalidProtocolBufferException.j();
            j6.i(j5);
            throw j6;
        }
    }

    public static void registerDefaultInstance(Class cls, J j4) {
        defaultInstanceMap.put(cls, j4);
        j4.makeImmutable();
    }

    public final E createBuilder() {
        return (E) dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_BUILDER);
    }

    public abstract Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            C0791z0 c0791z0 = C0791z0.f8727c;
            c0791z0.getClass();
            return c0791z0.a(getClass()).f(this, (J) obj);
        }
        return false;
    }

    @Override // com.google.protobuf.InterfaceC0774q0
    public final J getDefaultInstanceForType$1() {
        return (J) dynamicMethod(GeneratedMessageLite$MethodToInvoke.GET_DEFAULT_INSTANCE);
    }

    @Override // com.google.protobuf.AbstractC0743b
    public final int getMemoizedSerializedSize() {
        return this.memoizedSerializedSize & Integer.MAX_VALUE;
    }

    public final InterfaceC0787x0 getParserForType() {
        return (InterfaceC0787x0) dynamicMethod(GeneratedMessageLite$MethodToInvoke.GET_PARSER);
    }

    @Override // com.google.protobuf.AbstractC0743b
    public final int getSerializedSize(C0 c02) {
        int h4;
        int h5;
        if (isMutable()) {
            if (c02 == null) {
                C0791z0 c0791z0 = C0791z0.f8727c;
                c0791z0.getClass();
                h5 = c0791z0.a(getClass()).h(this);
            } else {
                h5 = c02.h(this);
            }
            if (h5 >= 0) {
                return h5;
            }
            throw new IllegalStateException(C1080K.a("serialized size must be non-negative, was ", h5));
        } else if (getMemoizedSerializedSize() != Integer.MAX_VALUE) {
            return getMemoizedSerializedSize();
        } else {
            if (c02 == null) {
                C0791z0 c0791z02 = C0791z0.f8727c;
                c0791z02.getClass();
                h4 = c0791z02.a(getClass()).h(this);
            } else {
                h4 = c02.h(this);
            }
            setMemoizedSerializedSize(h4);
            return h4;
        }
    }

    public final int hashCode() {
        if (isMutable()) {
            C0791z0 c0791z0 = C0791z0.f8727c;
            c0791z0.getClass();
            return c0791z0.a(getClass()).j(this);
        }
        if (this.memoizedHashCode == 0) {
            C0791z0 c0791z02 = C0791z0.f8727c;
            c0791z02.getClass();
            this.memoizedHashCode = c0791z02.a(getClass()).j(this);
        }
        return this.memoizedHashCode;
    }

    @Override // com.google.protobuf.InterfaceC0774q0
    public final boolean isInitialized() {
        return isInitialized(this, true);
    }

    public final boolean isMutable() {
        return (this.memoizedSerializedSize & Integer.MIN_VALUE) != 0;
    }

    public final void makeImmutable() {
        C0791z0 c0791z0 = C0791z0.f8727c;
        c0791z0.getClass();
        c0791z0.a(getClass()).d(this);
        markImmutable();
    }

    public final void markImmutable() {
        this.memoizedSerializedSize &= Integer.MAX_VALUE;
    }

    @Override // com.google.protobuf.InterfaceC0772p0
    public final E newBuilderForType$1() {
        return (E) dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_BUILDER);
    }

    @Override // com.google.protobuf.AbstractC0743b
    public final void setMemoizedSerializedSize(int i4) {
        if (i4 < 0) {
            throw new IllegalStateException(C1080K.a("serialized size must be non-negative, was ", i4));
        }
        this.memoizedSerializedSize = (i4 & Integer.MAX_VALUE) | (this.memoizedSerializedSize & Integer.MIN_VALUE);
    }

    @Override // com.google.protobuf.InterfaceC0772p0
    /* renamed from: toBuilder */
    public final E toBuilder$1() {
        E e4 = (E) dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_BUILDER);
        e4.mergeFrom(this);
        return e4;
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = C0775r0.f8690a;
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(obj);
        C0775r0.c(this, sb, 0);
        return sb.toString();
    }

    @Override // com.google.protobuf.InterfaceC0772p0
    public final void writeTo(r rVar) {
        C0791z0 c0791z0 = C0791z0.f8727c;
        c0791z0.getClass();
        C0 a4 = c0791z0.a(getClass());
        C0776s c0776s = rVar.f8689a;
        if (c0776s == null) {
            c0776s = new C0776s(rVar);
        }
        a4.b(this, c0776s);
    }

    public static final boolean isInitialized(J j4, boolean z4) {
        byte byteValue = ((Byte) j4.dynamicMethod(GeneratedMessageLite$MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        C0791z0 c0791z0 = C0791z0.f8727c;
        c0791z0.getClass();
        boolean e4 = c0791z0.a(j4.getClass()).e(j4);
        if (z4) {
            j4.dynamicMethod(GeneratedMessageLite$MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED);
        }
        return e4;
    }

    public static J parseFrom(C0880X c0880x, byte[] bArr, C0784w c0784w) {
        J parsePartialFrom = parsePartialFrom(c0880x, bArr, bArr.length, c0784w);
        if (isInitialized(parsePartialFrom, true)) {
            return parsePartialFrom;
        }
        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(new UninitializedMessageException().getMessage());
        invalidProtocolBufferException.i(parsePartialFrom);
        throw invalidProtocolBufferException;
    }

    @Override // com.google.protobuf.InterfaceC0772p0
    public final int getSerializedSize() {
        return getSerializedSize(null);
    }
}
