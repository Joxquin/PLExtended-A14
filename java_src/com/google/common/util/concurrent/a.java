package com.google.common.util.concurrent;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f8473a;

    static {
        new a(new Throwable("Failure occurred while trying to finish a future.") { // from class: com.google.common.util.concurrent.AbstractFuture$Failure$1
            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
    }

    public a(Throwable th) {
        th.getClass();
        this.f8473a = th;
    }
}
