package s0;

import com.airbnb.lottie.model.layer.Layer$LayerType;
import com.airbnb.lottie.model.layer.Layer$MatteType;
import java.util.List;
import java.util.Locale;
import k0.C1198m;
import q0.C1360b;
import q0.k;
import q0.l;
import r0.C1370a;
import t.C1395a;
import u0.C1420j;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final List f12230a;

    /* renamed from: b  reason: collision with root package name */
    public final C1198m f12231b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12232c;

    /* renamed from: d  reason: collision with root package name */
    public final long f12233d;

    /* renamed from: e  reason: collision with root package name */
    public final Layer$LayerType f12234e;

    /* renamed from: f  reason: collision with root package name */
    public final long f12235f;

    /* renamed from: g  reason: collision with root package name */
    public final String f12236g;

    /* renamed from: h  reason: collision with root package name */
    public final List f12237h;

    /* renamed from: i  reason: collision with root package name */
    public final l f12238i;

    /* renamed from: j  reason: collision with root package name */
    public final int f12239j;

    /* renamed from: k  reason: collision with root package name */
    public final int f12240k;

    /* renamed from: l  reason: collision with root package name */
    public final int f12241l;

    /* renamed from: m  reason: collision with root package name */
    public final float f12242m;

    /* renamed from: n  reason: collision with root package name */
    public final float f12243n;

    /* renamed from: o  reason: collision with root package name */
    public final int f12244o;

    /* renamed from: p  reason: collision with root package name */
    public final int f12245p;

    /* renamed from: q  reason: collision with root package name */
    public final q0.j f12246q;

    /* renamed from: r  reason: collision with root package name */
    public final k f12247r;

    /* renamed from: s  reason: collision with root package name */
    public final C1360b f12248s;

    /* renamed from: t  reason: collision with root package name */
    public final List f12249t;

    /* renamed from: u  reason: collision with root package name */
    public final Layer$MatteType f12250u;

    /* renamed from: v  reason: collision with root package name */
    public final boolean f12251v;

    /* renamed from: w  reason: collision with root package name */
    public final C1370a f12252w;

    /* renamed from: x  reason: collision with root package name */
    public final C1420j f12253x;

    public e(List list, C1198m c1198m, String str, long j4, Layer$LayerType layer$LayerType, long j5, String str2, List list2, l lVar, int i4, int i5, int i6, float f4, float f5, int i7, int i8, q0.j jVar, k kVar, List list3, Layer$MatteType layer$MatteType, C1360b c1360b, boolean z4, C1370a c1370a, C1420j c1420j) {
        this.f12230a = list;
        this.f12231b = c1198m;
        this.f12232c = str;
        this.f12233d = j4;
        this.f12234e = layer$LayerType;
        this.f12235f = j5;
        this.f12236g = str2;
        this.f12237h = list2;
        this.f12238i = lVar;
        this.f12239j = i4;
        this.f12240k = i5;
        this.f12241l = i6;
        this.f12242m = f4;
        this.f12243n = f5;
        this.f12244o = i7;
        this.f12245p = i8;
        this.f12246q = jVar;
        this.f12247r = kVar;
        this.f12249t = list3;
        this.f12250u = layer$MatteType;
        this.f12248s = c1360b;
        this.f12251v = z4;
        this.f12252w = c1370a;
        this.f12253x = c1420j;
    }

    public final String a(String str) {
        int i4;
        StringBuilder a4 = C1395a.a(str);
        a4.append(this.f12232c);
        a4.append("\n");
        C1198m c1198m = this.f12231b;
        e eVar = (e) c1198m.f11128h.c(this.f12235f);
        if (eVar != null) {
            a4.append("\t\tParents: ");
            a4.append(eVar.f12232c);
            for (e eVar2 = (e) c1198m.f11128h.c(eVar.f12235f); eVar2 != null; eVar2 = (e) c1198m.f11128h.c(eVar2.f12235f)) {
                a4.append("->");
                a4.append(eVar2.f12232c);
            }
            a4.append(str);
            a4.append("\n");
        }
        List list = this.f12237h;
        if (!list.isEmpty()) {
            a4.append(str);
            a4.append("\tMasks: ");
            a4.append(list.size());
            a4.append("\n");
        }
        int i5 = this.f12239j;
        if (i5 != 0 && (i4 = this.f12240k) != 0) {
            a4.append(str);
            a4.append("\tBackground: ");
            a4.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(i5), Integer.valueOf(i4), Integer.valueOf(this.f12241l)));
        }
        List list2 = this.f12230a;
        if (!list2.isEmpty()) {
            a4.append(str);
            a4.append("\tShapes:\n");
            for (Object obj : list2) {
                a4.append(str);
                a4.append("\t\t");
                a4.append(obj);
                a4.append("\n");
            }
        }
        return a4.toString();
    }

    public final String toString() {
        return a("");
    }
}
