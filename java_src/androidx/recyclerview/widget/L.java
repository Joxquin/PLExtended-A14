package androidx.recyclerview.widget;

import android.view.View;
import java.util.List;
/* loaded from: classes.dex */
public final class L {

    /* renamed from: b  reason: collision with root package name */
    public int f3830b;

    /* renamed from: c  reason: collision with root package name */
    public int f3831c;

    /* renamed from: d  reason: collision with root package name */
    public int f3832d;

    /* renamed from: e  reason: collision with root package name */
    public int f3833e;

    /* renamed from: f  reason: collision with root package name */
    public int f3834f;

    /* renamed from: g  reason: collision with root package name */
    public int f3835g;

    /* renamed from: j  reason: collision with root package name */
    public int f3838j;

    /* renamed from: l  reason: collision with root package name */
    public boolean f3840l;

    /* renamed from: a  reason: collision with root package name */
    public boolean f3829a = true;

    /* renamed from: h  reason: collision with root package name */
    public int f3836h = 0;

    /* renamed from: i  reason: collision with root package name */
    public int f3837i = 0;

    /* renamed from: k  reason: collision with root package name */
    public List f3839k = null;

    public final void a(View view) {
        int a4;
        int size = this.f3839k.size();
        View view2 = null;
        int i4 = Integer.MAX_VALUE;
        for (int i5 = 0; i5 < size; i5++) {
            View view3 = ((E0) this.f3839k.get(i5)).itemView;
            C0282m0 c0282m0 = (C0282m0) view3.getLayoutParams();
            if (view3 != view && !c0282m0.c() && (a4 = (c0282m0.a() - this.f3832d) * this.f3833e) >= 0 && a4 < i4) {
                view2 = view3;
                if (a4 == 0) {
                    break;
                }
                i4 = a4;
            }
        }
        if (view2 == null) {
            this.f3832d = -1;
        } else {
            this.f3832d = ((C0282m0) view2.getLayoutParams()).a();
        }
    }

    public final View b(C0295t0 c0295t0) {
        List list = this.f3839k;
        if (list == null) {
            View view = c0295t0.l(this.f3832d, Long.MAX_VALUE).itemView;
            this.f3832d += this.f3833e;
            return view;
        }
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            View view2 = ((E0) this.f3839k.get(i4)).itemView;
            C0282m0 c0282m0 = (C0282m0) view2.getLayoutParams();
            if (!c0282m0.c() && this.f3832d == c0282m0.a()) {
                a(view2);
                return view2;
            }
        }
        return null;
    }
}
