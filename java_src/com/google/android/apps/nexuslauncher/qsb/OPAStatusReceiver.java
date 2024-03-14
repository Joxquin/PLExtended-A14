package com.google.android.apps.nexuslauncher.qsb;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.android.launcher3.LauncherPrefs;
/* loaded from: classes.dex */
public class OPAStatusReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        LauncherPrefs.getDevicePrefs(context).edit().putBoolean("opa_enabled", intent.getBooleanExtra("OPA_ENABLED", false)).apply();
    }
}
