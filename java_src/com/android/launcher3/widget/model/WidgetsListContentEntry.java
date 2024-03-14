package com.android.launcher3.widget.model;

import com.android.launcher3.model.data.PackageItemInfo;
import java.util.List;
/* loaded from: classes.dex */
public final class WidgetsListContentEntry extends WidgetsListBaseEntry {
    private final int mMaxSpanSize;

    public WidgetsListContentEntry() {
        throw null;
    }

    public WidgetsListContentEntry(PackageItemInfo packageItemInfo, String str, List list, int i4) {
        super(packageItemInfo, str, list);
        this.mMaxSpanSize = i4;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof WidgetsListContentEntry) {
            WidgetsListContentEntry widgetsListContentEntry = (WidgetsListContentEntry) obj;
            return this.mWidgets.equals(widgetsListContentEntry.mWidgets) && this.mPkgItem.equals(widgetsListContentEntry.mPkgItem) && this.mTitleSectionName.equals(widgetsListContentEntry.mTitleSectionName) && this.mMaxSpanSize == widgetsListContentEntry.mMaxSpanSize;
        }
        return false;
    }

    public final int getMaxSpanSize() {
        return this.mMaxSpanSize;
    }

    public final String toString() {
        return "Content:" + this.mPkgItem.packageName + ":" + this.mWidgets.size() + " maxSpanSize: " + this.mMaxSpanSize;
    }

    public final WidgetsListContentEntry withMaxSpanSize(int i4) {
        if (this.mMaxSpanSize == i4) {
            return this;
        }
        return new WidgetsListContentEntry(this.mPkgItem, this.mTitleSectionName, this.mWidgets, i4);
    }
}
