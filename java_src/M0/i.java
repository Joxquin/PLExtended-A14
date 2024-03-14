package m0;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import com.airbnb.lottie.model.content.GradientType;
import java.util.ArrayList;
import java.util.List;
import k0.C1189d;
import k0.InterfaceC1182G;
import l0.C1265a;
import n0.InterfaceC1313a;
import n0.x;
import p0.C1343e;
import r0.C1373d;
import r0.C1374e;
/* loaded from: classes.dex */
public final class i implements f, InterfaceC1313a, l {

    /* renamed from: a  reason: collision with root package name */
    public final String f11634a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f11635b;

    /* renamed from: c  reason: collision with root package name */
    public final s0.b f11636c;

    /* renamed from: d  reason: collision with root package name */
    public final q.j f11637d = new q.j();

    /* renamed from: e  reason: collision with root package name */
    public final q.j f11638e = new q.j();

    /* renamed from: f  reason: collision with root package name */
    public final Path f11639f;

    /* renamed from: g  reason: collision with root package name */
    public final C1265a f11640g;

    /* renamed from: h  reason: collision with root package name */
    public final RectF f11641h;

    /* renamed from: i  reason: collision with root package name */
    public final List f11642i;

    /* renamed from: j  reason: collision with root package name */
    public final GradientType f11643j;

    /* renamed from: k  reason: collision with root package name */
    public final n0.k f11644k;

    /* renamed from: l  reason: collision with root package name */
    public final n0.l f11645l;

    /* renamed from: m  reason: collision with root package name */
    public final n0.q f11646m;

    /* renamed from: n  reason: collision with root package name */
    public final n0.q f11647n;

    /* renamed from: o  reason: collision with root package name */
    public x f11648o;

    /* renamed from: p  reason: collision with root package name */
    public x f11649p;

    /* renamed from: q  reason: collision with root package name */
    public final com.airbnb.lottie.a f11650q;

    /* renamed from: r  reason: collision with root package name */
    public final int f11651r;

    /* renamed from: s  reason: collision with root package name */
    public n0.f f11652s;

    /* renamed from: t  reason: collision with root package name */
    public float f11653t;

    /* renamed from: u  reason: collision with root package name */
    public final n0.i f11654u;

    public i(com.airbnb.lottie.a aVar, s0.b bVar, C1374e c1374e) {
        Path path = new Path();
        this.f11639f = path;
        this.f11640g = new C1265a(1);
        this.f11641h = new RectF();
        this.f11642i = new ArrayList();
        this.f11653t = 0.0f;
        this.f11636c = bVar;
        this.f11634a = c1374e.f12082g;
        this.f11635b = c1374e.f12083h;
        this.f11650q = aVar;
        this.f11643j = c1374e.f12076a;
        path.setFillType(c1374e.f12077b);
        this.f11651r = (int) (aVar.f4316d.b() / 32.0f);
        n0.f a4 = c1374e.f12078c.a();
        this.f11644k = (n0.k) a4;
        a4.a(this);
        bVar.d(a4);
        n0.f a5 = c1374e.f12079d.a();
        this.f11645l = (n0.l) a5;
        a5.a(this);
        bVar.d(a5);
        n0.f a6 = c1374e.f12080e.a();
        this.f11646m = (n0.q) a6;
        a6.a(this);
        bVar.d(a6);
        n0.f a7 = c1374e.f12081f.a();
        this.f11647n = (n0.q) a7;
        a7.a(this);
        bVar.d(a7);
        if (bVar.m() != null) {
            n0.f a8 = bVar.m().f12068a.a();
            this.f11652s = a8;
            a8.a(this);
            bVar.d(this.f11652s);
        }
        if (bVar.n() != null) {
            this.f11654u = new n0.i(this, bVar, bVar.n());
        }
    }

