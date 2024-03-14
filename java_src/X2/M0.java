package X2;
/* loaded from: classes.dex */
public final class M0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ N0 f2144d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Runnable f2145e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ P0 f2146f;

    public M0(P0 p02, N0 n02, Runnable runnable) {
        this.f2146f = p02;
        this.f2144d = n02;
        this.f2145e = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2146f.execute(this.f2144d);
    }

    public final String toString() {
        return this.f2145e.toString() + "(scheduled in SynchronizationContext)";
    }
}
