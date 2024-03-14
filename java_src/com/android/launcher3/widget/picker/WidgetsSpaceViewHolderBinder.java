package com.android.launcher3.widget.picker;

import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.recyclerview.ViewHolderBinder;
import com.android.launcher3.views.StickyHeaderLayout;
import com.android.launcher3.widget.model.WidgetListSpaceEntry;
import java.util.List;
import java.util.function.IntSupplier;
/* loaded from: classes.dex */
public final class WidgetsSpaceViewHolderBinder implements ViewHolderBinder {
    private final IntSupplier mEmptySpaceHeightProvider;

    public WidgetsSpaceViewHolderBinder(h hVar) {
        this.mEmptySpaceHeightProvider = hVar;
    }

    @Override // com.android.launcher3.recyclerview.ViewHolderBinder
    public final void bindViewHolder(E0 e02, Object obj, int i4, List list) {
        WidgetListSpaceEntry widgetListSpaceEntry = (WidgetListSpaceEntry) obj;
        ((StickyHeaderLayout.EmptySpaceView) e02.itemView).setFixedHeight(this.mEmptySpaceHeightProvider.getAsInt());
    }

    @Override // com.android.launcher3.recyclerview.ViewHolderBinder
    public final E0 newViewHolder(RecyclerView recyclerView) {
        return new E0(new StickyHeaderLayout.EmptySpaceView(recyclerView.getContext())) { // from class: com.android.launcher3.widget.picker.WidgetsSpaceViewHolderBinder.1
        };
    }
}
