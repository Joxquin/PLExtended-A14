package L1;
/* loaded from: classes.dex */
public final /* synthetic */ class U implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1117d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0046a0 f1118e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f1119f;

    public /* synthetic */ U(C0046a0 c0046a0, Object obj, int i4) {
        this.f1117d = i4;
        this.f1118e = c0046a0;
        this.f1119f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1117d) {
            case 0:
                C0046a0 c0046a0 = this.f1118e;
                synchronized (c0046a0) {
                    c0046a0.f1147j.b();
                }
                return;
            default:
                C0046a0 c0046a02 = this.f1118e;
                synchronized (c0046a02) {
                    c0046a02.f1147j.a();
                }
                return;
        }
    }
}
