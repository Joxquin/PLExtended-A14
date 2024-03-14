package k2;

import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import androidx.core.view.c0;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import java.util.WeakHashMap;
/* renamed from: k2.p  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1218p implements InterfaceC1211i {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CollapsingToolbarLayout f11203a;

    public C1218p(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f11203a = collapsingToolbarLayout;
    }

    @Override // k2.InterfaceC1211i
    public final void a(int i4) {
        CollapsingToolbarLayout collapsingToolbarLayout = this.f11203a;
        collapsingToolbarLayout.f7733y = i4;
        c0 c0Var = collapsingToolbarLayout.f7707A;
        int d4 = c0Var != null ? c0Var.d() : 0;
        int childCount = collapsingToolbarLayout.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = collapsingToolbarLayout.getChildAt(i5);
            C1217o c1217o = (C1217o) childAt.getLayoutParams();
            C1223u c4 = CollapsingToolbarLayout.c(childAt);
            int i6 = c1217o.f11201a;
            if (i6 == 1) {
                c4.b(H.a.b(-i4, 0, ((collapsingToolbarLayout.getHeight() - CollapsingToolbarLayout.c(childAt).f11221b) - childAt.getHeight()) - ((FrameLayout.LayoutParams) ((C1217o) childAt.getLayoutParams())).bottomMargin));
            } else if (i6 == 2) {
                c4.b(Math.round((-i4) * c1217o.f11202b));
            }
        }
        collapsingToolbarLayout.e();
        if (collapsingToolbarLayout.f7726r != null && d4 > 0) {
            WeakHashMap weakHashMap = J.f3079a;
            C0186x.i(collapsingToolbarLayout);
        }
        int height = collapsingToolbarLayout.getHeight();
        WeakHashMap weakHashMap2 = J.f3079a;
        int c5 = (height - C0186x.c(collapsingToolbarLayout)) - d4;
        int b4 = height - collapsingToolbarLayout.b();
        com.google.android.material.internal.a aVar = collapsingToolbarLayout.f7722n;
        float f4 = c5;
        float min = Math.min(1.0f, b4 / f4);
        aVar.f8025d = min;
        aVar.f8027e = w.f.a(1.0f, min, 0.5f, min);
        com.google.android.material.internal.a aVar2 = collapsingToolbarLayout.f7722n;
        aVar2.f8029f = collapsingToolbarLayout.f7733y + c5;
        aVar2.o(Math.abs(i4) / f4);
    }
}
