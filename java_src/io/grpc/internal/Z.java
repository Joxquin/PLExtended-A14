package io.grpc.internal;
/* loaded from: classes.dex */
public final class Z implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ boolean f10043d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RunnableC0982a0 f10044e;

    public Z(RunnableC0982a0 runnableC0982a0, boolean z4) {
        this.f10044e = runnableC0982a0;
        this.f10043d = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f10043d) {
            C0994d0 c0994d0 = this.f10044e.f10050e;
            c0994d0.f10085l = true;
            if (c0994d0.f10082i > 0) {
                O2.o oVar = c0994d0.f10084k;
                oVar.f1523b = false;
                oVar.a();
            }
        }
        this.f10044e.f10050e.f10090q = false;
    }
}
