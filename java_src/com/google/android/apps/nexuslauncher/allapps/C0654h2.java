package com.google.android.apps.nexuslauncher.allapps;

import android.app.blob.BlobHandle;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.UserHandle;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import java.util.List;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.h2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0654h2 extends C0658i2 {

    /* renamed from: m  reason: collision with root package name */
    public final /* synthetic */ Bundle f7084m;

    /* renamed from: n  reason: collision with root package name */
    public final /* synthetic */ SearchResultThumbnailView f7085n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0654h2(SearchResultThumbnailView searchResultThumbnailView, Icon icon, String str, UserHandle userHandle, CharSequence charSequence, BlobHandle blobHandle, List list, Bundle bundle) {
        super(searchResultThumbnailView, icon, str, userHandle, charSequence, blobHandle, list);
        this.f7085n = searchResultThumbnailView;
        this.f7084m = bundle;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final LauncherAtom$ContainerInfo getContainerInfo() {
        LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
        newBuilder.setExtendedContainers(this.f7085n.f6818d.i(this.f7084m));
        return (LauncherAtom$ContainerInfo) newBuilder.build();
    }
}
