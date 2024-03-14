package y0;

import android.graphics.Path;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.PathInterpolator;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: A  reason: collision with root package name */
    public static final Interpolator f12927A;

    /* renamed from: B  reason: collision with root package name */
    public static final Interpolator f12928B;

    /* renamed from: C  reason: collision with root package name */
    public static final Interpolator f12929C;

    /* renamed from: D  reason: collision with root package name */
    public static final Interpolator f12930D;

    /* renamed from: E  reason: collision with root package name */
    public static final Interpolator f12931E;

    /* renamed from: F  reason: collision with root package name */
    public static final Interpolator f12932F;

    /* renamed from: G  reason: collision with root package name */
    public static final d f12933G;

    /* renamed from: H  reason: collision with root package name */
    public static final d f12934H;

    /* renamed from: I  reason: collision with root package name */
    public static final d f12935I;

    /* renamed from: J  reason: collision with root package name */
    public static final d f12936J;

    /* renamed from: a  reason: collision with root package name */
    public static final Interpolator f12937a;

    /* renamed from: b  reason: collision with root package name */
    public static final Interpolator f12938b;

    /* renamed from: c  reason: collision with root package name */
    public static final Interpolator f12939c;

    /* renamed from: d  reason: collision with root package name */
    public static final Interpolator f12940d;

    /* renamed from: e  reason: collision with root package name */
    public static final animation.InterpolatorC1488a f12941e;

    /* renamed from: f  reason: collision with root package name */
    public static final animation.InterpolatorC1488a f12942f;

    /* renamed from: g  reason: collision with root package name */
    public static final Interpolator f12943g;

    /* renamed from: h  reason: collision with root package name */
    public static final Interpolator f12944h;

    /* renamed from: i  reason: collision with root package name */
    public static final Interpolator f12945i;

    /* renamed from: j  reason: collision with root package name */
    public static final Interpolator f12946j;

    /* renamed from: k  reason: collision with root package name */
    public static final Interpolator f12947k;

    /* renamed from: l  reason: collision with root package name */
    public static final Interpolator f12948l;

    /* renamed from: m  reason: collision with root package name */
    public static final Interpolator f12949m;

    /* renamed from: n  reason: collision with root package name */
    public static final Interpolator f12950n;

    /* renamed from: o  reason: collision with root package name */
    public static final Interpolator f12951o;

    /* renamed from: p  reason: collision with root package name */
    public static final Interpolator f12952p;

    /* renamed from: q  reason: collision with root package name */
    public static final Interpolator f12953q;

    /* renamed from: r  reason: collision with root package name */
    public static final Interpolator f12954r;

    /* renamed from: s  reason: collision with root package name */
    public static final Interpolator f12955s;

    /* renamed from: t  reason: collision with root package name */
    public static final Interpolator f12956t;

    /* renamed from: u  reason: collision with root package name */
    public static final Interpolator f12957u;

    /* renamed from: v  reason: collision with root package name */
    public static final Interpolator f12958v;

    /* renamed from: w  reason: collision with root package name */
    public static final Interpolator f12959w;

    /* renamed from: x  reason: collision with root package name */
    public static final Interpolator f12960x;

    /* renamed from: y  reason: collision with root package name */
    public static final Interpolator f12961y;

    /* renamed from: z  reason: collision with root package name */
    public static final Interpolator f12962z;

    /* JADX WARN: Type inference failed for: r0v5, types: [y0.a] */
    /* JADX WARN: Type inference failed for: r0v6, types: [y0.a] */
    static {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(0.05f, 0.0f, 0.133333f, 0.06f, 0.166666f, 0.4f);
        path.cubicTo(0.208333f, 0.82f, 0.25f, 1.0f, 1.0f, 1.0f);
        f12937a = new PathInterpolator(path);
        f12938b = new PathInterpolator(0.3f, 0.0f, 0.8f, 0.15f);
        f12939c = new PathInterpolator(0.05f, 0.7f, 0.1f, 1.0f);
        Path path2 = new Path();
        path2.moveTo(0.0f, 0.0f);
        path2.cubicTo(0.05f, 0.0f, 0.133333f, 0.08f, 0.166666f, 0.4f);
        path2.cubicTo(0.225f, 0.94f, 0.5f, 1.0f, 1.0f, 1.0f);
        f12940d = new PathInterpolator(path2);
        f12941e = new Interpolator() { // from class: y0.a
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f4) {
                switch (r1) {
                    case 0:
                        Interpolator interpolator = e.f12937a;
                        return 1.0f;
                    default:
                        return f4 < 1.0f ? 0.0f : 1.0f;
                }
            }
        };
        f12942f = new Interpolator() { // from class: y0.a
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f4) {
                switch (r1) {
                    case 0:
                        Interpolator interpolator = e.f12937a;
                        return 1.0f;
                    default:
                        return f4 < 1.0f ? 0.0f : 1.0f;
                }
            }
        };
        f12943g = new OvershootInterpolator(0.75f);
        f12944h = new OvershootInterpolator(1.2f);
        f12945i = new OvershootInterpolator(1.7f);
        f12946j = new PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f);
        new PathInterpolator(0.3f, 0.0f, 1.0f, 1.0f);
        f12947k = new PathInterpolator(0.0f, 0.0f, 0.0f, 1.0f);
        PathInterpolator pathInterpolator = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
        f12948l = pathInterpolator;
        new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f);
        PathInterpolator pathInterpolator2 = new PathInterpolator(0.0f, 0.0f, 0.2f, 1.0f);
        f12949m = new LinearInterpolator();
        f12950n = pathInterpolator;
        f12951o = pathInterpolator2;
        new PathInterpolator(0.8f, 0.0f, 0.6f, 1.0f);
        new PathInterpolator(0.8f, 0.0f, 1.0f, 1.0f);
        f12952p = new PathInterpolator(0.2f, 0.0f, 0.0f, 1.0f);
        f12953q = new PathInterpolator(0.6f, 0.0f, 0.4f, 1.0f);
        f12954r = new PathInterpolator(0.0f, 0.0f, 0.2f, 1.0f);
        f12955s = new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f);
        f12956t = new PathInterpolator(0.0f, 0.0f, 0.0f, 1.0f);
        new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f);
        new PathInterpolator(0.0f, 0.0f, 0.8f, 1.0f);
        f12957u = new AccelerateInterpolator();
        new AccelerateInterpolator(0.5f);
        f12958v = new AccelerateInterpolator(0.75f);
        f12959w = new AccelerateInterpolator(1.5f);
        f12960x = new AccelerateInterpolator(2.0f);
        f12961y = new AccelerateDecelerateInterpolator();
        f12962z = new DecelerateInterpolator();
        f12927A = new DecelerateInterpolator(1.5f);
        f12928B = new DecelerateInterpolator(1.7f);
        f12929C = new DecelerateInterpolator(2.0f);
        f12930D = new DecelerateInterpolator(2.5f);
        f12931E = new DecelerateInterpolator(3.0f);
        new PathInterpolator(0.4f, 0.0f, 0.6f, 1.0f);
        new PathInterpolator(0.4f, 0.0f, 0.2f, 1.4f);
        new PathInterpolator(0.4f, 0.0f, 0.2f, 1.1f);
        new PathInterpolator(0.3f, 0.0f, 0.5f, 1.0f);
        new BounceInterpolator();
        new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
        f12932F = new PathInterpolator(0.3f, 0.0f, 0.1f, 1.0f);
        new PathInterpolator(0.9f, 0.0f, 0.7f, 1.0f);
        f12933G = new d(0);
        f12934H = new d(1);
        f12935I = new d(2);
        f12936J = new d(3);
    }

    public static float a(Interpolator interpolator, float f4, float f5, float f6) {
        if (f6 >= f5) {
            if (f4 == f5 && f4 == f6) {
                return f4 == 0.0f ? 0.0f : 1.0f;
            } else if (f4 < f5) {
                return 0.0f;
            } else {
                if (f4 > f6) {
                    return 1.0f;
                }
                return interpolator.getInterpolation((f4 - f5) / (f6 - f5));
            }
        }
        throw new IllegalArgumentException(String.format("upperBound (%f) must be greater than lowerBound (%f)", Float.valueOf(f6), Float.valueOf(f5)));
    }

    public static animation.InterpolatorC1489b b(float f4, float f5, Interpolator interpolator) {
        if (f5 >= f4) {
            return new animation.InterpolatorC1489b(interpolator, f4, f5, 0);
        }
        throw new IllegalArgumentException(String.format("upperBound (%f) must be greater than lowerBound (%f)", Float.valueOf(f5), Float.valueOf(f4)));
    }

    public static d c(float f4) {
        return Math.abs(f4) > 10.0f ? f12935I : f12936J;
    }
}
