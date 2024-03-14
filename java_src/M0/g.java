package m0;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import java.util.ArrayList;
import java.util.List;
import k0.InterfaceC1182G;
import n0.InterfaceC1313a;
import p0.C1343e;
import r0.C1371b;
/* loaded from: classes.dex */
public final class g implements n, InterfaceC1313a, l {

    /* renamed from: b  reason: collision with root package name */
    public final String f11614b;

    /* renamed from: c  reason: collision with root package name */
    public final com.airbnb.lottie.a f11615c;

    /* renamed from: d  reason: collision with root package name */
    public final n0.q f11616d;

    /* renamed from: e  reason: collision with root package name */
    public final n0.f f11617e;

    /* renamed from: f  reason: collision with root package name */
    public final C1371b f11618f;

    /* renamed from: h  reason: collision with root package name */
    public boolean f11620h;

    /* renamed from: a  reason: collision with root package name */
    public final Path f11613a = new Path();

    /* renamed from: g  reason: collision with root package name */
    public final C1302c f11619g = new C1302c();

    public g(com.airbnb.lottie.a aVar, s0.b bVar, C1371b c1371b) {
        this.f11614b = c1371b.f12069a;
        this.f11615c = aVar;
        n0.f a4 = c1371b.f12071c.a();
        this.f11616d = (n0.q) a4;
        n0.f a5 = c1371b.f12070b.a();
        this.f11617e = a5;
        this.f11618f = c1371b;
        bVar.d(a4);
        bVar.d(a5);
        a4.a(this);
        a5.a(this);
    }

    @Override // n0.InterfaceC1313a
    public final void b() {
        this.f11620h = false;
        this.f11615c.invalidateSelf();
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
                    ((ArrayList) this.f11619g.f11601a).add(vVar);
                    vVar.d(this);
                }
            }
            i4++;
        }
    }

    @Override // p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        if (obj == InterfaceC1182G.f11073k) {
            this.f11616d.k(cVar);
        } else if (obj == InterfaceC1182G.f11076n) {
            this.f11617e.k(cVar);
        }
    }

    @Override // m0.n
    public final Path g() {
        boolean z4 = this.f11620h;
        Path path = this.f11613a;
        if (z4) {
            return path;
        }
        path.reset();
        C1371b c1371b = this.f11618f;
        if (c1371b.f12073e) {
            this.f11620h = true;
            return path;
        }
        PointF pointF = (PointF) this.f11616d.f();
        float f4 = pointF.x / 2.0f;
        float f5 = pointF.y / 2.0f;
        float f6 = f4 * 0.55228f;
        float f7 = f5 * 0.55228f;
        path.reset();
        if (c1371b.f12072d) {
            float f8 = -f5;
            path.moveTo(0.0f, f8);
            float f9 = 0.0f - f6;
            float f10 = -f4;
            float f11 = 0.0f - f7;
            path.cubicTo(f9, f8, f10, f11, f10, 0.0f);
            float f12 = f7 + 0.0f;
            path.cubicTo(f10, f12, f9, f5, 0.0f, f5);
            float f13 = f6 + 0.0f;
            path.cubicTo(f13, f5, f4, f12, f4, 0.0f);
            path.cubicTo(f4, f11, f13, f8, 0.0f, f8);
        } else {
            float f14 = -f5;
            path.moveTo(0.0f, f14);
            float f15 = f6 + 0.0f;
            float f16 = 0.0f - f7;
            path.cubicTo(f15, f14, f4, f16, f4, 0.0f);
            float f17 = f7 + 0.0f;
            path.cubicTo(f4, f17, f15, f5, 0.0f, f5);
            float f18 = 0.0f - f6;
            float f19 = -f4;
            path.cubicTo(f18, f5, f19, f17, f19, 0.0f);
            path.cubicTo(f19, f16, f18, f14, 0.0f, f14);
        }
        PointF pointF2 = (PointF) this.f11617e.f();
        path.offset(pointF2.x, pointF2.y);
        path.close();
        this.f11619g.a(path);
        this.f11620h = true;
        return path;
    }

    @Override // m0.InterfaceC1303d
    public final String getName() {
        return this.f11614b;
    }

    @Override // p0.InterfaceC1344f
    public final void h(C1343e c1343e, int i4, List list, C1343e c1343e2) {
        w0.f.d(c1343e, i4, list, c1343e2, this);
    }
}
