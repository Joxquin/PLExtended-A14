package com.android.launcher3;

import com.android.quickstep.util.ActivityInitListener;
/* loaded from: classes.dex */
public final class LauncherInitListener extends ActivityInitListener {
    public LauncherInitListener(com.android.quickstep.M m4) {
        super(m4, Launcher.ACTIVITY_TRACKER);
    }

    @Override // com.android.quickstep.util.ActivityInitListener
    public final boolean handleInit(BaseActivity baseActivity, boolean z4) {
        Launcher launcher = (Launcher) baseActivity;
        launcher.deferOverlayCallbacksUntilNextResumeOrStop();
        return super.handleInit(launcher, z4);
    }
}
