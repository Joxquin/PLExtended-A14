package com.google.protobuf;

import java.io.IOException;
/* loaded from: classes.dex */
public final class F implements InterfaceC0787x0 {

    /* renamed from: a  reason: collision with root package name */
    public final J f8514a;

    static {
        C0784w.a();
    }

    public F(J j4) {
        this.f8514a = j4;
    }

    public static void b(InterfaceC0772p0 interfaceC0772p0) {
        UninitializedMessageException uninitializedMessageException;
        if (interfaceC0772p0.isInitialized()) {
            return;
        }
        if (interfaceC0772p0 instanceof AbstractC0743b) {
            AbstractC0743b abstractC0743b = (AbstractC0743b) interfaceC0772p0;
            uninitializedMessageException = new UninitializedMessageException();
        } else {
            uninitializedMessageException = new UninitializedMessageException();
        }
        InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(uninitializedMessageException.getMessage());
        invalidProtocolBufferException.i(interfaceC0772p0);
        throw invalidProtocolBufferException;
    }

    @Override // com.google.protobuf.InterfaceC0787x0
    public final InterfaceC0772p0 a(AbstractC0767n abstractC0767n, C0784w c0784w) {
        J c4 = c(abstractC0767n, c0784w);
        b(c4);
        return c4;
    }

    public final J c(AbstractC0767n abstractC0767n, C0784w c0784w) {
        J j4 = (J) this.f8514a.dynamicMethod(GeneratedMessageLite$MethodToInvoke.NEW_MUTABLE_INSTANCE);
        try {
            C0791z0 c0791z0 = C0791z0.f8727c;
            c0791z0.getClass();
            C0 a4 = c0791z0.a(j4.getClass());
            C0769o c0769o = abstractC0767n.f8675d;
            if (c0769o == null) {
                c0769o = new C0769o(abstractC0767n);
            }
            a4.c(j4, c0769o, c0784w);
            a4.d(j4);
            return j4;
        } catch (InvalidProtocolBufferException e4) {
            e = e4;
            if (e.a()) {
                e = new InvalidProtocolBufferException(e);
            }
            e.i(j4);
            throw e;
        } catch (UninitializedMessageException e5) {
            InvalidProtocolBufferException invalidProtocolBufferException = new InvalidProtocolBufferException(e5.getMessage());
            invalidProtocolBufferException.i(j4);
            throw invalidProtocolBufferException;
        } catch (IOException e6) {
            if (e6.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e6.getCause());
            }
            InvalidProtocolBufferException invalidProtocolBufferException2 = new InvalidProtocolBufferException(e6);
            invalidProtocolBufferException2.i(j4);
            throw invalidProtocolBufferException2;
        } catch (RuntimeException e7) {
            if (e7.getCause() instanceof InvalidProtocolBufferException) {
                throw ((InvalidProtocolBufferException) e7.getCause());
            }
            throw e7;
        }
    }
}
