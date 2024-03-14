package u0;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import java.lang.ref.WeakReference;
import v0.C1430a;
/* loaded from: classes.dex */
public final class t {

    /* renamed from: b  reason: collision with root package name */
    public static q.n f12419b;

    /* renamed from: a  reason: collision with root package name */
    public static final Interpolator f12418a = new LinearInterpolator();

    /* renamed from: c  reason: collision with root package name */
    public static final C1430a f12420c = C1430a.a("t", "s", "e", "o", "i", "h", "to", "ti");

    /* renamed from: d  reason: collision with root package name */
    public static final C1430a f12421d = C1430a.a("x", "y");

    public static Interpolator a(PointF pointF, PointF pointF2) {
        WeakReference weakReference;
        pointF.x = w0.f.b(pointF.x, -1.0f, 1.0f);
        pointF.y = w0.f.b(pointF.y, -100.0f, 100.0f);
        pointF2.x = w0.f.b(pointF2.x, -1.0f, 1.0f);
        float b4 = w0.f.b(pointF2.y, -100.0f, 100.0f);
        pointF2.y = b4;
        float f4 = pointF.x;
        float f5 = pointF.y;
        float f6 = pointF2.x;
        w0.g gVar = w0.h.f12735a;
        int i4 = f4 != 0.0f ? (int) (527 * f4) : 17;
        if (f5 != 0.0f) {
            i4 = (int) (i4 * 31 * f5);
        }
        if (f6 != 0.0f) {
            i4 = (int) (i4 * 31 * f6);
        }
        if (b4 != 0.0f) {
            i4 = (int) (i4 * 31 * b4);
        }
        synchronized (t.class) {
            if (f12419b == null) {
                f12419b = new q.n();
            }
            weakReference = (WeakReference) f12419b.c(i4);
        }
        PathInterpolator pathInterpolator = weakReference != null ? (Interpolator) weakReference.get() : null;
        if (weakReference == null || pathInterpolator == null) {
            try {
                pathInterpolator = new PathInterpolator(pointF.x, pointF.y, pointF2.x, pointF2.y);
            } catch (IllegalArgumentException e4) {
                pathInterpolator = "The Path cannot loop back on itself.".equals(e4.getMessage()) ? new PathInterpolator(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y) : new LinearInterpolator();
            }
            try {
                WeakReference weakReference2 = new WeakReference(pathInterpolator);
                synchronized (t.class) {
                    f12419b.d(i4, weakReference2);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
        }
        return pathInterpolator;
    }

    /* JADX WARN: Removed duplicated region for block: B:98:0x0217 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static x0.C1456a b(com.airbnb.lottie.parser.moshi.a r23, k0.C1198m r24, float r25, u0.L r26, boolean r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 768
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: u0.t.b(com.airbnb.lottie.parser.moshi.a, k0.m, float, u0.L, boolean, boolean):x0.a");
    }
}
