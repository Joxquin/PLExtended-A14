package j0;

import android.view.animation.Interpolator;
/* renamed from: j0.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class animation.InterpolatorC1100c implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f4) {
        float f5 = f4 - 1.0f;
        return (f5 * f5 * f5 * f5 * f5) + 1.0f;
    }
}
