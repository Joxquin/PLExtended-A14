package A0;

import android.view.View;
/* loaded from: classes.dex */
public final class u implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public View f55d;

    /* renamed from: f  reason: collision with root package name */
    public u f57f;

    /* renamed from: e  reason: collision with root package name */
    public int f56e = 0;

    /* renamed from: g  reason: collision with root package name */
    public n f58g = null;

    /* renamed from: h  reason: collision with root package name */
    public long f59h = 0;

    @Override // java.lang.Runnable
    public final void run() {
        n nVar = this.f58g;
        this.f58g = null;
        if (nVar != null) {
            nVar.accept(this);
        }
    }
}
