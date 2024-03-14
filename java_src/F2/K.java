package F2;

import android.animation.ValueAnimator;
import com.google.android.material.textfield.TextInputLayout;
/* loaded from: classes.dex */
public final class K implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f434d;

    public K(TextInputLayout textInputLayout) {
        this.f434d = textInputLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f434d.f8128u0.o(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
