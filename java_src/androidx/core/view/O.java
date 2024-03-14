package androidx.core.view;

import android.view.View;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class O {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f3088a;

    public O(View view) {
        this.f3088a = new WeakReference(view);
    }

    public final void a(float f4) {
        View view = (View) this.f3088a.get();
        if (view != null) {
            view.animate().alpha(f4);
        }
    }

    public final void b() {
        View view = (View) this.f3088a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c(long j4) {
        View view = (View) this.f3088a.get();
        if (view != null) {
            view.animate().setDuration(j4);
        }
    }

    public final void d(P p4) {
        View view = (View) this.f3088a.get();
        if (view != null) {
            if (p4 != null) {
                view.animate().setListener(new N(p4, view));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(float f4) {
        View view = (View) this.f3088a.get();
        if (view != null) {
            view.animate().translationY(f4);
        }
    }
}
