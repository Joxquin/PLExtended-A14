package L1;

import J1.C0021d;
import J1.C0022e;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.SparseArray;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.SuggestParcelables$ContentType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: L1.o  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0060o {

    /* renamed from: a  reason: collision with root package name */
    public final C0046a0 f1207a;

    /* renamed from: b  reason: collision with root package name */
    public final C0062q f1208b;

    /* renamed from: e  reason: collision with root package name */
    public final String f1211e;

    /* renamed from: f  reason: collision with root package name */
    public int f1212f;

    /* renamed from: g  reason: collision with root package name */
    public int f1213g;

    /* renamed from: i  reason: collision with root package name */
    public String f1215i;

    /* renamed from: j  reason: collision with root package name */
    public C0022e f1216j;

    /* renamed from: k  reason: collision with root package name */
    public J1.A f1217k;

    /* renamed from: l  reason: collision with root package name */
    public EntitiesData f1218l;

    /* renamed from: m  reason: collision with root package name */
    public J1.t f1219m;

    /* renamed from: c  reason: collision with root package name */
    public final List f1209c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public final SparseArray f1210d = new SparseArray();

    /* renamed from: h  reason: collision with root package name */
    public String f1214h = "null_session_id";

    /* renamed from: n  reason: collision with root package name */
    public RectF f1220n = null;

    public C0060o(String str, C0022e c0022e, EntitiesData entitiesData, C0046a0 c0046a0, C0062q c0062q, int i4) {
        this.f1215i = "null_session_id";
        this.f1211e = str;
        this.f1216j = c0022e;
        this.f1218l = entitiesData;
        if (entitiesData != null) {
            this.f1217k = entitiesData.entities();
        }
        this.f1207a = c0046a0;
        this.f1208b = c0062q;
        this.f1212f = i4;
        J1.A a4 = this.f1217k;
        if (a4 != null) {
            String str2 = a4.f645a;
            int i5 = M1.c.f1362a;
            str2.getClass();
            this.f1215i = str2;
        }
    }

    public static void d(J1.y yVar, RectF rectF) {
        J1.H h4 = yVar.f837a;
        int i4 = M1.c.f1362a;
        h4.getClass();
        float f4 = h4.f697a;
        J1.H h5 = yVar.f837a;
        h5.getClass();
        float f5 = h5.f698b;
        J1.H h6 = yVar.f837a;
        h6.getClass();
        float f6 = h6.f699c;
        J1.H h7 = yVar.f837a;
        h7.getClass();
        float f7 = f6 + h7.f697a;
        J1.H h8 = yVar.f837a;
        h8.getClass();
        float f8 = h8.f700d;
        J1.H h9 = yVar.f837a;
        h9.getClass();
        rectF.set(f4, f5, f7, f8 + h9.f698b);
    }

    public final boolean a(int i4, C0022e c0022e, EntitiesData entitiesData, int i5) {
        if (!i(i4)) {
            M1.b.d("--Error: token expired; new token = " + i4, null);
            return false;
        }
        this.f1216j = null;
        this.f1217k = null;
        this.f1220n = null;
        ((ArrayList) this.f1209c).clear();
        this.f1210d.clear();
        this.f1216j = c0022e;
        if (entitiesData != null && entitiesData.entities() != null) {
            int i6 = M1.c.f1362a;
            this.f1215i = entitiesData.entities().f645a;
        }
        this.f1218l = entitiesData;
        this.f1217k = entitiesData.entities();
        this.f1212f = i5;
        b();
        return true;
    }

    public final void b() {
        if (this.f1212f < 0 || this.f1217k == null || this.f1216j == null) {
            return;
        }
        List list = e().f716a;
        RectF rectF = new RectF();
        int i4 = M1.c.f1362a;
        list.getClass();
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            J1.y yVar = (J1.y) it.next();
            d(yVar, rectF);
            this.f1207a.c(rectF);
            SparseArray sparseArray = this.f1210d;
            RectF rectF2 = (RectF) sparseArray.get(yVar.f840d);
            if (rectF2 == null) {
                sparseArray.put(yVar.f840d, new RectF(rectF));
            } else {
                rectF2.union(rectF);
            }
            RectF rectF3 = this.f1220n;
            if (rectF3 == null) {
                this.f1220n = new RectF(rectF);
            } else {
                rectF3.union(rectF);
            }
        }
        J1.A a4 = this.f1217k;
        a4.getClass();
        List list2 = a4.f647c;
        int i5 = M1.c.f1362a;
        list2.getClass();
        Iterator it2 = ((ArrayList) list2).iterator();
        while (it2.hasNext()) {
            J1.B b4 = (J1.B) it2.next();
            if (b4.f662j == this.f1212f) {
                ((ArrayList) this.f1209c).add(b4);
            }
        }
    }

    public final List c() {
        C0022e c0022e = this.f1216j;
        int i4 = M1.c.f1362a;
        c0022e.getClass();
        List list = c0022e.f723c;
        list.getClass();
        return list;
    }

    public final C0021d e() {
        return (C0021d) ((ArrayList) c()).get(this.f1212f);
    }

    public final J1.B f() {
        boolean z4;
        J1.A a4;
        if (j()) {
            return null;
        }
        if (this.f1212f >= 0 && e().f717b != null) {
            List list = e().f717b;
            int i4 = M1.c.f1362a;
            list.getClass();
            if (!list.isEmpty()) {
                z4 = false;
                if (z4 && e().f717b != null) {
                    List list2 = e().f717b;
                    int i5 = M1.c.f1362a;
                    list2.getClass();
                    if (list2.size() <= 0 || (a4 = this.f1217k) == null || a4.f647c == null) {
                        return null;
                    }
                    a4.getClass();
                    List list3 = a4.f647c;
                    list3.getClass();
                    Iterator it = ((ArrayList) list3).iterator();
                    while (it.hasNext()) {
                        J1.B b4 = (J1.B) it.next();
                        if (b4.f662j == this.f1212f && b4.f663k == 0) {
                            return b4;
                        }
                    }
                    return null;
                }
            }
        }
        z4 = true;
        return z4 ? null : null;
    }

    public final Rect g() {
        List list = e().f716a;
        int i4 = M1.c.f1362a;
        list.getClass();
        ((J1.y) list.get(0)).getClass();
        List list2 = e().f716a;
        list2.getClass();
        J1.H h4 = ((J1.y) list2.get(0)).f837a;
        Rect rect = new Rect();
        h4.getClass();
        float f4 = h4.f697a;
        float f5 = h4.f698b;
        rect.set((int) f4, (int) f5, (int) (f4 + h4.f699c), (int) (f5 + h4.f700d));
        return rect;
    }

    public final String h() {
        return this.f1207a.h();
    }

    public final boolean i(int i4) {
        return this.f1213g == i4;
    }

    public final boolean j() {
        List list;
        C0022e c0022e = this.f1216j;
        if (c0022e != null && this.f1217k != null && (list = c0022e.f723c) != null) {
            int i4 = M1.c.f1362a;
            list.getClass();
            if (!list.isEmpty()) {
                return false;
            }
        }
        return true;
    }

    public final boolean k() {
        if (!j() && this.f1212f >= 0 && e().f716a != null) {
            int i4 = 0;
            while (true) {
                List list = e().f716a;
                int i5 = M1.c.f1362a;
                list.getClass();
                if (i4 >= list.size()) {
                    break;
                }
                List list2 = e().f716a;
                list2.getClass();
                if (((J1.y) list2.get(i4)).f839c == SuggestParcelables$ContentType.CONTENT_TYPE_IMAGE) {
                    return true;
                }
                i4++;
            }
        }
        return false;
    }
}
