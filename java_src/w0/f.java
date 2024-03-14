package w0;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
import m0.l;
import p0.C1343e;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final PointF f12733a = new PointF();

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float b(float f4, float f5, float f6) {
        return Math.max(f5, Math.min(f6, f4));
    }

    public static int c(float f4, float f5) {
        int i4 = (int) f4;
        int i5 = (int) f5;
        int i6 = i4 / i5;
        int i7 = i4 % i5;
        if (!((i4 ^ i5) >= 0) && i7 != 0) {
            i6--;
        }
        return i4 - (i5 * i6);
    }

    public static void d(C1343e c1343e, int i4, List list, C1343e c1343e2, l lVar) {
        if (c1343e.a(i4, lVar.getName())) {
            String name = lVar.getName();
            c1343e2.getClass();
            C1343e c1343e3 = new C1343e(c1343e2);
            c1343e3.f11919a.add(name);
            C1343e c1343e4 = new C1343e(c1343e3);
            c1343e4.f11920b = lVar;
            ((ArrayList) list).add(c1343e4);
        }
    }
}
