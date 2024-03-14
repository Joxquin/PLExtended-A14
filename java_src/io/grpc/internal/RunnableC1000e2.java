package io.grpc.internal;
/* renamed from: io.grpc.internal.e2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1000e2 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10102d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f10103e;

    /* renamed from: f  reason: collision with root package name */
    public final Object f10104f;

    public /* synthetic */ RunnableC1000e2(int i4, Object obj, Object obj2) {
        this.f10102d = i4;
        this.f10103e = obj;
        this.f10104f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10102d) {
            case 0:
                r2 r2Var = (r2) this.f10103e;
                r2Var.f10277w = true;
                r2Var.f10272r.d((X2.L0) this.f10104f, ClientStreamListener$RpcProgress.PROCESSED, new X2.r0());
                return;
            case 1:
                ((r2) this.f10103e).f10256b.execute(new RunnableC0996d2(1, this));
                return;
            case 2:
                ((o2) this.f10103e).f10199b.f10272r.b((X2.r0) this.f10104f);
                return;
            case 3:
                ((o2) this.f10103e).f10199b.u((p2) this.f10104f);
                return;
            default:
                ((o2) this.f10103e).f10199b.f10272r.c((io.grpc.binder.internal.e) this.f10104f);
                return;
        }
    }
}
