package n0;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import x0.C1456a;
/* loaded from: classes.dex */
public final class t extends f {

    /* renamed from: i  reason: collision with root package name */
    public final PointF f11778i;

    /* renamed from: j  reason: collision with root package name */
    public final PointF f11779j;

    /* renamed from: k  reason: collision with root package name */
    public final f f11780k;

    /* renamed from: l  reason: collision with root package name */
    public final f f11781l;

    /* renamed from: m  reason: collision with root package name */
    public x0.c f11782m;

    /* renamed from: n  reason: collision with root package name */
    public x0.c f11783n;

    public t(j jVar, j jVar2) {
        super(Collections.emptyList());
        this.f11778i = new PointF();
        this.f11779j = new PointF();
        this.f11780k = jVar;
        this.f11781l = jVar2;
        j(this.f11750d);
    }

    @Override // n0.f
    public final Object f() {
        return l(0.0f);
    }

    @Override // n0.f
    public final /* bridge */ /* synthetic */ Object g(C1456a c1456a, float f4) {
        return l(f4);
    }

    @Override // n0.f
    public final void j(float f4) {
        f fVar = this.f11780k;
        fVar.j(f4);
        f fVar2 = this.f11781l;
        fVar2.j(f4);
        this.f11778i.set(((Float) fVar.f()).floatValue(), ((Float) fVar2.f()).floatValue());
        int i4 = 0;
        while (true) {
            List list = this.f11747a;
            if (i4 >= ((ArrayList) list).size()) {
                return;
            }
            ((InterfaceC1313a) ((ArrayList) list).get(i4)).b();
            i4++;
        }
    }

    public final PointF l(float f4) {
        Float f5;
        f fVar;
        C1456a b4;
        f fVar2;
        C1456a b5;
        Float f6 = null;
        if (this.f11782m == null || (b5 = (fVar2 = this.f11780k).b()) == null) {
            f5 = null;
        } else {
            float d4 = fVar2.d();
            Float f7 = b5.f12814h;
            x0.c cVar = this.f11782m;
            float f8 = b5.f12813g;
            f5 = (Float) cVar.b(f8, f7 == null ? f8 : f7.floatValue(), (Float) b5.f12808b, (Float) b5.f12809c, f4, f4, d4);
        }
        if (this.f11783n != null && (b4 = (fVar = this.f11781l).b()) != null) {
            float d5 = fVar.d();
            Float f9 = b4.f12814h;
            x0.c cVar2 = this.f11783n;
            float f10 = b4.f12813g;
            f6 = (Float) cVar2.b(f10, f9 == null ? f10 : f9.floatValue(), (Float) b4.f12808b, (Float) b4.f12809c, f4, f4, d5);
        }
        PointF pointF = this.f11778i;
        PointF pointF2 = this.f11779j;
        if (f5 == null) {
            pointF2.set(pointF.x, 0.0f);
        } else {
            pointF2.set(f5.floatValue(), 0.0f);
        }
        if (f6 == null) {
            pointF2.set(pointF2.x, pointF.y);
        } else {
            pointF2.set(pointF2.x, f6.floatValue());
        }
        return pointF2;
    }
}
