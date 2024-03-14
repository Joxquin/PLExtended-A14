package s0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import k0.C1189d;
import k0.C1198m;
import k0.InterfaceC1182G;
import n0.x;
import p0.C1343e;
import q0.C1360b;
import w0.C1446c;
/* loaded from: classes.dex */
public final class c extends b {

    /* renamed from: D  reason: collision with root package name */
    public n0.f f12216D;

    /* renamed from: E  reason: collision with root package name */
    public final List f12217E;

    /* renamed from: F  reason: collision with root package name */
    public final RectF f12218F;

    /* renamed from: G  reason: collision with root package name */
    public final RectF f12219G;

    /* renamed from: H  reason: collision with root package name */
    public final Paint f12220H;

    /* renamed from: I  reason: collision with root package name */
    public Boolean f12221I;

    /* renamed from: J  reason: collision with root package name */
    public Boolean f12222J;

    /* renamed from: K  reason: collision with root package name */
    public boolean f12223K;

    public c(com.airbnb.lottie.a aVar, e eVar, List list, C1198m c1198m) {
        super(aVar, eVar);
        int i4;
        b bVar;
        b cVar;
        this.f12217E = new ArrayList();
        this.f12218F = new RectF();
        this.f12219G = new RectF();
        this.f12220H = new Paint();
        this.f12223K = true;
        C1360b c1360b = eVar.f12248s;
        if (c1360b != null) {
            n0.f a4 = c1360b.a();
            this.f12216D = a4;
            d(a4);
            this.f12216D.a(this);
        } else {
            this.f12216D = null;
        }
        q.j jVar = new q.j(c1198m.f11129i.size());
        int size = list.size() - 1;
        b bVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            e eVar2 = (e) list.get(size);
            int ordinal = eVar2.f12234e.ordinal();
            if (ordinal == 0) {
                cVar = new c(aVar, eVar2, (List) c1198m.f11123c.get(eVar2.f12236g), c1198m);
            } else if (ordinal == 1) {
                cVar = new h(aVar, eVar2);
            } else if (ordinal == 2) {
                cVar = new d(aVar, eVar2);
            } else if (ordinal == 3) {
                cVar = new f(aVar, eVar2);
            } else if (ordinal == 4) {
                cVar = new g(aVar, eVar2, this);
            } else if (ordinal != 5) {
                C1446c.b("Unknown layer type " + eVar2.f12234e);
                cVar = null;
            } else {
                cVar = new j(aVar, eVar2);
            }
            if (cVar != null) {
                jVar.f(cVar.f12206q.f12233d, cVar);
                if (bVar2 != null) {
                    bVar2.f12209t = cVar;
                    bVar2 = null;
                } else {
                    ((ArrayList) this.f12217E).add(0, cVar);
                    int ordinal2 = eVar2.f12250u.ordinal();
                    if (ordinal2 == 1 || ordinal2 == 2) {
                        bVar2 = cVar;
                    }
                }
            }
            size--;
        }
        for (i4 = 0; i4 < jVar.g(); i4++) {
            b bVar3 = (b) jVar.c(jVar.e(i4));
            if (bVar3 != null && (bVar = (b) jVar.c(bVar3.f12206q.f12235f)) != null) {
                bVar3.f12210u = bVar;
            }
        }
    }

    @Override // s0.b, m0.f
    public final void a(RectF rectF, Matrix matrix, boolean z4) {
        super.a(rectF, matrix, z4);
        ArrayList arrayList = (ArrayList) this.f12217E;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RectF rectF2 = this.f12218F;
            rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
            ((b) arrayList.get(size)).a(rectF2, this.f12204o, true);
            rectF.union(rectF2);
        }
    }

    @Override // s0.b, p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        super.e(cVar, obj);
        if (obj == InterfaceC1182G.f11052E) {
            if (cVar == null) {
                n0.f fVar = this.f12216D;
                if (fVar != null) {
                    fVar.k(null);
                    return;
                }
                return;
            }
            x xVar = new x(cVar, null);
            this.f12216D = xVar;
            xVar.a(this);
            d(this.f12216D);
        }
    }

    @Override // s0.b
    public final void l(Canvas canvas, Matrix matrix, int i4) {
        RectF rectF = this.f12219G;
        e eVar = this.f12206q;
        rectF.set(0.0f, 0.0f, eVar.f12244o, eVar.f12245p);
        matrix.mapRect(rectF);
        boolean z4 = this.f12205p.f4334v;
        List list = this.f12217E;
        boolean z5 = z4 && ((ArrayList) list).size() > 1 && i4 != 255;
        if (z5) {
            Paint paint = this.f12220H;
            paint.setAlpha(i4);
            w0.g gVar = w0.h.f12735a;
            canvas.saveLayer(rectF, paint);
            C1189d.a();
        } else {
            canvas.save();
        }
        if (z5) {
            i4 = 255;
        }
        ArrayList arrayList = (ArrayList) list;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((!this.f12223K && "__container".equals(eVar.f12232c)) || rectF.isEmpty()) ? true : canvas.clipRect(rectF)) {
                ((b) arrayList.get(size)).f(canvas, matrix, i4);
            }
        }
        canvas.restore();
        C1189d.a();
    }

    @Override // s0.b
    public final void r(C1343e c1343e, int i4, List list, C1343e c1343e2) {
        int i5 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) this.f12217E;
            if (i5 >= arrayList.size()) {
                return;
            }
            ((b) arrayList.get(i5)).h(c1343e, i4, list, c1343e2);
            i5++;
        }
    }

    @Override // s0.b
    public final void s(boolean z4) {
        super.s(z4);
        Iterator it = ((ArrayList) this.f12217E).iterator();
        while (it.hasNext()) {
            ((b) it.next()).s(z4);
        }
    }

    @Override // s0.b
    public final void t(float f4) {
        super.t(f4);
        n0.f fVar = this.f12216D;
        e eVar = this.f12206q;
        if (fVar != null) {
            C1198m c1198m = this.f12205p.f4316d;
            f4 = ((((Float) fVar.f()).floatValue() * eVar.f12231b.f11133m) - eVar.f12231b.f11131k) / ((c1198m.f11132l - c1198m.f11131k) + 0.01f);
        }
        if (this.f12216D == null) {
            C1198m c1198m2 = eVar.f12231b;
            f4 -= eVar.f12243n / (c1198m2.f11132l - c1198m2.f11131k);
        }
        if (eVar.f12242m != 0.0f && !"__container".equals(eVar.f12232c)) {
            f4 /= eVar.f12242m;
        }
        ArrayList arrayList = (ArrayList) this.f12217E;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            ((b) arrayList.get(size)).t(f4);
        }
    }

    public final boolean u() {
        if (this.f12222J == null) {
            List list = this.f12217E;
            for (int size = ((ArrayList) list).size() - 1; size >= 0; size--) {
                b bVar = (b) ((ArrayList) list).get(size);
                if (bVar instanceof g) {
                    if (bVar.o()) {
                        this.f12222J = Boolean.TRUE;
                        return true;
                    }
                } else if ((bVar instanceof c) && ((c) bVar).u()) {
                    this.f12222J = Boolean.TRUE;
                    return true;
                }
            }
            this.f12222J = Boolean.FALSE;
        }
        return this.f12222J.booleanValue();
    }
}
