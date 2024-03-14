package com.android.launcher3.taskbar.overlay;

import a1.C0157b;
import a1.c;
import a1.d;
import android.content.ComponentName;
import android.content.Context;
import android.view.MotionEvent;
import android.view.WindowManager;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherState;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import java.util.Optional;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final class TaskbarOverlayController {
    private TaskbarControllers mControllers;
    private DeviceProfile mLauncherDeviceProfile;
    private final WindowManager.LayoutParams mLayoutParams;
    private TaskbarOverlayContext mOverlayContext;
    private final TaskbarActivityContext mTaskbarContext;
    private final Context mWindowContext;
    private final TaskStackChangeListener mTaskStackListener = new TaskStackChangeListener() { // from class: com.android.launcher3.taskbar.overlay.TaskbarOverlayController.1
        {
            TaskbarOverlayController.this = this;
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public final void onTaskCreated(int i4, ComponentName componentName) {
            TaskbarOverlayController.this.hideWindow();
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public final void onTaskMovedToFront(int i4) {
            TaskbarOverlayController.this.hideWindow();
        }
    };
    private final TaskbarOverlayProxyView mProxyView = new TaskbarOverlayProxyView();

    /* loaded from: classes.dex */
    public final class TaskbarOverlayProxyView extends AbstractFloatingView {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TaskbarOverlayProxyView() {
            super(r2.mTaskbarContext, null);
            TaskbarOverlayController.this = r2;
        }

        public static void a(TaskbarOverlayProxyView taskbarOverlayProxyView) {
            taskbarOverlayProxyView.mIsOpen = true;
            TaskbarOverlayController.this.mTaskbarContext.getDragLayer().addView(taskbarOverlayProxyView);
        }

        @Override // com.android.launcher3.AbstractFloatingView
        public final void handleClose(final boolean z4) {
            TaskbarOverlayController.this.mTaskbarContext.getDragLayer().removeView(this);
            Optional.ofNullable(TaskbarOverlayController.this.mOverlayContext).ifPresent(new Consumer() { // from class: a1.e
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    AbstractFloatingView.closeAllOpenViews((TaskbarOverlayContext) obj, z4);
                }
            });
        }

        @Override // com.android.launcher3.AbstractFloatingView
        public final boolean isOfType(int i4) {
            return (1048576 & i4) != 0;
        }

        @Override // com.android.launcher3.util.TouchController
        public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
            return false;
        }
    }

    public TaskbarOverlayController(TaskbarActivityContext taskbarActivityContext, DeviceProfile deviceProfile) {
        this.mTaskbarContext = taskbarActivityContext;
        this.mWindowContext = taskbarActivityContext.createWindowContext(2038, null);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(2038, QuickStepContract.SYSUI_STATE_BUBBLES_MANAGE_MENU_EXPANDED, -3);
        layoutParams.setTitle("Taskbar Overlay");
        layoutParams.gravity = 80;
        layoutParams.packageName = taskbarActivityContext.getPackageName();
        layoutParams.setFitInsetsTypes(0);
        layoutParams.layoutInDisplayCutoutMode = 3;
        layoutParams.setSystemApplicationOverlay(true);
        this.mLayoutParams = layoutParams;
        this.mLauncherDeviceProfile = deviceProfile;
    }

    public final int getCloseDuration() {
        return LauncherState.ALL_APPS.getTransitionDuration(this.mTaskbarContext, false);
    }

    public final DeviceProfile getLauncherDeviceProfile() {
        return this.mLauncherDeviceProfile;
    }

    public final int getOpenDuration() {
        return LauncherState.ALL_APPS.getTransitionDuration(this.mTaskbarContext, true);
    }

    public final void hideWindow() {
        this.mProxyView.close(true);
    }

    public final void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
    }

    public final void maybeCloseWindow() {
        TaskbarOverlayContext taskbarOverlayContext = this.mOverlayContext;
        if (taskbarOverlayContext == null || !(AbstractFloatingView.hasOpenView(taskbarOverlayContext, AbstractFloatingView.TYPE_ALL) || this.mOverlayContext.getDragController().isSystemDragInProgress())) {
            this.mProxyView.close(false);
            onDestroy();
        }
    }

    public final void onDestroy() {
        TaskStackChangeListeners.getInstance().unregisterTaskStackListener(this.mTaskStackListener);
        Optional.ofNullable(this.mOverlayContext).map(new C0157b()).ifPresent(new c(this, 0));
        this.mOverlayContext = null;
    }

    public final TaskbarOverlayContext requestWindow() {
        if (this.mOverlayContext == null) {
            this.mOverlayContext = new TaskbarOverlayContext(this.mWindowContext, this.mTaskbarContext, this.mControllers);
        }
        TaskbarOverlayProxyView taskbarOverlayProxyView = this.mProxyView;
        if (!taskbarOverlayProxyView.isOpen()) {
            TaskbarOverlayProxyView.a(taskbarOverlayProxyView);
            Optional.ofNullable((WindowManager) this.mOverlayContext.getSystemService(WindowManager.class)).ifPresent(new c(this, 1));
            TaskStackChangeListeners.getInstance().registerTaskStackListener(this.mTaskStackListener);
        }
        return this.mOverlayContext;
    }

    public final void updateLauncherDeviceProfile(DeviceProfile deviceProfile) {
        this.mLauncherDeviceProfile = deviceProfile;
        Optional.ofNullable(this.mOverlayContext).ifPresent(new d());
    }
}
