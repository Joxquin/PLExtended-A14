package io.grpc.internal;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class X0 implements Executor {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1048s1 f10031d;

    public X0(C1048s1 c1048s1) {
        this.f10031d = c1048s1;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        Executor executor;
        U0 u02 = this.f10031d.f10338p;
        synchronized (u02) {
            if (((Executor) u02.f10007b) == null) {
                Object a4 = ((H1) u02.f10006a).a();
                Executor executor2 = (Executor) u02.f10007b;
                if (a4 == null) {
                    throw new NullPointerException(O2.p.a("%s.getObject()", executor2));
                }
                u02.f10007b = (Executor) a4;
            }
            executor = (Executor) u02.f10007b;
        }
        executor.execute(runnable);
    }
}
