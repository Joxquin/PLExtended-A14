package L1;
/* renamed from: L1.u  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0065u implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f1246d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0067w f1247e;

    public /* synthetic */ RunnableC0065u(C0067w c0067w, int i4) {
        this.f1246d = i4;
        this.f1247e = c0067w;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1246d) {
            case 0:
                C0067w c0067w = this.f1247e;
                c0067w.f1268b.removeView(c0067w.f1284r);
                c0067w.f1284r = null;
                c0067w.f1280n = false;
                return;
            default:
                this.f1247e.c();
                return;
        }
    }
}
