package com.android.launcher3.widget.picker;

import androidx.recyclerview.widget.AbstractC0287p;
import com.android.launcher3.widget.model.WidgetsListBaseEntry;
import java.util.List;
/* loaded from: classes.dex */
public final class WidgetsDiffCallback extends AbstractC0287p {
    private final List mNewEntries;
    private final List mOldEntries;

    public WidgetsDiffCallback(List list, List list2) {
        this.mOldEntries = list;
        this.mNewEntries = list2;
    }

    @Override // androidx.recyclerview.widget.AbstractC0287p
    public final boolean areContentsTheSame(int i4, int i5) {
        return false;
    }

    @Override // androidx.recyclerview.widget.AbstractC0287p
    public final boolean areItemsTheSame(int i4, int i5) {
        WidgetsListBaseEntry widgetsListBaseEntry = (WidgetsListBaseEntry) this.mOldEntries.get(i4);
        WidgetsListBaseEntry widgetsListBaseEntry2 = (WidgetsListBaseEntry) this.mNewEntries.get(i5);
        return widgetsListBaseEntry.getClass().equals(widgetsListBaseEntry2.getClass()) && widgetsListBaseEntry.mPkgItem.equals(widgetsListBaseEntry2.mPkgItem);
    }

    @Override // androidx.recyclerview.widget.AbstractC0287p
    public final int getNewListSize() {
        return this.mNewEntries.size();
    }

    @Override // androidx.recyclerview.widget.AbstractC0287p
    public final int getOldListSize() {
        return this.mOldEntries.size();
    }
}
