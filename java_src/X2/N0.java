package X2;
/* loaded from: classes.dex */
public final class N0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final Runnable f2150d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2151e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2152f;

    public N0(Runnable runnable) {
        this.f2150d = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f2151e) {
            return;
        }
        this.f2152f = true;
        this.f2150d.run();
    }
}
