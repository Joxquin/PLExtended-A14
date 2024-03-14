package com.android.launcher3.widget.model;

import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.widget.WidgetItemComparator;
import java.util.List;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public abstract class WidgetsListBaseEntry {
    public final PackageItemInfo mPkgItem;
    public final String mTitleSectionName;
    public final List mWidgets;

    public WidgetsListBaseEntry(PackageItemInfo packageItemInfo, String str, List list) {
        this.mPkgItem = packageItemInfo;
        this.mTitleSectionName = str;
        this.mWidgets = (List) list.stream().sorted(new WidgetItemComparator()).collect(Collectors.toList());
    }
}
