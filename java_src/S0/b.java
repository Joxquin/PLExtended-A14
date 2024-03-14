package s0;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.airbnb.lottie.model.layer.Layer$MatteType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import k0.C1189d;
import k0.L;
import k0.M;
import l0.C1265a;
import n0.InterfaceC1313a;
import n0.n;
import n0.w;
import p0.C1343e;
import p0.InterfaceC1344f;
import q.C1356g;
import q.C1357h;
import q0.l;
import r0.C1370a;
import u0.C1420j;
import w0.C1448e;
/* loaded from: classes.dex */
public abstract class b implements m0.f, InterfaceC1313a, InterfaceC1344f {

    /* renamed from: A  reason: collision with root package name */
    public C1265a f12187A;

    /* renamed from: B  reason: collision with root package name */
    public float f12188B;

    /* renamed from: C  reason: collision with root package name */
    public BlurMaskFilter f12189C;

    /* renamed from: a  reason: collision with root package name */
    public final Path f12190a = new Path();

    /* renamed from: b  reason: collision with root package name */
    public final Matrix f12191b = new Matrix();

    /* renamed from: c  reason: collision with root package name */
    public final Matrix f12192c = new Matrix();

    /* renamed from: d  reason: collision with root package name */
    public final C1265a f12193d = new C1265a(1);

    /* renamed from: e  reason: collision with root package name */
    public final C1265a f12194e = new C1265a(PorterDuff.Mode.DST_IN, 0);

    /* renamed from: f  reason: collision with root package name */
    public final C1265a f12195f = new C1265a(PorterDuff.Mode.DST_OUT, 0);

    /* renamed from: g  reason: collision with root package name */
    public final C1265a f12196g;

    /* renamed from: h  reason: collision with root package name */
    public final C1265a f12197h;

    /* renamed from: i  reason: collision with root package name */
    public final RectF f12198i;

    /* renamed from: j  reason: collision with root package name */
    public final RectF f12199j;

    /* renamed from: k  reason: collision with root package name */
    public final RectF f12200k;

    /* renamed from: l  reason: collision with root package name */
    public final RectF f12201l;

    /* renamed from: m  reason: collision with root package name */
    public final RectF f12202m;

    /* renamed from: n  reason: collision with root package name */
    public final String f12203n;

    /* renamed from: o  reason: collision with root package name */
    public final Matrix f12204o;

    /* renamed from: p  reason: collision with root package name */
    public final com.airbnb.lottie.a f12205p;

    /* renamed from: q  reason: collision with root package name */
    public final e f12206q;

    /* renamed from: r  reason: collision with root package name */
    public final n f12207r;

    /* renamed from: s  reason: collision with root package name */
    public n0.j f12208s;

    /* renamed from: t  reason: collision with root package name */
    public b f12209t;

    /* renamed from: u  reason: collision with root package name */
    public b f12210u;

    /* renamed from: v  reason: collision with root package name */
    public List f12211v;

    /* renamed from: w  reason: collision with root package name */
    public final List f12212w;

    /* renamed from: x  reason: collision with root package name */
    public final w f12213x;

    /* renamed from: y  reason: collision with root package name */
    public boolean f12214y;

    /* renamed from: z  reason: collision with root package name */
    public boolean f12215z;

