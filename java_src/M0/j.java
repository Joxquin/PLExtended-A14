package m0;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import com.airbnb.lottie.model.content.GradientType;
import k0.InterfaceC1182G;
import n0.x;
import r0.C1373d;
/* loaded from: classes.dex */
public final class j extends AbstractC1301b {

    /* renamed from: A  reason: collision with root package name */
    public final n0.q f11655A;

    /* renamed from: B  reason: collision with root package name */
    public x f11656B;

    /* renamed from: r  reason: collision with root package name */
    public final String f11657r;

    /* renamed from: s  reason: collision with root package name */
    public final boolean f11658s;

    /* renamed from: t  reason: collision with root package name */
    public final q.j f11659t;

    /* renamed from: u  reason: collision with root package name */
    public final q.j f11660u;

    /* renamed from: v  reason: collision with root package name */
    public final RectF f11661v;

    /* renamed from: w  reason: collision with root package name */
    public final GradientType f11662w;

    /* renamed from: x  reason: collision with root package name */
    public final int f11663x;

    /* renamed from: y  reason: collision with root package name */
    public final n0.k f11664y;

    /* renamed from: z  reason: collision with root package name */
    public final n0.q f11665z;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public j(com.airbnb.lottie.a r13, s0.b r14, r0.C1375f r15) {
        /*
            r12 = this;
            com.airbnb.lottie.model.content.ShapeStroke$LineCapType r0 = r15.f12091h
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
            com.airbnb.lottie.model.content.ShapeStroke$LineJoinType r0 = r15.f12092i
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
            float r7 = r15.f12093j
            q0.d r8 = r15.f12087d
            q0.b r9 = r15.f12090g
            java.util.List r10 = r15.f12094k
            q0.b r11 = r15.f12095l
            r2 = r12
            r3 = r13
            r4 = r14
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            q.j r0 = new q.j
            r0.<init>()
            r12.f11659t = r0
            q.j r0 = new q.j
            r0.<init>()
            r12.f11660u = r0
            android.graphics.RectF r0 = new android.graphics.RectF
            r0.<init>()
            r12.f11661v = r0
            java.lang.String r0 = r15.f12084a
            r12.f11657r = r0
            com.airbnb.lottie.model.content.GradientType r0 = r15.f12085b
            r12.f11662w = r0
            boolean r0 = r15.f12096m
            r12.f11658s = r0
            k0.m r13 = r13.f4316d
            float r13 = r13.b()
            r0 = 1107296256(0x42000000, float:32.0)
            float r13 = r13 / r0
            int r13 = (int) r13
            r12.f11663x = r13
            q0.c r13 = r15.f12086c
            n0.f r13 = r13.a()
            r0 = r13
            n0.k r0 = (n0.k) r0
            r12.f11664y = r0
            r13.a(r12)
            r14.d(r13)
            q0.f r13 = r15.f12088e
            n0.f r13 = r13.a()
            r0 = r13
            n0.q r0 = (n0.q) r0
            r12.f11665z = r0
            r13.a(r12)
            r14.d(r13)
            q0.f r13 = r15.f12089f
            n0.f r13 = r13.a()
            r15 = r13
            n0.q r15 = (n0.q) r15
            r12.f11655A = r15
            r13.a(r12)
            r14.d(r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: m0.j.<init>(com.airbnb.lottie.a, s0.b, r0.f):void");
    }

    public final int[] d(int[] iArr) {
        x xVar = this.f11656B;
        if (xVar != null) {
            Integer[] numArr = (Integer[]) xVar.f();
            int i4 = 0;
            if (iArr.length == numArr.length) {
                while (i4 < iArr.length) {
                    iArr[i4] = numArr[i4].intValue();
                    i4++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i4 < numArr.length) {
                    iArr[i4] = numArr[i4].intValue();
                    i4++;
                }
            }
        }
        return iArr;
    }

    @Override // m0.AbstractC1301b, p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        super.e(cVar, obj);
        if (obj == InterfaceC1182G.f11059L) {
            x xVar = this.f11656B;
            s0.b bVar = this.f11589f;
            if (xVar != null) {
                bVar.q(xVar);
            }
            if (cVar == null) {
                this.f11656B = null;
                return;
            }
            x xVar2 = new x(cVar, null);
            this.f11656B = xVar2;
            xVar2.a(this);
            bVar.d(this.f11656B);
        }
    }

    @Override // m0.AbstractC1301b, m0.f
    public final void f(Canvas canvas, Matrix matrix, int i4) {
        Shader shader;
        float f4;
        float f5;
        if (this.f11658s) {
            return;
        }
        a(this.f11661v, matrix, false);
        GradientType gradientType = GradientType.LINEAR;
        GradientType gradientType2 = this.f11662w;
        n0.k kVar = this.f11664y;
        n0.q qVar = this.f11655A;
        n0.q qVar2 = this.f11665z;
        if (gradientType2 == gradientType) {
            long j4 = j();
            q.j jVar = this.f11659t;
            shader = (LinearGradient) jVar.c(j4);
            if (shader == null) {
                PointF pointF = (PointF) qVar2.f();
                PointF pointF2 = (PointF) qVar.f();
                C1373d c1373d = (C1373d) kVar.f();
                shader = new LinearGradient(pointF.x, pointF.y, pointF2.x, pointF2.y, d(c1373d.f12075b), c1373d.f12074a, Shader.TileMode.CLAMP);
                jVar.f(j4, shader);
            }
        } else {
            long j5 = j();
            q.j jVar2 = this.f11660u;
            shader = (RadialGradient) jVar2.c(j5);
            if (shader == null) {
                PointF pointF3 = (PointF) qVar2.f();
                PointF pointF4 = (PointF) qVar.f();
                C1373d c1373d2 = (C1373d) kVar.f();
                int[] d4 = d(c1373d2.f12075b);
                float[] fArr = c1373d2.f12074a;
                shader = new RadialGradient(pointF3.x, pointF3.y, (float) Math.hypot(pointF4.x - f4, pointF4.y - f5), d4, fArr, Shader.TileMode.CLAMP);
                jVar2.f(j5, shader);
            }
        }
        shader.setLocalMatrix(matrix);
        this.f11592i.setShader(shader);
        super.f(canvas, matrix, i4);
    }

    @Override // m0.InterfaceC1303d
    public final String getName() {
        return this.f11657r;
    }

    public final int j() {
        float f4 = this.f11665z.f11750d;
        float f5 = this.f11663x;
        int round = Math.round(f4 * f5);
        int round2 = Math.round(this.f11655A.f11750d * f5);
        int round3 = Math.round(this.f11664y.f11750d * f5);
        int i4 = round != 0 ? round * 527 : 17;
        if (round2 != 0) {
            i4 = i4 * 31 * round2;
        }
        return round3 != 0 ? i4 * 31 * round3 : i4;
    }
}
