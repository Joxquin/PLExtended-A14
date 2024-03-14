package io.grpc.internal;

import java.util.Collection;
import java.util.concurrent.Future;
/* loaded from: classes.dex */
public final class Y1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Collection f10038d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ p2 f10039e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Future f10040f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Future f10041g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ r2 f10042h;

    public Y1(r2 r2Var, Collection collection, p2 p2Var, Future future, Future future2) {
        this.f10042h = r2Var;
        this.f10038d = collection;
        this.f10039e = p2Var;
        this.f10040f = future;
        this.f10041g = future2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (p2 p2Var : this.f10038d) {
            if (p2Var != this.f10039e) {
                p2Var.f10206a.g(r2.f10254z);
            }
        }
        Future future = this.f10040f;
        if (future != null) {
            future.cancel(false);
        }
        Future future2 = this.f10041g;
        if (future2 != null) {
            future2.cancel(false);
        }
        this.f10042h.y();
    }
}
