package A0;

import android.content.res.Resources;
import android.util.SparseArray;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public Class f35a;

    /* renamed from: b  reason: collision with root package name */
    public int f36b;

    /* renamed from: c  reason: collision with root package name */
    public int f37c = 0;

    /* renamed from: d  reason: collision with root package name */
    public int f38d;

    /* renamed from: e  reason: collision with root package name */
    public int f39e;

    /* renamed from: f  reason: collision with root package name */
    public int f40f;

    /* renamed from: g  reason: collision with root package name */
    public int f41g;

    /* renamed from: h  reason: collision with root package name */
    public int f42h;

    /* renamed from: i  reason: collision with root package name */
    public int f43i;

    /* renamed from: j  reason: collision with root package name */
    public int f44j;

    /* renamed from: k  reason: collision with root package name */
    public float f45k;

    /* renamed from: l  reason: collision with root package name */
    public float f46l;

    /* renamed from: m  reason: collision with root package name */
    public float f47m;

    /* renamed from: n  reason: collision with root package name */
    public float f48n;

    /* renamed from: o  reason: collision with root package name */
    public float f49o;

    /* renamed from: p  reason: collision with root package name */
    public float f50p;

    /* renamed from: q  reason: collision with root package name */
    public int f51q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f52r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f53s;

    /* renamed from: t  reason: collision with root package name */
    public t f54t;

    public final t a(s sVar, ArrayList arrayList, B0.e eVar) {
        String str;
        int indexOf = arrayList.indexOf(this.f35a);
        if (indexOf < 0) {
            indexOf = arrayList.size();
            arrayList.add(this.f35a);
        }
        eVar.c(indexOf);
        eVar.f(this.f36b);
        int i4 = this.f38d;
        Resources resources = sVar.f34b;
        SparseArray sparseArray = sVar.f33a;
        String str2 = (String) sparseArray.get(i4);
        if (str2 == null) {
            if (i4 >= 0) {
                try {
                    str = resources.getResourceTypeName(i4) + '/' + resources.getResourceEntryName(i4);
                } catch (Resources.NotFoundException unused) {
                    str = "id/0x" + Integer.toHexString(i4).toUpperCase();
                }
            } else {
                str = "NO_ID";
            }
            str2 = str;
            sparseArray.put(i4, str2);
        }
        eVar.h(str2);
        eVar.i(this.f39e);
        eVar.n(this.f40f);
        eVar.r(this.f41g - this.f39e);
        eVar.g(this.f42h - this.f40f);
        eVar.o(this.f45k);
        eVar.p(this.f46l);
        eVar.l(this.f43i);
        eVar.m(this.f44j);
        eVar.j(this.f47m);
        eVar.k(this.f48n);
        eVar.b(this.f49o);
        eVar.q(this.f51q);
        eVar.s(this.f52r);
        eVar.e(this.f50p);
        eVar.d(this.f53s);
        t tVar = this.f54t;
        for (int i5 = 0; i5 < this.f37c && tVar != null; i5++) {
            B0.e u4 = B0.f.u();
            tVar = tVar.a(sVar, arrayList, u4);
            eVar.a(u4);
        }
        return tVar;
    }
}
