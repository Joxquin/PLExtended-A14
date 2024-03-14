package io.grpc;

import X2.L0;
import X2.r0;
/* loaded from: classes.dex */
public class StatusException extends Exception {
    private static final long serialVersionUID = -660954903976144640L;
    private final boolean fillInStackTrace;
    private final L0 status;
    private final r0 trailers;

    public StatusException(L0 l02) {
        super(L0.b(l02), l02.f2139c);
        this.status = l02;
        this.trailers = null;
        this.fillInStackTrace = true;
        fillInStackTrace();
    }

    public final L0 a() {
        return this.status;
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return this.fillInStackTrace ? super.fillInStackTrace() : this;
    }
}
