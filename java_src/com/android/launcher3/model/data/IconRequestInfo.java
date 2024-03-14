package com.android.launcher3.model.data;

import android.content.Context;
import android.content.pm.LauncherActivityInfo;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.android.launcher3.icons.LauncherIcons;
/* loaded from: classes.dex */
public final class IconRequestInfo {
    public final byte[] iconBlob;
    public final ItemInfoWithIcon itemInfo;
    public final LauncherActivityInfo launcherActivityInfo;
    public final boolean useLowResIcon;

    public IconRequestInfo() {
        throw null;
    }

    public IconRequestInfo(ItemInfoWithIcon itemInfoWithIcon, LauncherActivityInfo launcherActivityInfo, byte[] bArr, boolean z4) {
        this.itemInfo = itemInfoWithIcon;
        this.launcherActivityInfo = launcherActivityInfo;
        this.iconBlob = bArr;
        this.useLowResIcon = z4;
    }

    public final boolean loadWorkspaceIcon(Context context) {
        ItemInfoWithIcon itemInfoWithIcon = this.itemInfo;
        if (!(itemInfoWithIcon instanceof WorkspaceItemInfo)) {
            throw new IllegalStateException("loadWorkspaceIcon should only be use for a WorkspaceItemInfos: " + itemInfoWithIcon);
        }
        try {
            LauncherIcons obtain = LauncherIcons.obtain(context);
            WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfoWithIcon;
            byte[] bArr = this.iconBlob;
            if (bArr == null) {
                obtain.recycle();
                return false;
            }
            workspaceItemInfo.bitmap = obtain.createIconBitmap(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
            obtain.recycle();
            return true;
        } catch (Exception e4) {
            Log.e("IconRequestInfo", "Failed to decode byte array for info " + itemInfoWithIcon, e4);
            return false;
        }
    }
}
