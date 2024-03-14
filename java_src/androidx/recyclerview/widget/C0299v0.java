package androidx.recyclerview.widget;

import androidx.core.view.C0186x;
import java.util.WeakHashMap;
/* renamed from: androidx.recyclerview.widget.v0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0299v0 extends AbstractC0260b0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RecyclerView f4035a;

    public C0299v0(RecyclerView recyclerView) {
        this.f4035a = recyclerView;
    }

    @Override // androidx.recyclerview.widget.AbstractC0260b0
    public final void a() {
        RecyclerView recyclerView = this.f4035a;
        recyclerView.assertNotInLayoutOrScroll(null);
        recyclerView.mState.f3763f = true;
        recyclerView.processDataSetCompletelyChanged(true);
        if (recyclerView.mAdapterHelper.g()) {
            return;
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0022, code lost:
        if (r2.size() == 1) goto L5;
     */
    @Override // androidx.recyclerview.widget.AbstractC0260b0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(int r5, int r6, java.lang.Object r7) {
        /*
            r4 = this;
            androidx.recyclerview.widget.RecyclerView r0 = r4.f4035a
            r1 = 0
            r0.assertNotInLayoutOrScroll(r1)
            androidx.recyclerview.widget.b r0 = r0.mAdapterHelper
            r1 = 1
            if (r6 >= r1) goto Lf
            r0.getClass()
            goto L25
        Lf:
            java.util.ArrayList r2 = r0.f3923b
            r3 = 4
            androidx.recyclerview.widget.a r5 = r0.h(r7, r3, r5, r6)
            r2.add(r5)
            int r5 = r0.f3927f
            r5 = r5 | r3
            r0.f3927f = r5
            int r5 = r2.size()
            if (r5 != r1) goto L25
            goto L26
        L25:
            r1 = 0
        L26:
            if (r1 == 0) goto L2b
            r4.f()
        L2b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0299v0.b(int, int, java.lang.Object):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
        if (r3.size() == 1) goto L5;
     */
    @Override // androidx.recyclerview.widget.AbstractC0260b0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(int r5, int r6) {
        /*
            r4 = this;
            androidx.recyclerview.widget.RecyclerView r0 = r4.f4035a
            r1 = 0
            r0.assertNotInLayoutOrScroll(r1)
            androidx.recyclerview.widget.b r0 = r0.mAdapterHelper
            r2 = 1
            if (r6 >= r2) goto Lf
            r0.getClass()
            goto L24
        Lf:
            java.util.ArrayList r3 = r0.f3923b
            androidx.recyclerview.widget.a r5 = r0.h(r1, r2, r5, r6)
            r3.add(r5)
            int r5 = r0.f3927f
            r5 = r5 | r2
            r0.f3927f = r5
            int r5 = r3.size()
            if (r5 != r2) goto L24
            goto L25
        L24:
            r2 = 0
        L25:
            if (r2 == 0) goto L2a
            r4.f()
        L2a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0299v0.c(int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0023, code lost:
        if (r2.size() == 1) goto L5;
     */
    @Override // androidx.recyclerview.widget.AbstractC0260b0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(int r5, int r6) {
        /*
            r4 = this;
            androidx.recyclerview.widget.RecyclerView r0 = r4.f4035a
            r1 = 0
            r0.assertNotInLayoutOrScroll(r1)
            androidx.recyclerview.widget.b r0 = r0.mAdapterHelper
            r0.getClass()
            if (r5 != r6) goto Le
            goto L26
        Le:
            java.util.ArrayList r2 = r0.f3923b
            r3 = 8
            androidx.recyclerview.widget.a r5 = r0.h(r1, r3, r5, r6)
            r2.add(r5)
            int r5 = r0.f3927f
            r5 = r5 | r3
            r0.f3927f = r5
            int r5 = r2.size()
            r6 = 1
            if (r5 != r6) goto L26
            goto L27
        L26:
            r6 = 0
        L27:
            if (r6 == 0) goto L2c
            r4.f()
        L2c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0299v0.d(int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0022, code lost:
        if (r3.size() == 1) goto L5;
     */
    @Override // androidx.recyclerview.widget.AbstractC0260b0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(int r6, int r7) {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView r0 = r5.f4035a
            r1 = 0
            r0.assertNotInLayoutOrScroll(r1)
            androidx.recyclerview.widget.b r0 = r0.mAdapterHelper
            r2 = 1
            if (r7 >= r2) goto Lf
            r0.getClass()
            goto L25
        Lf:
            java.util.ArrayList r3 = r0.f3923b
            r4 = 2
            androidx.recyclerview.widget.a r6 = r0.h(r1, r4, r6, r7)
            r3.add(r6)
            int r6 = r0.f3927f
            r6 = r6 | r4
            r0.f3927f = r6
            int r6 = r3.size()
            if (r6 != r2) goto L25
            goto L26
        L25:
            r2 = 0
        L26:
            if (r2 == 0) goto L2b
            r5.f()
        L2b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0299v0.e(int, int):void");
    }

    public final void f() {
        boolean z4 = RecyclerView.POST_UPDATES_ON_ANIMATION;
        RecyclerView recyclerView = this.f4035a;
        if (!z4 || !recyclerView.mHasFixedSize || !recyclerView.mIsAttached) {
            recyclerView.mAdapterUpdateDuringMeasure = true;
            recyclerView.requestLayout();
            return;
        }
        Runnable runnable = recyclerView.mUpdateChildViewsRunnable;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        C0186x.j(recyclerView, runnable);
    }
}
