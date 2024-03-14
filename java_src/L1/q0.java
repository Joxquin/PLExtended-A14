package L1;
/* loaded from: classes.dex */
public final /* synthetic */ class q0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ u0 f1237d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ J1.B f1238e;

    public /* synthetic */ q0(u0 u0Var, J1.B b4) {
        this.f1237d = u0Var;
        this.f1238e = b4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        P p4;
        u0 u0Var = this.f1237d;
        J1.B b4 = this.f1238e;
        synchronized (u0Var) {
            if (u0Var.f1250c.i(u0Var.f1260m)) {
                if (b4.f657e != null) {
                    C0046a0 c0046a0 = u0Var.f1250c.f1207a;
                    synchronized (c0046a0) {
                        p4 = c0046a0.f1147j;
                    }
                    String str = b4.f657e;
                    int i4 = M1.c.f1362a;
                    str.getClass();
                    p4.c();
                }
                C0060o c0060o = u0Var.f1250c;
                C0062q c0062q = c0060o.f1208b;
                int i5 = M1.c.f1362a;
                c0062q.f1234h = b4;
                c0062q.f1236j = c0060o;
            }
        }
    }
}
