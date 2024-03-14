package com.android.quickstep.views;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.SystemProperties;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.util.RunnableList;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.TaskThumbnailCache;
import com.android.quickstep.util.CancellableTask;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class DesktopTaskView extends TaskView {
    private static final boolean DEBUG = false;
    private static final boolean DESKTOP_IS_PROTO1_ENABLED;
    public static final boolean DESKTOP_IS_PROTO2_ENABLED;
    public static final boolean DESKTOP_MODE_SUPPORTED;
    private static final String TAG;
    private View mBackgroundView;
    private final ArrayList mPendingThumbnailRequests;
    private final TaskView.FullscreenDrawParams mSnapshotDrawParams;
    private final SparseArray mSnapshotViewMap;
    private final ArrayList mSnapshotViews;
    private List mTasks;

    static {
        boolean z4 = false;
        boolean z5 = SystemProperties.getBoolean("persist.wm.debug.desktop_mode", false);
        DESKTOP_IS_PROTO1_ENABLED = z5;
        boolean z6 = SystemProperties.getBoolean("persist.wm.debug.desktop_mode_2", false);
        DESKTOP_IS_PROTO2_ENABLED = z6;
        DESKTOP_MODE_SUPPORTED = (z5 || z6) ? true : true;
        TAG = "DesktopTaskView";
    }

    public DesktopTaskView(Context context) {
        this(context, null);
    }

    private TaskView.TaskIdAttributeContainer createAttributeContainer(Task task, TaskThumbnailView taskThumbnailView) {
        return new TaskView.TaskIdAttributeContainer(task, taskThumbnailView, createIconView(task), -1);
    }

    private IconView createIconView(Task task) {
        IconView iconView = new IconView(((FrameLayout) this).mContext);
        try {
            iconView.setDrawable(new IconProvider(((FrameLayout) this).mContext).getIcon(((FrameLayout) this).mContext.getApplicationContext().getPackageManager().getActivityInfo(task.topActivity, PackageManager.ComponentInfoFlags.of(0L))));
        } catch (PackageManager.NameNotFoundException e4) {
            String str = TAG;
            Log.w(str, "Package not found: " + task.topActivity.getPackageName(), e4);
        }
        return iconView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTaskListVisibilityChanged$0(Task task, ThumbnailData thumbnailData) {
        TaskThumbnailView taskThumbnailView = (TaskThumbnailView) this.mSnapshotViewMap.get(task.key.id);
        if (taskThumbnailView != null) {
            taskThumbnailView.setThumbnail(task, thumbnailData);
        }
    }

    private void updateTaskIdAttributeContainer() {
        this.mTaskIdAttributeContainer = new TaskView.TaskIdAttributeContainer[Math.max(this.mTasks.size(), 2)];
        for (int i4 = 0; i4 < this.mTasks.size(); i4++) {
            Task task = (Task) this.mTasks.get(i4);
            this.mTaskIdAttributeContainer[i4] = createAttributeContainer(task, (TaskThumbnailView) this.mSnapshotViewMap.get(task.key.id));
        }
    }

    private void updateTaskIdContainer() {
        this.mTaskIdContainer = new int[Math.max(this.mTasks.size(), 2)];
        for (int i4 = 0; i4 < this.mTasks.size(); i4++) {
            this.mTaskIdContainer[i4] = ((Task) this.mTasks.get(i4)).key.id;
        }
    }

    @Override // com.android.quickstep.views.TaskView
    public void applyThumbnailSplashAlpha() {
        for (int i4 = 0; i4 < this.mSnapshotViewMap.size(); i4++) {
            ((TaskThumbnailView) this.mSnapshotViewMap.valueAt(i4)).setSplashAlpha(this.mTaskThumbnailSplashAlpha);
        }
    }

    @Override // com.android.quickstep.views.TaskView
    public void bind(Task task, RecentsOrientedState recentsOrientedState) {
        bind(Collections.singletonList(task), recentsOrientedState);
    }

    @Override // com.android.quickstep.views.TaskView
    public void cancelPendingLoadTasks() {
        Iterator it = this.mPendingThumbnailRequests.iterator();
        while (it.hasNext()) {
            ((CancellableTask) it.next()).cancel();
        }
        this.mPendingThumbnailRequests.clear();
    }

    @Override // com.android.quickstep.views.TaskView
    public boolean confirmSecondSplitSelectApp() {
        return false;
    }

    @Override // com.android.quickstep.views.TaskView
    public boolean containsTaskId(int i4) {
        return this.mSnapshotViewMap.contains(i4);
    }

    @Override // com.android.quickstep.views.TaskView
    public Task getTask() {
        if (this.mTasks.size() > 0) {
            return (Task) this.mTasks.get(0);
        }
        return null;
    }

    @Override // com.android.quickstep.views.TaskView
    public TaskThumbnailView getThumbnail() {
        Task task = getTask();
        return task != null ? (TaskThumbnailView) this.mSnapshotViewMap.get(task.key.id) : this.mSnapshotView;
    }

    @Override // com.android.quickstep.views.TaskView
    public TaskThumbnailView[] getThumbnails() {
        int size = this.mSnapshotViewMap.size();
        TaskThumbnailView[] taskThumbnailViewArr = new TaskThumbnailView[size];
        for (int i4 = 0; i4 < size; i4++) {
            taskThumbnailViewArr[i4] = (TaskThumbnailView) this.mSnapshotViewMap.valueAt(i4);
        }
        return taskThumbnailViewArr;
    }

    @Override // com.android.quickstep.views.TaskView
    public boolean isDesktopTask() {
        return true;
    }

    @Override // com.android.quickstep.views.TaskView
    public void launchTask(Consumer consumer, boolean z4) {
        launchTasks();
        consumer.accept(Boolean.TRUE);
    }

    @Override // com.android.quickstep.views.TaskView
    public RunnableList launchTaskAnimated() {
        return launchTasks();
    }

    @Override // com.android.quickstep.views.TaskView
    public RunnableList launchTasks() {
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(getContext())).showDesktopApps(this.mActivity.getDisplayId());
        Launcher.getLauncher(this.mActivity).getStateManager().goToState(LauncherState.NORMAL, false);
        return null;
    }

    @Override // com.android.quickstep.views.TaskView
    public boolean offerTouchToChildren(MotionEvent motionEvent) {
        return false;
    }

    @Override // com.android.quickstep.views.TaskView, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mBackgroundView = findViewById(R.id.background);
        int i4 = this.mActivity.getDeviceProfile().overviewTaskThumbnailTopMarginPx;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mBackgroundView.getLayoutParams();
        layoutParams.topMargin = i4;
        this.mBackgroundView.setLayoutParams(layoutParams);
        float[] fArr = new float[8];
        Arrays.fill(fArr, getTaskCornerRadius());
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
        shapeDrawable.setTint(getResources().getColor(17170479, getContext().getTheme()));
        this.mBackgroundView.setBackground(shapeDrawable);
        Drawable drawable = getResources().getDrawable(R.drawable.ic_desktop, getContext().getTheme());
        this.mIconView.setDrawable(new LayerDrawable(new Drawable[]{getResources().getDrawable(R.drawable.bg_circle, getContext().getTheme()), drawable}));
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i4, int i5) {
        int i6;
        super.onMeasure(i4, i5);
        int size = View.MeasureSpec.getSize(i4);
        int size2 = View.MeasureSpec.getSize(i5);
        setMeasuredDimension(size, size2);
        int i7 = size2 - this.mActivity.getDeviceProfile().overviewTaskThumbnailTopMarginPx;
        if (this.mSnapshotViewMap.size() == 0) {
            return;
        }
        int i8 = this.mActivity.getDeviceProfile().widthPx;
        int i9 = this.mActivity.getDeviceProfile().heightPx;
        float f4 = size / i8;
        float f5 = i7 / i9;
        for (int i10 = 0; i10 < this.mTasks.size(); i10++) {
            Task task = (Task) this.mTasks.get(i10);
            Rect rect = task.appBounds;
            if (rect == null) {
                rect = new Rect(0, 0, i8 / 4, i9 / 4);
            }
            int width = (int) (rect.width() * f4);
            int height = (int) (rect.height() * f5);
            TaskThumbnailView taskThumbnailView = (TaskThumbnailView) this.mSnapshotViewMap.get(task.key.id);
            if (taskThumbnailView != null) {
                taskThumbnailView.measure(View.MeasureSpec.makeMeasureSpec(width, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(height, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
                Point point = task.positionInParent;
                if (point == null) {
                    point = new Point(0, 0);
                }
                taskThumbnailView.setX((int) (point.x * f4));
                taskThumbnailView.setY(((int) (point.y * f5)) + i6);
            }
        }
    }

    @Override // com.android.quickstep.views.TaskView, com.android.launcher3.util.ViewPool.Reusable
    public void onRecycle() {
        resetPersistentViewTransforms();
        for (Task task : this.mTasks) {
            TaskThumbnailView taskThumbnailView = (TaskThumbnailView) this.mSnapshotViewMap.get(task.key.id);
            if (taskThumbnailView != null) {
                taskThumbnailView.setThumbnail(task, null);
            }
        }
        setOverlayEnabled(false);
        onTaskListVisibilityChanged(false);
        setVisibility(0);
    }

    @Override // com.android.quickstep.views.TaskView
    public void onTaskListVisibilityChanged(boolean z4, int i4) {
        cancelPendingLoadTasks();
        if (z4) {
            TaskThumbnailCache thumbnailCache = ((RecentsModel) RecentsModel.INSTANCE.get(getContext())).getThumbnailCache();
            if (needsUpdate(i4, 2)) {
                for (final Task task : this.mTasks) {
                    CancellableTask updateThumbnailInBackground = thumbnailCache.updateThumbnailInBackground(task, new Consumer() { // from class: com.android.quickstep.views.d
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            DesktopTaskView.this.lambda$onTaskListVisibilityChanged$0(task, (ThumbnailData) obj);
                        }
                    });
                    if (updateThumbnailInBackground != null) {
                        this.mPendingThumbnailRequests.add(updateThumbnailInBackground);
                    }
                }
            }
        } else if (needsUpdate(i4, 2)) {
            for (Task task2 : this.mTasks) {
                TaskThumbnailView taskThumbnailView = (TaskThumbnailView) this.mSnapshotViewMap.get(task2.key.id);
                if (taskThumbnailView != null) {
                    taskThumbnailView.setThumbnail(null, null);
                }
                task2.thumbnail = null;
            }
        }
    }

    @Override // com.android.quickstep.views.TaskView
    public void refreshThumbnails(HashMap hashMap) {
        SparseArray clone = this.mSnapshotViewMap.clone();
        if (hashMap != null) {
            for (Task task : this.mTasks) {
                int i4 = task.key.id;
                TaskThumbnailView taskThumbnailView = (TaskThumbnailView) clone.get(i4);
                ThumbnailData thumbnailData = (ThumbnailData) hashMap.get(Integer.valueOf(i4));
                if (taskThumbnailView != null && thumbnailData != null) {
                    taskThumbnailView.setThumbnail(task, thumbnailData);
                    clone.remove(i4);
                }
            }
        }
        for (int i5 = 0; i5 < clone.size(); i5++) {
            ((TaskThumbnailView) clone.valueAt(i5)).refresh();
        }
    }

    @Override // com.android.quickstep.views.TaskView
    public void setColorTint(float f4, int i4) {
        for (int i5 = 0; i5 < this.mSnapshotViewMap.size(); i5++) {
            ((TaskThumbnailView) this.mSnapshotViewMap.valueAt(i5)).setDimAlpha(f4);
        }
    }

    @Override // com.android.quickstep.views.TaskView
    public void setFullscreenProgress(float f4) {
        float boundToRange = Utilities.boundToRange(f4, 0.0f, 1.0f);
        this.mFullscreenProgress = boundToRange;
        if (boundToRange > 0.0f) {
            this.mBackgroundView.setVisibility(4);
        } else {
            this.mBackgroundView.setVisibility(0);
        }
        for (int i4 = 0; i4 < this.mSnapshotViewMap.size(); i4++) {
            ((TaskThumbnailView) this.mSnapshotViewMap.valueAt(i4)).getTaskOverlay().setFullscreenProgress(boundToRange);
        }
        updateSnapshotRadius();
    }

    @Override // com.android.quickstep.views.TaskView
    public void setIconsAndBannersTransitionProgress(float f4, boolean z4) {
    }

    @Override // com.android.quickstep.views.TaskView
    public void setOverlayEnabled(boolean z4) {
    }

    @Override // com.android.quickstep.views.TaskView
    public void setThumbnailOrientation(RecentsOrientedState recentsOrientedState) {
        int i4 = this.mActivity.getDeviceProfile().overviewTaskThumbnailTopMarginPx;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mSnapshotView.getLayoutParams();
        layoutParams.topMargin = i4;
        for (int i5 = 0; i5 < this.mSnapshotViewMap.size(); i5++) {
            ((TaskThumbnailView) this.mSnapshotViewMap.valueAt(i5)).setLayoutParams(layoutParams);
        }
    }

    @Override // com.android.quickstep.views.TaskView
    public void setThumbnailVisibility(int i4, int i5) {
        for (int i6 = 0; i6 < this.mSnapshotViewMap.size(); i6++) {
            ((TaskThumbnailView) this.mSnapshotViewMap.valueAt(i6)).setVisibility(i4);
        }
    }

    @Override // com.android.quickstep.views.TaskView
    public boolean showTaskMenuWithContainer(IconView iconView) {
        return false;
    }

    @Override // com.android.quickstep.views.TaskView
    public void updateBorderBounds(Rect rect) {
        rect.set(this.mBackgroundView.getLeft(), this.mBackgroundView.getTop(), this.mBackgroundView.getRight(), this.mBackgroundView.getBottom());
    }

    @Override // com.android.quickstep.views.TaskView
    public void updateSnapshotRadius() {
        super.updateSnapshotRadius();
        for (int i4 = 0; i4 < this.mSnapshotViewMap.size(); i4++) {
            if (i4 == 0) {
                updateFullscreenParams(this.mSnapshotDrawParams, this.mSnapshotView.getPreviewPositionHelper());
            }
            ((TaskThumbnailView) this.mSnapshotViewMap.valueAt(i4)).setFullscreenParams(this.mSnapshotDrawParams);
        }
    }

    public DesktopTaskView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void bind(List list, RecentsOrientedState recentsOrientedState) {
        cancelPendingLoadTasks();
        this.mTasks = new ArrayList(list);
        this.mSnapshotViewMap.clear();
        if (this.mSnapshotViews.size() > this.mTasks.size()) {
            int size = this.mSnapshotViews.size() - this.mTasks.size();
            for (int i4 = 0; i4 < size; i4++) {
                removeView((TaskThumbnailView) this.mSnapshotViews.remove(0));
            }
        } else if (this.mSnapshotViews.size() < this.mTasks.size()) {
            int size2 = this.mTasks.size() - this.mSnapshotViews.size();
            for (int i5 = 0; i5 < size2; i5++) {
                TaskThumbnailView taskThumbnailView = new TaskThumbnailView(getContext());
                this.mSnapshotViews.add(taskThumbnailView);
                addView(taskThumbnailView, new FrameLayout.LayoutParams(-2, -2));
            }
        }
        for (int i6 = 0; i6 < this.mTasks.size(); i6++) {
            Task task = (Task) this.mTasks.get(i6);
            TaskThumbnailView taskThumbnailView2 = (TaskThumbnailView) this.mSnapshotViews.get(i6);
            taskThumbnailView2.bind(task);
            this.mSnapshotViewMap.put(task.key.id, taskThumbnailView2);
        }
        updateTaskIdContainer();
        updateTaskIdAttributeContainer();
        setOrientationState(recentsOrientedState);
    }

    public DesktopTaskView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mTasks = new ArrayList();
        this.mSnapshotViews = new ArrayList();
        this.mSnapshotViewMap = new SparseArray();
        this.mPendingThumbnailRequests = new ArrayList();
        this.mSnapshotDrawParams = new TaskView.FullscreenDrawParams(context) { // from class: com.android.quickstep.views.DesktopTaskView.1
            @Override // com.android.quickstep.views.TaskView.FullscreenDrawParams
            public float computeTaskCornerRadius(Context context2) {
                return QuickStepContract.getWindowCornerRadius(context2);
            }

            @Override // com.android.quickstep.views.TaskView.FullscreenDrawParams
            public float computeWindowCornerRadius(Context context2) {
                return QuickStepContract.getWindowCornerRadius(context2);
            }
        };
    }
}
