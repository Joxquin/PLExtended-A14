package io.grpc.internal;
/* loaded from: classes.dex */
public final class Q implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9981d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f9982e;

    public /* synthetic */ Q(int i4, Object obj) {
        this.f9981d = i4;
        this.f9982e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9981d) {
            case 0:
                ((W) this.f9982e).f10023c.l();
                return;
            case 1:
                ((W) this.f9982e).q();
                return;
            case 2:
                ((W) this.f9982e).f10023c.flush();
                return;
            case 3:
                ((W) this.f9982e).f10023c.m();
                return;
            default:
                ((V) this.f9982e).f10010a.a();
                return;
        }
    }
}
