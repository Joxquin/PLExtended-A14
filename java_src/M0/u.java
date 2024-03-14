package m0;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import k0.InterfaceC1182G;
import l0.C1265a;
import n0.x;
/* loaded from: classes.dex */
public final class u extends AbstractC1301b {

    /* renamed from: r  reason: collision with root package name */
    public final s0.b f11716r;

    /* renamed from: s  reason: collision with root package name */
    public final String f11717s;

    /* renamed from: t  reason: collision with root package name */
    public final boolean f11718t;

    /* renamed from: u  reason: collision with root package name */
    public final n0.g f11719u;

    /* renamed from: v  reason: collision with root package name */
    public x f11720v;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public u(com.airbnb.lottie.a r13, s0.b r14, r0.q r15) {
        /*
            r12 = this;
            com.airbnb.lottie.model.content.ShapeStroke$LineCapType r0 = r15.f12147g
            int r0 = r0.ordinal()
            r1 = 1
            if (r0 == 0) goto L11
            if (r0 == r1) goto Le
            android.graphics.Paint$Cap r0 = android.graphics.Paint.Cap.SQUARE
            goto L13
        Le:
            android.graphics.Paint$Cap r0 = android.graphics.Paint.Cap.ROUND
            goto L13
        L11:
            android.graphics.Paint$Cap r0 = android.graphics.Paint.Cap.BUTT
        L13:
            r5 = r0
            com.airbnb.lottie.model.content.ShapeStroke$LineJoinType r0 = r15.f12148h
            int r0 = r0.ordinal()
            if (r0 == 0) goto L29
            if (r0 == r1) goto L26
            r1 = 2
            if (r0 == r1) goto L23
            r0 = 0
            goto L2b
        L23:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.BEVEL
            goto L2b
        L26:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.ROUND
            goto L2b
        L29:
            android.graphics.Paint$Join r0 = android.graphics.Paint.Join.MITER
        L2b:
            r6 = r0
            float r7 = r15.f12149i
            q0.d r8 = r15.f12145e
            q0.b r9 = r15.f12146f
            java.util.List r10 = r15.f12143c
            q0.b r11 = r15.f12142b
            r2 = r12
            r3 = r13
            r4 = r14
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            r12.f11716r = r14
            java.lang.String r13 = r15.f12141a
            r12.f11717s = r13
            boolean r13 = r15.f12150j
            r12.f11718t = r13
            q0.a r13 = r15.f12144d
            n0.f r13 = r13.a()
            r15 = r13
            n0.g r15 = (n0.g) r15
            r12.f11719u = r15
            r13.a(r12)
            r14.d(r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: m0.u.<init>(com.airbnb.lottie.a, s0.b, r0.q):void");
    }

    @Override // m0.AbstractC1301b, p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        super.e(cVar, obj);
        Integer num = InterfaceC1182G.f11064b;
        n0.g gVar = this.f11719u;
        if (obj == num) {
            gVar.k(cVar);
        } else if (obj == InterfaceC1182G.f11058K) {
            x xVar = this.f11720v;
            s0.b bVar = this.f11716r;
            if (xVar != null) {
                bVar.q(xVar);
            }
            if (cVar == null) {
                this.f11720v = null;
                return;
            }
            x xVar2 = new x(cVar, null);
            this.f11720v = xVar2;
            xVar2.a(this);
            bVar.d(gVar);
        }
    }

    @Override // m0.AbstractC1301b, m0.f
    public final void f(Canvas canvas, Matrix matrix, int i4) {
        if (this.f11718t) {
            return;
        }
        n0.g gVar = this.f11719u;
        int l4 = gVar.l(gVar.b(), gVar.d());
        C1265a c1265a = this.f11592i;
        c1265a.setColor(l4);
        x xVar = this.f11720v;
        if (xVar != null) {
            c1265a.setColorFilter((ColorFilter) xVar.f());
        }
        super.f(canvas, matrix, i4);
    }

    @Override // m0.InterfaceC1303d
    public final String getName() {
        return this.f11717s;
    }
}
