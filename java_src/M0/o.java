package m0;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.model.content.PolystarShape$Type;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import java.util.ArrayList;
import java.util.List;
import k0.InterfaceC1182G;
import n0.InterfaceC1313a;
import p0.C1343e;
import r0.C1378i;
/* loaded from: classes.dex */
public final class o implements n, InterfaceC1313a, l {

    /* renamed from: b  reason: collision with root package name */
    public final String f11672b;

    /* renamed from: c  reason: collision with root package name */
    public final com.airbnb.lottie.a f11673c;

    /* renamed from: d  reason: collision with root package name */
    public final PolystarShape$Type f11674d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f11675e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f11676f;

    /* renamed from: g  reason: collision with root package name */
    public final n0.j f11677g;

    /* renamed from: h  reason: collision with root package name */
    public final n0.f f11678h;

    /* renamed from: i  reason: collision with root package name */
    public final n0.j f11679i;

    /* renamed from: j  reason: collision with root package name */
    public final n0.j f11680j;

    /* renamed from: k  reason: collision with root package name */
    public final n0.j f11681k;

    /* renamed from: l  reason: collision with root package name */
    public final n0.j f11682l;

    /* renamed from: m  reason: collision with root package name */
    public final n0.j f11683m;

    /* renamed from: o  reason: collision with root package name */
    public boolean f11685o;

    /* renamed from: a  reason: collision with root package name */
    public final Path f11671a = new Path();

    /* renamed from: n  reason: collision with root package name */
    public final C1302c f11684n = new C1302c();

    public o(com.airbnb.lottie.a aVar, s0.b bVar, C1378i c1378i) {
        this.f11673c = aVar;
        this.f11672b = c1378i.f12103a;
        PolystarShape$Type polystarShape$Type = c1378i.f12104b;
        this.f11674d = polystarShape$Type;
        this.f11675e = c1378i.f12112j;
        this.f11676f = c1378i.f12113k;
        n0.f a4 = c1378i.f12105c.a();
        this.f11677g = (n0.j) a4;
        n0.f a5 = c1378i.f12106d.a();
        this.f11678h = a5;
        n0.f a6 = c1378i.f12107e.a();
        this.f11679i = (n0.j) a6;
        n0.f a7 = c1378i.f12109g.a();
        this.f11681k = (n0.j) a7;
        n0.f a8 = c1378i.f12111i.a();
        this.f11683m = (n0.j) a8;
        PolystarShape$Type polystarShape$Type2 = PolystarShape$Type.STAR;
        if (polystarShape$Type == polystarShape$Type2) {
            this.f11680j = (n0.j) c1378i.f12108f.a();
            this.f11682l = (n0.j) c1378i.f12110h.a();
        } else {
            this.f11680j = null;
            this.f11682l = null;
        }
        bVar.d(a4);
        bVar.d(a5);
        bVar.d(a6);
        bVar.d(a7);
        bVar.d(a8);
        if (polystarShape$Type == polystarShape$Type2) {
            bVar.d(this.f11680j);
            bVar.d(this.f11682l);
        }
        a4.a(this);
        a5.a(this);
        a6.a(this);
        a7.a(this);
        a8.a(this);
        if (polystarShape$Type == polystarShape$Type2) {
            this.f11680j.a(this);
            this.f11682l.a(this);
        }
    }