    public b(com.airbnb.lottie.a aVar, e eVar) {
        C1265a c1265a = new C1265a(1);
        this.f12196g = c1265a;
        this.f12197h = new C1265a(PorterDuff.Mode.CLEAR);
        this.f12198i = new RectF();
        this.f12199j = new RectF();
        this.f12200k = new RectF();
        this.f12201l = new RectF();
        this.f12202m = new RectF();
        this.f12204o = new Matrix();
        this.f12212w = new ArrayList();
        this.f12214y = true;
        this.f12188B = 0.0f;
        this.f12205p = aVar;
        this.f12206q = eVar;
        this.f12203n = eVar.f12232c + "#draw";
        if (eVar.f12250u == Layer$MatteType.INVERT) {
            c1265a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            c1265a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        }
        l lVar = eVar.f12238i;
        lVar.getClass();
        w wVar = new w(lVar);
        this.f12213x = wVar;
        wVar.b(this);
        List list = eVar.f12237h;
        if (list != null && !list.isEmpty()) {
            n nVar = new n(list);
            this.f12207r = nVar;
            Iterator it = ((ArrayList) nVar.f11764a).iterator();
            while (it.hasNext()) {
                ((n0.f) it.next()).a(this);
            }
            Iterator it2 = ((ArrayList) this.f12207r.f11765b).iterator();
            while (it2.hasNext()) {
                n0.f fVar = (n0.f) it2.next();
                d(fVar);
                fVar.a(this);
            }
        }
        e eVar2 = this.f12206q;
        if (eVar2.f12249t.isEmpty()) {
            if (true != this.f12214y) {
                this.f12214y = true;
                this.f12205p.invalidateSelf();
                return;
            }
            return;
        }
        n0.j jVar = new n0.j(eVar2.f12249t);
        this.f12208s = jVar;
        jVar.f11748b = true;
        jVar.a(new InterfaceC1313a() { // from class: s0.a
            @Override // n0.InterfaceC1313a
            public final void b() {
                b bVar = b.this;
                boolean z4 = bVar.f12208s.l() == 1.0f;
                if (z4 != bVar.f12214y) {
                    bVar.f12214y = z4;
                    bVar.f12205p.invalidateSelf();
                }
            }
        });
        boolean z4 = ((Float) this.f12208s.f()).floatValue() == 1.0f;
        if (z4 != this.f12214y) {
            this.f12214y = z4;
            this.f12205p.invalidateSelf();
        }
        d(this.f12208s);
    }

