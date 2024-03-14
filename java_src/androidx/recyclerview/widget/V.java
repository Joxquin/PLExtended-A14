package androidx.recyclerview.widget;

import android.view.View;
/* loaded from: classes.dex */
public final class V extends AbstractC0286o0 {

    /* renamed from: a  reason: collision with root package name */
    public RecyclerView f3909a;

    /* renamed from: b  reason: collision with root package name */
    public final I0 f3910b = new I0(this);

    /* renamed from: c  reason: collision with root package name */
    public S f3911c;

    /* renamed from: d  reason: collision with root package name */
    public S f3912d;

    public static int b(View view, T t4) {
        return ((t4.c(view) / 2) + t4.d(view)) - ((t4.i() / 2) + t4.h());
    }

    public static View c(AbstractC0280l0 abstractC0280l0, T t4) {
        int childCount = abstractC0280l0.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int i4 = (t4.i() / 2) + t4.h();
        int i5 = Integer.MAX_VALUE;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = abstractC0280l0.getChildAt(i6);
            int abs = Math.abs(((t4.c(childAt) / 2) + t4.d(childAt)) - i4);
            if (abs < i5) {
                view = childAt;
                i5 = abs;
            }
        }
        return view;
    }

    public final int[] a(AbstractC0280l0 abstractC0280l0, View view) {
        int[] iArr = new int[2];
        if (abstractC0280l0.canScrollHorizontally()) {
            iArr[0] = b(view, d(abstractC0280l0));
        } else {
            iArr[0] = 0;
        }
        if (abstractC0280l0.canScrollVertically()) {
            iArr[1] = b(view, e(abstractC0280l0));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    public final T d(AbstractC0280l0 abstractC0280l0) {
        S s4 = this.f3912d;
        if (s4 == null || s4.f3899a != abstractC0280l0) {
            this.f3912d = new S(abstractC0280l0, 0);
        }
        return this.f3912d;
    }

    public final T e(AbstractC0280l0 abstractC0280l0) {
        S s4 = this.f3911c;
        if (s4 == null || s4.f3899a != abstractC0280l0) {
            this.f3911c = new S(abstractC0280l0, 1);
        }
        return this.f3911c;
    }

    public final void f() {
        AbstractC0280l0 layoutManager;
        RecyclerView recyclerView = this.f3909a;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        View c4 = layoutManager.canScrollVertically() ? c(layoutManager, e(layoutManager)) : layoutManager.canScrollHorizontally() ? c(layoutManager, d(layoutManager)) : null;
        if (c4 == null) {
            return;
        }
        int[] a4 = a(layoutManager, c4);
        int i4 = a4[0];
        if (i4 == 0 && a4[1] == 0) {
            return;
        }
        this.f3909a.smoothScrollBy(i4, a4[1]);
    }
}