    @Override // n0.InterfaceC1313a
    public final void b() {
        this.f11685o = false;
        this.f11673c.invalidateSelf();
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
                    ((ArrayList) this.f11684n.f11601a).add(vVar);
                    vVar.d(this);
                }
            }
            i4++;
        }
    }

    @Override // p0.InterfaceC1344f
    public final void e(x0.c cVar, Object obj) {
        n0.j jVar;
        n0.j jVar2;
        if (obj == InterfaceC1182G.f11085w) {
            this.f11677g.k(cVar);
        } else if (obj == InterfaceC1182G.f11086x) {
            this.f11679i.k(cVar);
        } else if (obj == InterfaceC1182G.f11076n) {
            this.f11678h.k(cVar);
        } else if (obj == InterfaceC1182G.f11087y && (jVar2 = this.f11680j) != null) {
            jVar2.k(cVar);
        } else if (obj == InterfaceC1182G.f11088z) {
            this.f11681k.k(cVar);
        } else if (obj == InterfaceC1182G.f11048A && (jVar = this.f11682l) != null) {
            jVar.k(cVar);
        } else if (obj == InterfaceC1182G.f11049B) {
            this.f11683m.k(cVar);
        }
    }

    @Override // m0.n
    public final Path g() {
        double d4;
        float f4;
        float f5;
        float f6;
        Path path;
        float f7;
        float f8;
        float f9;
        Path path2;
        n0.f fVar;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        int i4;
        n0.f fVar2;
        double d5;
        double d6;
        float f15;
        double d7;
        boolean z4 = this.f11685o;
        Path path3 = this.f11671a;
        if (z4) {
            return path3;
        }
        path3.reset();
        if (this.f11675e) {
            this.f11685o = true;
            return path3;
        }
        int ordinal = this.f11674d.ordinal();
        n0.f fVar3 = this.f11678h;
        n0.j jVar = this.f11683m;
        n0.j jVar2 = this.f11681k;
        n0.j jVar3 = this.f11679i;
        n0.j jVar4 = this.f11677g;
        if (ordinal != 0) {
            if (ordinal == 1) {
                int floor = (int) Math.floor(((Float) jVar4.f()).floatValue());
                double radians = Math.toRadians((jVar3 != null ? ((Float) jVar3.f()).floatValue() : 0.0d) - 90.0d);
                double d8 = floor;
                float floatValue = ((Float) jVar.f()).floatValue() / 100.0f;
                float floatValue2 = ((Float) jVar2.f()).floatValue();
                double d9 = floatValue2;
                float cos = (float) (Math.cos(radians) * d9);
                float sin = (float) (Math.sin(radians) * d9);
                path3.moveTo(cos, sin);
                double d10 = (float) (6.283185307179586d / d8);
                double d11 = radians + d10;
                double ceil = Math.ceil(d8);
                int i5 = 0;
                double d12 = d10;
                while (i5 < ceil) {
                    float cos2 = (float) (Math.cos(d11) * d9);
                    float sin2 = (float) (Math.sin(d11) * d9);
                    if (floatValue != 0.0f) {
                        double d13 = d9;
                        i4 = i5;
                        double atan2 = (float) (Math.atan2(sin, cos) - 1.5707963267948966d);
                        float cos3 = (float) Math.cos(atan2);
                        fVar2 = fVar3;
                        d5 = d11;
                        double atan22 = (float) (Math.atan2(sin2, cos2) - 1.5707963267948966d);
                        float f16 = floatValue2 * floatValue * 0.25f;
                        d6 = d12;
                        f15 = sin2;
                        d7 = d13;
                        path3.cubicTo(cos - (cos3 * f16), sin - (((float) Math.sin(atan2)) * f16), (((float) Math.cos(atan22)) * f16) + cos2, (f16 * ((float) Math.sin(atan22))) + sin2, cos2, f15);
                    } else {
                        i4 = i5;
                        fVar2 = fVar3;
                        d5 = d11;
                        d6 = d12;
                        f15 = sin2;
                        d7 = d9;
                        path3.lineTo(cos2, f15);
                    }
                    double d14 = d5 + d6;
                    sin = f15;
                    d9 = d7;
                    d12 = d6;
                    fVar3 = fVar2;
                    d11 = d14;
                    cos = cos2;
                    i5 = i4 + 1;
                }
                PointF pointF = (PointF) fVar3.f();
                path3.offset(pointF.x, pointF.y);
                path3.close();
            }
            path = path3;
        } else {
            n0.f fVar4 = fVar3;
            float floatValue3 = ((Float) jVar4.f()).floatValue();
            double radians2 = Math.toRadians((jVar3 != null ? ((Float) jVar3.f()).floatValue() : 0.0d) - 90.0d);
            double d15 = floatValue3;
            float f17 = (float) (6.283185307179586d / d15);
            if (this.f11676f) {
                f17 *= -1.0f;
            }
            float f18 = f17;
            float f19 = f18 / 2.0f;
            float f20 = floatValue3 - ((int) floatValue3);
            int i6 = (f20 > 0.0f ? 1 : (f20 == 0.0f ? 0 : -1));
            if (i6 != 0) {
                radians2 += (1.0f - f20) * f19;
            }
            float floatValue4 = ((Float) jVar2.f()).floatValue();
            float floatValue5 = ((Float) this.f11680j.f()).floatValue();
            n0.j jVar5 = this.f11682l;
            float floatValue6 = jVar5 != null ? ((Float) jVar5.f()).floatValue() / 100.0f : 0.0f;
            float floatValue7 = jVar != null ? ((Float) jVar.f()).floatValue() / 100.0f : 0.0f;
            if (i6 != 0) {
                float a4 = w.f.a(floatValue4, floatValue5, f20, floatValue5);
                double d16 = a4;
                f6 = a4;
                f4 = (float) (Math.cos(radians2) * d16);
                f5 = (float) (Math.sin(radians2) * d16);
                path3.moveTo(f4, f5);
                d4 = radians2 + ((f18 * f20) / 2.0f);
            } else {
                double d17 = floatValue4;
                float cos4 = (float) (Math.cos(radians2) * d17);
                float sin3 = (float) (d17 * Math.sin(radians2));
                path3.moveTo(cos4, sin3);
                d4 = radians2 + f19;
                f4 = cos4;
                f5 = sin3;
                f6 = 0.0f;
            }
            double ceil2 = Math.ceil(d15);
            double d18 = 2.0d;
            double d19 = ceil2 * 2.0d;
            double d20 = d4;
            int i7 = 0;
            boolean z5 = false;
            while (true) {
                double d21 = i7;
                if (d21 >= d19) {
                    break;
                }
                float f21 = z5 ? floatValue4 : floatValue5;
                int i8 = (f6 > 0.0f ? 1 : (f6 == 0.0f ? 0 : -1));
                float f22 = (i8 == 0 || d21 != d19 - d18) ? f19 : (f18 * f20) / 2.0f;
                if (i8 == 0 || d21 != d19 - 1.0d) {
                    f7 = floatValue5;
                    f8 = f21;
                    f9 = floatValue4;
                } else {
                    f7 = floatValue5;
                    f9 = floatValue4;
                    f8 = f6;
                }
                double d22 = f8;
                float cos5 = (float) (Math.cos(d20) * d22);
                float sin4 = (float) (d22 * Math.sin(d20));
                if (floatValue6 == 0.0f && floatValue7 == 0.0f) {
                    path3.lineTo(cos5, sin4);
                    path2 = path3;
                    f10 = sin4;
                    f11 = f18;
                    f13 = f9;
                    fVar = fVar4;
                    f14 = f19;
                    f12 = f7;
                } else {
                    float f23 = f19;
                    path2 = path3;
                    double atan23 = (float) (Math.atan2(f5, f4) - 1.5707963267948966d);
                    float cos6 = (float) Math.cos(atan23);
                    float sin5 = (float) Math.sin(atan23);
                    fVar = fVar4;
                    float f24 = f4;
                    f10 = sin4;
                    f11 = f18;
                    double atan24 = (float) (Math.atan2(sin4, cos5) - 1.5707963267948966d);
                    float cos7 = (float) Math.cos(atan24);
                    float sin6 = (float) Math.sin(atan24);
                    float f25 = z5 ? floatValue6 : floatValue7;
                    float f26 = z5 ? floatValue7 : floatValue6;
                    float f27 = (z5 ? f7 : f9) * f25 * 0.47829f;
                    float f28 = cos6 * f27;
                    float f29 = f27 * sin5;
                    float f30 = (z5 ? f9 : f7) * f26 * 0.47829f;
                    float f31 = cos7 * f30;
                    float f32 = f30 * sin6;
                    if (i6 != 0) {
                        if (i7 == 0) {
                            f28 *= f20;
                            f29 *= f20;
                        } else if (d21 == d19 - 1.0d) {
                            f31 *= f20;
                            f32 *= f20;
                        }
                    }
                    f12 = f7;
                    f13 = f9;
                    f14 = f23;
                    path2.cubicTo(f24 - f28, f5 - f29, cos5 + f31, f10 + f32, cos5, f10);
                }
                d20 += f22;
                z5 = !z5;
                i7++;
                floatValue5 = f12;
                fVar4 = fVar;
                f4 = cos5;
                floatValue4 = f13;
                f19 = f14;
                path3 = path2;
                f18 = f11;
                f5 = f10;
                d18 = 2.0d;
            }
            PointF pointF2 = (PointF) fVar4.f();
            path = path3;
            path.offset(pointF2.x, pointF2.y);
            path.close();
        }
        path.close();
        this.f11684n.a(path);
        this.f11685o = true;
        return path;
    }

    @Override // m0.InterfaceC1303d
    public final String getName() {
        return this.f11672b;
    }

    @Override // p0.InterfaceC1344f
    public final void h(C1343e c1343e, int i4, List list, C1343e c1343e2) {
        w0.f.d(c1343e, i4, list, c1343e2, this);
    }
}
