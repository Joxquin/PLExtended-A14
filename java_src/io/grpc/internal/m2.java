package io.grpc.internal;
/* loaded from: classes.dex */
public final class m2 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f10177d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ o2 f10178e;

    public /* synthetic */ m2(o2 o2Var, int i4) {
        this.f10177d = i4;
        this.f10178e = o2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10177d) {
            case 0:
                this.f10178e.f10199b.f10256b.execute(new RunnableC0996d2(2, this));
                return;
            default:
                r2 r2Var = this.f10178e.f10199b;
                if (r2Var.f10277w) {
                    return;
                }
                r2Var.f10272r.a();
                return;
        }
    }
}
