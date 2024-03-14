package com.google.android.apps.nexuslauncher.allapps;

import android.content.Context;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.views.ActivityContext;
import com.google.android.apps.nexuslauncher.allapps.PinKeyboardSnackBar;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.v1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0708v1 {
    public static void a(ActivityContext activityContext) {
        if (FeatureFlags.IME_STICKY_SNACKBAR_EDU.get() && FeatureFlags.ENABLE_SHOW_KEYBOARD_OPTION_IN_ALL_APPS.get()) {
            Context context = (Context) activityContext;
            if (((C0700t1) C0700t1.f7208t.get(context)).f7217j.f7199v.f7220m) {
                return;
            }
            if (2 == context.getResources().getConfiguration().keyboard) {
                return;
            }
            LauncherPrefs.Companion companion = LauncherPrefs.Companion;
            int intValue = ((Integer) LauncherPrefs.Companion.get(context).get(C0719y0.f7256K)).intValue();
            if ((com.google.android.apps.nexuslauncher.c.f7325n.get() && intValue == PinKeyboardSnackBar.CloseAction.CLOSE_ACTION_DISMISS.closeAction) || intValue == PinKeyboardSnackBar.CloseAction.CLOSE_NO_ACTION.closeAction) {
                PinKeyboardSnackBar.a(activityContext);
            }
        }
    }
}
