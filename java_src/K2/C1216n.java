package k2;

import android.animation.ValueAnimator;
import android.view.ViewGroup;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import java.util.WeakHashMap;
/* renamed from: k2.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1216n implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ CollapsingToolbarLayout f11200d;

    public C1216n(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.f11200d = collapsingToolbarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        ViewGroup viewGroup;
        CollapsingToolbarLayout collapsingToolbarLayout = this.f11200d;
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        if (intValue != collapsingToolbarLayout.f7727s) {
            if (collapsingToolbarLayout.f7725q != null && (viewGroup = collapsingToolbarLayout.f7714f) != null) {
                WeakHashMap weakHashMap = J.f3079a;
                C0186x.i(viewGroup);
            }
            collapsingToolbarLayout.f7727s = intValue;
            WeakHashMap weakHashMap2 = J.f3079a;
            C0186x.i(collapsingToolbarLayout);
        }
    }
}
