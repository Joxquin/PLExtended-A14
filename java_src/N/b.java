package N;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AnimationUtils;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ d f1388d;

    public b(d dVar) {
        this.f1388d = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d dVar = this.f1388d;
        if (dVar.f1404r) {
            if (dVar.f1402p) {
                dVar.f1402p = false;
                a aVar = dVar.f1390d;
                aVar.getClass();
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                aVar.f1383e = currentAnimationTimeMillis;
                aVar.f1385g = -1L;
                aVar.f1384f = currentAnimationTimeMillis;
                aVar.f1386h = 0.5f;
            }
            a aVar2 = this.f1388d.f1390d;
            if ((aVar2.f1385g > 0 && AnimationUtils.currentAnimationTimeMillis() > aVar2.f1385g + ((long) aVar2.f1387i)) || !this.f1388d.f()) {
                this.f1388d.f1404r = false;
                return;
            }
            d dVar2 = this.f1388d;
            if (dVar2.f1403q) {
                dVar2.f1403q = false;
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                dVar2.f1392f.onTouchEvent(obtain);
                obtain.recycle();
            }
            if (aVar2.f1384f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long currentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
            float a4 = aVar2.a(currentAnimationTimeMillis2);
            aVar2.f1384f = currentAnimationTimeMillis2;
            this.f1388d.f1406t.scrollListBy((int) (((float) (currentAnimationTimeMillis2 - aVar2.f1384f)) * ((a4 * 4.0f) + ((-4.0f) * a4 * a4)) * aVar2.f1382d));
            View view = this.f1388d.f1392f;
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.j(view, this);
        }
    }
}
