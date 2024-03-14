package io.grpc.internal;
/* loaded from: classes.dex */
public final class U implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ X2.L0 f10002d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ClientStreamListener$RpcProgress f10003e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ X2.r0 f10004f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ V f10005g;

    public U(V v4, X2.L0 l02, ClientStreamListener$RpcProgress clientStreamListener$RpcProgress, X2.r0 r0Var) {
        this.f10005g = v4;
        this.f10002d = l02;
        this.f10003e = clientStreamListener$RpcProgress;
        this.f10004f = r0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10005g.f10010a.d(this.f10002d, this.f10003e, this.f10004f);
    }
}
