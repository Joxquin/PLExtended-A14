package h2;
/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9501d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f9502e;

    public /* synthetic */ e(int i4, Object obj) {
        this.f9501d = i4;
        this.f9502e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9501d) {
            case 0:
                ((h) ((e) this.f9502e).f9502e).c(0);
                return;
            default:
                if (((h) this.f9502e).f9517g.a() && ((h) this.f9502e).f9516f.a()) {
                    return;
                }
                ((h) this.f9502e).f9511a.runOnUiThread(new e(0, this));
                return;
        }
    }
}
