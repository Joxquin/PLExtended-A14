package m0;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import java.util.ArrayList;
import java.util.List;
import k0.InterfaceC1182G;
import n0.InterfaceC1313a;
import p0.C1343e;
import r0.C1379j;
/* loaded from: classes.dex */
public final class p implements InterfaceC1313a, l, n {

    /* renamed from: c  reason: collision with root package name */
    public final String f11688c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f11689d;

    /* renamed from: e  reason: collision with root package name */
    public final com.airbnb.lottie.a f11690e;

    /* renamed from: f  reason: collision with root package name */
    public final n0.f f11691f;

    /* renamed from: g  reason: collision with root package name */
    public final n0.f f11692g;

    /* renamed from: h  reason: collision with root package name */
    public final n0.j f11693h;

    /* renamed from: k  reason: collision with root package name */
    public boolean f11696k;

    /* renamed from: a  reason: collision with root package name */
    public final Path f11686a = new Path();

    /* renamed from: b  reason: collision with root package name */
    public final RectF f11687b = new RectF();

    /* renamed from: i  reason: collision with root package name */
    public final C1302c f11694i = new C1302c();

    /* renamed from: j  reason: collision with root package name */
    public n0.f f11695j = null;

    public p(com.airbnb.lottie.a aVar, s0.b bVar, C1379j c1379j) {
        this.f11688c = c1379j.f12114a;
        this.f11689d = c1379j.f12118e;
        this.f11690e = aVar;
        n0.f a4 = c1379j.f12115b.a();
        this.f11691f = a4;
        n0.f a5 = c1379j.f12116c.a();
        this.f11692g = a5;
        n0.f a6 = c1379j.f12117d.a();
        this.f11693h = (n0.j) a6;
        bVar.d(a4);
        bVar.d(a5);
        bVar.d(a6);
        a4.a(this);
        a5.a(this);
        a6.a(this);
    }

    @Override // n0.InterfaceC1313a
    public final void b() {
        this.f11696k = false;
        this.f11690e.invalidateSelf();
    }

    @Override // m0.InterfaceC1303d
    public final void c(List list, List list2) {
        int i4 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (i4 >= arrayList.size()) {
                return;
            }
            InterfaceC1303d interfaceC1303d = (InterfaceC1303d) arrayList.get(i4);
            if (interfaceC1303d instanceof v) {
                v vVar = (v) interfaceC1303d;
                if (vVar.f11723c == ShapeTrimPath$Type.SIMULTANEOUSLY) {
                    ((ArrayList) this.f11694i.f11601a).add(vVar);
                    vVar.d(this);
                    i4++;
                }
            }
            if (interfaceC1303d instanceof r) {
                this.f11695j = ((r) interfaceC1303d).f11708b;
            }
            i4++;
        }
    }

    @Override // p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        if (obj == InterfaceC1182G.f11074l) {
            this.f11692g.k(cVar);
        } else if (obj == InterfaceC1182G.f11076n) {
            this.f11691f.k(cVar);
        } else if (obj == InterfaceC1182G.f11075m) {
            this.f11693h.k(cVar);
        }
    }

    @Override // m0.n
    public final Path g() {
        n0.f fVar;
        boolean z4 = this.f11696k;
        Path path = this.f11686a;
        if (z4) {
            return path;
        }
        path.reset();
        if (this.f11689d) {
            this.f11696k = true;
            return path;
        }
        PointF pointF = (PointF) this.f11692g.f();
        float f4 = pointF.x / 2.0f;
        float f5 = pointF.y / 2.0f;
        n0.j jVar = this.f11693h;
        float l4 = jVar == null ? 0.0f : jVar.l();
        if (l4 == 0.0f && (fVar = this.f11695j) != null) {
            l4 = Math.min(((Float) fVar.f()).floatValue(), Math.min(f4, f5));
        }
        float min = Math.min(f4, f5);
        if (l4 > min) {
            l4 = min;
        }
        PointF pointF2 = (PointF) this.f11691f.f();
        path.moveTo(pointF2.x + f4, (pointF2.y - f5) + l4);
        path.lineTo(pointF2.x + f4, (pointF2.y + f5) - l4);
        int i4 = (l4 > 0.0f ? 1 : (l4 == 0.0f ? 0 : -1));
        RectF rectF = this.f11687b;
        if (i4 > 0) {
            float f6 = pointF2.x + f4;
            float f7 = l4 * 2.0f;
            float f8 = pointF2.y + f5;
            rectF.set(f6 - f7, f8 - f7, f6, f8);
            path.arcTo(rectF, 0.0f, 90.0f, false);
        }
        path.lineTo((pointF2.x - f4) + l4, pointF2.y + f5);
        if (i4 > 0) {
            float f9 = pointF2.x - f4;
            float f10 = pointF2.y + f5;
            float f11 = l4 * 2.0f;
            rectF.set(f9, f10 - f11, f11 + f9, f10);
            path.arcTo(rectF, 90.0f, 90.0f, false);
        }
        path.lineTo(pointF2.x - f4, (pointF2.y - f5) + l4);
        if (i4 > 0) {
            float f12 = pointF2.x - f4;
            float f13 = pointF2.y - f5;
            float f14 = l4 * 2.0f;
            rectF.set(f12, f13, f12 + f14, f14 + f13);
            path.arcTo(rectF, 180.0f, 90.0f, false);
        }
        path.lineTo((pointF2.x + f4) - l4, pointF2.y - f5);
        if (i4 > 0) {
            float f15 = pointF2.x + f4;
            float f16 = l4 * 2.0f;
            float f17 = pointF2.y - f5;
            rectF.set(f15 - f16, f17, f15, f16 + f17);
            path.arcTo(rectF, 270.0f, 90.0f, false);
        }
        path.close();
        this.f11694i.a(path);
        this.f11696k = true;
        return path;
    }

    @Override // m0.InterfaceC1303d
    public final String getName() {
        return this.f11688c;
    }

    @Override // p0.InterfaceC1344f
    public final void h(C1343e c1343e, int i4, List list, C1343e c1343e2) {
        w0.f.d(c1343e, i4, list, c1343e2, this);
    }
}
