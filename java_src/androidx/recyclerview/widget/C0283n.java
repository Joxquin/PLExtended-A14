package androidx.recyclerview.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0283n extends AbstractC0272h0 {

    /* renamed from: s  reason: collision with root package name */
    public static TimeInterpolator f3987s;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3988g = true;

    /* renamed from: h  reason: collision with root package name */
    public final ArrayList f3989h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    public final ArrayList f3990i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    public final ArrayList f3991j = new ArrayList();

    /* renamed from: k  reason: collision with root package name */
    public final ArrayList f3992k = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    public final ArrayList f3993l = new ArrayList();

    /* renamed from: m  reason: collision with root package name */
    public final ArrayList f3994m = new ArrayList();

    /* renamed from: n  reason: collision with root package name */
    public final ArrayList f3995n = new ArrayList();

    /* renamed from: o  reason: collision with root package name */
    public final ArrayList f3996o = new ArrayList();

    /* renamed from: p  reason: collision with root package name */
    public final ArrayList f3997p = new ArrayList();

    /* renamed from: q  reason: collision with root package name */
    public final ArrayList f3998q = new ArrayList();

    /* renamed from: r  reason: collision with root package name */
    public final ArrayList f3999r = new ArrayList();

    public static void h(List list) {
        ArrayList arrayList = (ArrayList) list;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            ((E0) arrayList.get(size)).itemView.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0272h0
    public final boolean a(E0 e02, E0 e03, C0270g0 c0270g0, C0270g0 c0270g02) {
        int i4;
        int i5;
        int i6 = c0270g0.f3939a;
        int i7 = c0270g0.f3940b;
        if (e03.shouldIgnore()) {
            int i8 = c0270g0.f3939a;
            i5 = c0270g0.f3940b;
            i4 = i8;
        } else {
            i4 = c0270g02.f3939a;
            i5 = c0270g02.f3940b;
        }
        if (e02 == e03) {
            return g(e02, i6, i7, i4, i5);
        }
        float translationX = e02.itemView.getTranslationX();
        View view = e02.itemView;
        float translationY = view.getTranslationY();
        float alpha = view.getAlpha();
        l(e02);
        view.setTranslationX(translationX);
        view.setTranslationY(translationY);
        view.setAlpha(alpha);
        l(e03);
        View view2 = e03.itemView;
        view2.setTranslationX(-((int) ((i4 - i6) - translationX)));
        view2.setTranslationY(-((int) ((i5 - i7) - translationY)));
        view2.setAlpha(0.0f);
        this.f3992k.add(new C0279l(e02, e03, i6, i7, i4, i5));
        return true;
    }

    @Override // androidx.recyclerview.widget.AbstractC0272h0
    public final void d(E0 e02) {
        View view = e02.itemView;
        view.animate().cancel();
        ArrayList arrayList = this.f3991j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else if (((C0281m) arrayList.get(size)).f3978a == e02) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(e02);
                arrayList.remove(size);
            }
        }
        j(e02, this.f3992k);
        if (this.f3989h.remove(e02)) {
            view.setAlpha(1.0f);
            c(e02);
        }
        if (this.f3990i.remove(e02)) {
            view.setAlpha(1.0f);
            c(e02);
        }
        ArrayList arrayList2 = this.f3995n;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList3 = (ArrayList) arrayList2.get(size2);
            j(e02, arrayList3);
            if (arrayList3.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
        ArrayList arrayList4 = this.f3994m;
        for (int size3 = arrayList4.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList5 = (ArrayList) arrayList4.get(size3);
            int size4 = arrayList5.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (((C0281m) arrayList5.get(size4)).f3978a == e02) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(e02);
                    arrayList5.remove(size4);
                    if (arrayList5.isEmpty()) {
                        arrayList4.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        ArrayList arrayList6 = this.f3993l;
        for (int size5 = arrayList6.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList6.get(size5);
            if (arrayList7.remove(e02)) {
                view.setAlpha(1.0f);
                c(e02);
                if (arrayList7.isEmpty()) {
                    arrayList6.remove(size5);
                }
            }
        }
        this.f3998q.remove(e02);
        this.f3996o.remove(e02);
        this.f3999r.remove(e02);
        this.f3997p.remove(e02);
        i();
    }

    @Override // androidx.recyclerview.widget.AbstractC0272h0
    public final void e() {
        ArrayList arrayList = this.f3991j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            C0281m c0281m = (C0281m) arrayList.get(size);
            View view = c0281m.f3978a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(c0281m.f3978a);
            arrayList.remove(size);
        }
        ArrayList arrayList2 = this.f3989h;
        int size2 = arrayList2.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            c((E0) arrayList2.get(size2));
            arrayList2.remove(size2);
        }
        ArrayList arrayList3 = this.f3990i;
        int size3 = arrayList3.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            E0 e02 = (E0) arrayList3.get(size3);
            e02.itemView.setAlpha(1.0f);
            c(e02);
            arrayList3.remove(size3);
        }
        ArrayList arrayList4 = this.f3992k;
        int size4 = arrayList4.size();
        while (true) {
            size4--;
            if (size4 < 0) {
                break;
            }
            C0279l c0279l = (C0279l) arrayList4.get(size4);
            E0 e03 = c0279l.f3972a;
            if (e03 != null) {
                k(c0279l, e03);
            }
            E0 e04 = c0279l.f3973b;
            if (e04 != null) {
                k(c0279l, e04);
            }
        }
        arrayList4.clear();
        if (f()) {
            ArrayList arrayList5 = this.f3994m;
            int size5 = arrayList5.size();
            while (true) {
                size5--;
                if (size5 < 0) {
                    break;
                }
                ArrayList arrayList6 = (ArrayList) arrayList5.get(size5);
                int size6 = arrayList6.size();
                while (true) {
                    size6--;
                    if (size6 >= 0) {
                        C0281m c0281m2 = (C0281m) arrayList6.get(size6);
                        View view2 = c0281m2.f3978a.itemView;
                        view2.setTranslationY(0.0f);
                        view2.setTranslationX(0.0f);
                        c(c0281m2.f3978a);
                        arrayList6.remove(size6);
                        if (arrayList6.isEmpty()) {
                            arrayList5.remove(arrayList6);
                        }
                    }
                }
            }
            ArrayList arrayList7 = this.f3993l;
            int size7 = arrayList7.size();
            while (true) {
                size7--;
                if (size7 < 0) {
                    break;
                }
                ArrayList arrayList8 = (ArrayList) arrayList7.get(size7);
                int size8 = arrayList8.size();
                while (true) {
                    size8--;
                    if (size8 >= 0) {
                        E0 e05 = (E0) arrayList8.get(size8);
                        e05.itemView.setAlpha(1.0f);
                        c(e05);
                        arrayList8.remove(size8);
                        if (arrayList8.isEmpty()) {
                            arrayList7.remove(arrayList8);
                        }
                    }
                }
            }
            ArrayList arrayList9 = this.f3995n;
            int size9 = arrayList9.size();
            while (true) {
                size9--;
                if (size9 < 0) {
                    break;
                }
                ArrayList arrayList10 = (ArrayList) arrayList9.get(size9);
                int size10 = arrayList10.size();
                while (true) {
                    size10--;
                    if (size10 >= 0) {
                        C0279l c0279l2 = (C0279l) arrayList10.get(size10);
                        E0 e06 = c0279l2.f3972a;
                        if (e06 != null) {
                            k(c0279l2, e06);
                        }
                        E0 e07 = c0279l2.f3973b;
                        if (e07 != null) {
                            k(c0279l2, e07);
                        }
                        if (arrayList10.isEmpty()) {
                            arrayList9.remove(arrayList10);
                        }
                    }
                }
            }
            h(this.f3998q);
            h(this.f3997p);
            h(this.f3996o);
            h(this.f3999r);
            ArrayList arrayList11 = this.f3945b;
            int size11 = arrayList11.size();
            for (int i4 = 0; i4 < size11; i4++) {
                ((InterfaceC0266e0) arrayList11.get(i4)).a();
            }
            arrayList11.clear();
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0272h0
    public final boolean f() {
        return (this.f3990i.isEmpty() && this.f3992k.isEmpty() && this.f3991j.isEmpty() && this.f3989h.isEmpty() && this.f3997p.isEmpty() && this.f3998q.isEmpty() && this.f3996o.isEmpty() && this.f3999r.isEmpty() && this.f3994m.isEmpty() && this.f3993l.isEmpty() && this.f3995n.isEmpty()) ? false : true;
    }

    public final boolean g(E0 e02, int i4, int i5, int i6, int i7) {
        View view = e02.itemView;
        int translationX = i4 + ((int) view.getTranslationX());
        int translationY = i5 + ((int) e02.itemView.getTranslationY());
        l(e02);
        int i8 = i6 - translationX;
        int i9 = i7 - translationY;
        if (i8 == 0 && i9 == 0) {
            c(e02);
            return false;
        }
        if (i8 != 0) {
            view.setTranslationX(-i8);
        }
        if (i9 != 0) {
            view.setTranslationY(-i9);
        }
        this.f3991j.add(new C0281m(e02, translationX, translationY, i6, i7));
        return true;
    }

    public final void i() {
        if (f()) {
            return;
        }
        ArrayList arrayList = this.f3945b;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((InterfaceC0266e0) arrayList.get(i4)).a();
        }
        arrayList.clear();
    }

    public final void j(E0 e02, List list) {
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            C0279l c0279l = (C0279l) list.get(size);
            if (k(c0279l, e02) && c0279l.f3972a == null && c0279l.f3973b == null) {
                list.remove(c0279l);
            }
        }
    }

    public final boolean k(C0279l c0279l, E0 e02) {
        if (c0279l.f3973b == e02) {
            c0279l.f3973b = null;
        } else if (c0279l.f3972a != e02) {
            return false;
        } else {
            c0279l.f3972a = null;
        }
        e02.itemView.setAlpha(1.0f);
        View view = e02.itemView;
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        c(e02);
        return true;
    }

    public final void l(E0 e02) {
        if (f3987s == null) {
            f3987s = new ValueAnimator().getInterpolator();
        }
        e02.itemView.animate().setInterpolator(f3987s);
        d(e02);
    }
}
