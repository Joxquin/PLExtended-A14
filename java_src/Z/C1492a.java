package z;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import androidx.core.view.a0;
import androidx.core.view.c0;
import androidx.core.view.r;
import java.util.Objects;
import java.util.WeakHashMap;
/* renamed from: z.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1492a implements r {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f12965d;

    public C1492a(CoordinatorLayout coordinatorLayout) {
        this.f12965d = coordinatorLayout;
    }

    @Override // androidx.core.view.r
    public final c0 b(View view, c0 c0Var) {
        CoordinatorLayout coordinatorLayout = this.f12965d;
        if (!Objects.equals(coordinatorLayout.f3050p, c0Var)) {
            coordinatorLayout.f3050p = c0Var;
            boolean z4 = true;
            boolean z5 = c0Var.d() > 0;
            coordinatorLayout.f3051q = z5;
            coordinatorLayout.setWillNotDraw((z5 || coordinatorLayout.getBackground() != null) ? false : false);
            a0 a0Var = c0Var.f3106a;
            if (!a0Var.m()) {
                int childCount = coordinatorLayout.getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = coordinatorLayout.getChildAt(i4);
                    WeakHashMap weakHashMap = J.f3079a;
                    if (C0186x.a(childAt) && ((f) childAt.getLayoutParams()).f12967a != null && a0Var.m()) {
                        break;
                    }
                }
            }
            coordinatorLayout.requestLayout();
        }
        return c0Var;
    }
}