    @Override // m0.f
    public final void a(RectF rectF, Matrix matrix, boolean z4) {
        Path path = this.f11639f;
        path.reset();
        int i4 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) this.f11642i;
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
        this.f11650q.invalidateSelf();
    }

    @Override // m0.InterfaceC1303d
    public final void c(List list, List list2) {
        for (int i4 = 0; i4 < list2.size(); i4++) {
            InterfaceC1303d interfaceC1303d = (InterfaceC1303d) list2.get(i4);
            if (interfaceC1303d instanceof n) {
                ((ArrayList) this.f11642i).add((n) interfaceC1303d);
            }
        }
    }

    public final int[] d(int[] iArr) {
        x xVar = this.f11649p;
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

    @Override // p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        if (obj == InterfaceC1182G.f11066d) {
            this.f11645l.k(cVar);
            return;
        }
        ColorFilter colorFilter = InterfaceC1182G.f11058K;
        s0.b bVar = this.f11636c;
        if (obj == colorFilter) {
            x xVar = this.f11648o;
            if (xVar != null) {
                bVar.q(xVar);
            }
            if (cVar == null) {
                this.f11648o = null;
                return;
            }
            x xVar2 = new x(cVar, null);
            this.f11648o = xVar2;
            xVar2.a(this);
            bVar.d(this.f11648o);
        } else if (obj == InterfaceC1182G.f11059L) {
            x xVar3 = this.f11649p;
            if (xVar3 != null) {
                bVar.q(xVar3);
            }
            if (cVar == null) {
                this.f11649p = null;
                return;
            }
            this.f11637d.a();
            this.f11638e.a();
            x xVar4 = new x(cVar, null);
            this.f11649p = xVar4;
            xVar4.a(this);
            bVar.d(this.f11649p);
        } else if (obj == InterfaceC1182G.f11072j) {
            n0.f fVar = this.f11652s;
            if (fVar != null) {
                fVar.k(cVar);
                return;
            }
            x xVar5 = new x(cVar, null);
            this.f11652s = xVar5;
            xVar5.a(this);
            bVar.d(this.f11652s);
        } else {
            Integer num = InterfaceC1182G.f11067e;
            n0.i iVar = this.f11654u;
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

    @Override // m0.f
    public final void f(Canvas canvas, Matrix matrix, int i4) {
        Shader shader;
        if (this.f11635b) {
            return;
        }
        Path path = this.f11639f;
        path.reset();
        int i5 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) this.f11642i;
            if (i5 >= arrayList.size()) {
                break;
            }
            path.addPath(((n) arrayList.get(i5)).g(), matrix);
            i5++;
        }
        path.computeBounds(this.f11641h, false);
        GradientType gradientType = GradientType.LINEAR;
        GradientType gradientType2 = this.f11643j;
        n0.k kVar = this.f11644k;
        n0.q qVar = this.f11647n;
        n0.q qVar2 = this.f11646m;
        if (gradientType2 == gradientType) {
            long j4 = j();
            q.j jVar = this.f11637d;
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
            q.j jVar2 = this.f11638e;
            shader = (RadialGradient) jVar2.c(j5);
            if (shader == null) {
                PointF pointF3 = (PointF) qVar2.f();
                PointF pointF4 = (PointF) qVar.f();
                C1373d c1373d2 = (C1373d) kVar.f();
                int[] d4 = d(c1373d2.f12075b);
                float[] fArr = c1373d2.f12074a;
                float f4 = pointF3.x;
                float f5 = pointF3.y;
                float hypot = (float) Math.hypot(pointF4.x - f4, pointF4.y - f5);
                if (hypot <= 0.0f) {
                    hypot = 0.001f;
                }
                shader = new RadialGradient(f4, f5, hypot, d4, fArr, Shader.TileMode.CLAMP);
                jVar2.f(j5, shader);
            }
        }
        shader.setLocalMatrix(matrix);
        C1265a c1265a = this.f11640g;
        c1265a.setShader(shader);
        x xVar = this.f11648o;
        if (xVar != null) {
            c1265a.setColorFilter((ColorFilter) xVar.f());
        }
        n0.f fVar = this.f11652s;
        if (fVar != null) {
            float floatValue = ((Float) fVar.f()).floatValue();
            if (floatValue == 0.0f) {
                c1265a.setMaskFilter(null);
            } else if (floatValue != this.f11653t) {
                c1265a.setMaskFilter(new BlurMaskFilter(floatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.f11653t = floatValue;
        }
        n0.i iVar = this.f11654u;
        if (iVar != null) {
            iVar.a(c1265a);
        }
        PointF pointF5 = w0.f.f12733a;
        c1265a.setAlpha(Math.max(0, Math.min(255, (int) ((((i4 / 255.0f) * ((Integer) this.f11645l.f()).intValue()) / 100.0f) * 255.0f))));
        canvas.drawPath(path, c1265a);
        C1189d.a();
    }

    @Override // m0.InterfaceC1303d
    public final String getName() {
        return this.f11634a;
    }

    @Override // p0.InterfaceC1344f
    public final void h(C1343e c1343e, int i4, List list, C1343e c1343e2) {
        w0.f.d(c1343e, i4, list, c1343e2, this);
    }

    public final int j() {
        float f4 = this.f11646m.f11750d;
        float f5 = this.f11651r;
        int round = Math.round(f4 * f5);
        int round2 = Math.round(this.f11647n.f11750d * f5);
        int round3 = Math.round(this.f11644k.f11750d * f5);
        int i4 = round != 0 ? round * 527 : 17;
        if (round2 != 0) {
            i4 = i4 * 31 * round2;
        }
        return round3 != 0 ? i4 * 31 * round3 : i4;
    }
}
