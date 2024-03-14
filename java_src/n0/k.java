package n0;

import android.graphics.PointF;
import java.util.List;
import r0.C1373d;
import v.C1429e;
import w0.C1444a;
import x0.C1456a;
/* loaded from: classes.dex */
public final class k extends m {

    /* renamed from: i  reason: collision with root package name */
    public final C1373d f11763i;

    public k(List list) {
        super(list);
        C1373d c1373d = (C1373d) ((C1456a) list.get(0)).f12808b;
        int length = c1373d != null ? c1373d.f12075b.length : 0;
        this.f11763i = new C1373d(new float[length], new int[length]);
    }

    @Override // n0.f
    public final Object g(C1456a c1456a, float f4) {
        C1373d c1373d = (C1373d) c1456a.f12808b;
        C1373d c1373d2 = (C1373d) c1456a.f12809c;
        C1373d c1373d3 = this.f11763i;
        c1373d3.getClass();
        int[] iArr = c1373d.f12075b;
        int length = iArr.length;
        int[] iArr2 = c1373d2.f12075b;
        if (length != iArr2.length) {
            StringBuilder sb = new StringBuilder("Cannot interpolate between gradients. Lengths vary (");
            sb.append(iArr.length);
            sb.append(" vs ");
            throw new IllegalArgumentException(C1429e.a(sb, iArr2.length, ")"));
        }
        for (int i4 = 0; i4 < iArr.length; i4++) {
            float f5 = c1373d.f12074a[i4];
            float f6 = c1373d2.f12074a[i4];
            PointF pointF = w0.f.f12733a;
            c1373d3.f12074a[i4] = w.f.a(f6, f5, f4, f5);
            c1373d3.f12075b[i4] = C1444a.c(iArr[i4], iArr2[i4], f4);
        }
        return c1373d3;
    }
}
