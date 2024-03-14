package m0;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import java.util.ArrayList;
import java.util.List;
import k0.C1189d;
import k0.InterfaceC1182G;
import l0.C1265a;
import n0.InterfaceC1313a;
import n0.x;
import p0.C1343e;
import q0.C1360b;
/* renamed from: m0.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1301b implements InterfaceC1313a, l, f {

    /* renamed from: e  reason: collision with root package name */
    public final com.airbnb.lottie.a f11588e;

    /* renamed from: f  reason: collision with root package name */
    public final s0.b f11589f;

    /* renamed from: h  reason: collision with root package name */
    public final float[] f11591h;

    /* renamed from: i  reason: collision with root package name */
    public final C1265a f11592i;

    /* renamed from: j  reason: collision with root package name */
    public final n0.j f11593j;

    /* renamed from: k  reason: collision with root package name */
    public final n0.l f11594k;

    /* renamed from: l  reason: collision with root package name */
    public final List f11595l;

    /* renamed from: m  reason: collision with root package name */
    public final n0.j f11596m;

    /* renamed from: n  reason: collision with root package name */
    public x f11597n;

    /* renamed from: o  reason: collision with root package name */
    public n0.f f11598o;

    /* renamed from: p  reason: collision with root package name */
    public float f11599p;

    /* renamed from: q  reason: collision with root package name */
    public final n0.i f11600q;

    /* renamed from: a  reason: collision with root package name */
    public final PathMeasure f11584a = new PathMeasure();

    /* renamed from: b  reason: collision with root package name */
    public final Path f11585b = new Path();

    /* renamed from: c  reason: collision with root package name */
    public final Path f11586c = new Path();

    /* renamed from: d  reason: collision with root package name */
    public final RectF f11587d = new RectF();

    /* renamed from: g  reason: collision with root package name */
    public final List f11590g = new ArrayList();

    public AbstractC1301b(com.airbnb.lottie.a aVar, s0.b bVar, Paint.Cap cap, Paint.Join join, float f4, q0.d dVar, C1360b c1360b, List list, C1360b c1360b2) {
        C1265a c1265a = new C1265a(1);
        this.f11592i = c1265a;
        this.f11599p = 0.0f;
        this.f11588e = aVar;
        this.f11589f = bVar;
        c1265a.setStyle(Paint.Style.STROKE);
        c1265a.setStrokeCap(cap);
        c1265a.setStrokeJoin(join);
        c1265a.setStrokeMiter(f4);
        this.f11594k = (n0.l) dVar.a();
        this.f11593j = (n0.j) c1360b.a();
        if (c1360b2 == null) {
            this.f11596m = null;
        } else {
            this.f11596m = (n0.j) c1360b2.a();
        }
        this.f11595l = new ArrayList(list.size());
        this.f11591h = new float[list.size()];
        for (int i4 = 0; i4 < list.size(); i4++) {
            ((ArrayList) this.f11595l).add(((C1360b) list.get(i4)).a());
        }
        bVar.d(this.f11594k);
        bVar.d(this.f11593j);
        for (int i5 = 0; i5 < ((ArrayList) this.f11595l).size(); i5++) {
            bVar.d((n0.f) ((ArrayList) this.f11595l).get(i5));
        }
        n0.j jVar = this.f11596m;
        if (jVar != null) {
            bVar.d(jVar);
        }
        this.f11594k.a(this);
        this.f11593j.a(this);
        for (int i6 = 0; i6 < list.size(); i6++) {
            ((n0.f) ((ArrayList) this.f11595l).get(i6)).a(this);
        }
        n0.j jVar2 = this.f11596m;
        if (jVar2 != null) {
            jVar2.a(this);
        }
        if (bVar.m() != null) {
            n0.f a4 = bVar.m().f12068a.a();
            this.f11598o = a4;
            a4.a(this);
            bVar.d(this.f11598o);
        }
        if (bVar.n() != null) {
            this.f11600q = new n0.i(this, bVar, bVar.n());
        }
    }

    @Override // m0.f
    public final void a(RectF rectF, Matrix matrix, boolean z4) {
        Path path = this.f11585b;
        path.reset();
        int i4 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) this.f11590g;
            if (i4 >= arrayList.size()) {
                RectF rectF2 = this.f11587d;
                path.computeBounds(rectF2, false);
                float l4 = this.f11593j.l() / 2.0f;
                rectF2.set(rectF2.left - l4, rectF2.top - l4, rectF2.right + l4, rectF2.bottom + l4);
                rectF.set(rectF2);
                rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
                C1189d.a();
                return;
            }
            C1300a c1300a = (C1300a) arrayList.get(i4);
            for (int i5 = 0; i5 < ((ArrayList) c1300a.f11582a).size(); i5++) {
                path.addPath(((n) ((ArrayList) c1300a.f11582a).get(i5)).g(), matrix);
            }
            i4++;
        }
    }

    @Override // n0.InterfaceC1313a
    public final void b() {
        this.f11588e.invalidateSelf();
    }

    @Override // m0.InterfaceC1303d
    public final void c(List list, List list2) {
        ShapeTrimPath$Type shapeTrimPath$Type;
        List list3;
        ArrayList arrayList = (ArrayList) list;
        int size = arrayList.size() - 1;
        C1300a c1300a = null;
        v vVar = null;
        while (true) {
            shapeTrimPath$Type = ShapeTrimPath$Type.INDIVIDUALLY;
            if (size < 0) {
                break;
            }
            InterfaceC1303d interfaceC1303d = (InterfaceC1303d) arrayList.get(size);
            if (interfaceC1303d instanceof v) {
                v vVar2 = (v) interfaceC1303d;
                if (vVar2.f11723c == shapeTrimPath$Type) {
                    vVar = vVar2;
                }
            }
            size--;
        }
        if (vVar != null) {
            vVar.d(this);
        }
        int size2 = list2.size();
        while (true) {
            size2--;
            list3 = this.f11590g;
            if (size2 < 0) {
                break;
            }
            InterfaceC1303d interfaceC1303d2 = (InterfaceC1303d) list2.get(size2);
            if (interfaceC1303d2 instanceof v) {
                v vVar3 = (v) interfaceC1303d2;
                if (vVar3.f11723c == shapeTrimPath$Type) {
                    if (c1300a != null) {
                        ((ArrayList) list3).add(c1300a);
                    }
                    C1300a c1300a2 = new C1300a(vVar3);
                    vVar3.d(this);
                    c1300a = c1300a2;
                }
            }
            if (interfaceC1303d2 instanceof n) {
                if (c1300a == null) {
                    c1300a = new C1300a(vVar);
                }
                ((ArrayList) c1300a.f11582a).add((n) interfaceC1303d2);
            }
        }
        if (c1300a != null) {
            ((ArrayList) list3).add(c1300a);
        }
    }

    @Override // p0.InterfaceC1344f
    public void e(x0.c cVar, Object obj) {
        if (obj == InterfaceC1182G.f11066d) {
            this.f11594k.k(cVar);
        } else if (obj == InterfaceC1182G.f11081s) {
            this.f11593j.k(cVar);
        } else {
            ColorFilter colorFilter = InterfaceC1182G.f11058K;
            s0.b bVar = this.f11589f;
            if (obj == colorFilter) {
                x xVar = this.f11597n;
                if (xVar != null) {
                    bVar.q(xVar);
                }
                if (cVar == null) {
                    this.f11597n = null;
                    return;
                }
                x xVar2 = new x(cVar, null);
                this.f11597n = xVar2;
                xVar2.a(this);
                bVar.d(this.f11597n);
            } else if (obj == InterfaceC1182G.f11072j) {
                n0.f fVar = this.f11598o;
                if (fVar != null) {
                    fVar.k(cVar);
                    return;
                }
                x xVar3 = new x(cVar, null);
                this.f11598o = xVar3;
                xVar3.a(this);
                bVar.d(this.f11598o);
            } else {
                Integer num = InterfaceC1182G.f11067e;
                n0.i iVar = this.f11600q;
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
    }

    @Override // m0.f
    public void f(Canvas canvas, Matrix matrix, int i4) {
        float[] fArr;
        boolean z4;
        BlurMaskFilter blurMaskFilter;
        AbstractC1301b abstractC1301b = this;
        float[] fArr2 = (float[]) w0.h.f12738d.get();
        boolean z5 = false;
        fArr2[0] = 0.0f;
        fArr2[1] = 0.0f;
        fArr2[2] = 37394.73f;
        fArr2[3] = 39575.234f;
        matrix.mapPoints(fArr2);
        if (fArr2[0] == fArr2[2] || fArr2[1] == fArr2[3]) {
            C1189d.a();
            return;
        }
        n0.l lVar = abstractC1301b.f11594k;
        float l4 = (i4 / 255.0f) * lVar.l(lVar.b(), lVar.d());
        float f4 = 100.0f;
        PointF pointF = w0.f.f12733a;
        int max = Math.max(0, Math.min(255, (int) ((l4 / 100.0f) * 255.0f)));
        C1265a c1265a = abstractC1301b.f11592i;
        c1265a.setAlpha(max);
        c1265a.setStrokeWidth(w0.h.d(matrix) * abstractC1301b.f11593j.l());
        if (c1265a.getStrokeWidth() <= 0.0f) {
            C1189d.a();
            return;
        }
        ArrayList arrayList = (ArrayList) abstractC1301b.f11595l;
        if (arrayList.isEmpty()) {
            C1189d.a();
        } else {
            float d4 = w0.h.d(matrix);
            int i5 = 0;
            while (true) {
                int size = arrayList.size();
                fArr = abstractC1301b.f11591h;
                if (i5 >= size) {
                    break;
                }
                float floatValue = ((Float) ((n0.f) arrayList.get(i5)).f()).floatValue();
                fArr[i5] = floatValue;
                if (i5 % 2 == 0) {
                    if (floatValue < 1.0f) {
                        fArr[i5] = 1.0f;
                    }
                } else if (floatValue < 0.1f) {
                    fArr[i5] = 0.1f;
                }
                fArr[i5] = fArr[i5] * d4;
                i5++;
            }
            n0.j jVar = abstractC1301b.f11596m;
            c1265a.setPathEffect(new DashPathEffect(fArr, jVar == null ? 0.0f : ((Float) jVar.f()).floatValue() * d4));
            C1189d.a();
        }
        x xVar = abstractC1301b.f11597n;
        if (xVar != null) {
            c1265a.setColorFilter((ColorFilter) xVar.f());
        }
        n0.f fVar = abstractC1301b.f11598o;
        if (fVar != null) {
            float floatValue2 = ((Float) fVar.f()).floatValue();
            if (floatValue2 == 0.0f) {
                c1265a.setMaskFilter(null);
            } else if (floatValue2 != abstractC1301b.f11599p) {
                s0.b bVar = abstractC1301b.f11589f;
                if (bVar.f12188B == floatValue2) {
                    blurMaskFilter = bVar.f12189C;
                } else {
                    BlurMaskFilter blurMaskFilter2 = new BlurMaskFilter(floatValue2 / 2.0f, BlurMaskFilter.Blur.NORMAL);
                    bVar.f12189C = blurMaskFilter2;
                    bVar.f12188B = floatValue2;
                    blurMaskFilter = blurMaskFilter2;
                }
                c1265a.setMaskFilter(blurMaskFilter);
            }
            abstractC1301b.f11599p = floatValue2;
        }
        n0.i iVar = abstractC1301b.f11600q;
        if (iVar != null) {
            iVar.a(c1265a);
        }
        int i6 = 0;
        while (true) {
            ArrayList arrayList2 = (ArrayList) abstractC1301b.f11590g;
            if (i6 >= arrayList2.size()) {
                C1189d.a();
                return;
            }
            C1300a c1300a = (C1300a) arrayList2.get(i6);
            v vVar = c1300a.f11583b;
            Path path = abstractC1301b.f11585b;
            List list = c1300a.f11582a;
            if (vVar != null) {
                path.reset();
                ArrayList arrayList3 = (ArrayList) list;
                int size2 = arrayList3.size();
                while (true) {
                    size2--;
                    if (size2 < 0) {
                        break;
                    }
                    path.addPath(((n) arrayList3.get(size2)).g(), matrix);
                }
                v vVar2 = c1300a.f11583b;
                float floatValue3 = ((Float) vVar2.f11724d.f()).floatValue() / f4;
                float floatValue4 = ((Float) vVar2.f11725e.f()).floatValue() / f4;
                float floatValue5 = ((Float) vVar2.f11726f.f()).floatValue() / 360.0f;
                if (floatValue3 >= 0.01f || floatValue4 <= 0.99f) {
                    PathMeasure pathMeasure = abstractC1301b.f11584a;
                    pathMeasure.setPath(path, z5);
                    float length = pathMeasure.getLength();
                    while (pathMeasure.nextContour()) {
                        length = pathMeasure.getLength() + length;
                    }
                    float f5 = floatValue5 * length;
                    float f6 = (floatValue3 * length) + f5;
                    float min = Math.min((floatValue4 * length) + f5, (f6 + length) - 1.0f);
                    int size3 = arrayList3.size() - 1;
                    float f7 = 0.0f;
                    while (size3 >= 0) {
                        Path path2 = abstractC1301b.f11586c;
                        path2.set(((n) arrayList3.get(size3)).g());
                        path2.transform(matrix);
                        pathMeasure.setPath(path2, z5);
                        float length2 = pathMeasure.getLength();
                        if (min > length) {
                            float f8 = min - length;
                            if (f8 < f7 + length2 && f7 < f8) {
                                w0.h.a(f6 > length ? (f6 - length) / length2 : 0.0f, Math.min(f8 / length2, 1.0f), 0.0f, path2);
                                canvas.drawPath(path2, c1265a);
                                f7 += length2;
                                size3--;
                                abstractC1301b = this;
                                z5 = false;
                            }
                        }
                        float f9 = f7 + length2;
                        if (f9 >= f6 && f7 <= min) {
                            if (f9 > min || f6 >= f7) {
                                w0.h.a(f6 < f7 ? 0.0f : (f6 - f7) / length2, min > f9 ? 1.0f : (min - f7) / length2, 0.0f, path2);
                                canvas.drawPath(path2, c1265a);
                            } else {
                                canvas.drawPath(path2, c1265a);
                            }
                        }
                        f7 += length2;
                        size3--;
                        abstractC1301b = this;
                        z5 = false;
                    }
                    C1189d.a();
                } else {
                    canvas.drawPath(path, c1265a);
                    C1189d.a();
                }
                z4 = true;
            } else {
                path.reset();
                ArrayList arrayList4 = (ArrayList) list;
                z4 = true;
                for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
                    path.addPath(((n) arrayList4.get(size4)).g(), matrix);
                }
                C1189d.a();
                canvas.drawPath(path, c1265a);
                C1189d.a();
            }
            i6++;
            abstractC1301b = this;
            z5 = false;
            f4 = 100.0f;
        }
    }

    @Override // p0.InterfaceC1344f
    public final void h(C1343e c1343e, int i4, List list, C1343e c1343e2) {
        w0.f.d(c1343e, i4, list, c1343e2, this);
    }
}
