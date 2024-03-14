package k2;

import android.view.View;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import androidx.core.view.c0;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import java.util.Objects;
import java.util.WeakHashMap;
/* renamed from: k2.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1215m implements androidx.core.view.r {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ CollapsingToolbarLayout f11199d;

    public C1215m(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f11199d = collapsingToolbarLayout;
    }

    @Override // androidx.core.view.r
    public final c0 b(View view, c0 c0Var) {
        CollapsingToolbarLayout collapsingToolbarLayout = this.f11199d;
        collapsingToolbarLayout.getClass();
        WeakHashMap weakHashMap = J.f3079a;
        c0 c0Var2 = C0186x.a(collapsingToolbarLayout) ? c0Var : null;
        if (!Objects.equals(collapsingToolbarLayout.f7707A, c0Var2)) {
            collapsingToolbarLayout.f7707A = c0Var2;
            collapsingToolbarLayout.requestLayout();
        }
        return c0Var.f3106a.c();
    }
}
