package e1;

import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import y0.e;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f4) {
        return Math.min(1.0f, ((OvershootInterpolator) e.f12944h).getInterpolation(f4));
    }
}
