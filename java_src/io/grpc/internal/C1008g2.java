package io.grpc.internal;
/* renamed from: io.grpc.internal.g2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1008g2 extends X2.r {

    /* renamed from: a  reason: collision with root package name */
    public final p2 f10119a;

    /* renamed from: b  reason: collision with root package name */
    public long f10120b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ r2 f10121c;

    public C1008g2(r2 r2Var, p2 p2Var) {
        this.f10121c = r2Var;
        this.f10119a = p2Var;
    }

    @Override // X2.r
    public final void k(long j4) {
        if (this.f10121c.f10269o.f10168f != null) {
            return;
        }
        synchronized (this.f10121c.f10263i) {
            if (this.f10121c.f10269o.f10168f == null) {
                p2 p2Var = this.f10119a;
                if (!p2Var.f10207b) {
                    long j5 = this.f10120b + j4;
                    this.f10120b = j5;
                    r2 r2Var = this.f10121c;
                    long j6 = r2Var.f10271q;
                    if (j5 <= j6) {
                        return;
                    }
                    if (j5 > r2Var.f10265k) {
                        p2Var.f10208c = true;
                    } else {
                        long addAndGet = r2Var.f10264j.f10129a.addAndGet(j5 - j6);
                        r2 r2Var2 = this.f10121c;
                        r2Var2.f10271q = this.f10120b;
                        if (addAndGet > r2Var2.f10266l) {
                            this.f10119a.f10208c = true;
                        }
                    }
                    p2 p2Var2 = this.f10119a;
                    Y1 r4 = p2Var2.f10208c ? this.f10121c.r(p2Var2) : null;
                    if (r4 != null) {
                        r4.run();
                    }
                }
            }
        }
    }
}
