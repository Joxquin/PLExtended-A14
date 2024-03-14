package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.view.C0165b;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class F0 extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final G0 f3795d;

    /* renamed from: e  reason: collision with root package name */
    public final Map f3796e = new WeakHashMap();

    public F0(G0 g02) {
        this.f3795d = g02;
    }

    @Override // androidx.core.view.C0165b
    public final boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        C0165b c0165b = (C0165b) ((WeakHashMap) this.f3796e).get(view);
        return c0165b != null ? c0165b.dispatchPopulateAccessibilityEvent(view, accessibilityEvent) : super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // androidx.core.view.C0165b
    public final M.i getAccessibilityNodeProvider(View view) {
        C0165b c0165b = (C0165b) ((WeakHashMap) this.f3796e).get(view);
        return c0165b != null ? c0165b.getAccessibilityNodeProvider(view) : super.getAccessibilityNodeProvider(view);
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        C0165b c0165b = (C0165b) ((WeakHashMap) this.f3796e).get(view);
        if (c0165b != null) {
            c0165b.onInitializeAccessibilityEvent(view, accessibilityEvent);
        } else {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        }
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        G0 g02 = this.f3795d;
        if (!g02.f3799d.hasPendingAdapterUpdates()) {
            RecyclerView recyclerView = g02.f3799d;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, eVar);
                C0165b c0165b = (C0165b) ((WeakHashMap) this.f3796e).get(view);
                if (c0165b != null) {
                    c0165b.onInitializeAccessibilityNodeInfo(view, eVar);
                    return;
                } else {
                    super.onInitializeAccessibilityNodeInfo(view, eVar);
                    return;
                }
            }
        }
        super.onInitializeAccessibilityNodeInfo(view, eVar);
    }

    @Override // androidx.core.view.C0165b
    public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        C0165b c0165b = (C0165b) ((WeakHashMap) this.f3796e).get(view);
        if (c0165b != null) {
            c0165b.onPopulateAccessibilityEvent(view, accessibilityEvent);
        } else {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
        }
    }

    @Override // androidx.core.view.C0165b
    public final boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        C0165b c0165b = (C0165b) ((WeakHashMap) this.f3796e).get(viewGroup);
        return c0165b != null ? c0165b.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // androidx.core.view.C0165b
    public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
        G0 g02 = this.f3795d;
        if (!g02.f3799d.hasPendingAdapterUpdates()) {
            RecyclerView recyclerView = g02.f3799d;
            if (recyclerView.getLayoutManager() != null) {
                C0165b c0165b = (C0165b) ((WeakHashMap) this.f3796e).get(view);
                if (c0165b != null) {
                    if (c0165b.performAccessibilityAction(view, i4, bundle)) {
                        return true;
                    }
                } else if (super.performAccessibilityAction(view, i4, bundle)) {
                    return true;
                }
                C0295t0 c0295t0 = recyclerView.getLayoutManager().mRecyclerView.mRecycler;
                return false;
            }
        }
        return super.performAccessibilityAction(view, i4, bundle);
    }

    @Override // androidx.core.view.C0165b
    public final void sendAccessibilityEvent(View view, int i4) {
        C0165b c0165b = (C0165b) ((WeakHashMap) this.f3796e).get(view);
        if (c0165b != null) {
            c0165b.sendAccessibilityEvent(view, i4);
        } else {
            super.sendAccessibilityEvent(view, i4);
        }
    }

    @Override // androidx.core.view.C0165b
    public final void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        C0165b c0165b = (C0165b) ((WeakHashMap) this.f3796e).get(view);
        if (c0165b != null) {
            c0165b.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        } else {
            super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
        }
    }
}
