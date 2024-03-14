package io.grpc;

import X2.L0;
import X2.r0;
/* loaded from: classes.dex */
public class StatusRuntimeException extends RuntimeException {
    private static final long serialVersionUID = 1950934672280720624L;
    private final boolean fillInStackTrace;
    private final L0 status;
    private final r0 trailers;

    public StatusRuntimeException(L0 l02, r0 r0Var) {
        super(L0.b(l02), l02.f2139c);
        this.status = l02;
        this.trailers = r0Var;
        this.fillInStackTrace = true;
        fillInStackTrace();
    }

    public final L0 a() {
        return this.status;
    }

    public final r0 b() {
        return this.trailers;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return this.fillInStackTrace ? super.fillInStackTrace() : this;
    }
}
