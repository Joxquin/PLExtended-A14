package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtomExtensions$ExtendedContainers;
import com.android.launcher3.model.data.AppInfo;
import java.util.List;
/* loaded from: classes.dex */
public final class N1 extends AppInfo {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ List f6637d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ SearchResultIcon f6638e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N1(SearchResultIcon searchResultIcon, AppInfo appInfo, List list) {
        super(appInfo);
        this.f6638e = searchResultIcon;
        this.f6637d = list;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtom$ItemInfo.Builder getDefaultItemInfoBuilder() {
        LauncherAtom$ItemInfo.Builder defaultItemInfoBuilder = super.getDefaultItemInfoBuilder();
        defaultItemInfoBuilder.addAllItemAttributes(this.f6637d);
        return defaultItemInfoBuilder;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtomExtensions$ExtendedContainers getExtendedContainer() {
        SearchResultIcon searchResultIcon = this.f6638e;
        return searchResultIcon.f6730d.i(searchResultIcon.u());
    }
}
