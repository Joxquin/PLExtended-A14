package Y2;

import X2.L0;
/* loaded from: classes.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2344d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ io.grpc.binder.internal.h f2345e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ L0 f2346f;

    public /* synthetic */ n(io.grpc.binder.internal.h hVar, L0 l02, int i4) {
        this.f2344d = i4;
        this.f2345e = hVar;
        this.f2346f = l02;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2344d) {
            case 0:
                this.f2345e.c(this.f2346f);
                return;
            default:
                this.f2345e.c(this.f2346f);
                return;
        }
    }
}
