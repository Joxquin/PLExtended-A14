package u0;

import android.graphics.Rect;
import com.airbnb.lottie.model.layer.Layer$LayerType;
import java.util.ArrayList;
import java.util.HashMap;
import k0.C1179D;
import k0.C1198m;
import p0.C1341c;
import p0.C1342d;
import p0.C1346h;
import v0.C1430a;
import w0.C1446c;
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public static final C1430a f12426a = C1430a.a("w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");

    /* renamed from: b  reason: collision with root package name */
    public static final C1430a f12427b = C1430a.a("id", "layers", "w", "h", "p", "u");

    /* renamed from: c  reason: collision with root package name */
    public static final C1430a f12428c = C1430a.a("list");

    /* renamed from: d  reason: collision with root package name */
    public static final C1430a f12429d = C1430a.a("cm", "tm", "dr");

    public static C1198m a(com.airbnb.lottie.parser.moshi.b bVar) {
        float f4;
        HashMap hashMap;
        ArrayList arrayList;
        q.n nVar;
        int i4;
        q.j jVar;
        float f5;
        float f6;
        int i5;
        float f7;
        q.j jVar2;
        float f8;
        float f9;
        float f10;
        HashMap hashMap2;
        ArrayList arrayList2;
        q.n nVar2;
        float f11;
        float f12;
        q.j jVar3;
        float c4 = w0.h.c();
        q.j jVar4 = new q.j();
        ArrayList arrayList3 = new ArrayList();
        HashMap hashMap3 = new HashMap();
        HashMap hashMap4 = new HashMap();
        HashMap hashMap5 = new HashMap();
        ArrayList arrayList4 = new ArrayList();
        q.n nVar3 = new q.n();
        C1198m c1198m = new C1198m();
        bVar.b();
        int i6 = 0;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        int i7 = 0;
        while (bVar.h()) {
            float f16 = f13;
            switch (bVar.r(f12426a)) {
                case 0:
                    f10 = c4;
                    hashMap2 = hashMap5;
                    arrayList2 = arrayList4;
                    nVar2 = nVar3;
                    f11 = f14;
                    f12 = f15;
                    jVar3 = jVar4;
                    i7 = bVar.k();
                    jVar4 = jVar3;
                    f13 = f16;
                    c4 = f10;
                    f14 = f11;
                    arrayList4 = arrayList2;
                    f15 = f12;
                    hashMap5 = hashMap2;
                    nVar3 = nVar2;
                case 1:
                    f10 = c4;
                    hashMap2 = hashMap5;
                    arrayList2 = arrayList4;
                    nVar2 = nVar3;
                    f11 = f14;
                    f12 = f15;
                    jVar3 = jVar4;
                    i6 = bVar.k();
                    jVar4 = jVar3;
                    f13 = f16;
                    c4 = f10;
                    f14 = f11;
                    arrayList4 = arrayList2;
                    f15 = f12;
                    hashMap5 = hashMap2;
                    nVar3 = nVar2;
                case 2:
                    f4 = c4;
                    hashMap = hashMap5;
                    arrayList = arrayList4;
                    nVar = nVar3;
                    i4 = i6;
                    jVar = jVar4;
                    f14 = (float) bVar.j();
                    f13 = f16;
                    jVar4 = jVar;
                    c4 = f4;
                    arrayList4 = arrayList;
                    hashMap5 = hashMap;
                    nVar3 = nVar;
                    i6 = i4;
                case 3:
                    f4 = c4;
                    hashMap = hashMap5;
                    arrayList = arrayList4;
                    nVar = nVar3;
                    i4 = i6;
                    jVar = jVar4;
                    f15 = ((float) bVar.j()) - 0.01f;
                    f13 = f16;
                    jVar4 = jVar;
                    c4 = f4;
                    arrayList4 = arrayList;
                    hashMap5 = hashMap;
                    nVar3 = nVar;
                    i6 = i4;
                case 4:
                    f4 = c4;
                    hashMap = hashMap5;
                    arrayList = arrayList4;
                    nVar = nVar3;
                    i4 = i6;
                    jVar = jVar4;
                    f13 = (float) bVar.j();
                    jVar4 = jVar;
                    c4 = f4;
                    arrayList4 = arrayList;
                    hashMap5 = hashMap;
                    nVar3 = nVar;
                    i6 = i4;
                case 5:
                    f4 = c4;
                    hashMap = hashMap5;
                    arrayList = arrayList4;
                    nVar = nVar3;
                    i4 = i6;
                    f5 = f14;
                    f6 = f15;
                    jVar = jVar4;
                    String[] split = bVar.l().split("\\.");
                    int parseInt = Integer.parseInt(split[0]);
                    int parseInt2 = Integer.parseInt(split[1]);
                    if (!(parseInt >= 4 && (parseInt > 4 || (parseInt2 >= 4 && (parseInt2 > 4 || Integer.parseInt(split[2]) >= 0))))) {
                        c1198m.a("Lottie only supports bodymovin >= 4.4.0");
                    }
                    f13 = f16;
                    f14 = f5;
                    f15 = f6;
                    jVar4 = jVar;
                    c4 = f4;
                    arrayList4 = arrayList;
                    hashMap5 = hashMap;
                    nVar3 = nVar;
                    i6 = i4;
                case 6:
                    f4 = c4;
                    q.j jVar5 = jVar4;
                    hashMap = hashMap5;
                    arrayList = arrayList4;
                    nVar = nVar3;
                    i4 = i6;
                    f5 = f14;
                    f6 = f15;
                    bVar.a();
                    int i8 = 0;
                    while (bVar.h()) {
                        s0.e a4 = v.a(bVar, c1198m);
                        if (a4.f12234e == Layer$LayerType.IMAGE) {
                            i8++;
                        }
                        arrayList3.add(a4);
                        q.j jVar6 = jVar5;
                        jVar6.f(a4.f12233d, a4);
                        if (i8 > 4) {
                            C1446c.b("You have " + i8 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
                        }
                        jVar5 = jVar6;
                    }
                    jVar = jVar5;
                    bVar.c();
                    f13 = f16;
                    f14 = f5;
                    f15 = f6;
                    jVar4 = jVar;
                    c4 = f4;
                    arrayList4 = arrayList;
                    hashMap5 = hashMap;
                    nVar3 = nVar;
                    i6 = i4;
                case 7:
                    arrayList = arrayList4;
                    f5 = f14;
                    f6 = f15;
                    bVar.a();
                    while (bVar.h()) {
                        ArrayList arrayList5 = new ArrayList();
                        q.j jVar7 = new q.j();
                        bVar.b();
                        HashMap hashMap6 = hashMap5;
                        String str = null;
                        String str2 = null;
                        int i9 = 0;
                        int i10 = 0;
                        while (bVar.h()) {
                            q.n nVar4 = nVar3;
                            int r4 = bVar.r(f12427b);
                            if (r4 != 0) {
                                i5 = i6;
                                if (r4 == 1) {
                                    bVar.a();
                                    while (bVar.h()) {
                                        s0.e a5 = v.a(bVar, c1198m);
                                        jVar7.f(a5.f12233d, a5);
                                        arrayList5.add(a5);
                                        c4 = c4;
                                        jVar4 = jVar4;
                                    }
                                    f7 = c4;
                                    jVar2 = jVar4;
                                    bVar.c();
                                } else if (r4 == 2) {
                                    i9 = bVar.k();
                                } else if (r4 == 3) {
                                    i10 = bVar.k();
                                } else if (r4 == 4) {
                                    str2 = bVar.l();
                                } else if (r4 != 5) {
                                    bVar.t();
                                    bVar.u();
                                    f7 = c4;
                                    jVar2 = jVar4;
                                } else {
                                    bVar.l();
                                }
                                c4 = f7;
                                nVar3 = nVar4;
                                i6 = i5;
                                jVar4 = jVar2;
                            } else {
                                i5 = i6;
                                str = bVar.l();
                            }
                            nVar3 = nVar4;
                            i6 = i5;
                        }
                        float f17 = c4;
                        q.j jVar8 = jVar4;
                        q.n nVar5 = nVar3;
                        int i11 = i6;
                        bVar.d();
                        if (str2 != null) {
                            hashMap4.put(str, new C1179D(i9, i10, str, str2));
                        } else {
                            hashMap3.put(str, arrayList5);
                        }
                        c4 = f17;
                        hashMap5 = hashMap6;
                        nVar3 = nVar5;
                        i6 = i11;
                        jVar4 = jVar8;
                    }
                    f4 = c4;
                    hashMap = hashMap5;
                    nVar = nVar3;
                    i4 = i6;
                    bVar.c();
                    jVar = jVar4;
                    f13 = f16;
                    f14 = f5;
                    f15 = f6;
                    jVar4 = jVar;
                    c4 = f4;
                    arrayList4 = arrayList;
                    hashMap5 = hashMap;
                    nVar3 = nVar;
                    i6 = i4;
                case 8:
                    f5 = f14;
                    f6 = f15;
                    bVar.b();
                    while (bVar.h()) {
                        if (bVar.r(f12428c) != 0) {
                            bVar.t();
                            bVar.u();
                        } else {
                            bVar.a();
                            while (bVar.h()) {
                                C1430a c1430a = n.f12409a;
                                bVar.b();
                                String str3 = null;
                                String str4 = null;
                                String str5 = null;
                                while (bVar.h()) {
                                    int r5 = bVar.r(n.f12409a);
                                    if (r5 != 0) {
                                        ArrayList arrayList6 = arrayList4;
                                        if (r5 == 1) {
                                            str4 = bVar.l();
                                        } else if (r5 == 2) {
                                            str5 = bVar.l();
                                        } else if (r5 != 3) {
                                            bVar.t();
                                            bVar.u();
                                        } else {
                                            bVar.j();
                                        }
                                        arrayList4 = arrayList6;
                                    } else {
                                        str3 = bVar.l();
                                    }
                                }
                                bVar.d();
                                hashMap5.put(str4, new C1341c(str3, str4, str5));
                                arrayList4 = arrayList4;
                            }
                            bVar.c();
                        }
                    }
                    arrayList = arrayList4;
                    bVar.d();
                    f4 = c4;
                    hashMap = hashMap5;
                    nVar = nVar3;
                    i4 = i6;
                    jVar = jVar4;
                    f13 = f16;
                    f14 = f5;
                    f15 = f6;
                    jVar4 = jVar;
                    c4 = f4;
                    arrayList4 = arrayList;
                    hashMap5 = hashMap;
                    nVar3 = nVar;
                    i6 = i4;
                case 9:
                    f5 = f14;
                    f6 = f15;
                    bVar.a();
                    while (bVar.h()) {
                        C1430a c1430a2 = m.f12407a;
                        ArrayList arrayList7 = new ArrayList();
                        bVar.b();
                        double d4 = 0.0d;
                        String str6 = null;
                        String str7 = null;
                        char c5 = 0;
                        while (bVar.h()) {
                            int r6 = bVar.r(m.f12407a);
                            if (r6 == 0) {
                                c5 = bVar.l().charAt(0);
                            } else if (r6 == 1) {
                                bVar.j();
                            } else if (r6 == 2) {
                                d4 = bVar.j();
                            } else if (r6 == 3) {
                                str6 = bVar.l();
                            } else if (r6 == 4) {
                                str7 = bVar.l();
                            } else if (r6 != 5) {
                                bVar.t();
                                bVar.u();
                            } else {
                                bVar.b();
                                while (bVar.h()) {
                                    if (bVar.r(m.f12408b) != 0) {
                                        bVar.t();
                                        bVar.u();
                                    } else {
                                        bVar.a();
                                        while (bVar.h()) {
                                            arrayList7.add((r0.o) C1418h.a(bVar, c1198m));
                                        }
                                        bVar.c();
                                    }
                                }
                                bVar.d();
                            }
                        }
                        bVar.d();
                        C1342d c1342d = new C1342d(arrayList7, c5, d4, str6, str7);
                        nVar3.d(c1342d.hashCode(), c1342d);
                    }
                    bVar.c();
                    f4 = c4;
                    hashMap = hashMap5;
                    arrayList = arrayList4;
                    nVar = nVar3;
                    i4 = i6;
                    jVar = jVar4;
                    f13 = f16;
                    f14 = f5;
                    f15 = f6;
                    jVar4 = jVar;
                    c4 = f4;
                    arrayList4 = arrayList;
                    hashMap5 = hashMap;
                    nVar3 = nVar;
                    i6 = i4;
                case 10:
                    bVar.a();
                    while (bVar.h()) {
                        bVar.b();
                        String str8 = null;
                        float f18 = 0.0f;
                        float f19 = 0.0f;
                        while (bVar.h()) {
                            int r7 = bVar.r(f12429d);
                            if (r7 != 0) {
                                f8 = f15;
                                if (r7 == 1) {
                                    f9 = f14;
                                    f18 = (float) bVar.j();
                                } else if (r7 != 2) {
                                    bVar.t();
                                    bVar.u();
                                } else {
                                    f9 = f14;
                                    f19 = (float) bVar.j();
                                }
                                f14 = f9;
                            } else {
                                f8 = f15;
                                str8 = bVar.l();
                            }
                            f15 = f8;
                        }
                        bVar.d();
                        arrayList4.add(new C1346h(str8, f18, f19));
                        f14 = f14;
                        f15 = f15;
                    }
                    f5 = f14;
                    f6 = f15;
                    bVar.c();
                    f4 = c4;
                    hashMap = hashMap5;
                    arrayList = arrayList4;
                    nVar = nVar3;
                    i4 = i6;
                    jVar = jVar4;
                    f13 = f16;
                    f14 = f5;
                    f15 = f6;
                    jVar4 = jVar;
                    c4 = f4;
                    arrayList4 = arrayList;
                    hashMap5 = hashMap;
                    nVar3 = nVar;
                    i6 = i4;
                default:
                    f4 = c4;
                    hashMap = hashMap5;
                    arrayList = arrayList4;
                    nVar = nVar3;
                    i4 = i6;
                    f5 = f14;
                    f6 = f15;
                    jVar = jVar4;
                    bVar.t();
                    bVar.u();
                    f13 = f16;
                    f14 = f5;
                    f15 = f6;
                    jVar4 = jVar;
                    c4 = f4;
                    arrayList4 = arrayList;
                    hashMap5 = hashMap;
                    nVar3 = nVar;
                    i6 = i4;
            }
        }
        float f20 = c4;
        c1198m.f11130j = new Rect(0, 0, (int) (i7 * f20), (int) (i6 * f20));
        c1198m.f11131k = f14;
        c1198m.f11132l = f15;
        c1198m.f11133m = f13;
        c1198m.f11129i = arrayList3;
        c1198m.f11128h = jVar4;
        c1198m.f11123c = hashMap3;
        c1198m.f11124d = hashMap4;
        c1198m.f11127g = nVar3;
        c1198m.f11125e = hashMap5;
        c1198m.f11126f = arrayList4;
        return c1198m;
    }
}
