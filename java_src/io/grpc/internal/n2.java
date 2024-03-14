package io.grpc.internal;
/* loaded from: classes.dex */
public final class n2 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10185d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ X2.L0 f10186e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ClientStreamListener$RpcProgress f10187f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ X2.r0 f10188g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ o2 f10189h;

    public /* synthetic */ n2(o2 o2Var, X2.L0 l02, ClientStreamListener$RpcProgress clientStreamListener$RpcProgress, X2.r0 r0Var, int i4) {
        this.f10185d = i4;
        this.f10189h = o2Var;
        this.f10186e = l02;
        this.f10187f = clientStreamListener$RpcProgress;
        this.f10188g = r0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10185d) {
            case 0:
                r2 r2Var = this.f10189h.f10199b;
                r2Var.f10277w = true;
                r2Var.f10272r.d(this.f10186e, this.f10187f, this.f10188g);
                return;
            default:
                r2 r2Var2 = this.f10189h.f10199b;
                r2Var2.f10277w = true;
                r2Var2.f10272r.d(this.f10186e, this.f10187f, this.f10188g);
                return;
        }
    }
}
