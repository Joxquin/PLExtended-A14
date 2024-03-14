package k2;

import android.view.View;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import androidx.core.view.c0;
import com.google.android.material.appbar.AppBarLayout;
import java.util.Objects;
import java.util.WeakHashMap;
/* renamed from: k2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1203a implements androidx.core.view.r {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f11175d;

    public C1203a(AppBarLayout appBarLayout) {
        this.f11175d = appBarLayout;
    }

    @Override // androidx.core.view.r
    public final c0 b(View view, c0 c0Var) {
        AppBarLayout appBarLayout = this.f11175d;
        appBarLayout.getClass();
        WeakHashMap weakHashMap = J.f3079a;
        c0 c0Var2 = C0186x.a(appBarLayout) ? c0Var : null;
        if (!Objects.equals(appBarLayout.f7689j, c0Var2)) {
            appBarLayout.f7689j = c0Var2;
            appBarLayout.setWillNotDraw(!(appBarLayout.f7699t != null && appBarLayout.getTopInset() > 0));
            appBarLayout.requestLayout();
        }
        return c0Var;
    }
}
