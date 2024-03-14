package m0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;
import k0.C1189d;
import l0.C1265a;
import n0.InterfaceC1313a;
import n0.w;
import p0.C1343e;
import p0.InterfaceC1344f;
/* loaded from: classes.dex */
public final class e implements f, n, InterfaceC1313a, InterfaceC1344f {

    /* renamed from: a  reason: collision with root package name */
    public final C1265a f11602a;

    /* renamed from: b  reason: collision with root package name */
    public final RectF f11603b;

    /* renamed from: c  reason: collision with root package name */
    public final Matrix f11604c;

    /* renamed from: d  reason: collision with root package name */
    public final Path f11605d;

    /* renamed from: e  reason: collision with root package name */
    public final RectF f11606e;

    /* renamed from: f  reason: collision with root package name */
    public final String f11607f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f11608g;

    /* renamed from: h  reason: collision with root package name */
    public final List f11609h;

    /* renamed from: i  reason: collision with root package name */
    public final com.airbnb.lottie.a f11610i;

    /* renamed from: j  reason: collision with root package name */
    public List f11611j;

    /* renamed from: k  reason: collision with root package name */
    public final w f11612k;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e(com.airbnb.lottie.a r8, s0.b r9, r0.o r10) {
        /*
            r7 = this;
            java.lang.String r3 = r10.f12134a
            boolean r4 = r10.f12136c
            java.util.ArrayList r5 = new java.util.ArrayList
            java.util.List r10 = r10.f12135b
            int r0 = r10.size()
            r5.<init>(r0)
            r0 = 0
            r1 = r0
        L11:
            int r2 = r10.size()
            if (r1 >= r2) goto L29
            java.lang.Object r2 = r10.get(r1)
            r0.c r2 = (r0.InterfaceC1372c) r2
            m0.d r2 = r2.a(r8, r9)
            if (r2 == 0) goto L26
            r5.add(r2)
        L26:
            int r1 = r1 + 1
            goto L11
        L29:
            int r1 = r10.size()
            if (r0 >= r1) goto L40
            java.lang.Object r1 = r10.get(r0)
            r0.c r1 = (r0.InterfaceC1372c) r1
            boolean r2 = r1 instanceof q0.l
            if (r2 == 0) goto L3d
            q0.l r1 = (q0.l) r1
            r6 = r1
            goto L42
        L3d:
            int r0 = r0 + 1
            goto L29
        L40:
            r10 = 0
            r6 = r10
        L42:
            r0 = r7
            r1 = r8
            r2 = r9
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: m0.e.<init>(com.airbnb.lottie.a, s0.b, r0.o):void");
    }

    @Override // m0.f
    public final void a(RectF rectF, Matrix matrix, boolean z4) {
        Matrix matrix2 = this.f11604c;
        matrix2.set(matrix);
        w wVar = this.f11612k;
        if (wVar != null) {
            matrix2.preConcat(wVar.d());
        }
        RectF rectF2 = this.f11606e;
        rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
        List list = this.f11609h;
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            InterfaceC1303d interfaceC1303d = (InterfaceC1303d) list.get(size);
            if (interfaceC1303d instanceof f) {
                ((f) interfaceC1303d).a(rectF2, matrix2, z4);
                rectF.union(rectF2);
            }
        }
    }

    @Override // n0.InterfaceC1313a
    public final void b() {
        this.f11610i.invalidateSelf();
    }

    @Override // m0.InterfaceC1303d
    public final void c(List list, List list2) {
        int size = list.size();
        List list3 = this.f11609h;
        ArrayList arrayList = new ArrayList(list3.size() + size);
        arrayList.addAll(list);
        for (int size2 = list3.size() - 1; size2 >= 0; size2--) {
            InterfaceC1303d interfaceC1303d = (InterfaceC1303d) list3.get(size2);
            interfaceC1303d.c(arrayList, list3.subList(0, size2));
            arrayList.add(interfaceC1303d);
        }
    }

    public final List d() {
        if (this.f11611j == null) {
            this.f11611j = new ArrayList();
            int i4 = 0;
            while (true) {
                List list = this.f11609h;
                if (i4 >= list.size()) {
                    break;
                }
                InterfaceC1303d interfaceC1303d = (InterfaceC1303d) list.get(i4);
                if (interfaceC1303d instanceof n) {
                    this.f11611j.add((n) interfaceC1303d);
                }
                i4++;
            }
        }
        return this.f11611j;
    }

    @Override // p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        w wVar = this.f11612k;
        if (wVar != null) {
            wVar.c(cVar, obj);
        }
    }

    @Override // m0.f
    public final void f(Canvas canvas, Matrix matrix, int i4) {
        boolean z4;
        n0.f fVar;
        if (this.f11608g) {
            return;
        }
        Matrix matrix2 = this.f11604c;
        matrix2.set(matrix);
        w wVar = this.f11612k;
        if (wVar != null) {
            matrix2.preConcat(wVar.d());
            i4 = (int) (((((wVar.f11796j == null ? 100 : ((Integer) fVar.f()).intValue()) / 100.0f) * i4) / 255.0f) * 255.0f);
        }
        boolean z5 = this.f11610i.f4334v;
        boolean z6 = false;
        List list = this.f11609h;
        if (z5) {
            int i5 = 0;
            int i6 = 0;
            while (true) {
                if (i5 >= list.size()) {
                    z4 = false;
                    break;
                } else if ((list.get(i5) instanceof f) && (i6 = i6 + 1) >= 2) {
                    z4 = true;
                    break;
                } else {
                    i5++;
                }
            }
            if (z4 && i4 != 255) {
                z6 = true;
            }
        }
        if (z6) {
            RectF rectF = this.f11603b;
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
            a(rectF, matrix2, true);
            C1265a c1265a = this.f11602a;
            c1265a.setAlpha(i4);
            w0.g gVar = w0.h.f12735a;
            canvas.saveLayer(rectF, c1265a);
            C1189d.a();
        }
        if (z6) {
            i4 = 255;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            Object obj = list.get(size);
            if (obj instanceof f) {
                ((f) obj).f(canvas, matrix2, i4);
            }
        }
        if (z6) {
            canvas.restore();
        }
    }

    @Override // m0.n
    public final Path g() {
        Matrix matrix = this.f11604c;
        matrix.reset();
        w wVar = this.f11612k;
        if (wVar != null) {
            matrix.set(wVar.d());
        }
        Path path = this.f11605d;
        path.reset();
        if (this.f11608g) {
            return path;
        }
        List list = this.f11609h;
        for (int size = list.size() - 1; size >= 0; size--) {
            InterfaceC1303d interfaceC1303d = (InterfaceC1303d) list.get(size);
            if (interfaceC1303d instanceof n) {
                path.addPath(((n) interfaceC1303d).g(), matrix);
            }
        }
        return path;
    }

    @Override // m0.InterfaceC1303d
    public final String getName() {
        return this.f11607f;
    }

    @Override // p0.InterfaceC1344f
    public final void h(C1343e c1343e, int i4, List list, C1343e c1343e2) {
        String str = this.f11607f;
        if (!c1343e.c(i4, str) && !"__container".equals(str)) {
            return;
        }
        if (!"__container".equals(str)) {
            c1343e2.getClass();
            C1343e c1343e3 = new C1343e(c1343e2);
            c1343e3.f11919a.add(str);
            if (c1343e.a(i4, str)) {
                C1343e c1343e4 = new C1343e(c1343e3);
                c1343e4.f11920b = this;
                ((ArrayList) list).add(c1343e4);
            }
            c1343e2 = c1343e3;
        }
        if (!c1343e.d(i4, str)) {
            return;
        }
        int b4 = c1343e.b(i4, str) + i4;
        int i5 = 0;
        while (true) {
            List list2 = this.f11609h;
            if (i5 >= list2.size()) {
                return;
            }
            InterfaceC1303d interfaceC1303d = (InterfaceC1303d) list2.get(i5);
            if (interfaceC1303d instanceof InterfaceC1344f) {
                ((InterfaceC1344f) interfaceC1303d).h(c1343e, b4, list, c1343e2);
            }
            i5++;
        }
    }

    public e(com.airbnb.lottie.a aVar, s0.b bVar, String str, boolean z4, List list, q0.l lVar) {
        this.f11602a = new C1265a();
        this.f11603b = new RectF();
        this.f11604c = new Matrix();
        this.f11605d = new Path();
        this.f11606e = new RectF();
        this.f11607f = str;
        this.f11610i = aVar;
        this.f11608g = z4;
        this.f11609h = list;
        if (lVar != null) {
            w wVar = new w(lVar);
            this.f11612k = wVar;
            wVar.a(bVar);
            wVar.b(this);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) list;
        int size = arrayList2.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            InterfaceC1303d interfaceC1303d = (InterfaceC1303d) arrayList2.get(size);
            if (interfaceC1303d instanceof k) {
                arrayList.add((k) interfaceC1303d);
            }
        }
        int size2 = arrayList.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                return;
            }
            ((k) arrayList.get(size2)).d(arrayList2.listIterator(arrayList2.size()));
        }
    }
}
