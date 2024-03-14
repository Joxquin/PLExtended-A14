package androidx.recyclerview.widget;

import android.view.View;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class Q0 {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f3863a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public int f3864b = Integer.MIN_VALUE;

    /* renamed from: c  reason: collision with root package name */
    public int f3865c = Integer.MIN_VALUE;

    /* renamed from: d  reason: collision with root package name */
    public int f3866d = 0;

    /* renamed from: e  reason: collision with root package name */
    public final int f3867e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f3868f;

    public Q0(StaggeredGridLayoutManager staggeredGridLayoutManager, int i4) {
        this.f3868f = staggeredGridLayoutManager;
        this.f3867e = i4;
    }

    public static L0 h(View view) {
        return (L0) view.getLayoutParams();
    }

    public final void a() {
        ArrayList arrayList = this.f3863a;
        View view = (View) arrayList.get(arrayList.size() - 1);
        L0 h4 = h(view);
        this.f3865c = this.f3868f.f3879c.b(view);
        h4.getClass();
    }

    public final void b() {
        this.f3863a.clear();
        this.f3864b = Integer.MIN_VALUE;
        this.f3865c = Integer.MIN_VALUE;
        this.f3866d = 0;
    }

    public final int c() {
        boolean z4 = this.f3868f.f3884h;
        ArrayList arrayList = this.f3863a;
        return z4 ? e(arrayList.size() - 1, -1) : e(0, arrayList.size());
    }

    public final int d() {
        boolean z4 = this.f3868f.f3884h;
        ArrayList arrayList = this.f3863a;
        return z4 ? e(0, arrayList.size()) : e(arrayList.size() - 1, -1);
    }

    public final int e(int i4, int i5) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f3868f;
        int h4 = staggeredGridLayoutManager.f3879c.h();
        int f4 = staggeredGridLayoutManager.f3879c.f();
        int i6 = i5 > i4 ? 1 : -1;
        while (i4 != i5) {
            View view = (View) this.f3863a.get(i4);
            int d4 = staggeredGridLayoutManager.f3879c.d(view);
            int b4 = staggeredGridLayoutManager.f3879c.b(view);
            boolean z4 = d4 <= f4;
            boolean z5 = b4 >= h4;
            if (z4 && z5 && (d4 < h4 || b4 > f4)) {
                return AbstractC0280l0.getPosition(view);
            }
            i4 += i6;
        }
        return -1;
    }

    public final int f(int i4) {
        int i5 = this.f3865c;
        if (i5 != Integer.MIN_VALUE) {
            return i5;
        }
        if (this.f3863a.size() == 0) {
            return i4;
        }
        a();
        return this.f3865c;
    }

    public final View g(int i4, int i5) {
        ArrayList arrayList = this.f3863a;
        StaggeredGridLayoutManager staggeredGridLayoutManager = this.f3868f;
        View view = null;
        if (i5 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.f3884h && AbstractC0280l0.getPosition(view2) >= i4) || ((!staggeredGridLayoutManager.f3884h && AbstractC0280l0.getPosition(view2) <= i4) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
        } else {
            int size2 = arrayList.size();
            int i6 = 0;
            while (i6 < size2) {
                View view3 = (View) arrayList.get(i6);
                if ((staggeredGridLayoutManager.f3884h && AbstractC0280l0.getPosition(view3) <= i4) || ((!staggeredGridLayoutManager.f3884h && AbstractC0280l0.getPosition(view3) >= i4) || !view3.hasFocusable())) {
                    break;
                }
                i6++;
                view = view3;
            }
        }
        return view;
    }

    public final int i(int i4) {
        int i5 = this.f3864b;
        if (i5 != Integer.MIN_VALUE) {
            return i5;
        }
        ArrayList arrayList = this.f3863a;
        if (arrayList.size() == 0) {
            return i4;
        }
        View view = (View) arrayList.get(0);
        L0 h4 = h(view);
        this.f3864b = this.f3868f.f3879c.d(view);
        h4.getClass();
        return this.f3864b;
    }
}
