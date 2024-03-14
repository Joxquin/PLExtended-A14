package y0;

import android.view.animation.Interpolator;
import w.f;
/* renamed from: y0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class animation.InterpolatorC1489b implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f12921a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Interpolator f12922b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ float f12923c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ float f12924d;

    public /* synthetic */ animation.InterpolatorC1489b(Interpolator interpolator, float f4, float f5, int i4) {
        this.f12921a = i4;
        this.f12922b = interpolator;
        this.f12923c = f4;
        this.f12924d = f5;
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f4) {
        switch (this.f12921a) {
            case 0:
                return e.a(this.f12922b, f4, this.f12923c, this.f12924d);
            default:
                Interpolator interpolator = this.f12922b;
                float f5 = this.f12923c;
                return f.a(this.f12924d, f5, interpolator.getInterpolation(f4), f5);
        }
    }
}
