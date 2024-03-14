package s0;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import k0.C1179D;
import k0.C1198m;
import k0.InterfaceC1182G;
import l0.C1265a;
import n0.x;
/* loaded from: classes.dex */
public final class d extends b {

    /* renamed from: D  reason: collision with root package name */
    public final C1265a f12224D;

    /* renamed from: E  reason: collision with root package name */
    public final Rect f12225E;

    /* renamed from: F  reason: collision with root package name */
    public final Rect f12226F;

    /* renamed from: G  reason: collision with root package name */
    public final C1179D f12227G;

    /* renamed from: H  reason: collision with root package name */
    public x f12228H;

    /* renamed from: I  reason: collision with root package name */
    public x f12229I;

    public d(com.airbnb.lottie.a aVar, e eVar) {
        super(aVar, eVar);
        this.f12224D = new C1265a(3);
        this.f12225E = new Rect();
        this.f12226F = new Rect();
        C1198m c1198m = aVar.f4316d;
        this.f12227G = c1198m == null ? null : (C1179D) c1198m.f11124d.get(eVar.f12236g);
    }

    @Override // s0.b, m0.f
    public final void a(RectF rectF, Matrix matrix, boolean z4) {
        super.a(rectF, matrix, z4);
        C1179D c1179d = this.f12227G;
        if (c1179d != null) {
            float c4 = w0.h.c();
            rectF.set(0.0f, 0.0f, c1179d.f11044a * c4, c1179d.f11045b * c4);
            this.f12204o.mapRect(rectF);
        }
    }

    @Override // s0.b, p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        super.e(cVar, obj);
        if (obj == InterfaceC1182G.f11058K) {
            if (cVar == null) {
                this.f12228H = null;
            } else {
                this.f12228H = new x(cVar, null);
            }
        } else if (obj == InterfaceC1182G.f11061N) {
            if (cVar == null) {
                this.f12229I = null;
            } else {
                this.f12229I = new x(cVar, null);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00ce  */
    @Override // s0.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(android.graphics.Canvas r15, android.graphics.Matrix r16, int r17) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s0.d.l(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }
}
