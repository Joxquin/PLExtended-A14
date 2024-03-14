package androidx.recyclerview.widget;

import android.util.Log;
import android.view.View;
/* loaded from: classes.dex */
public final class Y implements V0, InterfaceC0268f0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RecyclerView f3917a;

    public /* synthetic */ Y(RecyclerView recyclerView) {
        this.f3917a = recyclerView;
    }

    public final void a(C0257a c0257a) {
        int i4 = c0257a.f3918a;
        RecyclerView recyclerView = this.f3917a;
        if (i4 == 1) {
            recyclerView.mLayout.onItemsAdded(recyclerView, c0257a.f3919b, c0257a.f3921d);
        } else if (i4 == 2) {
            recyclerView.mLayout.onItemsRemoved(recyclerView, c0257a.f3919b, c0257a.f3921d);
        } else if (i4 == 4) {
            recyclerView.mLayout.onItemsUpdated(recyclerView, c0257a.f3919b, c0257a.f3921d, c0257a.f3920c);
        } else if (i4 != 8) {
        } else {
            recyclerView.mLayout.onItemsMoved(recyclerView, c0257a.f3919b, c0257a.f3921d);
        }
    }

    public final E0 b(int i4) {
        RecyclerView recyclerView = this.f3917a;
        E0 findViewHolderForPosition = recyclerView.findViewHolderForPosition(i4, true);
        if (findViewHolderForPosition == null) {
            return null;
        }
        if (recyclerView.mChildHelper.j(findViewHolderForPosition.itemView)) {
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "assuming view holder cannot be find because it is hidden");
            }
            return null;
        }
        return findViewHolderForPosition;
    }

    public final int c() {
        return this.f3917a.getChildCount();
    }

    public final void d(int i4) {
        RecyclerView recyclerView = this.f3917a;
        View childAt = recyclerView.getChildAt(i4);
        if (childAt != null) {
            recyclerView.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i4);
    }
}
