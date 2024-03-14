package com.google.android.apps.nexuslauncher.allapps;

import android.content.Context;
import android.content.pm.ShortcutInfo;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtomExtensions$ExtendedContainers;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.List;
/* loaded from: classes.dex */
public final class O1 extends WorkspaceItemInfo {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ List f6658d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ SearchResultIcon f6659e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public O1(SearchResultIcon searchResultIcon, ShortcutInfo shortcutInfo, Context context, List list) {
        super(context, shortcutInfo);
        this.f6659e = searchResultIcon;
        this.f6658d = list;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtom$ItemInfo.Builder getDefaultItemInfoBuilder() {
        LauncherAtom$ItemInfo.Builder defaultItemInfoBuilder = super.getDefaultItemInfoBuilder();
        defaultItemInfoBuilder.addAllItemAttributes(this.f6658d);
        return defaultItemInfoBuilder;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtomExtensions$ExtendedContainers getExtendedContainer() {
        SearchResultIcon searchResultIcon = this.f6659e;
        return searchResultIcon.f6730d.i(searchResultIcon.u());
    }
}
