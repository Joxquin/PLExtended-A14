package com.android.launcher3.widget.picker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.recyclerview.ViewHolderBinder;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.model.WidgetsListHeaderEntry;
import com.android.systemui.shared.R;
import java.util.List;
/* loaded from: classes.dex */
public final class WidgetsListHeaderViewHolderBinder implements ViewHolderBinder {
    private final boolean mIsTwoPane;
    private final LayoutInflater mLayoutInflater;
    private final OnHeaderClickListener mOnHeaderClickListener;

    public WidgetsListHeaderViewHolderBinder(LayoutInflater layoutInflater, OnHeaderClickListener onHeaderClickListener, boolean z4) {
        this.mLayoutInflater = layoutInflater;
        this.mOnHeaderClickListener = onHeaderClickListener;
        this.mIsTwoPane = z4;
    }

    public static /* synthetic */ void a(WidgetsListHeaderViewHolderBinder widgetsListHeaderViewHolderBinder, WidgetsListHeader widgetsListHeader, WidgetsListHeaderEntry widgetsListHeaderEntry) {
        widgetsListHeader.setExpanded(widgetsListHeaderViewHolderBinder.mIsTwoPane || !widgetsListHeader.isExpanded());
        ((WidgetsListAdapter) widgetsListHeaderViewHolderBinder.mOnHeaderClickListener).onHeaderClicked(widgetsListHeader.isExpanded(), PackageUserKey.fromPackageItemInfo(widgetsListHeaderEntry.mPkgItem));
    }

    @Override // com.android.launcher3.recyclerview.ViewHolderBinder
    public final void bindViewHolder(E0 e02, Object obj, int i4, List list) {
        final WidgetsListHeaderEntry widgetsListHeaderEntry = (WidgetsListHeaderEntry) obj;
        final WidgetsListHeader widgetsListHeader = ((WidgetsListHeaderHolder) e02).mWidgetsListHeader;
        widgetsListHeader.applyFromItemInfoWithIcon(widgetsListHeaderEntry);
        widgetsListHeader.setExpanded(widgetsListHeaderEntry.isWidgetListShown());
        boolean z4 = (i4 & 1) != 0;
        boolean z5 = (i4 & 2) != 0;
        widgetsListHeader.setListDrawableState((z4 && z5) ? WidgetsListDrawableState.SINGLE : z4 ? WidgetsListDrawableState.FIRST : z5 ? WidgetsListDrawableState.LAST : WidgetsListDrawableState.MIDDLE);
        widgetsListHeader.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.widget.picker.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WidgetsListHeaderViewHolderBinder.a(WidgetsListHeaderViewHolderBinder.this, widgetsListHeader, widgetsListHeaderEntry);
            }
        });
    }

    @Override // com.android.launcher3.recyclerview.ViewHolderBinder
    public final E0 newViewHolder(RecyclerView recyclerView) {
        return new WidgetsListHeaderHolder((WidgetsListHeader) this.mLayoutInflater.inflate(this.mIsTwoPane ? R.layout.widgets_list_row_header_two_pane : R.layout.widgets_list_row_header, (ViewGroup) recyclerView, false));
    }
}
