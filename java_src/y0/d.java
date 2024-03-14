package y0;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
/* loaded from: classes.dex */
public final class d implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f12926a;

    public /* synthetic */ d(int i4) {
        this.f12926a = i4;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f4) {
        switch (this.f12926a) {
            case 0:
                return ((DecelerateInterpolator) e.f12931E).getInterpolation(1.0f - e.f12934H.getInterpolation(1.0f - f4));
            case 1:
                return (1.0f - (0.35f / (f4 + 0.35f))) / 0.7407408f;
            case 2:
                float f5 = f4 - 1.0f;
                return (f5 * f5 * f5 * f5 * f5) + 1.0f;
            default:
                float f6 = f4 - 1.0f;
                return (f6 * f6 * f6) + 1.0f;
        }
    }
}
