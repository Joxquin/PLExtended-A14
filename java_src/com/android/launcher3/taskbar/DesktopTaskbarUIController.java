package com.android.launcher3.taskbar;

import com.android.launcher3.uioverrides.QuickstepLauncher;
/* loaded from: classes.dex */
public final class DesktopTaskbarUIController extends TaskbarUIController {
    private final QuickstepLauncher mLauncher;

    public DesktopTaskbarUIController(QuickstepLauncher quickstepLauncher) {
        this.mLauncher = quickstepLauncher;
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
        this.mLauncher.getHotseat().setIconsAlpha(0.0f);
        this.mControllers.taskbarViewController.updateRunningApps();
    }

    @Override // com.android.launcher3.taskbar.TaskbarUIController
    public final void onDestroy() {
        this.mControllers = null;
        this.mLauncher.getHotseat().setIconsAlpha(1.0f);
    }
}
