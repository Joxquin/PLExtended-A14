package com.android.launcher3.widget.model;

import android.content.Context;
import com.android.launcher3.model.data.PackageItemInfo;
import h1.C0965a;
import java.util.List;
/* loaded from: classes.dex */
public final class WidgetsListHeaderEntry extends WidgetsListBaseEntry {
    private final boolean mIsSearchEntry;
    private final boolean mIsWidgetListShown;
    private static final C0965a SUBTITLE_SEARCH = new C0965a(0);
    private static final C0965a SUBTITLE_DEFAULT = new C0965a(1);

    private WidgetsListHeaderEntry(PackageItemInfo packageItemInfo, String str, List list, boolean z4, boolean z5) {
        super(packageItemInfo, str, list);
        this.mIsSearchEntry = z4;
        this.mIsWidgetListShown = z5;
    }

    public static WidgetsListHeaderEntry create(PackageItemInfo packageItemInfo, String str, List list) {
        return new WidgetsListHeaderEntry(packageItemInfo, str, list, false, false);
    }

    public static WidgetsListHeaderEntry createForSearch(PackageItemInfo packageItemInfo, String str, List list) {
        return new WidgetsListHeaderEntry(packageItemInfo, str, list, true, false);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof WidgetsListHeaderEntry) {
            WidgetsListHeaderEntry widgetsListHeaderEntry = (WidgetsListHeaderEntry) obj;
            return this.mWidgets.equals(widgetsListHeaderEntry.mWidgets) && this.mPkgItem.equals(widgetsListHeaderEntry.mPkgItem) && this.mTitleSectionName.equals(widgetsListHeaderEntry.mTitleSectionName) && this.mIsWidgetListShown == widgetsListHeaderEntry.mIsWidgetListShown && this.mIsSearchEntry == widgetsListHeaderEntry.mIsSearchEntry;
        }
        return false;
    }

    public final String getSubtitle(Context context) {
        return (String) (this.mIsSearchEntry ? SUBTITLE_SEARCH : SUBTITLE_DEFAULT).apply(context, this);
    }

    public final boolean isWidgetListShown() {
        return this.mIsWidgetListShown;
    }

    public final String toString() {
        return "Header:" + this.mPkgItem.packageName + ":" + this.mWidgets.size();
    }

    public final WidgetsListHeaderEntry withWidgetListShown() {
        return this.mIsWidgetListShown ? this : new WidgetsListHeaderEntry(this.mPkgItem, this.mTitleSectionName, this.mWidgets, this.mIsSearchEntry, true);
    }
}
