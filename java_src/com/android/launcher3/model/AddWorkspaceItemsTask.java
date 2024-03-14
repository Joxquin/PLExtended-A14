package com.android.launcher3.model;

import android.content.Intent;
import android.os.UserHandle;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.PackageManagerHelper;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class AddWorkspaceItemsTask extends BaseModelUpdateTask {
    private final List mItemList;
    private final WorkspaceItemSpaceFinder mItemSpaceFinder;

    public AddWorkspaceItemsTask(List list) {
        WorkspaceItemSpaceFinder workspaceItemSpaceFinder = new WorkspaceItemSpaceFinder();
        this.mItemList = list;
        this.mItemSpaceFinder = workspaceItemSpaceFinder;
    }

    public static boolean shortcutExists(BgDataModel bgDataModel, Intent intent, UserHandle userHandle) {
        String uri;
        String uri2;
        String uri3;
        if (intent == null) {
            return true;
        }
        String str = null;
        if (intent.getComponent() != null) {
            String packageName = intent.getComponent().getPackageName();
            if (intent.getPackage() != null) {
                uri = intent.toUri(0);
                uri3 = new Intent(intent).setPackage(null).toUri(0);
            } else {
                uri = new Intent(intent).setPackage(packageName).toUri(0);
                uri3 = intent.toUri(0);
            }
            String str2 = uri3;
            str = packageName;
            uri2 = str2;
        } else {
            uri = intent.toUri(0);
            uri2 = intent.toUri(0);
        }
        boolean isLauncherAppTarget = PackageManagerHelper.isLauncherAppTarget(intent);
        synchronized (bgDataModel) {
            Iterator it = bgDataModel.itemsIdMap.iterator();
            while (it.hasNext()) {
                ItemInfo itemInfo = (ItemInfo) it.next();
                if (itemInfo instanceof WorkspaceItemInfo) {
                    WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                    if (itemInfo.getIntent() != null && workspaceItemInfo.user.equals(userHandle)) {
                        Intent intent2 = new Intent(itemInfo.getIntent());
                        intent2.setSourceBounds(intent.getSourceBounds());
                        String uri4 = intent2.toUri(0);
                        if (!uri.equals(uri4) && !uri2.equals(uri4)) {
                            if (isLauncherAppTarget && workspaceItemInfo.hasStatusFlag(3) && workspaceItemInfo.hasStatusFlag(2) && workspaceItemInfo.getTargetComponent() != null && str != null && str.equals(workspaceItemInfo.getTargetComponent().getPackageName())) {
                                return true;
                            }
                        }
                        return true;
                    }
                }
            }
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f1 A[Catch: all -> 0x01b6, TryCatch #0 {all -> 0x01b6, blocks: (B:7:0x0018, B:8:0x0027, B:10:0x002d, B:12:0x003b, B:15:0x0048, B:18:0x005a, B:20:0x005e, B:22:0x0062, B:24:0x006e, B:25:0x0072, B:26:0x0090, B:28:0x0096, B:30:0x00b7, B:32:0x00bb, B:35:0x00c0, B:37:0x00c4, B:41:0x00d9, B:43:0x00de, B:45:0x00e8, B:47:0x00f1, B:51:0x00fe, B:53:0x010a, B:54:0x0122, B:56:0x012d, B:65:0x014a, B:68:0x0170, B:63:0x013c, B:69:0x018b, B:38:0x00d0, B:39:0x00d7, B:72:0x01b8), top: B:79:0x0018 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00fe A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7, types: [java.lang.Object] */
    @Override // com.android.launcher3.model.BaseModelUpdateTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void execute(com.android.launcher3.LauncherAppState r22, com.android.launcher3.model.BgDataModel r23, com.android.launcher3.model.AllAppsList r24) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.AddWorkspaceItemsTask.execute(com.android.launcher3.LauncherAppState, com.android.launcher3.model.BgDataModel, com.android.launcher3.model.AllAppsList):void");
    }
}
