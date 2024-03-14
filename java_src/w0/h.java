package w0;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PathMeasure;
import java.io.Closeable;
import k0.C1189d;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final g f12735a = new g(0);

    /* renamed from: b  reason: collision with root package name */
    public static final g f12736b = new g(1);

    /* renamed from: c  reason: collision with root package name */
    public static final g f12737c = new g(2);

    /* renamed from: d  reason: collision with root package name */
    public static final g f12738d = new g(3);

    /* renamed from: e  reason: collision with root package name */
    public static final float f12739e = (float) (Math.sqrt(2.0d) / 2.0d);

    public static void a(float f4, float f5, float f6, Path path) {
        PathMeasure pathMeasure = (PathMeasure) f12735a.get();
        Path path2 = (Path) f12736b.get();
        Path path3 = (Path) f12737c.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f4 == 1.0f && f5 == 0.0f) {
            C1189d.a();
        } else if (length < 1.0f || Math.abs((f5 - f4) - 1.0f) < 0.01d) {
            C1189d.a();
        } else {
            float f7 = f4 * length;
            float f8 = f5 * length;
            float f9 = f6 * length;
            float min = Math.min(f7, f8) + f9;
            float max = Math.max(f7, f8) + f9;
            if (min >= length && max >= length) {
                min = f.c(min, length);
                max = f.c(max, length);
            }
            if (min < 0.0f) {
                min = f.c(min, length);
            }
            if (max < 0.0f) {
                max = f.c(max, length);
            }
            int i4 = (min > max ? 1 : (min == max ? 0 : -1));
            if (i4 == 0) {
                path.reset();
                C1189d.a();
                return;
            }
            if (i4 >= 0) {
                min -= length;
            }
            path2.reset();
            pathMeasure.getSegment(min, max, path2, true);
            if (max > length) {
                path3.reset();
                pathMeasure.getSegment(0.0f, max % length, path3, true);
                path2.addPath(path3);
            } else if (min < 0.0f) {
                path3.reset();
                pathMeasure.getSegment(min + length, length, path3, true);
                path2.addPath(path3);
            }
            path.set(path2);
            C1189d.a();
        }
    }

    public static void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e4) {
                throw e4;
            } catch (Exception unused) {
            }
        }
    }

    public static float c() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    public static float d(Matrix matrix) {
        float[] fArr = (float[]) f12738d.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f4 = f12739e;
        fArr[2] = f4;
        fArr[3] = f4;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }
}
