package n2;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class d extends Q.h {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f11808a;

    public d(BottomSheetBehavior bottomSheetBehavior) {
        this.f11808a = bottomSheetBehavior;
    }

    @Override // Q.h
    public final int a(int i4, View view) {
        return view.getLeft();
    }

    @Override // Q.h
    public final int b(int i4, View view) {
        BottomSheetBehavior bottomSheetBehavior = this.f11808a;
        return H.a.b(i4, bottomSheetBehavior.x(), bottomSheetBehavior.f7756G ? bottomSheetBehavior.f7767R : bottomSheetBehavior.f7754E);
    }

    @Override // Q.h
    public final int d() {
        BottomSheetBehavior bottomSheetBehavior = this.f11808a;
        return bottomSheetBehavior.f7756G ? bottomSheetBehavior.f7767R : bottomSheetBehavior.f7754E;
    }

    @Override // Q.h
    public final void f(int i4) {
        if (i4 == 1) {
            BottomSheetBehavior bottomSheetBehavior = this.f11808a;
            if (bottomSheetBehavior.f7758I) {
                bottomSheetBehavior.C(1);
            }
        }
    }

    @Override // Q.h
    public final void g(View view, int i4, int i5) {
        this.f11808a.u(i5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006c, code lost:
        if (java.lang.Math.abs(r4.getTop() - r3.x()) < java.lang.Math.abs(r4.getTop() - r3.f7752C)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0098, code lost:
        if (java.lang.Math.abs(r5 - r3.f7752C) < java.lang.Math.abs(r5 - r3.f7754E)) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b2, code lost:
        if (java.lang.Math.abs(r5 - r3.f7751B) < java.lang.Math.abs(r5 - r3.f7754E)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00c1, code lost:
        if (r5 < java.lang.Math.abs(r5 - r3.f7754E)) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00d2, code lost:
        if (java.lang.Math.abs(r5 - r6) < java.lang.Math.abs(r5 - r3.f7754E)) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
        if (r5 > r3.f7752C) goto L7;
     */
    @Override // Q.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(android.view.View r4, float r5, float r6) {
        /*
            r3 = this;
            r0 = 0
            int r1 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            r2 = 1
            com.google.android.material.bottomsheet.BottomSheetBehavior r3 = r3.f11808a
            if (r1 >= 0) goto L1b
            boolean r5 = r3.f7778b
            if (r5 == 0) goto Le
            goto Lc3
        Le:
            int r5 = r4.getTop()
            java.lang.System.currentTimeMillis()
            int r6 = r3.f7752C
            if (r5 <= r6) goto Lc3
            goto Ld4
        L1b:
            boolean r1 = r3.f7756G
            if (r1 == 0) goto L6f
            boolean r1 = r3.D(r4, r6)
            if (r1 == 0) goto L6f
            float r5 = java.lang.Math.abs(r5)
            float r0 = java.lang.Math.abs(r6)
            int r5 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r5 >= 0) goto L37
            r5 = 1140457472(0x43fa0000, float:500.0)
            int r5 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
            if (r5 > 0) goto L4b
        L37:
            int r5 = r4.getTop()
            int r6 = r3.f7767R
            int r0 = r3.x()
            int r0 = r0 + r6
            int r0 = r0 / 2
            if (r5 <= r0) goto L48
            r5 = r2
            goto L49
        L48:
            r5 = 0
        L49:
            if (r5 == 0) goto L4e
        L4b:
            r5 = 5
            goto Ld7
        L4e:
            boolean r5 = r3.f7778b
            if (r5 == 0) goto L54
            goto Lc3
        L54:
            int r5 = r4.getTop()
            int r6 = r3.x()
            int r5 = r5 - r6
            int r5 = java.lang.Math.abs(r5)
            int r6 = r4.getTop()
            int r0 = r3.f7752C
            int r6 = r6 - r0
            int r6 = java.lang.Math.abs(r6)
            if (r5 >= r6) goto Ld4
            goto Lc3
        L6f:
            int r0 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r0 == 0) goto L9b
            float r5 = java.lang.Math.abs(r5)
            float r6 = java.lang.Math.abs(r6)
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 <= 0) goto L80
            goto L9b
        L80:
            boolean r5 = r3.f7778b
            if (r5 == 0) goto L85
            goto Ld6
        L85:
            int r5 = r4.getTop()
            int r6 = r3.f7752C
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            int r0 = r3.f7754E
            int r5 = r5 - r0
            int r5 = java.lang.Math.abs(r5)
            if (r6 >= r5) goto Ld6
            goto Ld4
        L9b:
            int r5 = r4.getTop()
            boolean r6 = r3.f7778b
            if (r6 == 0) goto Lb5
            int r6 = r3.f7751B
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            int r0 = r3.f7754E
            int r5 = r5 - r0
            int r5 = java.lang.Math.abs(r5)
            if (r6 >= r5) goto Ld6
            goto Lc3
        Lb5:
            int r6 = r3.f7752C
            if (r5 >= r6) goto Lc5
            int r6 = r3.f7754E
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            if (r5 >= r6) goto Ld4
        Lc3:
            r5 = 3
            goto Ld7
        Lc5:
            int r6 = r5 - r6
            int r6 = java.lang.Math.abs(r6)
            int r0 = r3.f7754E
            int r5 = r5 - r0
            int r5 = java.lang.Math.abs(r5)
            if (r6 >= r5) goto Ld6
        Ld4:
            r5 = 6
            goto Ld7
        Ld6:
            r5 = 4
        Ld7:
            r3.getClass()
            r3.E(r4, r5, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: n2.d.h(android.view.View, float, float):void");
    }

    @Override // Q.h
    public final boolean i(View view, int i4) {
        BottomSheetBehavior bottomSheetBehavior = this.f11808a;
        int i5 = bottomSheetBehavior.f7759J;
        if (i5 == 1 || bottomSheetBehavior.f7774Y) {
            return false;
        }
        if (i5 == 3 && bottomSheetBehavior.f7772W == i4) {
            WeakReference weakReference = bottomSheetBehavior.f7769T;
            View view2 = weakReference != null ? (View) weakReference.get() : null;
            if (view2 != null && view2.canScrollVertically(-1)) {
                return false;
            }
        }
        System.currentTimeMillis();
        WeakReference weakReference2 = bottomSheetBehavior.f7768S;
        return weakReference2 != null && weakReference2.get() == view;
    }
}
