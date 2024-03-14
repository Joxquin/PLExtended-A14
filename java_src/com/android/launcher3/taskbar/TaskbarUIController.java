package com.android.launcher3.taskbar;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.SplitConfigurationOptions$SplitPositionOption;
import com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource;
import com.android.quickstep.util.GroupTask;
import com.android.quickstep.views.RecentsView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public class TaskbarUIController {
    public static final TaskbarUIController DEFAULT = new TaskbarUIController();
    protected TaskbarControllers mControllers;

    public void dumpLogs(String str, PrintWriter printWriter) {
        printWriter.println(String.format("%sTaskbarUIController: using an instance of %s", str, getClass().getSimpleName()));
    }

    public final View findMatchingView(View view) {
        if (view.getTag() instanceof ItemInfo) {
            ItemInfo itemInfo = (ItemInfo) view.getTag();
            int i4 = itemInfo.container;
            if (i4 == -101 || i4 == -103) {
                int i5 = itemInfo.screenId;
                View[] iconViews = this.mControllers.taskbarViewController.getIconViews();
                for (int length = iconViews.length - 1; length >= 0; length--) {
                    View view2 = iconViews[length];
                    if (view2 != null && (view2.getTag() instanceof ItemInfo) && ((ItemInfo) iconViews[length].getTag()).screenId == i5) {
                        return iconViews[length];
                    }
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public RecentsView getRecentsView() {
        return null;
    }

    public final TaskbarDragLayer getRootView() {
        return this.mControllers.taskbarActivityContext.getDragLayer();
    }

    public Stream getSplitMenuOptions() {
        DeviceProfile deviceProfile = this.mControllers.taskbarActivityContext.getDeviceProfile();
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        boolean z4 = deviceProfile.isLandscape;
        Stream stream = Collections.singletonList(new SplitConfigurationOptions$SplitPositionOption(z4 ? R.drawable.ic_split_horizontal : R.drawable.ic_split_vertical, z4 ? 1 : 0)).stream();
        final TaskbarPopupController taskbarPopupController = this.mControllers.taskbarPopupController;
        Objects.requireNonNull(taskbarPopupController);
        return stream.map(new Function() { // from class: com.android.launcher3.taskbar.O0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                final TaskbarPopupController taskbarPopupController2 = TaskbarPopupController.this;
                final SplitConfigurationOptions$SplitPositionOption splitConfigurationOptions$SplitPositionOption = (SplitConfigurationOptions$SplitPositionOption) obj;
                taskbarPopupController2.getClass();
                return new SystemShortcut.Factory() { // from class: com.android.launcher3.taskbar.A0
                    @Override // com.android.launcher3.popup.SystemShortcut.Factory
                    public final SystemShortcut getShortcut(Context context, ItemInfo itemInfo, View view) {
                        return TaskbarPopupController.b(TaskbarPopupController.this, splitConfigurationOptions$SplitPositionOption, (BaseTaskbarContext) context, itemInfo, view);
                    }
                };
            }
        });
    }

    public final void hideOverlayWindow() {
        if (!DisplayController.isTransientTaskbar(this.mControllers.taskbarActivityContext) || this.mControllers.taskbarAllAppsController.isOpen()) {
            this.mControllers.taskbarOverlayController.hideWindow();
        }
    }

    public void init(TaskbarControllers taskbarControllers) {
        this.mControllers = taskbarControllers;
    }

    public final boolean isEventOverAnyTaskbarItem(MotionEvent motionEvent) {
        return this.mControllers.taskbarViewController.isEventOverAnyItem(motionEvent) || this.mControllers.navbarButtonsViewController.isEventOverAnyItem(motionEvent);
    }

    public boolean isHotseatIconOnTopWhenAligned() {
        return true;
    }

    public boolean isIconAlignedWithHotseat() {
        return false;
    }

    public boolean isInOverview() {
        return false;
    }

    public final boolean isTaskbarAllAppsOpen() {
        return this.mControllers.taskbarAllAppsController.isOpen();
    }

    public final boolean isTaskbarStashed() {
        return this.mControllers.taskbarStashController.isStashed();
    }

    public boolean isTaskbarTouchable() {
        return true;
    }

    public final int launchFocusedTask() {
        int launchFocusedTask = this.mControllers.keyboardQuickSwitchController.launchFocusedTask();
        this.mControllers.keyboardQuickSwitchController.closeQuickSwitchView();
        return launchFocusedTask;
    }

    public void launchSplitTasks(ConstraintLayout constraintLayout, GroupTask groupTask) {
    }

    public void onDestroy() {
        this.mControllers = null;
    }

    public void onExpandPip() {
        TaskbarControllers taskbarControllers = this.mControllers;
        if (taskbarControllers != null) {
            TaskbarStashController taskbarStashController = taskbarControllers.taskbarStashController;
            taskbarStashController.updateStateForFlag(1, true);
            taskbarStashController.applyState();
        }
    }

    public void onIconLayoutBoundsChanged() {
    }

    public void onStashedInAppChanged() {
    }

    public void onTaskbarIconLaunched(ItemInfoWithIcon itemInfoWithIcon) {
        this.mControllers.taskbarStashController.updateStateForFlag(1, true);
        this.mControllers.taskbarStashController.applyState();
    }

    public final void openQuickSwitchView() {
        this.mControllers.keyboardQuickSwitchController.openQuickSwitchView();
    }

    public void refreshResumedState() {
    }

    public final void setSystemGestureInProgress(boolean z4) {
        this.mControllers.taskbarStashController.setSystemGestureInProgress(z4);
    }

    public final void startSplitSelection(final SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource) {
        final RecentsView recentsView = getRecentsView();
        if (recentsView == null) {
            return;
        }
        recentsView.getSplitSelectController().findLastActiveTasksAndRunCallback(Collections.singletonList(splitConfigurationOptions$SplitSelectSource.itemInfo.getComponentKey()), new Consumer() { // from class: com.android.launcher3.taskbar.N0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource2 = SplitConfigurationOptions$SplitSelectSource.this;
                RecentsView recentsView2 = recentsView;
                Task task = (Task) ((List) obj).get(0);
                splitConfigurationOptions$SplitSelectSource2.alreadyRunningTaskId = task == null ? -1 : task.key.id;
                splitConfigurationOptions$SplitSelectSource2.animateCurrentTaskDismissal = task != null;
                recentsView2.initiateSplitSelect(splitConfigurationOptions$SplitSelectSource2);
            }
        });
    }

    public final void startTranslationSpring() {
        this.mControllers.taskbarActivityContext.startTranslationSpring();
    }

    public void updateStateForSysuiFlags(int i4) {
    }
}
