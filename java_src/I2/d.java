package I2;

import android.animation.ValueAnimator;
import android.view.View;
/* loaded from: classes.dex */
public final class d implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View f567d;

    public d(View view) {
        this.f567d = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.f567d.invalidate();
    }
}
