package k2;

import android.animation.ValueAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
/* renamed from: k2.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1205c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f11178d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AppBarLayout f11179e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ AppBarLayout.BaseBehavior f11180f;

    public C1205c(AppBarLayout.BaseBehavior baseBehavior, CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
        this.f11180f = baseBehavior;
        this.f11178d = coordinatorLayout;
        this.f11179e = appBarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f11180f.A(this.f11178d, this.f11179e, ((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
