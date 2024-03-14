package m0;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
import k0.C1189d;
import k0.InterfaceC1182G;
import l0.C1265a;
import n0.InterfaceC1313a;
import n0.x;
import p0.C1343e;
import q0.C1359a;
/* loaded from: classes.dex */
public final class h implements f, InterfaceC1313a, l {

    /* renamed from: a  reason: collision with root package name */
    public final Path f11621a;

    /* renamed from: b  reason: collision with root package name */
    public final C1265a f11622b;

    /* renamed from: c  reason: collision with root package name */
    public final s0.b f11623c;

    /* renamed from: d  reason: collision with root package name */
    public final String f11624d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f11625e;

    /* renamed from: f  reason: collision with root package name */
    public final List f11626f;

    /* renamed from: g  reason: collision with root package name */
    public final n0.g f11627g;

    /* renamed from: h  reason: collision with root package name */
    public final n0.l f11628h;

    /* renamed from: i  reason: collision with root package name */
    public x f11629i;

    /* renamed from: j  reason: collision with root package name */
    public final com.airbnb.lottie.a f11630j;

    /* renamed from: k  reason: collision with root package name */
    public n0.f f11631k;

    /* renamed from: l  reason: collision with root package name */
    public float f11632l;

    /* renamed from: m  reason: collision with root package name */
    public final n0.i f11633m;

    public h(com.airbnb.lottie.a aVar, s0.b bVar, r0.n nVar) {
        q0.d dVar;
        Path path = new Path();
        this.f11621a = path;
        this.f11622b = new C1265a(1);
        this.f11626f = new ArrayList();
        this.f11623c = bVar;
        this.f11624d = nVar.f12130c;
        this.f11625e = nVar.f12133f;
        this.f11630j = aVar;
        if (bVar.m() != null) {
            n0.f a4 = bVar.m().f12068a.a();
            this.f11631k = a4;
            a4.a(this);
            bVar.d(this.f11631k);
        }
        if (bVar.n() != null) {
            this.f11633m = new n0.i(this, bVar, bVar.n());
        }
        C1359a c1359a = nVar.f12131d;
        if (c1359a == null || (dVar = nVar.f12132e) == null) {
            this.f11627g = null;
            this.f11628h = null;
            return;
        }
        path.setFillType(nVar.f12129b);
        n0.f a5 = c1359a.a();
        this.f11627g = (n0.g) a5;
        a5.a(this);
        bVar.d(a5);
        n0.f a6 = dVar.a();
        this.f11628h = (n0.l) a6;
        a6.a(this);
        bVar.d(a6);
    }

    @Override // m0.f
    public final void a(RectF rectF, Matrix matrix, boolean z4) {
        Path path = this.f11621a;
        path.reset();
        int i4 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) this.f11626f;
            if (i4 >= arrayList.size()) {
                path.computeBounds(rectF, false);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                return;
            }
            path.addPath(((n) arrayList.get(i4)).g(), matrix);
            i4++;
        }
    }

    @Override // n0.InterfaceC1313a
    public final void b() {
        this.f11630j.invalidateSelf();
    }

    @Override // m0.InterfaceC1303d
    public final void c(List list, List list2) {
        for (int i4 = 0; i4 < list2.size(); i4++) {
            InterfaceC1303d interfaceC1303d = (InterfaceC1303d) list2.get(i4);
            if (interfaceC1303d instanceof n) {
                ((ArrayList) this.f11626f).add((n) interfaceC1303d);
            }
        }
    }

    @Override // p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        if (obj == InterfaceC1182G.f11063a) {
            this.f11627g.k(cVar);
        } else if (obj == InterfaceC1182G.f11066d) {
            this.f11628h.k(cVar);
        } else {
            ColorFilter colorFilter = InterfaceC1182G.f11058K;
            s0.b bVar = this.f11623c;
            if (obj == colorFilter) {
                x xVar = this.f11629i;
                if (xVar != null) {
                    bVar.q(xVar);
                }
                if (cVar == null) {
                    this.f11629i = null;
                    return;
                }
                x xVar2 = new x(cVar, null);
                this.f11629i = xVar2;
                xVar2.a(this);
                bVar.d(this.f11629i);
            } else if (obj == InterfaceC1182G.f11072j) {
                n0.f fVar = this.f11631k;
                if (fVar != null) {
                    fVar.k(cVar);
                    return;
                }
                x xVar3 = new x(cVar, null);
                this.f11631k = xVar3;
                xVar3.a(this);
                bVar.d(this.f11631k);
            } else {
                Integer num = InterfaceC1182G.f11067e;
                n0.i iVar = this.f11633m;
                if (obj == num && iVar != null) {
                    iVar.f11757b.k(cVar);
                } else if (obj == InterfaceC1182G.f11054G && iVar != null) {
                    iVar.c(cVar);
                } else if (obj == InterfaceC1182G.f11055H && iVar != null) {
                    iVar.f11759d.k(cVar);
                } else if (obj == InterfaceC1182G.f11056I && iVar != null) {
                    iVar.f11760e.k(cVar);
                } else if (obj != InterfaceC1182G.f11057J || iVar == null) {
                } else {
                    iVar.f11761f.k(cVar);
                }
            }
        }
    }

    @Override // m0.f
    public final void f(Canvas canvas, Matrix matrix, int i4) {
        BlurMaskFilter blurMaskFilter;
        if (this.f11625e) {
            return;
        }
        n0.g gVar = this.f11627g;
        int l4 = gVar.l(gVar.b(), gVar.d());
        PointF pointF = w0.f.f12733a;
        int i5 = 0;
        int max = (Math.max(0, Math.min(255, (int) ((((i4 / 255.0f) * ((Integer) this.f11628h.f()).intValue()) / 100.0f) * 255.0f))) << 24) | (l4 & 16777215);
        C1265a c1265a = this.f11622b;
        c1265a.setColor(max);
        x xVar = this.f11629i;
        if (xVar != null) {
            c1265a.setColorFilter((ColorFilter) xVar.f());
        }
        n0.f fVar = this.f11631k;
        if (fVar != null) {
            float floatValue = ((Float) fVar.f()).floatValue();
            if (floatValue == 0.0f) {
                c1265a.setMaskFilter(null);
            } else if (floatValue != this.f11632l) {
                s0.b bVar = this.f11623c;
                if (bVar.f12188B == floatValue) {
                    blurMaskFilter = bVar.f12189C;
                } else {
                    BlurMaskFilter blurMaskFilter2 = new BlurMaskFilter(floatValue / 2.0f, BlurMaskFilter.Blur.NORMAL);
                    bVar.f12189C = blurMaskFilter2;
                    bVar.f12188B = floatValue;
                    blurMaskFilter = blurMaskFilter2;
                }
                c1265a.setMaskFilter(blurMaskFilter);
            }
            this.f11632l = floatValue;
        }
        n0.i iVar = this.f11633m;
        if (iVar != null) {
            iVar.a(c1265a);
        }
        Path path = this.f11621a;
        path.reset();
        while (true) {
            ArrayList arrayList = (ArrayList) this.f11626f;
            if (i5 >= arrayList.size()) {
                canvas.drawPath(path, c1265a);
                C1189d.a();
                return;
            }
            path.addPath(((n) arrayList.get(i5)).g(), matrix);
            i5++;
        }
    }

    @Override // m0.InterfaceC1303d
    public final String getName() {
        return this.f11624d;
    }

    @Override // p0.InterfaceC1344f
    public final void h(C1343e c1343e, int i4, List list, C1343e c1343e2) {
        w0.f.d(c1343e, i4, list, c1343e2, this);
    }
}
