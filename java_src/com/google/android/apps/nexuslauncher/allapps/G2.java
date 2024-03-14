package com.google.android.apps.nexuslauncher.allapps;

import android.content.pm.ShortcutInfo;
import android.os.Bundle;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.PendingAddWidgetInfo;
import com.android.launcher3.widget.WidgetAddFlowHandler;
import com.android.systemui.shared.system.PeopleProviderUtils;
/* loaded from: classes.dex */
public final class G2 extends PendingAddWidgetInfo {
    public G2(LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, ShortcutInfo shortcutInfo) {
        super(launcherAppWidgetProviderInfo, -104);
        Bundle bundle = new Bundle();
        this.bindOptions = bundle;
        bundle.putString(PeopleProviderUtils.EXTRAS_KEY_PACKAGE_NAME, shortcutInfo.getPackage());
        this.bindOptions.putString(PeopleProviderUtils.EXTRAS_KEY_SHORTCUT_ID, shortcutInfo.getId());
        this.bindOptions.putInt("user_id", shortcutInfo.getUserHandle().getIdentifier());
        this.bindOptions.putParcelable(PeopleProviderUtils.EXTRAS_KEY_USER_HANDLE, shortcutInfo.getUserHandle());
    }

    @Override // com.android.launcher3.widget.PendingAddWidgetInfo
    public final WidgetAddFlowHandler getHandler() {
        return new F2(this.info);
    }
}
