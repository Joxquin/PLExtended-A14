package s0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import java.util.Collections;
import java.util.List;
import p0.C1343e;
import r0.C1370a;
import r0.o;
import u0.C1420j;
/* loaded from: classes.dex */
public final class g extends b {

    /* renamed from: D  reason: collision with root package name */
    public final m0.e f12254D;

    /* renamed from: E  reason: collision with root package name */
    public final c f12255E;

    public g(com.airbnb.lottie.a aVar, e eVar, c cVar) {
        super(aVar, eVar);
        this.f12255E = cVar;
        m0.e eVar2 = new m0.e(aVar, this, new o("__container", eVar.f12230a, false));
        this.f12254D = eVar2;
        eVar2.c(Collections.emptyList(), Collections.emptyList());
    }

    @Override // s0.b, m0.f
    public final void a(RectF rectF, Matrix matrix, boolean z4) {
        super.a(rectF, matrix, z4);
        this.f12254D.a(rectF, this.f12204o, z4);
    }

    @Override // s0.b
    public final void l(Canvas canvas, Matrix matrix, int i4) {
        this.f12254D.f(canvas, matrix, i4);
    }

    @Override // s0.b
    public final C1370a m() {
        C1370a c1370a = this.f12206q.f12252w;
        return c1370a != null ? c1370a : this.f12255E.f12206q.f12252w;
    }

    @Override // s0.b
    public final C1420j n() {
        C1420j c1420j = this.f12206q.f12253x;
        return c1420j != null ? c1420j : this.f12255E.f12206q.f12253x;
    }

    @Override // s0.b
    public final void r(C1343e c1343e, int i4, List list, C1343e c1343e2) {
        this.f12254D.h(c1343e, i4, list, c1343e2);
    }
}
