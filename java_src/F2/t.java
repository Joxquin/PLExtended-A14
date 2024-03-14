package F2;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
/* loaded from: classes.dex */
public final class t implements View.OnAttachStateChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ v f472d;

    public t(v vVar) {
        this.f472d = vVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f472d.a();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        AccessibilityManager accessibilityManager;
        v vVar = this.f472d;
        C0012k c0012k = vVar.f494u;
        if (c0012k == null || (accessibilityManager = vVar.f493t) == null) {
            return;
        }
        accessibilityManager.removeTouchExplorationStateChangeListener(new M.b(c0012k));
    }
}
