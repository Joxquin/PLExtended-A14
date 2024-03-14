package Q;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
/* loaded from: classes.dex */
public final class b extends M.i {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ c f1578b;

    public b(c cVar) {
        this.f1578b = cVar;
    }

    @Override // M.i
    public final M.e a(int i4) {
        return new M.e(AccessibilityNodeInfo.obtain(this.f1578b.obtainAccessibilityNodeInfo(i4).f1349a));
    }

    @Override // M.i
    public final M.e b(int i4) {
        c cVar = this.f1578b;
        int i5 = i4 == 2 ? cVar.mAccessibilityFocusedVirtualViewId : cVar.mKeyboardFocusedVirtualViewId;
        if (i5 == Integer.MIN_VALUE) {
            return null;
        }
        return a(i5);
    }

    @Override // M.i
    public final boolean c(int i4, int i5, Bundle bundle) {
        return this.f1578b.performAction(i4, i5, bundle);
    }
}
