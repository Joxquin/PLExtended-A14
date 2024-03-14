package k2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* renamed from: k2.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1222t extends z.c {

    /* renamed from: a  reason: collision with root package name */
    public C1223u f11218a;

    /* renamed from: b  reason: collision with root package name */
    public int f11219b;

    public C1222t() {
        this.f11219b = 0;
    }

    @Override // z.c
    public boolean h(CoordinatorLayout coordinatorLayout, View view, int i4) {
        u(coordinatorLayout, view, i4);
        if (this.f11218a == null) {
            this.f11218a = new C1223u(view);
        }
        C1223u c1223u = this.f11218a;
        View view2 = c1223u.f11220a;
        c1223u.f11221b = view2.getTop();
        c1223u.f11222c = view2.getLeft();
        this.f11218a.a();
        int i5 = this.f11219b;
        if (i5 != 0) {
            this.f11218a.b(i5);
            this.f11219b = 0;
            return true;
        }
        return true;
    }

    public final int s() {
        C1223u c1223u = this.f11218a;
        if (c1223u != null) {
            return c1223u.f11223d;
        }
        return 0;
    }

    public int t() {
        return s();
    }

    public void u(CoordinatorLayout coordinatorLayout, View view, int i4) {
        coordinatorLayout.n(view, i4);
    }

    public C1222t(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11219b = 0;
    }
}
