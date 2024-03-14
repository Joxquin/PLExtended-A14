package i;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.view.O;
import androidx.core.view.P;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: c  reason: collision with root package name */
    public Interpolator f9601c;

    /* renamed from: d  reason: collision with root package name */
    public P f9602d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f9603e;

    /* renamed from: b  reason: collision with root package name */
    public long f9600b = -1;

    /* renamed from: f  reason: collision with root package name */
    public final k f9604f = new k(this);

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f9599a = new ArrayList();

    public final void a() {
        if (this.f9603e) {
            Iterator it = this.f9599a.iterator();
            while (it.hasNext()) {
                ((O) it.next()).b();
            }
            this.f9603e = false;
        }
    }

    public final void b() {
        View view;
        if (this.f9603e) {
            return;
        }
        Iterator it = this.f9599a.iterator();
        while (it.hasNext()) {
            O o4 = (O) it.next();
            long j4 = this.f9600b;
            if (j4 >= 0) {
                o4.c(j4);
            }
            Interpolator interpolator = this.f9601c;
            if (interpolator != null && (view = (View) o4.f3088a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f9602d != null) {
                o4.d(this.f9604f);
            }
            View view2 = (View) o4.f3088a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f9603e = true;
    }
}
