package Y2;

import io.grpc.binder.internal.BinderTransport$TransportState;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2321d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ io.grpc.binder.internal.c f2322e;

    public /* synthetic */ c(io.grpc.binder.internal.c cVar, int i4) {
        this.f2321d = i4;
        this.f2322e = cVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2321d) {
            case 0:
                io.grpc.binder.internal.c cVar = this.f2322e;
                synchronized (cVar) {
                    if (cVar.j(BinderTransport$TransportState.SHUTDOWN)) {
                        cVar.q(cVar.f9765k, true);
                    }
                }
                return;
            default:
                io.grpc.binder.internal.b bVar = (io.grpc.binder.internal.b) this.f2322e;
                int i4 = io.grpc.binder.internal.b.f9746A;
                synchronized (bVar) {
                    if (bVar.j(BinderTransport$TransportState.NOT_STARTED)) {
                        bVar.p(BinderTransport$TransportState.SETUP);
                        bVar.f9750v.a();
                    }
                }
                return;
        }
    }
}
