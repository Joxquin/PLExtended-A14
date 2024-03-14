package com.android.launcher3.taskbar.overlay;

import android.content.Context;
import android.view.View;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.dot.DotInfo;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.popup.PopupDataProvider;
import com.android.launcher3.taskbar.BaseTaskbarContext;
import com.android.launcher3.taskbar.G;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.taskbar.TaskbarControllers;
import com.android.launcher3.taskbar.TaskbarDragController;
import com.android.launcher3.taskbar.TaskbarUIController;
import com.android.launcher3.taskbar.allapps.TaskbarAllAppsContainerView;
import com.android.launcher3.taskbar.allapps.TaskbarSearchSessionController;
import com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import java.util.Objects;
/* loaded from: classes.dex */
public final class TaskbarOverlayContext extends BaseTaskbarContext {
    private final TaskbarDragController mDragController;
    private final TaskbarOverlayDragLayer mDragLayer;
    private final TaskbarOverlayController mOverlayController;
    private TaskbarSearchSessionController mSearchSessionController;
    private final int mStashedTaskbarHeight;
    private final TaskbarActivityContext mTaskbarContext;
    private final TaskbarUIController mUiController;

    public TaskbarOverlayContext(Context context, TaskbarActivityContext taskbarActivityContext, TaskbarControllers taskbarControllers) {
        super(context);
        this.mTaskbarContext = taskbarActivityContext;
        this.mOverlayController = taskbarControllers.taskbarOverlayController;
        TaskbarDragController taskbarDragController = new TaskbarDragController(this);
        this.mDragController = taskbarDragController;
        taskbarDragController.init(taskbarControllers);
        this.mDragLayer = new TaskbarOverlayDragLayer(this);
        this.mStashedTaskbarHeight = taskbarControllers.taskbarStashController.getStashedHeight();
        this.mUiController = taskbarControllers.uiController;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final View.AccessibilityDelegate getAccessibilityDelegate() {
        return this.mTaskbarContext.getAccessibilityDelegate();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final View.OnLongClickListener getAllAppsItemLongClickListener() {
        final TaskbarDragController taskbarDragController = this.mDragController;
        Objects.requireNonNull(taskbarDragController);
        return new View.OnLongClickListener() { // from class: a1.a
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return TaskbarDragController.this.startDragOnLongClick(view);
            }
        };
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DeviceProfile getDeviceProfile() {
        return this.mOverlayController.getLauncherDeviceProfile();
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DotInfo getDotInfoForItem(ItemInfo itemInfo) {
        return this.mTaskbarContext.getDotInfoForItem(itemInfo);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final DragController getDragController() {
        return this.mDragController;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final TaskbarOverlayDragLayer getDragLayer() {
        return this.mDragLayer;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final View.OnClickListener getItemOnClickListener() {
        TaskbarActivityContext taskbarActivityContext = this.mTaskbarContext;
        taskbarActivityContext.getClass();
        return new G(taskbarActivityContext);
    }

    public final TaskbarOverlayController getOverlayController() {
        return this.mOverlayController;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final PopupDataProvider getPopupDataProvider() {
        return this.mTaskbarContext.getPopupDataProvider();
    }

    public final TaskbarSearchSessionController getSearchSessionController() {
        return this.mSearchSessionController;
    }

    public final int getStashedTaskbarHeight() {
        return this.mStashedTaskbarHeight;
    }

    public final boolean isAnySystemDragInProgress() {
        return this.mDragController.isSystemDragInProgress() || this.mTaskbarContext.getDragController().isSystemDragInProgress();
    }

    @Override // com.android.launcher3.taskbar.BaseTaskbarContext
    public final void onDragEnd() {
        this.mOverlayController.maybeCloseWindow();
    }

    @Override // com.android.launcher3.taskbar.BaseTaskbarContext
    public final void onDragStart() {
    }

    @Override // com.android.launcher3.taskbar.BaseTaskbarContext
    public final void onPopupVisibilityChanged(boolean z4) {
    }

    @Override // com.android.launcher3.taskbar.BaseTaskbarContext
    public final void onSplitScreenMenuButtonClicked() {
    }

    public final void setSearchSessionController(TaskbarSearchSessionController taskbarSearchSessionController) {
        this.mSearchSessionController = taskbarSearchSessionController;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final void startSplitSelection(SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource) {
        this.mUiController.startSplitSelection(splitConfigurationOptions$SplitSelectSource);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final TaskbarAllAppsContainerView getAppsView() {
        return (TaskbarAllAppsContainerView) this.mDragLayer.findViewById(R.id.apps_view);
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final TaskbarDragController getDragController() {
        return this.mDragController;
    }

    @Override // com.android.launcher3.views.ActivityContext
    public final BaseDragLayer getDragLayer() {
        return this.mDragLayer;
    }
}
