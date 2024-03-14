package k2;

import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import java.util.WeakHashMap;
/* renamed from: k2.q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1219q implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final CoordinatorLayout f11204d;

    /* renamed from: e  reason: collision with root package name */
    public final View f11205e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ AbstractC1220r f11206f;

    public RunnableC1219q(AbstractC1220r abstractC1220r, CoordinatorLayout coordinatorLayout, View view) {
        this.f11206f = abstractC1220r;
        this.f11204d = coordinatorLayout;
        this.f11205e = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OverScroller overScroller;
        if (this.f11205e == null || (overScroller = this.f11206f.f11208d) == null) {
            return;
        }
        if (!overScroller.computeScrollOffset()) {
            this.f11206f.y(this.f11205e, this.f11204d);
            return;
        }
        AbstractC1220r abstractC1220r = this.f11206f;
        abstractC1220r.A(this.f11204d, this.f11205e, abstractC1220r.f11208d.getCurrY());
        View view = this.f11205e;
        WeakHashMap weakHashMap = J.f3079a;
        C0186x.j(view, this);
    }
}
