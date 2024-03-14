package com.android.launcher3.util;

import com.android.launcher3.Utilities;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
/* loaded from: classes.dex */
public final class ShortcutUtil {
    public static String[] getPersonKeysIfPinnedShortcut(ItemInfo itemInfo) {
        return (isActive(itemInfo) && isPinnedShortcut(itemInfo)) ? ((WorkspaceItemInfo) itemInfo).getPersonKeys() : Utilities.EMPTY_STRING_ARRAY;
    }

    public static String getShortcutIdIfPinnedShortcut(ItemInfo itemInfo) {
        if (isActive(itemInfo) && isPinnedShortcut(itemInfo)) {
            return ShortcutKey.fromItemInfo(itemInfo).componentName.getClassName();
        }
        return null;
    }

    private static boolean isActive(ItemInfo itemInfo) {
        return (((itemInfo instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) itemInfo).hasPromiseIconUi()) || itemInfo.isDisabled()) ? false : true;
    }

    private static boolean isPinnedShortcut(ItemInfo itemInfo) {
        return itemInfo.itemType == 6 && itemInfo.container != -1 && (itemInfo instanceof WorkspaceItemInfo);
    }

    public static boolean supportsDeepShortcuts(ItemInfo itemInfo) {
        if (isActive(itemInfo)) {
            return itemInfo.itemType == 0;
        }
        return false;
    }

    public static boolean supportsShortcuts(ItemInfo itemInfo) {
        if (isActive(itemInfo)) {
            return (itemInfo.itemType == 0) || isPinnedShortcut(itemInfo);
        }
        return false;
    }
}
