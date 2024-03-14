package L1;

import J1.C0022e;
import J1.C0024g;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableString;
import android.text.TextUtils;
import android.widget.TextView;
import com.google.android.apps.miphone.aiai.matchmaker.overview.api.generatedv2.EntitiesData;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class u0 {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f1248a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f1249b;

    /* renamed from: c  reason: collision with root package name */
    public final C0060o f1250c;

    /* renamed from: f  reason: collision with root package name */
    public final RectF f1253f;

    /* renamed from: g  reason: collision with root package name */
    public final k0 f1254g;

    /* renamed from: h  reason: collision with root package name */
    public final K1.a f1255h;

    /* renamed from: j  reason: collision with root package name */
    public SpannableString f1257j;

    /* renamed from: d  reason: collision with root package name */
    public final List f1251d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    public final StringBuilder f1252e = new StringBuilder();

    /* renamed from: i  reason: collision with root package name */
    public int f1256i = -1;

    /* renamed from: k  reason: collision with root package name */
    public int f1258k = -1;

    /* renamed from: l  reason: collision with root package name */
    public int f1259l = -1;

    /* renamed from: m  reason: collision with root package name */
    public int f1260m = -1;

    public u0(K1.a aVar, K k4, C0060o c0060o, d0 d0Var, Handler handler) {
        this.f1255h = aVar;
        this.f1248a = k4;
        this.f1250c = c0060o;
        this.f1254g = d0Var;
        this.f1249b = handler;
        this.f1253f = c0060o.f1220n;
    }

    public final synchronized J1.B a(int i4, int i5) {
        final C0060o c0060o;
        M1.b.f("-- Selection changed: " + i4 + "," + i5);
        if (i4 >= 0 && i5 >= i4 && (c0060o = this.f1250c) != null) {
            int i6 = M1.c.f1362a;
            c0060o.e().f717b = new ArrayList();
            List list = c0060o.e().f717b;
            list.getClass();
            list.add(new C0024g());
            int i7 = (i5 - i4) + 1;
            ArrayList arrayList = new ArrayList(i7);
            for (int i8 = 0; i8 < i7; i8++) {
                arrayList.add(Integer.valueOf(i4 + i8));
            }
            List list2 = c0060o.e().f717b;
            list2.getClass();
            ((C0024g) list2.get(0)).f733a = arrayList;
            final ArrayList arrayList2 = new ArrayList(1);
            int i9 = c0060o.f1213g + 1;
            c0060o.f1213g = i9;
            this.f1260m = i9;
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            try {
                C0046a0 c0046a0 = c0060o.f1207a;
                C0022e c0022e = c0060o.f1216j;
                c0022e.getClass();
                c0046a0.f(c0022e, c0060o.f1219m, this.f1255h, new Z() { // from class: L1.r0
                    @Override // L1.Z
                    public final void a(C0022e c0022e2, EntitiesData entitiesData) {
                        C0060o c0060o2 = C0060o.this;
                        c0060o2.getClass();
                        if (entitiesData != null && entitiesData.entities() != null) {
                            int i10 = M1.c.f1362a;
                            c0060o2.f1215i = entitiesData.entities().f645a;
                        }
                        if (entitiesData.entities().f646b) {
                            arrayList2.add(entitiesData);
                            M1.b.c("-Obtained new entities");
                        } else {
                            M1.b.d("Unable to obtain new entities", null);
                        }
                        countDownLatch.countDown();
                    }
                }, false);
                countDownLatch.await(3000L, TimeUnit.MILLISECONDS);
                if (arrayList2.size() == 1) {
                    C0022e c0022e2 = c0060o.f1216j;
                    c0022e2.getClass();
                    if (c0060o.a(i9, c0022e2, (EntitiesData) arrayList2.get(0), c0060o.f1212f)) {
                        return d();
                    }
                }
                M1.b.d("Unable to query any entities; indices: " + i4 + "," + i5 + "; # of new entities: " + arrayList2.size(), null);
            } catch (InterruptedException e4) {
                M1.b.d("Unable to query new entities", e4);
            }
            return null;
        }
        return null;
    }

    public final synchronized J1.B b(CharSequence charSequence, int i4, int i5) {
        List list;
        if (this.f1250c.i(this.f1260m)) {
            int indexOf = this.f1252e.indexOf(charSequence.toString());
            int i6 = i4 + indexOf;
            int i7 = i5 + indexOf;
            M1.b.c("Selection changed: " + i6 + "," + i7);
            if (i6 != this.f1258k || i7 != this.f1259l) {
                int i8 = ((C0045a) ((ArrayList) this.f1251d).get(((ArrayList) list).size() - 1)).f1134b;
                int i9 = 0;
                for (int i10 = 0; i10 < ((ArrayList) this.f1251d).size(); i10++) {
                    C0045a c0045a = (C0045a) ((ArrayList) this.f1251d).get(i10);
                    int i11 = c0045a.f1134b;
                    if (i11 >= 0) {
                        if (c0045a.f1135c <= i6) {
                            i9 = i11;
                        }
                        if (c0045a.f1136d - 1 <= i7 + 1) {
                            i8 = i11;
                        }
                    }
                }
                J1.B a4 = a(i9, i8);
                if (a4 != null) {
                    if (!((ArrayList) this.f1250c.f1209c).isEmpty()) {
                        k0 k0Var = this.f1254g;
                        int i12 = M1.c.f1362a;
                        k0Var.getClass();
                        k0Var.a(a4.f666n, i6, i7, ((J1.B) ((ArrayList) this.f1250c.f1209c).get(0)).f666n, this.f1258k, this.f1259l);
                    }
                    this.f1258k = i6;
                    this.f1259l = i7;
                    this.f1249b.post(new q0(this, a4));
                    this.f1250c.f1208b.i(a4);
                    return a4;
                }
            }
            return d();
        }
        return null;
    }

    public final void c(final int i4, final int i5) {
        if (i5 <= i4 || TextUtils.isEmpty(this.f1252e)) {
            return;
        }
        M1.b.f("Selecting: " + i4 + "," + i5);
        this.f1248a.post(new Runnable() { // from class: L1.p0
            @Override // java.lang.Runnable
            public final void run() {
                u0 u0Var = u0.this;
                int i6 = i4;
                int i7 = i5;
                u0Var.getClass();
                Bundle bundle = new Bundle();
                bundle.putInt("ACTION_ARGUMENT_SELECTION_START_INT", i6);
                bundle.putInt("ACTION_ARGUMENT_SELECTION_END_INT", i7);
                u0Var.f1248a.performAccessibilityAction(131072, bundle);
            }
        });
    }

    public final synchronized J1.B d() {
        J1.B f4 = this.f1250c.f();
        if (f4 != null) {
            M1.b.c("-- Selected entity: " + f4.f657e);
            return f4;
        }
        return null;
    }
}
