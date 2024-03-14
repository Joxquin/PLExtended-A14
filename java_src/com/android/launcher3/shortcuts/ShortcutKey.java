package com.android.launcher3.shortcuts;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.ComponentKey;
import com.android.systemui.shared.system.PeopleProviderUtils;
/* loaded from: classes.dex */
public final class ShortcutKey extends ComponentKey {
    public ShortcutKey(String str, UserHandle userHandle, String str2) {
        super(new ComponentName(str, str2), userHandle);
    }

    public static ShortcutKey fromInfo(ShortcutInfo shortcutInfo) {
        return new ShortcutKey(shortcutInfo.getPackage(), shortcutInfo.getUserHandle(), shortcutInfo.getId());
    }

    public static ShortcutKey fromIntent(Intent intent, UserHandle userHandle) {
        return new ShortcutKey(intent.getPackage(), userHandle, intent.getStringExtra(PeopleProviderUtils.EXTRAS_KEY_SHORTCUT_ID));
    }

    public static ShortcutKey fromItemInfo(ItemInfo itemInfo) {
        return fromIntent(itemInfo.getIntent(), itemInfo.user);
    }

    public static Intent makeIntent(String str, String str2) {
        return new Intent("android.intent.action.MAIN").addCategory("com.android.launcher3.DEEP_SHORTCUT").setPackage(str2).setFlags(270532608).putExtra(PeopleProviderUtils.EXTRAS_KEY_SHORTCUT_ID, str);
    }
}
