package androidx.concurrent.futures;

import s.i;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Throwable f2707a;

    static {
        new a(new Throwable("Failure occurred while trying to finish a future.") { // from class: androidx.concurrent.futures.AbstractResolvableFuture$Failure$1
            @Override // java.lang.Throwable
            public final synchronized Throwable fillInStackTrace() {
                return this;
            }
        });
    }

    public a(Throwable th) {
        boolean z4 = i.f12179g;
        th.getClass();
        this.f2707a = th;
    }
}
