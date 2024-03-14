package com.android.quickstep;

import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.LauncherPrefsKt;
/* loaded from: classes.dex */
final class BootAwarePreloader$start$1 implements Runnable {
    final /* synthetic */ LauncherPrefs $lp;

    public BootAwarePreloader$start$1(LauncherPrefs launcherPrefs) {
        this.$lp = launcherPrefs;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.$lp.getClass();
        int i4 = LauncherPrefsKt.f4461a;
    }
}
