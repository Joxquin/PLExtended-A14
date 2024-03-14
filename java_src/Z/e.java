package z;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* loaded from: classes.dex */
public final class e implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ CoordinatorLayout f12966d;

    public e(CoordinatorLayout coordinatorLayout) {
        this.f12966d = coordinatorLayout;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewAdded(View view, View view2) {
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f12966d.f3053s;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewAdded(view, view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewRemoved(View view, View view2) {
        this.f12966d.m(2);
        ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f12966d.f3053s;
        if (onHierarchyChangeListener != null) {
            onHierarchyChangeListener.onChildViewRemoved(view, view2);
        }
    }
}
