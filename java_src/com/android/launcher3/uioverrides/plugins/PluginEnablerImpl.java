package com.android.launcher3.uioverrides.plugins;

import X.AbstractC0101y;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import com.android.launcher3.LauncherPrefs;
import com.android.systemui.shared.plugins.PluginEnabler;
/* loaded from: classes.dex */
public final class PluginEnablerImpl extends AbstractC0101y implements PluginEnabler {
    private final SharedPreferences mSharedPrefs;

    public PluginEnablerImpl(Context context) {
        this.mSharedPrefs = LauncherPrefs.getDevicePrefs(context);
    }

    public static String pluginEnabledKey(ComponentName componentName) {
        return "PLUGIN_ENABLED_" + componentName.flattenToString();
    }

    @Override // X.AbstractC0101y
    public final boolean getBoolean(String str, boolean z4) {
        return this.mSharedPrefs.getBoolean(str, z4);
    }

    @Override // com.android.systemui.shared.plugins.PluginEnabler
    public final int getDisableReason(ComponentName componentName) {
        return !getBoolean(pluginEnabledKey(componentName), true);
    }

    @Override // com.android.systemui.shared.plugins.PluginEnabler
    public final boolean isEnabled(ComponentName componentName) {
        return getBoolean(pluginEnabledKey(componentName), true);
    }

    @Override // X.AbstractC0101y
    public final void putBoolean(String str, boolean z4) {
        this.mSharedPrefs.edit().putBoolean(str, z4).apply();
    }

    @Override // com.android.systemui.shared.plugins.PluginEnabler
    public final void setDisabled(ComponentName componentName, int i4) {
        putBoolean(pluginEnabledKey(componentName), i4 == 0);
    }

    @Override // com.android.systemui.shared.plugins.PluginEnabler
    public final void setEnabled(ComponentName componentName) {
        putBoolean(pluginEnabledKey(componentName), true);
    }
}
