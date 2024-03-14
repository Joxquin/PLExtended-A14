package androidx.recyclerview.widget;

import android.os.Trace;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.widget.picker.WidgetsListAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public abstract class Z {
    private final C0258a0 mObservable = new C0258a0();
    private boolean mHasStableIds = false;
    private RecyclerView$Adapter$StateRestorationPolicy mStateRestorationPolicy = RecyclerView$Adapter$StateRestorationPolicy.ALLOW;

    public final void bindViewHolder(E0 e02, int i4) {
        boolean z4 = e02.mBindingAdapter == null;
        if (z4) {
            e02.mPosition = i4;
            if (this.mHasStableIds) {
                e02.mItemId = getItemId(i4);
            }
            e02.mFlags = (e02.mFlags & (-520)) | 1;
            Trace.beginSection("RV OnBindView");
        }
        e02.mBindingAdapter = this;
        boolean z5 = RecyclerView.sDebugAssertionsEnabled;
        View view = e02.itemView;
        if (z5) {
            if (view.getParent() == null) {
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                if (androidx.core.view.A.b(view) != e02.isTmpDetached()) {
                    throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + e02.isTmpDetached() + ", attached to window: " + androidx.core.view.A.b(view) + ", holder: " + e02);
                }
            }
            if (view.getParent() == null) {
                WeakHashMap weakHashMap2 = androidx.core.view.J.f3079a;
                if (androidx.core.view.A.b(view)) {
                    throw new IllegalStateException("Attempting to bind attached holder with no parent (AKA temp detached): " + e02);
                }
            }
        }
        onBindViewHolder(e02, i4, e02.getUnmodifiedPayloads());
        if (z4) {
            List list = e02.mPayloads;
            if (list != null) {
                ((ArrayList) list).clear();
            }
            e02.mFlags &= -1025;
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof C0282m0) {
                ((C0282m0) layoutParams).f3985c = true;
            }
            Trace.endSection();
        }
    }

    public final boolean canRestoreState() {
        int ordinal = this.mStateRestorationPolicy.ordinal();
        return ordinal != 1 ? ordinal != 2 : getItemCount() > 0;
    }

    public final E0 createViewHolder(RecyclerView recyclerView, int i4) {
        try {
            Trace.beginSection("RV CreateView");
            E0 onCreateViewHolder = onCreateViewHolder(recyclerView, i4);
            if (onCreateViewHolder.itemView.getParent() == null) {
                onCreateViewHolder.mItemViewType = i4;
                return onCreateViewHolder;
            }
            throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
        } finally {
            Trace.endSection();
        }
    }

    public abstract int getItemCount();

    public long getItemId(int i4) {
        return -1L;
    }

    public int getItemViewType(int i4) {
        return 0;
    }

    public final boolean hasStableIds() {
        return this.mHasStableIds;
    }

    public final void notifyDataSetChanged() {
        this.mObservable.b();
    }

    public final void notifyItemChanged(int i4, Object obj) {
        this.mObservable.d(i4, 1, obj);
    }

    public final void notifyItemMoved(int i4, int i5) {
        this.mObservable.c(i4, i5);
    }

    public final void notifyItemRangeChanged(int i4, int i5, Object obj) {
        this.mObservable.d(i4, i5, obj);
    }

    public final void notifyItemRangeInserted(int i4, int i5) {
        this.mObservable.e(i4, i5);
    }

    public final void notifyItemRangeRemoved(int i4, int i5) {
        this.mObservable.f(i4, i5);
    }

    public final void notifyItemRemoved(int i4) {
        this.mObservable.f(i4, 1);
    }

    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
    }

    public abstract void onBindViewHolder(E0 e02, int i4);

    public void onBindViewHolder(E0 e02, int i4, List list) {
        onBindViewHolder(e02, i4);
    }

    public abstract E0 onCreateViewHolder(RecyclerView recyclerView, int i4);

    public void onDetachedFromRecyclerView() {
    }

    public boolean onFailedToRecycleView(E0 e02) {
        return this instanceof WidgetsListAdapter;
    }

    public void onViewRecycled(E0 e02) {
    }

    public final void registerAdapterDataObserver(C0299v0 c0299v0) {
        this.mObservable.registerObserver(c0299v0);
    }

    public final void setHasStableIds(boolean z4) {
        if (this.mObservable.a()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.mHasStableIds = z4;
    }

    public final void unregisterAdapterDataObserver(C0299v0 c0299v0) {
        this.mObservable.unregisterObserver(c0299v0);
    }

    public final void notifyItemChanged(int i4) {
        this.mObservable.d(i4, 1, null);
    }

    public final void notifyItemRangeChanged() {
        this.mObservable.d(0, 2, null);
    }
}
