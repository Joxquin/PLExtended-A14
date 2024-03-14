package com.android.launcher3.taskbar;

import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.util.FlagDebugUtils;
import com.android.quickstep.SystemUiProxy;
import java.io.PrintWriter;
import java.util.StringJoiner;
/* loaded from: classes.dex */
public final class TaskbarAutohideSuspendController implements TaskbarControllers.LoggableTaskbarController {
    private final TaskbarActivityContext mActivity;
    private int mAutohideSuspendFlags = 0;
    private final SystemUiProxy mSystemUiProxy;

    public TaskbarAutohideSuspendController(TaskbarActivityContext taskbarActivityContext) {
        this.mActivity = taskbarActivityContext;
        this.mSystemUiProxy = (SystemUiProxy) SystemUiProxy.INSTANCE.get(taskbarActivityContext);
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarAutohideSuspendController:");
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("\tmAutohideSuspendFlags=");
        int i4 = this.mAutohideSuspendFlags;
        StringJoiner stringJoiner = new StringJoiner("|");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 1, "FLAG_AUTOHIDE_SUSPEND_FULLSCREEN");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 2, "FLAG_AUTOHIDE_SUSPEND_DRAGGING");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 4, "FLAG_AUTOHIDE_SUSPEND_TOUCHING");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 8, "FLAG_AUTOHIDE_SUSPEND_EDU_OPEN");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 16, "FLAG_AUTOHIDE_SUSPEND_IN_LAUNCHER");
        FlagDebugUtils.appendFlag(stringJoiner, i4, 32, "FLAG_AUTOHIDE_SUSPEND_TRANSIENT_TASKBAR");
        sb.append(stringJoiner.toString());
        printWriter.println(sb.toString());
    }

    public final boolean isSuspendedForTransientTaskbarInLauncher() {
        return (this.mAutohideSuspendFlags & 16) != 0;
    }

    public final boolean isTransientTaskbarStashingSuspended() {
        return (this.mAutohideSuspendFlags & (-33)) != 0;
    }

    public final void onDestroy() {
        this.mSystemUiProxy.notifyTaskbarAutohideSuspend(false);
    }

    public final void updateFlag(int i4, boolean z4) {
        int i5 = this.mAutohideSuspendFlags;
        if (z4) {
            this.mAutohideSuspendFlags = i4 | i5;
        } else {
            this.mAutohideSuspendFlags = (~i4) & i5;
        }
        int i6 = this.mAutohideSuspendFlags;
        if (i5 == i6) {
            return;
        }
        this.mSystemUiProxy.notifyTaskbarAutohideSuspend(i6 != 0);
        this.mActivity.onTransientAutohideSuspendFlagChanged(isTransientTaskbarStashingSuspended());
    }
}
