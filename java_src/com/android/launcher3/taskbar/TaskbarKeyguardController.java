package com.android.launcher3.taskbar;

import android.app.KeyguardManager;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.systemui.shared.system.QuickStepContract;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public final class TaskbarKeyguardController implements TaskbarControllers.LoggableTaskbarController {
    private boolean mBouncerShowing;
    private final TaskbarActivityContext mContext;
    private final KeyguardManager mKeyguardManager;
    private int mKeyguardSysuiFlags;
    private NavbarButtonsViewController mNavbarButtonsViewController;

    public TaskbarKeyguardController(TaskbarActivityContext taskbarActivityContext) {
        this.mContext = taskbarActivityContext;
        this.mKeyguardManager = (KeyguardManager) taskbarActivityContext.getSystemService(KeyguardManager.class);
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarKeyguardController:");
        printWriter.println(str + "\tmKeyguardSysuiFlags=" + QuickStepContract.getSystemUiStateString(this.mKeyguardSysuiFlags));
        printWriter.println(str + "\tmBouncerShowing=" + this.mBouncerShowing);
    }

    public final void init(NavbarButtonsViewController navbarButtonsViewController) {
        this.mNavbarButtonsViewController = navbarButtonsViewController;
    }

    public final void updateStateForSysuiFlags(int i4) {
        int i5 = 811598792 & i4;
        if (i5 == this.mKeyguardSysuiFlags) {
            return;
        }
        this.mKeyguardSysuiFlags = i5;
        boolean z4 = (i4 & 8) != 0;
        boolean z5 = (i4 & 64) != 0;
        boolean z6 = (i4 & 512) != 0;
        boolean z7 = (2097152 & i4) != 0;
        this.mBouncerShowing = z4;
        this.mNavbarButtonsViewController.setKeyguardVisible(z5 || z7, z6);
        this.mNavbarButtonsViewController.setBackForBouncer(!((this.mKeyguardSysuiFlags & QuickStepContract.SYSUI_STATE_BACK_DISABLED) != 0) && this.mKeyguardManager.isDeviceSecure() && this.mBouncerShowing);
        if (z5 || ((268435456 & i4) == 0)) {
            AbstractFloatingView.closeOpenViews(this.mContext, (i4 & 805306368) != 0, AbstractFloatingView.TYPE_ALL);
        }
    }
}
