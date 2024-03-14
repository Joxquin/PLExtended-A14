package io.grpc.internal;
/* loaded from: classes.dex */
public final class P implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9973d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f9974e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ W f9975f;

    public /* synthetic */ P(W w4, int i4, int i5) {
        this.f9973d = i5;
        this.f9975f = w4;
        this.f9974e = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9973d) {
            case 0:
                this.f9975f.f10023c.a(this.f9974e);
                return;
            case 1:
                this.f9975f.f10023c.b(this.f9974e);
                return;
            default:
                this.f9975f.f10023c.h(this.f9974e);
                return;
        }
    }
}
