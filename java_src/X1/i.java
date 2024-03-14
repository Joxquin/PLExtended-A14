package X1;

import android.graphics.PointF;
import android.os.SystemClock;
import android.view.ViewConfiguration;
/* loaded from: classes.dex */
public final /* synthetic */ class i implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2041d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ u f2042e;

    public /* synthetic */ i(u uVar, int i4) {
        this.f2041d = i4;
        this.f2042e = uVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2041d) {
            case 0:
                u.d(this.f2042e);
                return;
            default:
                u uVar = this.f2042e;
                if (uVar.f2070h == null) {
                    return;
                }
                uVar.k();
                com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar = uVar.f2070h;
                PointF pointF = uVar.f2067e;
                bVar.f6450h.d(pointF);
                bVar.g(pointF, false, false);
                uVar.f2072j = 2;
                long longPressTimeout = (uVar.f2073k + ViewConfiguration.getLongPressTimeout()) - SystemClock.elapsedRealtime();
                if (longPressTimeout > 0) {
                    uVar.f2065A.f7546e.postDelayed(uVar.f2074l, longPressTimeout);
                    return;
                }
                return;
        }
    }
}
