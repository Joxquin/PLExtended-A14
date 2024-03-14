package androidx.activity;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2421d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f2422e;

    public /* synthetic */ b(int i4, Object obj) {
        this.f2421d = i4;
        this.f2422e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2421d) {
            case 0:
                ((l) this.f2422e).invalidateMenu();
                return;
            default:
                k kVar = (k) this.f2422e;
                Runnable runnable = kVar.f2435e;
                if (runnable != null) {
                    runnable.run();
                    kVar.f2435e = null;
                    return;
                }
                return;
        }
    }
}
