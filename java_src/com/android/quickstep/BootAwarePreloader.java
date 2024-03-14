package com.android.quickstep;

import android.content.Context;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.LauncherPrefsKt;
import com.android.launcher3.util.LockedUserState;
import com.android.launcher3.util.MainThreadInitializedObject;
/* loaded from: classes.dex */
public final class BootAwarePreloader {
    public static final BootAwarePreloader INSTANCE = new BootAwarePreloader();
    private static final String TAG = "BootAwarePreloader";

    private BootAwarePreloader() {
    }

    public static final void start(Context context) {
        kotlin.jvm.internal.h.e(context, "context");
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        LauncherPrefs.Companion.get(context);
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        if (LockedUserState.Companion.get(context).isUserUnlocked()) {
            return;
        }
        int i4 = LauncherPrefsKt.f4461a;
    }
}
