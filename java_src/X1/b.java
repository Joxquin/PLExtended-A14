package X1;

import com.android.launcher3.util.Executors;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2026d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ f f2027e;

    public /* synthetic */ b(f fVar, int i4) {
        this.f2026d = i4;
        this.f2027e = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2026d) {
            case 0:
                f fVar = this.f2027e;
                fVar.getClass();
                Executors.MAIN_EXECUTOR.getHandler().postDelayed(new b(fVar, 1), 500L);
                return;
            default:
                f.d(this.f2027e);
                return;
        }
    }
}
