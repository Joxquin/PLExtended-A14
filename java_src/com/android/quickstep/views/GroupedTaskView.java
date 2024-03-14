package com.android.quickstep.views;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.SplitConfigurationOptions$SplitBounds;
import com.android.launcher3.util.TransformingTouchDelegate;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.TaskIconCache;
import com.android.quickstep.TaskThumbnailCache;
import com.android.quickstep.util.CancellableTask;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.HashMap;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class GroupedTaskView extends TaskView {
    private final DigitalWellBeingToast mDigitalWellBeingToast2;
    private final float[] mIcon2CenterCoords;
    private TransformingTouchDelegate mIcon2TouchDelegate;
    private CancellableTask mIconLoadRequest2;
    private IconView mIconView2;
    private Task mSecondaryTask;
    private TaskThumbnailView mSnapshotView2;
    private SplitConfigurationOptions$SplitBounds mSplitBoundsConfig;
    private CancellableTask mThumbnailLoadRequest2;

    public GroupedTaskView(Context context) {
        this(context, null);
    }

    private boolean isCoordInView(View view, PointF pointF) {
        float[] fArr = {pointF.x, pointF.y};
        Utilities.mapCoordInSelfToDescendant(view, this, fArr);
        return Utilities.pointInView(view, fArr[0], fArr[1], 0.0f);
    }

    public static /* synthetic */ void lambda$launchTaskAnimated$2(RunnableList runnableList, Boolean bool) {
        runnableList.executeAllAndDestroy();
        InteractionJankMonitorWrapper.end(49);
    }

    public /* synthetic */ void lambda$onTaskListVisibilityChanged$0(ThumbnailData thumbnailData) {
        this.mSnapshotView2.setThumbnail(this.mSecondaryTask, thumbnailData);
    }

    public /* synthetic */ void lambda$onTaskListVisibilityChanged$1(Task task) {
        setIcon(this.mIconView2, task.icon);
        this.mDigitalWellBeingToast2.initialize(this.mSecondaryTask);
        this.mDigitalWellBeingToast2.setSplitConfiguration(this.mSplitBoundsConfig);
        this.mDigitalWellBeingToast.setSplitConfiguration(this.mSplitBoundsConfig);
    }

    private void launchTaskInternal(Consumer consumer, boolean z4, boolean z5) {
        getRecentsView().getSplitSelectController().launchExistingSplitPair(z5 ? this : null, this.mTask.key.id, this.mSecondaryTask.key.id, 0, consumer, z4, getSplitRatio());
    }

    private void updateIconPlacement() {
        if (this.mSplitBoundsConfig == null) {
            return;
        }
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        getPagedOrientationHandler().setSplitIconParams(this.mIconView, this.mIconView2, deviceProfile.overviewTaskIconSizePx, this.mSnapshotView.getMeasuredWidth(), this.mSnapshotView.getMeasuredHeight(), getMeasuredHeight(), getMeasuredWidth(), getLayoutDirection() == 1, deviceProfile, this.mSplitBoundsConfig);
    }

    private void updateSecondaryDwbPlacement() {
        Task task = this.mSecondaryTask;
        if (task == null) {
            return;
        }
        this.mDigitalWellBeingToast2.initialize(task);
    }

    @Override // com.android.quickstep.views.TaskView
    public void applyThumbnailSplashAlpha() {
        super.applyThumbnailSplashAlpha();
        this.mSnapshotView2.setSplashAlpha(this.mTaskThumbnailSplashAlpha);
    }

    public void bind(Task task, Task task2, RecentsOrientedState recentsOrientedState, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds) {
        super.bind(task, recentsOrientedState);
        this.mSecondaryTask = task2;
        this.mTaskIdContainer[1] = task2.key.id;
        this.mTaskIdAttributeContainer[1] = new TaskView.TaskIdAttributeContainer(task2, this.mSnapshotView2, this.mIconView2, 1);
        this.mTaskIdAttributeContainer[0].setStagePosition(0);
        this.mSnapshotView2.bind(task2);
        this.mSplitBoundsConfig = splitConfigurationOptions$SplitBounds;
        if (splitConfigurationOptions$SplitBounds == null) {
            return;
        }
        this.mSnapshotView.getPreviewPositionHelper().setSplitBounds(TaskViewSimulator.convertSplitBounds(splitConfigurationOptions$SplitBounds), 0);
        this.mSnapshotView2.getPreviewPositionHelper().setSplitBounds(TaskViewSimulator.convertSplitBounds(splitConfigurationOptions$SplitBounds), 1);
    }

    @Override // com.android.quickstep.views.TaskView
    public void cancelPendingLoadTasks() {
        super.cancelPendingLoadTasks();
        CancellableTask cancellableTask = this.mThumbnailLoadRequest2;
        if (cancellableTask != null) {
            cancellableTask.cancel();
            this.mThumbnailLoadRequest2 = null;
        }
        CancellableTask cancellableTask2 = this.mIconLoadRequest2;
        if (cancellableTask2 != null) {
            cancellableTask2.cancel();
            this.mIconLoadRequest2 = null;
        }
    }

    @Override // com.android.quickstep.views.TaskView
    public boolean containsTaskId(int i4) {
        Task task;
        Task task2 = this.mTask;
        return (task2 != null && task2.key.id == i4) || ((task = this.mSecondaryTask) != null && task.key.id == i4);
    }

    @Override // com.android.quickstep.views.TaskView
    public int getLastSelectedChildTaskIndex() {
        int thisTaskCurrentlyInSplitSelection;
        if (getRecentsView().getSplitSelectController().isDismissingFromSplitPair() && (thisTaskCurrentlyInSplitSelection = getThisTaskCurrentlyInSplitSelection()) != -1) {
            return thisTaskCurrentlyInSplitSelection == this.mTask.key.id ? 1 : 0;
        } else if (isCoordInView(this.mIconView2, this.mLastTouchDownPosition) || isCoordInView(this.mSnapshotView2, this.mLastTouchDownPosition)) {
            return 1;
        } else {
            return super.getLastSelectedChildTaskIndex();
        }
    }

    public float getSplitRatio() {
        SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds = this.mSplitBoundsConfig;
        if (splitConfigurationOptions$SplitBounds != null) {
            return splitConfigurationOptions$SplitBounds.appsStackedVertically ? splitConfigurationOptions$SplitBounds.topTaskPercent : splitConfigurationOptions$SplitBounds.leftTaskPercent;
        }
        return 0.5f;
    }

    @Override // com.android.quickstep.views.TaskView
    public TaskThumbnailView[] getThumbnails() {
        return new TaskThumbnailView[]{this.mSnapshotView, this.mSnapshotView2};
    }

    @Override // com.android.quickstep.views.TaskView
    public void launchTask(Consumer consumer, boolean z4) {
        launchTaskInternal(consumer, z4, false);
    }

    @Override // com.android.quickstep.views.TaskView
    public RunnableList launchTaskAnimated() {
        if (this.mTask == null || this.mSecondaryTask == null) {
            return null;
        }
        RunnableList runnableList = new RunnableList();
        RecentsView recentsView = getRecentsView();
        InteractionJankMonitorWrapper.begin(this, 49, "Enter form GroupedTaskView");
        launchTaskInternal(new C0593k(2, runnableList), false, true);
        recentsView.addSideTaskLaunchCallback(runnableList);
        return runnableList;
    }

    @Override // com.android.quickstep.views.TaskView
    public boolean offerTouchToChildren(MotionEvent motionEvent) {
        computeAndSetIconTouchDelegate(this.mIconView2, this.mIcon2CenterCoords, this.mIcon2TouchDelegate);
        if (this.mIcon2TouchDelegate.onTouchEvent(motionEvent)) {
            return true;
        }
        return super.offerTouchToChildren(motionEvent);
    }

    @Override // com.android.quickstep.views.TaskView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSnapshotView2 = (TaskThumbnailView) findViewById(R.id.bottomright_snapshot);
        this.mIconView2 = (IconView) findViewById(R.id.bottomRight_icon);
        this.mIcon2TouchDelegate = new TransformingTouchDelegate(this.mIconView2);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        int size = View.MeasureSpec.getSize(i4);
        int size2 = View.MeasureSpec.getSize(i5);
        setMeasuredDimension(size, size2);
        if (this.mSplitBoundsConfig == null || this.mSnapshotView == null || this.mSnapshotView2 == null) {
            return;
        }
        int thisTaskCurrentlyInSplitSelection = getThisTaskCurrentlyInSplitSelection();
        if (thisTaskCurrentlyInSplitSelection == -1) {
            getPagedOrientationHandler().measureGroupedTaskViewThumbnailBounds(this.mSnapshotView, this.mSnapshotView2, size, size2, this.mSplitBoundsConfig, this.mActivity.getDeviceProfile(), getLayoutDirection() == 1);
            TaskThumbnailView taskThumbnailView = this.mSnapshotView;
            taskThumbnailView.applySplitSelectTranslateX(taskThumbnailView.getTranslationX());
            TaskThumbnailView taskThumbnailView2 = this.mSnapshotView;
            taskThumbnailView2.applySplitSelectTranslateY(taskThumbnailView2.getTranslationY());
            TaskThumbnailView taskThumbnailView3 = this.mSnapshotView2;
            taskThumbnailView3.applySplitSelectTranslateX(taskThumbnailView3.getTranslationX());
            TaskThumbnailView taskThumbnailView4 = this.mSnapshotView2;
            taskThumbnailView4.applySplitSelectTranslateY(taskThumbnailView4.getTranslationY());
        } else {
            this.mTaskIdAttributeContainer[thisTaskCurrentlyInSplitSelection == this.mTask.key.id ? (char) 1 : (char) 0].getThumbnailView().measure(i4, View.MeasureSpec.makeMeasureSpec(size2 - this.mActivity.getDeviceProfile().overviewTaskThumbnailTopMarginPx, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        }
        updateIconPlacement();
    }

    @Override // com.android.quickstep.views.TaskView, com.android.launcher3.util.ViewPool.Reusable
    public void onRecycle() {
        super.onRecycle();
        this.mSnapshotView2.setThumbnail(this.mSecondaryTask, null);
        this.mSplitBoundsConfig = null;
    }

    @Override // com.android.quickstep.views.TaskView
    public void onTaskListVisibilityChanged(boolean z4, int i4) {
        super.onTaskListVisibilityChanged(z4, i4);
        if (!z4) {
            if (needsUpdate(i4, 2)) {
                this.mSnapshotView2.setThumbnail(null, null);
                this.mSecondaryTask.thumbnail = null;
            }
            if (needsUpdate(i4, 1)) {
                setIcon(this.mIconView2, null);
                return;
            }
            return;
        }
        RecentsModel recentsModel = (RecentsModel) RecentsModel.INSTANCE.get(getContext());
        TaskThumbnailCache thumbnailCache = recentsModel.getThumbnailCache();
        TaskIconCache iconCache = recentsModel.getIconCache();
        if (needsUpdate(i4, 2)) {
            this.mThumbnailLoadRequest2 = thumbnailCache.updateThumbnailInBackground(this.mSecondaryTask, new C0593k(0, this));
        }
        if (needsUpdate(i4, 1)) {
            this.mIconLoadRequest2 = iconCache.updateIconInBackground(this.mSecondaryTask, new C0593k(1, this));
        }
    }

    @Override // com.android.quickstep.views.TaskView
    public void refreshTaskThumbnailSplash() {
        super.refreshTaskThumbnailSplash();
        this.mSnapshotView2.refreshSplashView();
    }

    @Override // com.android.quickstep.views.TaskView
    public void refreshThumbnails(HashMap hashMap) {
        ThumbnailData thumbnailData;
        super.refreshThumbnails(hashMap);
        Task task = this.mSecondaryTask;
        if (task == null || hashMap == null || (thumbnailData = (ThumbnailData) hashMap.get(Integer.valueOf(task.key.id))) == null) {
            this.mSnapshotView2.refresh();
        } else {
            this.mSnapshotView2.setThumbnail(this.mSecondaryTask, thumbnailData);
        }
    }

    @Override // com.android.quickstep.views.TaskView
    public void resetViewTransforms() {
        super.resetViewTransforms();
        this.mSnapshotView2.resetViewTransforms();
    }

    @Override // com.android.quickstep.views.TaskView
    public void setColorTint(float f4, int i4) {
        super.setColorTint(f4, i4);
        this.mIconView2.setIconColorTint(i4, f4);
        this.mSnapshotView2.setDimAlpha(f4);
        this.mDigitalWellBeingToast2.setBannerColorTint(i4, f4);
    }

    @Override // com.android.quickstep.views.TaskView
    public void setIconsAndBannersTransitionProgress(float f4, boolean z4) {
        super.setIconsAndBannersTransitionProgress(f4, z4);
        float alpha = this.mIconView.getAlpha();
        this.mIconView2.setAlpha(alpha);
        this.mDigitalWellBeingToast2.updateBannerOffset(1.0f - alpha);
    }

    @Override // com.android.quickstep.views.TaskView
    public void setOrientationState(RecentsOrientedState recentsOrientedState) {
        super.setOrientationState(recentsOrientedState);
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        int i4 = deviceProfile.isTablet && !isFocusedTask() ? deviceProfile.overviewTaskIconDrawableSizeGridPx : deviceProfile.overviewTaskIconDrawableSizePx;
        this.mIconView2.setDrawableSize(i4, i4);
        this.mIconView2.setRotation(getPagedOrientationHandler().getDegreesRotated());
        updateIconPlacement();
        updateSecondaryDwbPlacement();
    }

    @Override // com.android.quickstep.views.TaskView
    public void setOverlayEnabled(boolean z4) {
    }

    @Override // com.android.quickstep.views.TaskView
    public void setThumbnailVisibility(int i4, int i5) {
        if (i4 == 0) {
            this.mSnapshotView.setVisibility(i4);
            this.mDigitalWellBeingToast.setBannerVisibility(i4);
            this.mSnapshotView2.setVisibility(i4);
            this.mDigitalWellBeingToast2.setBannerVisibility(i4);
        } else if (i5 == getTaskIds()[0]) {
            this.mSnapshotView.setVisibility(i4);
            this.mDigitalWellBeingToast.setBannerVisibility(i4);
        } else {
            this.mSnapshotView2.setVisibility(i4);
            this.mDigitalWellBeingToast2.setBannerVisibility(i4);
        }
    }

    @Override // com.android.quickstep.views.TaskView
    public void setUpShowAllInstancesListener() {
        super.setUpShowAllInstancesListener();
        updateFilterCallback(findViewById(R.id.show_windows_right), getFilterUpdateCallback(this.mTaskIdAttributeContainer[1].getTask().key.getPackageName()));
    }

    @Override // com.android.quickstep.views.TaskView
    public void updateBorderBounds(Rect rect) {
        if (this.mSplitBoundsConfig == null) {
            super.updateBorderBounds(rect);
            return;
        }
        rect.set(Math.min(Math.round(this.mSnapshotView.getTranslationX()) + this.mSnapshotView.getLeft(), Math.round(this.mSnapshotView2.getTranslationX()) + this.mSnapshotView2.getLeft()), Math.min(Math.round(this.mSnapshotView.getTranslationY()) + this.mSnapshotView.getTop(), Math.round(this.mSnapshotView2.getTranslationY()) + this.mSnapshotView2.getTop()), Math.max(Math.round(this.mSnapshotView.getTranslationX()) + this.mSnapshotView.getRight(), Math.round(this.mSnapshotView2.getTranslationX()) + this.mSnapshotView2.getRight()), Math.max(Math.round(this.mSnapshotView.getTranslationY()) + this.mSnapshotView.getBottom(), Math.round(this.mSnapshotView2.getTranslationY()) + this.mSnapshotView2.getBottom()));
    }

    @Override // com.android.quickstep.views.TaskView
    public void updateSnapshotRadius() {
        super.updateSnapshotRadius();
        this.mSnapshotView2.setFullscreenParams(this.mCurrentFullscreenParams);
    }

    public void updateSplitBoundsConfig(SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds) {
        this.mSplitBoundsConfig = splitConfigurationOptions$SplitBounds;
        invalidate();
    }

    public GroupedTaskView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public GroupedTaskView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mIcon2CenterCoords = new float[2];
        this.mDigitalWellBeingToast2 = new DigitalWellBeingToast(this.mActivity, this);
    }
}
