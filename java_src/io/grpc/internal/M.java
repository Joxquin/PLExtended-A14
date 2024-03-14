package io.grpc.internal;
/* loaded from: classes.dex */
public final class M implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9941d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f9942e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ O f9943f;

    public /* synthetic */ M(O o4, Object obj, int i4) {
        this.f9941d = i4;
        this.f9943f = o4;
        this.f9942e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9941d) {
            case 0:
                ((D1) this.f9942e).c(true);
                return;
            case 1:
                ((D1) this.f9942e).c(false);
                return;
            case 2:
                ((D1) this.f9942e).a();
                return;
            default:
                this.f9943f.f9966k.b((X2.L0) this.f9942e);
                return;
        }
    }
}