    @Override // m0.f
    public void a(RectF rectF, Matrix matrix, boolean z4) {
        this.f12198i.set(0.0f, 0.0f, 0.0f, 0.0f);
        j();
        Matrix matrix2 = this.f12204o;
        matrix2.set(matrix);
        if (z4) {
            List list = this.f12211v;
            if (list != null) {
                int size = list.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    matrix2.preConcat(((b) this.f12211v.get(size)).f12213x.d());
                }
            } else {
                b bVar = this.f12210u;
                if (bVar != null) {
                    matrix2.preConcat(bVar.f12213x.d());
                }
            }
        }
        matrix2.preConcat(this.f12213x.d());
    }

    @Override // n0.InterfaceC1313a
    public final void b() {
        this.f12205p.invalidateSelf();
    }

    @Override // m0.InterfaceC1303d
    public final void c(List list, List list2) {
    }

    public final void d(n0.f fVar) {
        if (fVar == null) {
            return;
        }
        this.f12212w.add(fVar);
    }

    @Override // p0.InterfaceC1344f
    public void e(x0.c cVar, Object obj) {
        this.f12213x.c(cVar, obj);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0218  */
    @Override // m0.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(android.graphics.Canvas r20, android.graphics.Matrix r21, int r22) {
        /*
            Method dump skipped, instructions count: 945
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s0.b.f(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }

    @Override // m0.InterfaceC1303d
    public final String getName() {
        return this.f12206q.f12232c;
    }

    @Override // p0.InterfaceC1344f
    public final void h(C1343e c1343e, int i4, List list, C1343e c1343e2) {
        b bVar = this.f12209t;
        e eVar = this.f12206q;
        if (bVar != null) {
            String str = bVar.f12206q.f12232c;
            c1343e2.getClass();
            C1343e c1343e3 = new C1343e(c1343e2);
            c1343e3.f11919a.add(str);
            if (c1343e.a(i4, this.f12209t.f12206q.f12232c)) {
                b bVar2 = this.f12209t;
                C1343e c1343e4 = new C1343e(c1343e3);
                c1343e4.f11920b = bVar2;
                ((ArrayList) list).add(c1343e4);
            }
            if (c1343e.d(i4, eVar.f12232c)) {
                this.f12209t.r(c1343e, c1343e.b(i4, this.f12209t.f12206q.f12232c) + i4, list, c1343e3);
            }
        }
        if (c1343e.c(i4, eVar.f12232c)) {
            String str2 = eVar.f12232c;
            if (!"__container".equals(str2)) {
                c1343e2.getClass();
                C1343e c1343e5 = new C1343e(c1343e2);
                c1343e5.f11919a.add(str2);
                if (c1343e.a(i4, str2)) {
                    C1343e c1343e6 = new C1343e(c1343e5);
                    c1343e6.f11920b = this;
                    ((ArrayList) list).add(c1343e6);
                }
                c1343e2 = c1343e5;
            }
            if (c1343e.d(i4, str2)) {
                r(c1343e, c1343e.b(i4, str2) + i4, list, c1343e2);
            }
        }
    }

    public final void j() {
        if (this.f12211v != null) {
            return;
        }
        if (this.f12210u == null) {
            this.f12211v = Collections.emptyList();
            return;
        }
        this.f12211v = new ArrayList();
        for (b bVar = this.f12210u; bVar != null; bVar = bVar.f12210u) {
            this.f12211v.add(bVar);
        }
    }

    public final void k(Canvas canvas) {
        RectF rectF = this.f12198i;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f12197h);
        C1189d.a();
    }

    public abstract void l(Canvas canvas, Matrix matrix, int i4);

    public C1370a m() {
        return this.f12206q.f12252w;
    }

    public C1420j n() {
        return this.f12206q.f12253x;
    }

    public final boolean o() {
        n nVar = this.f12207r;
        return (nVar == null || ((ArrayList) nVar.f11764a).isEmpty()) ? false : true;
    }

    public final void p() {
        M m4 = this.f12205p.f4316d.f11121a;
        String str = this.f12206q.f12232c;
        if (m4.f11098a) {
            HashMap hashMap = (HashMap) m4.f11100c;
            C1448e c1448e = (C1448e) hashMap.get(str);
            if (c1448e == null) {
                c1448e = new C1448e();
                hashMap.put(str, c1448e);
            }
            int i4 = c1448e.f12732a + 1;
            c1448e.f12732a = i4;
            if (i4 == Integer.MAX_VALUE) {
                c1448e.f12732a = i4 / 2;
            }
            if (str.equals("__container")) {
                C1357h c1357h = m4.f11099b;
                c1357h.getClass();
                C1356g c1356g = new C1356g(c1357h);
                while (c1356g.hasNext()) {
                    ((L) c1356g.next()).a();
                }
            }
        }
    }

    public final void q(n0.f fVar) {
        ((ArrayList) this.f12212w).remove(fVar);
    }

    public void r(C1343e c1343e, int i4, List list, C1343e c1343e2) {
    }

    public void s(boolean z4) {
        if (z4 && this.f12187A == null) {
            this.f12187A = new C1265a();
        }
        this.f12215z = z4;
    }

    public void t(float f4) {
        w wVar = this.f12213x;
        n0.f fVar = wVar.f11796j;
        if (fVar != null) {
            fVar.j(f4);
        }
        n0.f fVar2 = wVar.f11799m;
        if (fVar2 != null) {
            fVar2.j(f4);
        }
        n0.f fVar3 = wVar.f11800n;
        if (fVar3 != null) {
            fVar3.j(f4);
        }
        n0.f fVar4 = wVar.f11792f;
        if (fVar4 != null) {
            fVar4.j(f4);
        }
        n0.f fVar5 = wVar.f11793g;
        if (fVar5 != null) {
            fVar5.j(f4);
        }
        n0.f fVar6 = wVar.f11794h;
        if (fVar6 != null) {
            fVar6.j(f4);
        }
        n0.f fVar7 = wVar.f11795i;
        if (fVar7 != null) {
            fVar7.j(f4);
        }
        n0.j jVar = wVar.f11797k;
        if (jVar != null) {
            jVar.j(f4);
        }
        n0.j jVar2 = wVar.f11798l;
        if (jVar2 != null) {
            jVar2.j(f4);
        }
        int i4 = 0;
        n nVar = this.f12207r;
        if (nVar != null) {
            for (int i5 = 0; i5 < ((ArrayList) nVar.f11764a).size(); i5++) {
                ((n0.f) ((ArrayList) nVar.f11764a).get(i5)).j(f4);
            }
        }
        n0.j jVar3 = this.f12208s;
        if (jVar3 != null) {
            jVar3.j(f4);
        }
        b bVar = this.f12209t;
        if (bVar != null) {
            bVar.t(f4);
        }
        while (true) {
            List list = this.f12212w;
            if (i4 >= ((ArrayList) list).size()) {
                return;
            }
            ((n0.f) ((ArrayList) list).get(i4)).j(f4);
            i4++;
        }
    }
}
