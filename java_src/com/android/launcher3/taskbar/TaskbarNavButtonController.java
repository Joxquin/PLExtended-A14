package com.android.launcher3.taskbar;

import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.statehandlers.DesktopVisibilityController;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.testing.TestLogging;
import com.android.quickstep.LauncherActivityInterface;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.TaskUtils;
import com.android.quickstep.TouchInteractionService;
import com.android.quickstep.util.AssistUtils;
import com.android.quickstep.views.DesktopTaskView;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public final class TaskbarNavButtonController implements TaskbarControllers.LoggableTaskbarController {
    private final AssistUtils mAssistUtils;
    private boolean mAssistantLongPressEnabled;
    private final Handler mHandler;
    private long mLastScreenPinLongPress;
    private int mLongPressedButtons = 0;
    private final RunnableC0453s0 mResetLongPress = new Runnable() { // from class: com.android.launcher3.taskbar.s0
        @Override // java.lang.Runnable
        public final void run() {
            TaskbarNavButtonController.a(TaskbarNavButtonController.this);
        }
    };
    private boolean mScreenPinned;
    private final TouchInteractionService mService;
    private StatsLogManager mStatsLogManager;
    private final SystemUiProxy mSystemUiProxy;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.launcher3.taskbar.s0] */
    public TaskbarNavButtonController(TouchInteractionService touchInteractionService, SystemUiProxy systemUiProxy, Handler handler, AssistUtils assistUtils) {
        this.mService = touchInteractionService;
        this.mSystemUiProxy = systemUiProxy;
        this.mHandler = handler;
        this.mAssistUtils = assistUtils;
    }

    public static void a(TaskbarNavButtonController taskbarNavButtonController) {
        taskbarNavButtonController.mLongPressedButtons = 0;
        taskbarNavButtonController.mLastScreenPinLongPress = 0L;
    }

    private boolean backRecentsLongpress(int i4) {
        this.mLongPressedButtons = i4 | this.mLongPressedButtons;
        long currentTimeMillis = System.currentTimeMillis();
        if (this.mScreenPinned) {
            long j4 = this.mLastScreenPinLongPress;
            int i5 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
            RunnableC0453s0 runnableC0453s0 = this.mResetLongPress;
            Handler handler = this.mHandler;
            if (i5 == 0) {
                this.mLastScreenPinLongPress = System.currentTimeMillis();
                handler.postDelayed(runnableC0453s0, 300L);
            } else if (currentTimeMillis - j4 > 200) {
                this.mLongPressedButtons = 0;
                this.mLastScreenPinLongPress = 0L;
                return false;
            } else if ((this.mLongPressedButtons & 5) == 5) {
                this.mSystemUiProxy.stopScreenPinning();
                handler.removeCallbacks(runnableC0453s0);
                this.mLongPressedButtons = 0;
                this.mLastScreenPinLongPress = 0L;
            }
            return true;
        }
        return false;
    }

    private void logEvent(StatsLogManager.LauncherEvent launcherEvent) {
        StatsLogManager statsLogManager = this.mStatsLogManager;
        if (statsLogManager == null) {
            Log.w("TaskbarNavButtonController", "No stats log manager to log taskbar button event");
        } else {
            statsLogManager.logger().log(launcherEvent);
        }
    }

    @Override // com.android.launcher3.taskbar.TaskbarControllers.LoggableTaskbarController
    public final void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(str + "TaskbarNavButtonController:");
        printWriter.println(str + "\tmLastScreenPinLongPress=" + this.mLastScreenPinLongPress);
        printWriter.println(str + "\tmScreenPinned=" + this.mScreenPinned);
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mStatsLogManager = taskbarControllers.getTaskbarActivityContext().getStatsLogManager();
    }

    public final void onButtonClick(View view, int i4) {
        DesktopVisibilityController desktopVisibilityController;
        view.performHapticFeedback(1);
        SystemUiProxy systemUiProxy = this.mSystemUiProxy;
        if (i4 == 1) {
            logEvent(StatsLogManager.LauncherEvent.LAUNCHER_TASKBAR_BACK_BUTTON_TAP);
            systemUiProxy.onBackPressed();
            return;
        }
        TouchInteractionService touchInteractionService = this.mService;
        if (i4 == 2) {
            logEvent(StatsLogManager.LauncherEvent.LAUNCHER_TASKBAR_HOME_BUTTON_TAP);
            TaskUtils.closeSystemWindowsAsync(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_HOME_KEY);
            if (DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED && (desktopVisibilityController = LauncherActivityInterface.INSTANCE.getDesktopVisibilityController()) != null) {
                desktopVisibilityController.onHomeActionTriggered();
            }
            touchInteractionService.getOverviewCommandHelper().addCommand(5);
        } else if (i4 == 4) {
            logEvent(StatsLogManager.LauncherEvent.LAUNCHER_TASKBAR_OVERVIEW_BUTTON_TAP);
            if (this.mScreenPinned) {
                return;
            }
            TestLogging.recordEvent("Main", "onOverviewToggle");
            TaskUtils.closeSystemWindowsAsync(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
            touchInteractionService.getOverviewCommandHelper().addCommand(4);
        } else if (i4 == 8) {
            logEvent(StatsLogManager.LauncherEvent.LAUNCHER_TASKBAR_IME_SWITCHER_BUTTON_TAP);
            systemUiProxy.onImeSwitcherPressed();
        } else if (i4 == 16) {
            logEvent(StatsLogManager.LauncherEvent.LAUNCHER_TASKBAR_A11Y_BUTTON_TAP);
            systemUiProxy.notifyAccessibilityButtonClicked(touchInteractionService.getDisplayId());
        } else if (i4 == 32) {
            systemUiProxy.toggleNotificationPanel();
        } else if (i4 != 64) {
        } else {
            systemUiProxy.toggleNotificationPanel();
        }
    }

    public final boolean onButtonLongClick(View view, int i4) {
        view.performHapticFeedback(1);
        if (i4 == 1) {
            logEvent(StatsLogManager.LauncherEvent.LAUNCHER_TASKBAR_BACK_BUTTON_LONGPRESS);
            return backRecentsLongpress(i4);
        }
        SystemUiProxy systemUiProxy = this.mSystemUiProxy;
        if (i4 != 2) {
            if (i4 == 4) {
                logEvent(StatsLogManager.LauncherEvent.LAUNCHER_TASKBAR_OVERVIEW_BUTTON_LONGPRESS);
                return backRecentsLongpress(i4);
            } else if (i4 != 16) {
                return false;
            } else {
                logEvent(StatsLogManager.LauncherEvent.LAUNCHER_TASKBAR_A11Y_BUTTON_LONGPRESS);
                systemUiProxy.notifyAccessibilityButtonLongClicked();
                return true;
            }
        }
        logEvent(StatsLogManager.LauncherEvent.LAUNCHER_TASKBAR_HOME_BUTTON_LONGPRESS);
        if (!this.mScreenPinned && this.mAssistantLongPressEnabled && !this.mAssistUtils.tryStartAssistOverride(5)) {
            Bundle bundle = new Bundle();
            bundle.putInt("invocation_type", 5);
            systemUiProxy.startAssistant(bundle);
        }
        return true;
    }

    public final void onDestroy() {
        this.mStatsLogManager = null;
    }

    public final void setAssistantLongPressEnabled(boolean z4) {
        this.mAssistantLongPressEnabled = z4;
    }

    public final void updateSysuiFlags(int i4) {
        this.mScreenPinned = (i4 & 1) != 0;
    }
}
