package com.android.launcher3.dragndrop;

import com.android.launcher3.Alarm;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.OnAlarmListener;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
/* loaded from: classes.dex */
public final class SpringLoadedDragController implements OnAlarmListener {
    Alarm mAlarm;
    private Launcher mLauncher;
    private CellLayout mScreen;

    public SpringLoadedDragController(Launcher launcher) {
        this.mLauncher = launcher;
        Alarm alarm = new Alarm();
        this.mAlarm = alarm;
        alarm.setOnAlarmListener(this);
    }

    public final void cancel() {
        this.mAlarm.cancelAlarm();
    }

    @Override // com.android.launcher3.OnAlarmListener
    public final void onAlarm(Alarm alarm) {
        if (this.mScreen == null) {
            this.mLauncher.getDragController().cancelDrag();
            return;
        }
        Workspace workspace = this.mLauncher.getWorkspace();
        if (workspace.isVisible(this.mScreen)) {
            return;
        }
        workspace.snapToPage(workspace.indexOfChild(this.mScreen));
    }

    public final void setAlarm(CellLayout cellLayout) {
        this.mAlarm.cancelAlarm();
        this.mAlarm.setAlarm(cellLayout == null ? 950L : Utilities.isRunningInTestHarness() ? 2000L : 500L);
        this.mScreen = cellLayout;
    }
}
