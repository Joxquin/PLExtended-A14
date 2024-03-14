package io.grpc.internal;
/* loaded from: classes.dex */
public final class H implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9888d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f9889e;

    public /* synthetic */ H(int i4, Object obj) {
        this.f9888d = i4;
        this.f9889e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9888d) {
            case 0:
                ((L) this.f9889e).f9935f.b();
                return;
            default:
                ((K) this.f9889e).f9924a.d();
                return;
        }
    }
}
