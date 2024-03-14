package s0;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.HashMap;
import java.util.Map;
import k0.C1198m;
import k0.InterfaceC1182G;
import n0.u;
import n0.v;
import n0.x;
import p0.C1340b;
import q0.C1359a;
import q0.C1360b;
import q0.k;
/* loaded from: classes.dex */
public final class j extends b {

    /* renamed from: D  reason: collision with root package name */
    public final StringBuilder f12262D;

    /* renamed from: E  reason: collision with root package name */
    public final RectF f12263E;

    /* renamed from: F  reason: collision with root package name */
    public final Matrix f12264F;

    /* renamed from: G  reason: collision with root package name */
    public final i f12265G;

    /* renamed from: H  reason: collision with root package name */
    public final i f12266H;

    /* renamed from: I  reason: collision with root package name */
    public final Map f12267I;

    /* renamed from: J  reason: collision with root package name */
    public final q.j f12268J;

    /* renamed from: K  reason: collision with root package name */
    public final v f12269K;

    /* renamed from: L  reason: collision with root package name */
    public final com.airbnb.lottie.a f12270L;

    /* renamed from: M  reason: collision with root package name */
    public final C1198m f12271M;

    /* renamed from: N  reason: collision with root package name */
    public final n0.g f12272N;

    /* renamed from: O  reason: collision with root package name */
    public x f12273O;

    /* renamed from: P  reason: collision with root package name */
    public final n0.g f12274P;

    /* renamed from: Q  reason: collision with root package name */
    public x f12275Q;

    /* renamed from: R  reason: collision with root package name */
    public final n0.j f12276R;

    /* renamed from: S  reason: collision with root package name */
    public x f12277S;

    /* renamed from: T  reason: collision with root package name */
    public final n0.j f12278T;

    /* renamed from: U  reason: collision with root package name */
    public x f12279U;

    /* renamed from: V  reason: collision with root package name */
    public x f12280V;

    /* renamed from: W  reason: collision with root package name */
    public x f12281W;

    public j(com.airbnb.lottie.a aVar, e eVar) {
        super(aVar, eVar);
        C1360b c1360b;
        C1360b c1360b2;
        C1359a c1359a;
        C1359a c1359a2;
        this.f12262D = new StringBuilder(2);
        this.f12263E = new RectF();
        this.f12264F = new Matrix();
        this.f12265G = new i(0);
        this.f12266H = new i(1);
        this.f12267I = new HashMap();
        this.f12268J = new q.j();
        this.f12270L = aVar;
        this.f12271M = eVar.f12231b;
        v vVar = new v(eVar.f12246q.f11988a);
        this.f12269K = vVar;
        vVar.a(this);
        d(vVar);
        k kVar = eVar.f12247r;
        if (kVar != null && (c1359a2 = kVar.f11975a) != null) {
            n0.f a4 = c1359a2.a();
            this.f12272N = (n0.g) a4;
            a4.a(this);
            d(a4);
        }
        if (kVar != null && (c1359a = kVar.f11976b) != null) {
            n0.f a5 = c1359a.a();
            this.f12274P = (n0.g) a5;
            a5.a(this);
            d(a5);
        }
        if (kVar != null && (c1360b2 = kVar.f11977c) != null) {
            n0.f a6 = c1360b2.a();
            this.f12276R = (n0.j) a6;
            a6.a(this);
            d(a6);
        }
        if (kVar == null || (c1360b = kVar.f11978d) == null) {
            return;
        }
        n0.f a7 = c1360b.a();
        this.f12278T = (n0.j) a7;
        a7.a(this);
        d(a7);
    }

    public static void u(String str, i iVar, Canvas canvas) {
        if (iVar.getColor() == 0) {
            return;
        }
        if (iVar.getStyle() == Paint.Style.STROKE && iVar.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, (Paint) iVar);
    }

    public static void v(Path path, i iVar, Canvas canvas) {
        if (iVar.getColor() == 0) {
            return;
        }
        if (iVar.getStyle() == Paint.Style.STROKE && iVar.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, iVar);
    }

    @Override // s0.b, m0.f
    public final void a(RectF rectF, Matrix matrix, boolean z4) {
        super.a(rectF, matrix, z4);
        C1198m c1198m = this.f12271M;
        rectF.set(0.0f, 0.0f, c1198m.f11130j.width(), c1198m.f11130j.height());
    }

    @Override // s0.b, p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        super.e(cVar, obj);
        if (obj == InterfaceC1182G.f11063a) {
            x xVar = this.f12273O;
            if (xVar != null) {
                q(xVar);
            }
            if (cVar == null) {
                this.f12273O = null;
                return;
            }
            x xVar2 = new x(cVar, null);
            this.f12273O = xVar2;
            xVar2.a(this);
            d(this.f12273O);
        } else if (obj == InterfaceC1182G.f11064b) {
            x xVar3 = this.f12275Q;
            if (xVar3 != null) {
                q(xVar3);
            }
            if (cVar == null) {
                this.f12275Q = null;
                return;
            }
            x xVar4 = new x(cVar, null);
            this.f12275Q = xVar4;
            xVar4.a(this);
            d(this.f12275Q);
        } else if (obj == InterfaceC1182G.f11081s) {
            x xVar5 = this.f12277S;
            if (xVar5 != null) {
                q(xVar5);
            }
            if (cVar == null) {
                this.f12277S = null;
                return;
            }
            x xVar6 = new x(cVar, null);
            this.f12277S = xVar6;
            xVar6.a(this);
            d(this.f12277S);
        } else if (obj == InterfaceC1182G.f11082t) {
            x xVar7 = this.f12279U;
            if (xVar7 != null) {
                q(xVar7);
            }
            if (cVar == null) {
                this.f12279U = null;
                return;
            }
            x xVar8 = new x(cVar, null);
            this.f12279U = xVar8;
            xVar8.a(this);
            d(this.f12279U);
        } else if (obj == InterfaceC1182G.f11053F) {
            x xVar9 = this.f12280V;
            if (xVar9 != null) {
                q(xVar9);
            }
            if (cVar == null) {
                this.f12280V = null;
                return;
            }
            x xVar10 = new x(cVar, null);
            this.f12280V = xVar10;
            xVar10.a(this);
            d(this.f12280V);
        } else if (obj != InterfaceC1182G.f11060M) {
            if (obj == InterfaceC1182G.f11062O) {
                v vVar = this.f12269K;
                vVar.getClass();
                vVar.k(new u(new x0.b(), cVar, new C1340b()));
            }
        } else {
            x xVar11 = this.f12281W;
            if (xVar11 != null) {
                q(xVar11);
            }
            if (cVar == null) {
                this.f12281W = null;
                return;
            }
            x xVar12 = new x(cVar, null);
            this.f12281W = xVar12;
            xVar12.a(this);
            d(this.f12281W);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x040a  */
    @Override // s0.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(android.graphics.Canvas r28, android.graphics.Matrix r29, int r30) {
        /*
            Method dump skipped, instructions count: 1316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s0.j.l(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }
}
