package l2;

import Q.h;
import android.view.View;
import android.view.ViewParent;
import androidx.core.view.C0187y;
import androidx.core.view.J;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;
/* renamed from: l2.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1289c extends h {

    /* renamed from: a  reason: collision with root package name */
    public int f11560a;

    /* renamed from: b  reason: collision with root package name */
    public int f11561b = -1;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f11562c;

    public C1289c(SwipeDismissBehavior swipeDismissBehavior) {
        this.f11562c = swipeDismissBehavior;
    }

    @Override // Q.h
    public final int a(int i4, View view) {
        int width;
        int width2;
        int i5;
        int width3;
        WeakHashMap weakHashMap = J.f3079a;
        boolean z4 = C0187y.c(view) == 1;
        int i6 = this.f11562c.f7742c;
        if (i6 == 0) {
            if (z4) {
                width = this.f11560a - view.getWidth();
                width2 = this.f11560a;
            } else {
                i5 = this.f11560a;
                width3 = view.getWidth();
                width = i5;
                width2 = width3 + width;
            }
        } else if (i6 != 1) {
            width = this.f11560a - view.getWidth();
            width2 = this.f11560a + view.getWidth();
        } else if (z4) {
            i5 = this.f11560a;
            width3 = view.getWidth();
            width = i5;
            width2 = width3 + width;
        } else {
            width = this.f11560a - view.getWidth();
            width2 = this.f11560a;
        }
        return Math.min(Math.max(width, i4), width2);
    }

    @Override // Q.h
    public final int b(int i4, View view) {
        return view.getTop();
    }

    @Override // Q.h
    public final int c(View view) {
        return view.getWidth();
    }

    @Override // Q.h
    public final void e(View view, int i4) {
        this.f11561b = i4;
        this.f11560a = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    @Override // Q.h
    public final void f(int i4) {
        this.f11562c.getClass();
    }

    @Override // Q.h
    public final void g(View view, int i4, int i5) {
        SwipeDismissBehavior swipeDismissBehavior = this.f11562c;
        float width = (view.getWidth() * swipeDismissBehavior.f7744e) + this.f11560a;
        float width2 = (view.getWidth() * swipeDismissBehavior.f7745f) + this.f11560a;
        float f4 = i4;
        if (f4 <= width) {
            view.setAlpha(1.0f);
        } else if (f4 >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((f4 - width) / (width2 - width))), 1.0f));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
        if (java.lang.Math.abs(r9.getLeft() - r8.f11560a) >= java.lang.Math.round(r9.getWidth() * r3.f7743d)) goto L33;
     */
    @Override // Q.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(android.view.View r9, float r10, float r11) {
        /*
            r8 = this;
            r11 = -1
            r8.f11561b = r11
            int r11 = r9.getWidth()
            r0 = 0
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            r2 = 1
            com.google.android.material.behavior.SwipeDismissBehavior r3 = r8.f11562c
            r4 = 0
            if (r1 == 0) goto L39
            java.util.WeakHashMap r5 = androidx.core.view.J.f3079a
            int r5 = androidx.core.view.C0187y.c(r9)
            if (r5 != r2) goto L1a
            r5 = r2
            goto L1b
        L1a:
            r5 = r4
        L1b:
            int r6 = r3.f7742c
            r7 = 2
            if (r6 != r7) goto L21
            goto L52
        L21:
            if (r6 != 0) goto L2d
            if (r5 == 0) goto L2a
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L54
            goto L52
        L2a:
            if (r1 <= 0) goto L54
            goto L52
        L2d:
            if (r6 != r2) goto L54
            if (r5 == 0) goto L34
            if (r1 <= 0) goto L54
            goto L52
        L34:
            int r1 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r1 >= 0) goto L54
            goto L52
        L39:
            int r1 = r9.getLeft()
            int r5 = r8.f11560a
            int r1 = r1 - r5
            int r5 = r9.getWidth()
            float r5 = (float) r5
            float r6 = r3.f7743d
            float r5 = r5 * r6
            int r5 = java.lang.Math.round(r5)
            int r1 = java.lang.Math.abs(r1)
            if (r1 < r5) goto L54
        L52:
            r1 = r2
            goto L55
        L54:
            r1 = r4
        L55:
            if (r1 == 0) goto L6b
            int r10 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r10 < 0) goto L66
            int r10 = r9.getLeft()
            int r0 = r8.f11560a
            if (r10 >= r0) goto L64
            goto L66
        L64:
            int r0 = r0 + r11
            goto L6e
        L66:
            int r8 = r8.f11560a
            int r0 = r8 - r11
            goto L6e
        L6b:
            int r0 = r8.f11560a
            r2 = r4
        L6e:
            Q.i r8 = r3.f7740a
            int r10 = r9.getTop()
            boolean r8 = r8.p(r0, r10)
            if (r8 == 0) goto L84
            l2.f r8 = new l2.f
            r8.<init>(r3, r9, r2)
            java.util.WeakHashMap r10 = androidx.core.view.J.f3079a
            androidx.core.view.C0186x.j(r9, r8)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: l2.C1289c.h(android.view.View, float, float):void");
    }

    @Override // Q.h
    public final boolean i(View view, int i4) {
        int i5 = this.f11561b;
        return (i5 == -1 || i5 == i4) && this.f11562c.s(view);
    }
}
