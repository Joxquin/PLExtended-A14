package X;

import android.os.Bundle;
import android.view.View;
import androidx.core.view.C0165b;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
public final class Y extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Z f1975d;

    public Y(Z z4) {
        this.f1975d = z4;
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        Z z4 = this.f1975d;
        z4.f1977g.onInitializeAccessibilityNodeInfo(view, eVar);
        RecyclerView recyclerView = z4.f1976f;
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        androidx.recyclerview.widget.Z adapter = recyclerView.getAdapter();
        if (adapter instanceof S) {
            ((S) adapter).d(childAdapterPosition);
        }
    }

    @Override // androidx.core.view.C0165b
    public final boolean performAccessibilityAction(View view, int i4, Bundle bundle) {
        return this.f1975d.f1977g.performAccessibilityAction(view, i4, bundle);
    }
}
