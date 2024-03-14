package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.C0165b;
/* loaded from: classes.dex */
public class G0 extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f3799d;

    /* renamed from: e  reason: collision with root package name */
    public final F0 f3800e;

    public G0(RecyclerView recyclerView) {
        this.f3799d = recyclerView;
        C0165b a4 = a();
        if (a4 == null || !(a4 instanceof F0)) {
            this.f3800e = new F0(this);
        } else {
            this.f3800e = (F0) a4;
        }
    }

    public C0165b a() {
        return this.f3800e;
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.f3799d.hasPendingAdapterUpdates()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
        }
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        super.onInitializeAccessibilityNodeInfo(view, eVar);
        RecyclerView recyclerView = this.f3799d;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView.getLayoutManager() == null) {
            return;
        }
        AbstractC0280l0 layoutManager = recyclerView.getLayoutManager();
        RecyclerView recyclerView2 = layoutManager.mRecyclerView;
        layoutManager.onInitializeAccessibilityNodeInfo(recyclerView2.mRecycler, recyclerView2.mState, eVar);
    }

    @Override // androidx.core.view.C0165b
    public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
        if (super.performAccessibilityAction(view, i4, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.f3799d;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        return recyclerView.getLayoutManager().performAccessibilityAction(i4, bundle);
    }
}
