package x0;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import k0.C1198m;
/* renamed from: x0.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1456a {

    /* renamed from: a  reason: collision with root package name */
    public final C1198m f12807a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f12808b;

    /* renamed from: c  reason: collision with root package name */
    public Object f12809c;

    /* renamed from: d  reason: collision with root package name */
    public final Interpolator f12810d;

    /* renamed from: e  reason: collision with root package name */
    public final Interpolator f12811e;

    /* renamed from: f  reason: collision with root package name */
    public final Interpolator f12812f;

    /* renamed from: g  reason: collision with root package name */
    public final float f12813g;

    /* renamed from: h  reason: collision with root package name */
    public Float f12814h;

    /* renamed from: i  reason: collision with root package name */
    public float f12815i;

    /* renamed from: j  reason: collision with root package name */
    public float f12816j;

    /* renamed from: k  reason: collision with root package name */
    public int f12817k;

    /* renamed from: l  reason: collision with root package name */
    public int f12818l;

    /* renamed from: m  reason: collision with root package name */
    public float f12819m;

    /* renamed from: n  reason: collision with root package name */
    public float f12820n;

    /* renamed from: o  reason: collision with root package name */
    public PointF f12821o;

    /* renamed from: p  reason: collision with root package name */
    public PointF f12822p;

    public C1456a(C1198m c1198m, Object obj, Object obj2, Interpolator interpolator, float f4, Float f5) {
        this.f12815i = -3987645.8f;
        this.f12816j = -3987645.8f;
        this.f12817k = 784923401;
        this.f12818l = 784923401;
        this.f12819m = Float.MIN_VALUE;
        this.f12820n = Float.MIN_VALUE;
        this.f12821o = null;
        this.f12822p = null;
        this.f12807a = c1198m;
        this.f12808b = obj;
        this.f12809c = obj2;
        this.f12810d = interpolator;
        this.f12811e = null;
        this.f12812f = null;
        this.f12813g = f4;
        this.f12814h = f5;
    }

    public final float a() {
        C1198m c1198m = this.f12807a;
        if (c1198m == null) {
            return 1.0f;
        }
        if (this.f12820n == Float.MIN_VALUE) {
            if (this.f12814h == null) {
                this.f12820n = 1.0f;
            } else {
                this.f12820n = ((this.f12814h.floatValue() - this.f12813g) / (c1198m.f11132l - c1198m.f11131k)) + b();
            }
        }
        return this.f12820n;
    }

    public final float b() {
        C1198m c1198m = this.f12807a;
        if (c1198m == null) {
            return 0.0f;
        }
        if (this.f12819m == Float.MIN_VALUE) {
            float f4 = c1198m.f11131k;
            this.f12819m = (this.f12813g - f4) / (c1198m.f11132l - f4);
        }
        return this.f12819m;
    }

    public final boolean c() {
        return this.f12810d == null && this.f12811e == null && this.f12812f == null;
    }

    public final String toString() {
        return "Keyframe{startValue=" + this.f12808b + ", endValue=" + this.f12809c + ", startFrame=" + this.f12813g + ", endFrame=" + this.f12814h + ", interpolator=" + this.f12810d + '}';
    }

    public C1456a(C1198m c1198m, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, float f4) {
        this.f12815i = -3987645.8f;
        this.f12816j = -3987645.8f;
        this.f12817k = 784923401;
        this.f12818l = 784923401;
        this.f12819m = Float.MIN_VALUE;
        this.f12820n = Float.MIN_VALUE;
        this.f12821o = null;
        this.f12822p = null;
        this.f12807a = c1198m;
        this.f12808b = obj;
        this.f12809c = obj2;
        this.f12810d = null;
        this.f12811e = interpolator;
        this.f12812f = interpolator2;
        this.f12813g = f4;
        this.f12814h = null;
    }

    public C1456a(C1198m c1198m, Object obj, Object obj2, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f4, Float f5) {
        this.f12815i = -3987645.8f;
        this.f12816j = -3987645.8f;
        this.f12817k = 784923401;
        this.f12818l = 784923401;
        this.f12819m = Float.MIN_VALUE;
        this.f12820n = Float.MIN_VALUE;
        this.f12821o = null;
        this.f12822p = null;
        this.f12807a = c1198m;
        this.f12808b = obj;
        this.f12809c = obj2;
        this.f12810d = interpolator;
        this.f12811e = interpolator2;
        this.f12812f = interpolator3;
        this.f12813g = f4;
        this.f12814h = f5;
    }

    public C1456a(Object obj) {
        this.f12815i = -3987645.8f;
        this.f12816j = -3987645.8f;
        this.f12817k = 784923401;
        this.f12818l = 784923401;
        this.f12819m = Float.MIN_VALUE;
        this.f12820n = Float.MIN_VALUE;
        this.f12821o = null;
        this.f12822p = null;
        this.f12807a = null;
        this.f12808b = obj;
        this.f12809c = obj;
        this.f12810d = null;
        this.f12811e = null;
        this.f12812f = null;
        this.f12813g = Float.MIN_VALUE;
        this.f12814h = Float.valueOf(Float.MAX_VALUE);
    }
}
