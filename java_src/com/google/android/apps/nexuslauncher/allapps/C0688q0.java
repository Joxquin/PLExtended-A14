package com.google.android.apps.nexuslauncher.allapps;

import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.UserHandle;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtomExtensions$ExtendedContainers;
import java.util.List;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.q0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0688q0 extends C0649g1 {

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ Bundle f7152j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ List f7153k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ C0719y0 f7154l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0688q0(C0719y0 c0719y0, Icon icon, String str, UserHandle userHandle, CharSequence charSequence, boolean z4, boolean z5, Bundle bundle, List list) {
        super(icon, str, userHandle, charSequence, z4, z5);
        this.f7154l = c0719y0;
        this.f7152j = bundle;
        this.f7153k = list;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtom$ItemInfo.Builder getDefaultItemInfoBuilder() {
        LauncherAtom$ItemInfo.Builder defaultItemInfoBuilder = super.getDefaultItemInfoBuilder();
        defaultItemInfoBuilder.addAllItemAttributes(this.f7153k);
        return defaultItemInfoBuilder;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtomExtensions$ExtendedContainers getExtendedContainer() {
        return this.f7154l.i(this.f7152j);
    }
}
