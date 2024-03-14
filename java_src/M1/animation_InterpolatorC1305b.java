package m1;

import android.view.animation.Interpolator;
/* renamed from: m1.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class animation.InterpolatorC1305b implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f4) {
        return 1.0f - ((float) Math.pow(400.0d, (-f4) * 1.4d));
    }
}
