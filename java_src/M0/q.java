package m0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
import k0.InterfaceC1182G;
import n0.InterfaceC1313a;
import n0.w;
import p0.C1343e;
/* loaded from: classes.dex */
public final class q implements f, n, k, InterfaceC1313a, l {

    /* renamed from: a  reason: collision with root package name */
    public final Matrix f11697a = new Matrix();

    /* renamed from: b  reason: collision with root package name */
    public final Path f11698b = new Path();

    /* renamed from: c  reason: collision with root package name */
    public final com.airbnb.lottie.a f11699c;

    /* renamed from: d  reason: collision with root package name */
    public final s0.b f11700d;

    /* renamed from: e  reason: collision with root package name */
    public final String f11701e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f11702f;

    /* renamed from: g  reason: collision with root package name */
    public final n0.j f11703g;

    /* renamed from: h  reason: collision with root package name */
    public final n0.j f11704h;

    /* renamed from: i  reason: collision with root package name */
    public final w f11705i;

    /* renamed from: j  reason: collision with root package name */
    public e f11706j;

    public q(com.airbnb.lottie.a aVar, s0.b bVar, r0.k kVar) {
        this.f11699c = aVar;
        this.f11700d = bVar;
        this.f11701e = kVar.f12119a;
        this.f11702f = kVar.f12123e;
        n0.f a4 = kVar.f12120b.a();
        this.f11703g = (n0.j) a4;
        bVar.d(a4);
        a4.a(this);
        n0.f a5 = kVar.f12121c.a();
        this.f11704h = (n0.j) a5;
        bVar.d(a5);
        a5.a(this);
        q0.l lVar = kVar.f12122d;
        lVar.getClass();
        w wVar = new w(lVar);
        this.f11705i = wVar;
        wVar.a(bVar);
        wVar.b(this);
    }

    @Override // m0.f
    public final void a(RectF rectF, Matrix matrix, boolean z4) {
        this.f11706j.a(rectF, matrix, z4);
    }

    @Override // n0.InterfaceC1313a
    public final void b() {
        this.f11699c.invalidateSelf();
    }

    @Override // m0.InterfaceC1303d
    public final void c(List list, List list2) {
        this.f11706j.c(list, list2);
    }

    @Override // m0.k
    public final void d(ListIterator listIterator) {
        if (this.f11706j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add((InterfaceC1303d) listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f11706j = new e(this.f11699c, this.f11700d, "Repeater", this.f11702f, arrayList, null);
    }

    @Override // p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        if (this.f11705i.c(cVar, obj)) {
            return;
        }
        if (obj == InterfaceC1182G.f11083u) {
            this.f11703g.k(cVar);
        } else if (obj == InterfaceC1182G.f11084v) {
            this.f11704h.k(cVar);
        }
    }

    @Override // m0.f
    public final void f(Canvas canvas, Matrix matrix, int i4) {
        float floatValue = ((Float) this.f11703g.f()).floatValue();
        float floatValue2 = ((Float) this.f11704h.f()).floatValue();
        w wVar = this.f11705i;
        float floatValue3 = ((Float) wVar.f11799m.f()).floatValue() / 100.0f;
        float floatValue4 = ((Float) wVar.f11800n.f()).floatValue() / 100.0f;
        int i5 = (int) floatValue;
        while (true) {
            i5--;
            if (i5 < 0) {
                return;
            }
            Matrix matrix2 = this.f11697a;
            matrix2.set(matrix);
            float f4 = i5;
            matrix2.preConcat(wVar.e(f4 + floatValue2));
            PointF pointF = w0.f.f12733a;
            this.f11706j.f(canvas, matrix2, (int) ((((floatValue4 - floatValue3) * (f4 / floatValue)) + floatValue3) * i4));
        }
    }

    @Override // m0.n
    public final Path g() {
        Path g4 = this.f11706j.g();
        Path path = this.f11698b;
        path.reset();
        float floatValue = ((Float) this.f11703g.f()).floatValue();
        float floatValue2 = ((Float) this.f11704h.f()).floatValue();
        int i4 = (int) floatValue;
        while (true) {
            i4--;
            if (i4 < 0) {
                return path;
            }
            Matrix matrix = this.f11697a;
            matrix.set(this.f11705i.e(i4 + floatValue2));
            path.addPath(g4, matrix);
        }
    }

    @Override // m0.InterfaceC1303d
    public final String getName() {
        return this.f11701e;
    }

    @Override // p0.InterfaceC1344f
    public final void h(C1343e c1343e, int i4, List list, C1343e c1343e2) {
        w0.f.d(c1343e, i4, list, c1343e2, this);
    }
}
