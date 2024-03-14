package z;

import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* loaded from: classes.dex */
public final class g implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f12984d;

    public g(CoordinatorLayout coordinatorLayout) {
        this.f12984d = coordinatorLayout;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        this.f12984d.m(0);
        return true;
    }
}
