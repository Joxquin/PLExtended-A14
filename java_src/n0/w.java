package n0;

import android.graphics.Matrix;
import android.graphics.PointF;
import java.util.Collections;
import k0.InterfaceC1182G;
import q0.C1360b;
import x0.C1456a;
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public final Matrix f11787a = new Matrix();

    /* renamed from: b  reason: collision with root package name */
    public final Matrix f11788b;

    /* renamed from: c  reason: collision with root package name */
    public final Matrix f11789c;

    /* renamed from: d  reason: collision with root package name */
    public final Matrix f11790d;

    /* renamed from: e  reason: collision with root package name */
    public final float[] f11791e;

    /* renamed from: f  reason: collision with root package name */
    public f f11792f;

    /* renamed from: g  reason: collision with root package name */
    public f f11793g;

    /* renamed from: h  reason: collision with root package name */
    public f f11794h;

    /* renamed from: i  reason: collision with root package name */
    public f f11795i;

    /* renamed from: j  reason: collision with root package name */
    public f f11796j;

    /* renamed from: k  reason: collision with root package name */
    public j f11797k;

    /* renamed from: l  reason: collision with root package name */
    public j f11798l;

    /* renamed from: m  reason: collision with root package name */
    public f f11799m;

    /* renamed from: n  reason: collision with root package name */
    public f f11800n;

    public w(q0.l lVar) {
        q0.e eVar = lVar.f11979a;
        this.f11792f = eVar == null ? null : eVar.a();
        q0.m mVar = lVar.f11980b;
        this.f11793g = mVar == null ? null : mVar.a();
        q0.g gVar = lVar.f11981c;
        this.f11794h = gVar == null ? null : gVar.a();
        C1360b c1360b = lVar.f11982d;
        this.f11795i = c1360b == null ? null : c1360b.a();
        C1360b c1360b2 = lVar.f11984f;
        j jVar = c1360b2 == null ? null : (j) c1360b2.a();
        this.f11797k = jVar;
        if (jVar != null) {
            this.f11788b = new Matrix();
            this.f11789c = new Matrix();
            this.f11790d = new Matrix();
            this.f11791e = new float[9];
        } else {
            this.f11788b = null;
            this.f11789c = null;
            this.f11790d = null;
            this.f11791e = null;
        }
        C1360b c1360b3 = lVar.f11985g;
        this.f11798l = c1360b3 == null ? null : (j) c1360b3.a();
        q0.d dVar = lVar.f11983e;
        if (dVar != null) {
            this.f11796j = dVar.a();
        }
        C1360b c1360b4 = lVar.f11986h;
        if (c1360b4 != null) {
            this.f11799m = c1360b4.a();
        } else {
            this.f11799m = null;
        }
        C1360b c1360b5 = lVar.f11987i;
        if (c1360b5 != null) {
            this.f11800n = c1360b5.a();
        } else {
            this.f11800n = null;
        }
    }

    public final void a(s0.b bVar) {
        bVar.d(this.f11796j);
        bVar.d(this.f11799m);
        bVar.d(this.f11800n);
        bVar.d(this.f11792f);
        bVar.d(this.f11793g);
        bVar.d(this.f11794h);
        bVar.d(this.f11795i);
        bVar.d(this.f11797k);
        bVar.d(this.f11798l);
    }

    public final void b(InterfaceC1313a interfaceC1313a) {
        f fVar = this.f11796j;
        if (fVar != null) {
            fVar.a(interfaceC1313a);
        }
        f fVar2 = this.f11799m;
        if (fVar2 != null) {
            fVar2.a(interfaceC1313a);
        }
        f fVar3 = this.f11800n;
        if (fVar3 != null) {
            fVar3.a(interfaceC1313a);
        }
        f fVar4 = this.f11792f;
        if (fVar4 != null) {
            fVar4.a(interfaceC1313a);
        }
        f fVar5 = this.f11793g;
        if (fVar5 != null) {
            fVar5.a(interfaceC1313a);
        }
        f fVar6 = this.f11794h;
        if (fVar6 != null) {
            fVar6.a(interfaceC1313a);
        }
        f fVar7 = this.f11795i;
        if (fVar7 != null) {
            fVar7.a(interfaceC1313a);
        }
        j jVar = this.f11797k;
        if (jVar != null) {
            jVar.a(interfaceC1313a);
        }
        j jVar2 = this.f11798l;
        if (jVar2 != null) {
            jVar2.a(interfaceC1313a);
        }
    }

    public final boolean c(x0.c cVar, Object obj) {
        if (obj == InterfaceC1182G.f11068f) {
            f fVar = this.f11792f;
            if (fVar == null) {
                this.f11792f = new x(cVar, new PointF());
                return true;
            }
            fVar.k(cVar);
            return true;
        } else if (obj == InterfaceC1182G.f11069g) {
            f fVar2 = this.f11793g;
            if (fVar2 == null) {
                this.f11793g = new x(cVar, new PointF());
                return true;
            }
            fVar2.k(cVar);
            return true;
        } else {
            if (obj == InterfaceC1182G.f11070h) {
                f fVar3 = this.f11793g;
                if (fVar3 instanceof t) {
                    t tVar = (t) fVar3;
                    x0.c cVar2 = tVar.f11782m;
                    tVar.f11782m = cVar;
                    return true;
                }
            }
            if (obj == InterfaceC1182G.f11071i) {
                f fVar4 = this.f11793g;
                if (fVar4 instanceof t) {
                    t tVar2 = (t) fVar4;
                    x0.c cVar3 = tVar2.f11783n;
                    tVar2.f11783n = cVar;
                    return true;
                }
            }
            if (obj == InterfaceC1182G.f11077o) {
                f fVar5 = this.f11794h;
                if (fVar5 == null) {
                    this.f11794h = new x(cVar, new x0.d());
                    return true;
                }
                fVar5.k(cVar);
                return true;
            } else if (obj == InterfaceC1182G.f11078p) {
                f fVar6 = this.f11795i;
                if (fVar6 == null) {
                    this.f11795i = new x(cVar, Float.valueOf(0.0f));
                    return true;
                }
                fVar6.k(cVar);
                return true;
            } else if (obj == InterfaceC1182G.f11065c) {
                f fVar7 = this.f11796j;
                if (fVar7 == null) {
                    this.f11796j = new x(cVar, 100);
                    return true;
                }
                fVar7.k(cVar);
                return true;
            } else if (obj == InterfaceC1182G.f11050C) {
                f fVar8 = this.f11799m;
                if (fVar8 == null) {
                    this.f11799m = new x(cVar, Float.valueOf(100.0f));
                    return true;
                }
                fVar8.k(cVar);
                return true;
            } else if (obj == InterfaceC1182G.f11051D) {
                f fVar9 = this.f11800n;
                if (fVar9 == null) {
                    this.f11800n = new x(cVar, Float.valueOf(100.0f));
                    return true;
                }
                fVar9.k(cVar);
                return true;
            } else if (obj == InterfaceC1182G.f11079q) {
                if (this.f11797k == null) {
                    this.f11797k = new j(Collections.singletonList(new C1456a(Float.valueOf(0.0f))));
                }
                this.f11797k.k(cVar);
                return true;
            } else if (obj == InterfaceC1182G.f11080r) {
                if (this.f11798l == null) {
                    this.f11798l = new j(Collections.singletonList(new C1456a(Float.valueOf(0.0f))));
                }
                this.f11798l.k(cVar);
                return true;
            } else {
                return false;
            }
        }
    }

    public final Matrix d() {
        j jVar;
        j jVar2;
        j jVar3;
        float[] fArr;
        PointF pointF;
        Matrix matrix = this.f11787a;
        matrix.reset();
        f fVar = this.f11793g;
        if (fVar != null && (pointF = (PointF) fVar.f()) != null) {
            float f4 = pointF.x;
            if (f4 != 0.0f || pointF.y != 0.0f) {
                matrix.preTranslate(f4, pointF.y);
            }
        }
        f fVar2 = this.f11795i;
        if (fVar2 != null) {
            float floatValue = fVar2 instanceof x ? ((Float) fVar2.f()).floatValue() : ((j) fVar2).l();
            if (floatValue != 0.0f) {
                matrix.preRotate(floatValue);
            }
        }
        if (this.f11797k != null) {
            float cos = this.f11798l == null ? 0.0f : (float) Math.cos(Math.toRadians((-jVar2.l()) + 90.0f));
            float sin = this.f11798l == null ? 1.0f : (float) Math.sin(Math.toRadians((-jVar3.l()) + 90.0f));
            float tan = (float) Math.tan(Math.toRadians(jVar.l()));
            int i4 = 0;
            while (true) {
                fArr = this.f11791e;
                if (i4 >= 9) {
                    break;
                }
                fArr[i4] = 0.0f;
                i4++;
            }
            fArr[0] = cos;
            fArr[1] = sin;
            float f5 = -sin;
            fArr[3] = f5;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            Matrix matrix2 = this.f11788b;
            matrix2.setValues(fArr);
            for (int i5 = 0; i5 < 9; i5++) {
                fArr[i5] = 0.0f;
            }
            fArr[0] = 1.0f;
            fArr[3] = tan;
            fArr[4] = 1.0f;
            fArr[8] = 1.0f;
            Matrix matrix3 = this.f11789c;
            matrix3.setValues(fArr);
            for (int i6 = 0; i6 < 9; i6++) {
                fArr[i6] = 0.0f;
            }
            fArr[0] = cos;
            fArr[1] = f5;
            fArr[3] = sin;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            Matrix matrix4 = this.f11790d;
            matrix4.setValues(fArr);
            matrix3.preConcat(matrix2);
            matrix4.preConcat(matrix3);
            matrix.preConcat(matrix4);
        }
        f fVar3 = this.f11794h;
        if (fVar3 != null) {
            x0.d dVar = (x0.d) fVar3.f();
            float f6 = dVar.f12832a;
            if (f6 != 1.0f || dVar.f12833b != 1.0f) {
                matrix.preScale(f6, dVar.f12833b);
            }
        }
        f fVar4 = this.f11792f;
        if (fVar4 != null) {
            PointF pointF2 = (PointF) fVar4.f();
            float f7 = pointF2.x;
            if (f7 != 0.0f || pointF2.y != 0.0f) {
                matrix.preTranslate(-f7, -pointF2.y);
            }
        }
        return matrix;
    }

    public final Matrix e(float f4) {
        f fVar = this.f11793g;
        PointF pointF = fVar == null ? null : (PointF) fVar.f();
        f fVar2 = this.f11794h;
        x0.d dVar = fVar2 == null ? null : (x0.d) fVar2.f();
        Matrix matrix = this.f11787a;
        matrix.reset();
        if (pointF != null) {
            matrix.preTranslate(pointF.x * f4, pointF.y * f4);
        }
        if (dVar != null) {
            double d4 = f4;
            matrix.preScale((float) Math.pow(dVar.f12832a, d4), (float) Math.pow(dVar.f12833b, d4));
        }
        f fVar3 = this.f11795i;
        if (fVar3 != null) {
            float floatValue = ((Float) fVar3.f()).floatValue();
            f fVar4 = this.f11792f;
            PointF pointF2 = fVar4 != null ? (PointF) fVar4.f() : null;
            matrix.preRotate(floatValue * f4, pointF2 == null ? 0.0f : pointF2.x, pointF2 != null ? pointF2.y : 0.0f);
        }
        return matrix;
    }
}
