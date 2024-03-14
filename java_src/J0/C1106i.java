package j0;

import android.os.Bundle;
import android.view.View;
import androidx.core.view.C0165b;
/* renamed from: j0.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1106i extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1111n f10650d;

    public C1106i(C1111n c1111n) {
        this.f10650d = c1111n;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0013, code lost:
        if (r2.b() > 1) goto L5;
     */
    @Override // androidx.core.view.C0165b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onInitializeAccessibilityEvent(android.view.View r2, android.view.accessibility.AccessibilityEvent r3) {
        /*
            r1 = this;
            super.onInitializeAccessibilityEvent(r2, r3)
            java.lang.String r2 = "androidx.viewpager.widget.ViewPager"
            r3.setClassName(r2)
            j0.n r1 = r1.f10650d
            j0.a r2 = r1.f10678h
            if (r2 == 0) goto L16
            int r2 = r2.b()
            r0 = 1
            if (r2 <= r0) goto L16
            goto L17
        L16:
            r0 = 0
        L17:
            r3.setScrollable(r0)
            int r2 = r3.getEventType()
            r0 = 4096(0x1000, float:5.74E-42)
            if (r2 != r0) goto L37
            j0.a r2 = r1.f10678h
            if (r2 == 0) goto L37
            int r2 = r2.b()
            r3.setItemCount(r2)
            int r2 = r1.f10679i
            r3.setFromIndex(r2)
            int r1 = r1.f10679i
            r3.setToIndex(r1)
        L37:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: j0.C1106i.onInitializeAccessibilityEvent(android.view.View, android.view.accessibility.AccessibilityEvent):void");
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        super.onInitializeAccessibilityNodeInfo(view, eVar);
        eVar.h("androidx.viewpager.widget.ViewPager");
        C1111n c1111n = this.f10650d;
        AbstractC1098a abstractC1098a = c1111n.f10678h;
        eVar.f1349a.setScrollable(abstractC1098a != null && abstractC1098a.b() > 1);
        if (c1111n.canScrollHorizontally(1)) {
            eVar.a(4096);
        }
        if (c1111n.canScrollHorizontally(-1)) {
            eVar.a(8192);
        }
    }

    @Override // androidx.core.view.C0165b
    public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
        if (super.performAccessibilityAction(view, i4, bundle)) {
            return true;
        }
        C1111n c1111n = this.f10650d;
        if (i4 == 4096) {
            if (c1111n.canScrollHorizontally(1)) {
                c1111n.f10689s = false;
                c1111n.v(c1111n.f10679i + 1, 0, !c1111n.f10668K, false);
                return true;
            }
            return false;
        } else if (i4 == 8192 && c1111n.canScrollHorizontally(-1)) {
            c1111n.f10689s = false;
            c1111n.v(c1111n.f10679i - 1, 0, !c1111n.f10668K, false);
            return true;
        } else {
            return false;
        }
    }
}
