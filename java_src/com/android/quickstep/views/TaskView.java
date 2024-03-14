package com.android.quickstep.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.RemoteAnimationTarget;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherState;
import com.android.launcher3.R$styleable;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.ActivityOptionsWrapper;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.SplitConfigurationOptions$SplitPositionOption;
import com.android.launcher3.util.TraceHelper;
import com.android.launcher3.util.TransformingTouchDelegate;
import com.android.launcher3.util.ViewPool;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.RemoteAnimationTargets;
import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.TaskAnimationManager;
import com.android.quickstep.TaskIconCache;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.TaskThumbnailCache;
import com.android.quickstep.TaskUtils;
import com.android.quickstep.TaskViewUtils;
import com.android.quickstep.util.BorderAnimator;
import com.android.quickstep.util.CancellableTask;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.quickstep.util.SplitSelectStateController;
import com.android.quickstep.util.TaskCornerRadius;
import com.android.quickstep.util.TaskRemovedDuringLaunchListener;
import com.android.quickstep.util.TransformParams;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.recents.utilities.PreviewPositionHelper;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.QuickStepContract;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.stream.Stream;
import v.C1429e;
/* loaded from: classes.dex */
public class TaskView extends FrameLayout implements ViewPool.Reusable {
    private static final boolean DEBUG = false;
    private static final long DIM_ANIM_DURATION = 700;
    private static final float EDGE_SCALE_DOWN_FACTOR_CAROUSEL = 0.03f;
    private static final float EDGE_SCALE_DOWN_FACTOR_GRID = 0.0f;
    public static final int FLAG_UPDATE_ALL = 7;
    public static final int FLAG_UPDATE_CORNER_RADIUS = 4;
    public static final int FLAG_UPDATE_ICON = 1;
    public static final int FLAG_UPDATE_THUMBNAIL = 2;
    public static final float MAX_PAGE_SCRIM_ALPHA = 0.4f;
    public static final long SCALE_ICON_DURATION = 120;
    protected final StatefulActivity mActivity;
    private float mBoxTranslationY;
    protected final FullscreenDrawParams mCurrentFullscreenParams;
    protected final DigitalWellBeingToast mDigitalWellBeingToast;
    private float mDismissScale;
    private float mDismissTranslationX;
    private float mDismissTranslationY;
    private boolean mEndQuickswitchCuj;
    private final BorderAnimator mFocusBorderAnimator;
    private float mFocusTransitionProgress;
    protected float mFullscreenProgress;
    private float mGridEndTranslationX;
    private float mGridProgress;
    private float mGridTranslationX;
    private float mGridTranslationY;
    private final BorderAnimator mHoverBorderAnimator;
    private ObjectAnimator mIconAndDimAnimator;
    private final float[] mIconCenterCoords;
    private CancellableTask mIconLoadRequest;
    private float mIconScaleAnimStartProgress;
    private TransformingTouchDelegate mIconTouchDelegate;
    protected IconView mIconView;
    private boolean mIsClickableAsLiveTile;
    protected final PointF mLastTouchDownPosition;
    private float mModalness;
    private float mNonGridScale;
    private float mNonGridTranslationX;
    private float mNonGridTranslationY;
    private boolean mShowScreenshot;
    protected TaskThumbnailView mSnapshotView;
    private float mSplitSelectTranslationX;
    private float mSplitSelectTranslationY;
    private float mStableAlpha;
    protected Task mTask;
    protected TaskIdAttributeContainer[] mTaskIdAttributeContainer;
    protected int[] mTaskIdContainer;
    private float mTaskOffsetTranslationX;
    private float mTaskOffsetTranslationY;
    private float mTaskResistanceTranslationX;
    private float mTaskResistanceTranslationY;
    protected float mTaskThumbnailSplashAlpha;
    private int mTaskViewId;
    private CancellableTask mThumbnailLoadRequest;
    private static final String TAG = "TaskView";
    private static final RectF EMPTY_RECT_F = new RectF();
    private static final Interpolator GRID_INTERPOLATOR = y0.e.f12961y;
    private static final List SYSTEM_GESTURE_EXCLUSION_RECT = Collections.singletonList(new Rect());
    public static final FloatProperty FOCUS_TRANSITION = new FloatProperty("focusTransition") { // from class: com.android.quickstep.views.TaskView.1
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mFocusTransitionProgress);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setIconsAndBannersTransitionProgress(f4, false);
        }
    };
    private static final FloatProperty SPLIT_SELECT_TRANSLATION_X = new FloatProperty("splitSelectTranslationX") { // from class: com.android.quickstep.views.TaskView.2
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mSplitSelectTranslationX);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setSplitSelectTranslationX(f4);
        }
    };
    private static final FloatProperty SPLIT_SELECT_TRANSLATION_Y = new FloatProperty("splitSelectTranslationY") { // from class: com.android.quickstep.views.TaskView.3
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mSplitSelectTranslationY);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setSplitSelectTranslationY(f4);
        }
    };
    private static final FloatProperty DISMISS_TRANSLATION_X = new FloatProperty("dismissTranslationX") { // from class: com.android.quickstep.views.TaskView.4
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mDismissTranslationX);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setDismissTranslationX(f4);
        }
    };
    private static final FloatProperty DISMISS_TRANSLATION_Y = new FloatProperty("dismissTranslationY") { // from class: com.android.quickstep.views.TaskView.5
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mDismissTranslationY);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setDismissTranslationY(f4);
        }
    };
    private static final FloatProperty TASK_OFFSET_TRANSLATION_X = new FloatProperty("taskOffsetTranslationX") { // from class: com.android.quickstep.views.TaskView.6
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mTaskOffsetTranslationX);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setTaskOffsetTranslationX(f4);
        }
    };
    private static final FloatProperty TASK_OFFSET_TRANSLATION_Y = new FloatProperty("taskOffsetTranslationY") { // from class: com.android.quickstep.views.TaskView.7
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mTaskOffsetTranslationY);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setTaskOffsetTranslationY(f4);
        }
    };
    private static final FloatProperty TASK_RESISTANCE_TRANSLATION_X = new FloatProperty("taskResistanceTranslationX") { // from class: com.android.quickstep.views.TaskView.8
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mTaskResistanceTranslationX);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setTaskResistanceTranslationX(f4);
        }
    };
    private static final FloatProperty TASK_RESISTANCE_TRANSLATION_Y = new FloatProperty("taskResistanceTranslationY") { // from class: com.android.quickstep.views.TaskView.9
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mTaskResistanceTranslationY);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setTaskResistanceTranslationY(f4);
        }
    };
    private static final FloatProperty NON_GRID_TRANSLATION_X = new FloatProperty("nonGridTranslationX") { // from class: com.android.quickstep.views.TaskView.10
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mNonGridTranslationX);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setNonGridTranslationX(f4);
        }
    };
    private static final FloatProperty NON_GRID_TRANSLATION_Y = new FloatProperty("nonGridTranslationY") { // from class: com.android.quickstep.views.TaskView.11
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mNonGridTranslationY);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setNonGridTranslationY(f4);
        }
    };
    public static final FloatProperty GRID_END_TRANSLATION_X = new FloatProperty("gridEndTranslationX") { // from class: com.android.quickstep.views.TaskView.12
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mGridEndTranslationX);
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setGridEndTranslationX(f4);
        }
    };
    public static final FloatProperty SNAPSHOT_SCALE = new FloatProperty("snapshotScale") { // from class: com.android.quickstep.views.TaskView.13
        @Override // android.util.Property
        public Float get(TaskView taskView) {
            return Float.valueOf(taskView.mSnapshotView.getScaleX());
        }

        @Override // android.util.FloatProperty
        public void setValue(TaskView taskView, float f4) {
            taskView.setSnapshotScale(f4);
        }
    };

    /* renamed from: com.android.quickstep.views.TaskView$14 */
    /* loaded from: classes.dex */
    public class AnonymousClass14 extends AnimatorListenerAdapter {
        final /* synthetic */ RecentsView val$recentsView;
        final /* synthetic */ RunnableList val$runnableList;

        public AnonymousClass14(RecentsView recentsView, RunnableList runnableList) {
            TaskView.this = r1;
            this.val$recentsView = recentsView;
            this.val$runnableList = runnableList;
        }

        public static /* synthetic */ void lambda$onAnimationStart$0(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
            remoteTargetHandle.getTaskViewSimulator().setDrawsBelowRecents(false);
        }

        private void runEndCallback() {
            this.val$runnableList.executeAllAndDestroy();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            runEndCallback();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            TaskView taskView = TaskView.this;
            Task task = taskView.mTask;
            if (task != null && task.key.displayId != taskView.getRootViewDisplayId()) {
                TaskView.this.launchTaskAnimated();
            }
            TaskView.this.mIsClickableAsLiveTile = true;
            runEndCallback();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.val$recentsView.showAsGrid()) {
                this.val$recentsView.runActionOnRemoteHandles(new e0());
            }
        }
    }

    /* loaded from: classes.dex */
    public class FullscreenDrawParams {
        private float mCornerRadius;
        public float mCurrentDrawnCornerRadius;
        private float mWindowCornerRadius;

        public FullscreenDrawParams(Context context) {
            updateCornerRadius(context);
        }

        public float computeTaskCornerRadius(Context context) {
            return TaskCornerRadius.get(context);
        }

        public float computeWindowCornerRadius(Context context) {
            return QuickStepContract.getWindowCornerRadius(context);
        }

        public void setProgress(float f4, float f5, float f6, int i4, DeviceProfile deviceProfile, PreviewPositionHelper previewPositionHelper) {
            float f7 = this.mCornerRadius;
            float f8 = this.mWindowCornerRadius;
            String[] strArr = Utilities.EMPTY_STRING_ARRAY;
            this.mCurrentDrawnCornerRadius = ((((f8 - f7) * f4) + f7) / f5) / f6;
        }

        public void updateCornerRadius(Context context) {
            this.mCornerRadius = computeTaskCornerRadius(context);
            this.mWindowCornerRadius = computeWindowCornerRadius(context);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface TaskDataChanges {
    }

    /* loaded from: classes.dex */
    public class TaskIdAttributeContainer {
        private final int mA11yNodeId;
        private final IconView mIconView;
        private int mStagePosition;
        private final Task mTask;
        private final TaskThumbnailView mThumbnailView;

        public TaskIdAttributeContainer(Task task, TaskThumbnailView taskThumbnailView, IconView iconView, int i4) {
            TaskView.this = r1;
            this.mTask = task;
            this.mThumbnailView = taskThumbnailView;
            this.mIconView = iconView;
            this.mStagePosition = i4;
            this.mA11yNodeId = i4 == 1 ? R.id.split_bottomRight_appInfo : R.id.split_topLeft_appInfo;
        }

        public int getA11yNodeId() {
            return this.mA11yNodeId;
        }

        public IconView getIconView() {
            return this.mIconView;
        }

        public WorkspaceItemInfo getItemInfo() {
            return TaskView.this.getItemInfo(this.mTask);
        }

        public int getStagePosition() {
            return this.mStagePosition;
        }

        public Task getTask() {
            return this.mTask;
        }

        public TaskView getTaskView() {
            return TaskView.this;
        }

        public TaskThumbnailView getThumbnailView() {
            return this.mThumbnailView;
        }

        public void setStagePosition(int i4) {
            this.mStagePosition = i4;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Type {
        public static final int DESKTOP = 3;
        public static final int GROUPED = 2;
        public static final int SINGLE = 1;
    }

    public TaskView(Context context) {
        this(context, null);
    }

    private void applyScale() {
        float persistentScale = getPersistentScale() * 1.0f * this.mDismissScale;
        setScaleX(persistentScale);
        setScaleY(persistentScale);
        updateSnapshotRadius();
    }

    private void applyTranslationX() {
        setTranslationX(getPersistentTranslationX() + this.mDismissTranslationX + this.mTaskOffsetTranslationX + this.mTaskResistanceTranslationX + this.mSplitSelectTranslationX + this.mGridEndTranslationX);
    }

    private void applyTranslationY() {
        setTranslationY(getPersistentTranslationY() + this.mDismissTranslationY + this.mTaskOffsetTranslationY + this.mTaskResistanceTranslationY + this.mSplitSelectTranslationY);
    }

    public static float getEdgeScaleDownFactor(DeviceProfile deviceProfile) {
        return deviceProfile.isTablet ? EDGE_SCALE_DOWN_FACTOR_GRID : EDGE_SCALE_DOWN_FACTOR_CAROUSEL;
    }

    private int getExpectedViewHeight(View view) {
        int i4 = view.getLayoutParams().height;
        if (i4 > 0) {
            return i4;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(1073741823, Integer.MIN_VALUE);
        view.measure(makeMeasureSpec, makeMeasureSpec);
        return view.getMeasuredHeight();
    }

    private float getGridTrans(float f4) {
        float interpolation = GRID_INTERPOLATOR.getInterpolation(this.mGridProgress);
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        return w.f.a(f4, EDGE_SCALE_DOWN_FACTOR_GRID, interpolation, EDGE_SCALE_DOWN_FACTOR_GRID);
    }

    private float getNonGridTrans(float f4) {
        return f4 - getGridTrans(f4);
    }

    public int getRootViewDisplayId() {
        Display display = getRootView().getDisplay();
        if (display != null) {
            return display.getDisplayId();
        }
        return 0;
    }

    public /* synthetic */ void lambda$getFilterUpdateCallback$0(String str, View view) {
        getRecentsView().setAndApplyFilter(str);
    }

    public /* synthetic */ void lambda$launchTask$1() {
        notifyTaskLaunchFailed(TAG);
        RecentsView recentsView = getRecentsView();
        if (recentsView != null) {
            recentsView.startHome(false);
            if (recentsView.mSizeStrategy.getTaskbarController() != null) {
                recentsView.mSizeStrategy.getTaskbarController().refreshResumedState();
            }
        }
    }

    public static /* synthetic */ void lambda$launchTask$2(Consumer consumer, long j4) {
        consumer.accept(Boolean.TRUE);
    }

    public /* synthetic */ void lambda$launchTask$4(Consumer consumer) {
        notifyTaskLaunchFailed(TAG);
        consumer.accept(Boolean.FALSE);
    }

    public /* synthetic */ void lambda$launchTask$5(Task.TaskKey taskKey, ActivityOptions activityOptions, final Consumer consumer) {
        if (ActivityManagerWrapper.getInstance().startActivityFromRecents(taskKey, activityOptions)) {
            return;
        }
        Executors.MAIN_EXECUTOR.post(new Runnable() { // from class: com.android.quickstep.views.Y
            @Override // java.lang.Runnable
            public final void run() {
                TaskView.this.lambda$launchTask$4(consumer);
            }
        });
    }

    public static /* synthetic */ RemoteAnimationTarget[] lambda$launchTasks$7(int i4) {
        return new RemoteAnimationTarget[i4];
    }

    public static /* synthetic */ RemoteAnimationTarget[] lambda$launchTasks$8(int i4) {
        return new RemoteAnimationTarget[i4];
    }

    public static /* synthetic */ void lambda$makeCustomAnimation$6(Runnable runnable, Handler handler, long j4) {
        if (runnable != null) {
            handler.post(runnable);
        }
    }

    public /* synthetic */ List lambda$onInitializeAccessibilityNodeInfo$13(TaskIdAttributeContainer taskIdAttributeContainer) {
        return TaskOverlayFactory.getEnabledShortcuts(this, taskIdAttributeContainer);
    }

    public /* synthetic */ void lambda$onTaskListVisibilityChanged$10(Task task) {
        setIcon(this.mIconView, task.icon);
        this.mDigitalWellBeingToast.initialize(task);
    }

    public /* synthetic */ void lambda$onTaskListVisibilityChanged$9(ThumbnailData thumbnailData) {
        this.mSnapshotView.setThumbnail(this.mTask, thumbnailData);
    }

    public /* synthetic */ void lambda$setIcon$11(IconView iconView, View view) {
        if (confirmSecondSplitSelectApp()) {
            return;
        }
        showTaskMenu(iconView);
    }

    public /* synthetic */ boolean lambda$setIcon$12(IconView iconView, View view) {
        requestDisallowInterceptTouchEvent(true);
        return showTaskMenu(iconView);
    }

    private ActivityOptions makeCustomAnimation(Context context, int i4, int i5, final Runnable runnable, final Handler handler) {
        return ActivityOptions.makeCustomTaskAnimation(context, i4, i5, handler, new ActivityOptions.OnAnimationStartedListener() { // from class: com.android.quickstep.views.a0
            public final void onAnimationStarted(long j4) {
                TaskView.lambda$makeCustomAnimation$6(runnable, handler, j4);
            }
        }, null);
    }

    private void notifyTaskLaunchFailed(String str) {
        String str2;
        if (this.mTask != null) {
            StringBuilder sb = new StringBuilder("Failed to launch task (task=");
            sb.append(this.mTask.key.baseIntent);
            sb.append(" userId=");
            str2 = C1429e.a(sb, this.mTask.key.userId, ")");
        } else {
            str2 = "Failed to launch task";
        }
        Log.w(str, str2);
        Toast.makeText(getContext(), (int) R.string.activity_not_available, 0).show();
    }

    public void onClick(View view) {
        if (getTask() == null || confirmSecondSplitSelectApp()) {
            return;
        }
        launchTasks();
        this.mActivity.getStatsLogManager().logger().withItemInfo(getItemInfo()).log(StatsLogManager.LauncherEvent.LAUNCHER_TASK_LAUNCH_TAP);
    }

    private void setBoxTranslationY(float f4) {
        this.mBoxTranslationY = f4;
        applyTranslationY();
    }

    public void setDismissTranslationX(float f4) {
        this.mDismissTranslationX = f4;
        applyTranslationX();
    }

    public void setDismissTranslationY(float f4) {
        this.mDismissTranslationY = f4;
        applyTranslationY();
    }

    public void setGridEndTranslationX(float f4) {
        this.mGridEndTranslationX = f4;
        applyTranslationX();
    }

    private void setNonGridScale(float f4) {
        this.mNonGridScale = f4;
        applyScale();
    }

    public void setNonGridTranslationX(float f4) {
        this.mNonGridTranslationX = f4;
        applyTranslationX();
    }

    public void setNonGridTranslationY(float f4) {
        this.mNonGridTranslationY = f4;
        applyTranslationY();
    }

    public void setSnapshotScale(float f4) {
        this.mDismissScale = f4;
        applyScale();
    }

    public void setSplitSelectTranslationX(float f4) {
        this.mSplitSelectTranslationX = f4;
        applyTranslationX();
    }

    public void setSplitSelectTranslationY(float f4) {
        this.mSplitSelectTranslationY = f4;
        applyTranslationY();
    }

    public void setTaskOffsetTranslationX(float f4) {
        this.mTaskOffsetTranslationX = f4;
        applyTranslationX();
    }

    public void setTaskOffsetTranslationY(float f4) {
        this.mTaskOffsetTranslationY = f4;
        applyTranslationY();
    }

    public void setTaskResistanceTranslationX(float f4) {
        this.mTaskResistanceTranslationX = f4;
        applyTranslationX();
    }

    public void setTaskResistanceTranslationY(float f4) {
        this.mTaskResistanceTranslationY = f4;
        applyTranslationY();
    }

    private boolean showTaskMenu(IconView iconView) {
        if (getRecentsView().canLaunchFullscreenTask()) {
            if (this.mActivity.getDeviceProfile().isTablet || getRecentsView().isClearAllHidden()) {
                this.mActivity.getStatsLogManager().logger().withItemInfo(getItemInfo()).log(StatsLogManager.LauncherEvent.LAUNCHER_TASK_ICON_TAP_OR_LONGPRESS);
                return showTaskMenuWithContainer(iconView);
            }
            getRecentsView().snapToPage(getRecentsView().indexOfChild(this));
            return false;
        }
        return true;
    }

    public void animateIconScaleAndDimIntoView() {
        ObjectAnimator objectAnimator = this.mIconAndDimAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, FOCUS_TRANSITION, 1.0f);
        this.mIconAndDimAnimator = ofFloat;
        ofFloat.setCurrentFraction(this.mIconScaleAnimStartProgress);
        this.mIconAndDimAnimator.setDuration(DIM_ANIM_DURATION).setInterpolator(y0.e.f12949m);
        this.mIconAndDimAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.views.TaskView.15
            {
                TaskView.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                TaskView.this.mIconAndDimAnimator = null;
            }
        });
        this.mIconAndDimAnimator.start();
    }

    public void applyThumbnailSplashAlpha() {
        this.mSnapshotView.setSplashAlpha(this.mTaskThumbnailSplashAlpha);
    }

    public void bind(Task task, RecentsOrientedState recentsOrientedState) {
        cancelPendingLoadTasks();
        this.mTask = task;
        this.mTaskIdContainer[0] = task.key.id;
        this.mTaskIdAttributeContainer[0] = new TaskIdAttributeContainer(task, this.mSnapshotView, this.mIconView, -1);
        this.mSnapshotView.bind(task);
        setOrientationState(recentsOrientedState);
    }

    public void cancelPendingLoadTasks() {
        CancellableTask cancellableTask = this.mThumbnailLoadRequest;
        if (cancellableTask != null) {
            cancellableTask.cancel();
            this.mThumbnailLoadRequest = null;
        }
        CancellableTask cancellableTask2 = this.mIconLoadRequest;
        if (cancellableTask2 != null) {
            cancellableTask2.cancel();
            this.mIconLoadRequest = null;
        }
    }

    public void computeAndSetIconTouchDelegate(IconView iconView, float[] fArr, TransformingTouchDelegate transformingTouchDelegate) {
        float width = iconView.getWidth() / 2.0f;
        fArr[1] = width;
        fArr[0] = width;
        Utilities.getDescendantCoordRelativeToAncestor(iconView, this.mActivity.getDragLayer(), fArr, false, false);
        float f4 = fArr[0];
        float f5 = fArr[1];
        transformingTouchDelegate.setBounds((int) (f4 - width), (int) (f5 - width), (int) (f4 + width), (int) (f5 + width));
    }

    public boolean confirmSecondSplitSelectApp() {
        TaskIdAttributeContainer taskIdAttributeContainer = this.mTaskIdAttributeContainer[getLastSelectedChildTaskIndex()];
        if (taskIdAttributeContainer != null) {
            return getRecentsView().confirmSplitSelect(this, taskIdAttributeContainer.getTask(), taskIdAttributeContainer.getIconView().getDrawable(), taskIdAttributeContainer.getThumbnailView(), taskIdAttributeContainer.getThumbnailView().getThumbnail(), null, null);
        }
        return false;
    }

    public boolean containsMultipleTasks() {
        return this.mTaskIdContainer[1] != -1;
    }

    public boolean containsTaskId(int i4) {
        Task task = this.mTask;
        return task != null && task.key.id == i4;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        RecentsView recentsView = getRecentsView();
        if (recentsView == null || getTask() == null) {
            return false;
        }
        SplitSelectStateController splitSelectController = recentsView.getSplitSelectController();
        if (splitSelectController.isSplitSelectActive() && splitSelectController.getInitialTaskId() == getTask().key.id && !containsMultipleTasks()) {
            return false;
        }
        if (motionEvent.getAction() == 0) {
            this.mLastTouchDownPosition.set(motionEvent.getX(), motionEvent.getY());
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        BorderAnimator borderAnimator = this.mFocusBorderAnimator;
        if (borderAnimator != null) {
            borderAnimator.drawBorder(canvas);
        }
        BorderAnimator borderAnimator2 = this.mHoverBorderAnimator;
        if (borderAnimator2 != null) {
            borderAnimator2.drawBorder(canvas);
        }
    }

    public DigitalWellBeingToast getDigitalWellBeingToast() {
        return this.mDigitalWellBeingToast;
    }

    public View.OnClickListener getFilterUpdateCallback(String str) {
        Q q4 = new Q(this, str, 1);
        if (getRecentsView().getFilterState().shouldShowFilterUI(str)) {
            return q4;
        }
        return null;
    }

    public float getGridTranslationX() {
        return this.mGridTranslationX;
    }

    public float getGridTranslationY() {
        return this.mGridTranslationY;
    }

    public IconView getIconView() {
        return this.mIconView;
    }

    public WorkspaceItemInfo getItemInfo() {
        return getItemInfo(this.mTask);
    }

    public int getLastSelectedChildTaskIndex() {
        return 0;
    }

    public float getNonGridScale() {
        return this.mNonGridScale;
    }

    public float getOffsetAdjustment(boolean z4) {
        return getScrollAdjustment(z4);
    }

    public PagedOrientationHandler getPagedOrientationHandler() {
        return getRecentsView().mOrientationState.getOrientationHandler();
    }

    public float getPersistentScale() {
        float interpolation = GRID_INTERPOLATOR.getInterpolation(this.mGridProgress);
        float f4 = this.mNonGridScale;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        return (((1.0f - f4) * interpolation) + f4) * 1.0f;
    }

    public float getPersistentTranslationX() {
        return getNonGridTrans(this.mNonGridTranslationX) + getGridTrans(this.mGridTranslationX);
    }

    public float getPersistentTranslationY() {
        return this.mBoxTranslationY + getNonGridTrans(this.mNonGridTranslationY) + getGridTrans(this.mGridTranslationY);
    }

    public FloatProperty getPrimaryDismissTranslationProperty() {
        return (FloatProperty) getPagedOrientationHandler().getPrimaryValue(DISMISS_TRANSLATION_X, DISMISS_TRANSLATION_Y);
    }

    public FloatProperty getPrimaryNonGridTranslationProperty() {
        return (FloatProperty) getPagedOrientationHandler().getPrimaryValue(NON_GRID_TRANSLATION_X, NON_GRID_TRANSLATION_Y);
    }

    public FloatProperty getPrimarySplitTranslationProperty() {
        return (FloatProperty) getPagedOrientationHandler().getPrimaryValue(SPLIT_SELECT_TRANSLATION_X, SPLIT_SELECT_TRANSLATION_Y);
    }

    public FloatProperty getPrimaryTaskOffsetTranslationProperty() {
        return (FloatProperty) getPagedOrientationHandler().getPrimaryValue(TASK_OFFSET_TRANSLATION_X, TASK_OFFSET_TRANSLATION_Y);
    }

    public RecentsView getRecentsView() {
        return (RecentsView) getParent();
    }

    public float getScrollAdjustment(boolean z4) {
        return (z4 ? this.mGridTranslationX : ((Float) getPrimaryNonGridTranslationProperty().get(this)).floatValue()) + EDGE_SCALE_DOWN_FACTOR_GRID;
    }

    public FloatProperty getSecondaryDismissTranslationProperty() {
        return (FloatProperty) getPagedOrientationHandler().getSecondaryValue(DISMISS_TRANSLATION_X, DISMISS_TRANSLATION_Y);
    }

    public FloatProperty getSecondaryNonGridTranslationProperty() {
        return (FloatProperty) getPagedOrientationHandler().getSecondaryValue(NON_GRID_TRANSLATION_X, NON_GRID_TRANSLATION_Y);
    }

    public FloatProperty getSecondarySplitTranslationProperty() {
        return (FloatProperty) getPagedOrientationHandler().getSecondaryValue(SPLIT_SELECT_TRANSLATION_X, SPLIT_SELECT_TRANSLATION_Y);
    }

    public FloatProperty getSecondaryTaskOffsetTranslationProperty() {
        return (FloatProperty) getPagedOrientationHandler().getSecondaryValue(TASK_OFFSET_TRANSLATION_X, TASK_OFFSET_TRANSLATION_Y);
    }

    public float getSizeAdjustment(boolean z4) {
        if (z4) {
            return 1.0f * this.mNonGridScale;
        }
        return 1.0f;
    }

    public Task getTask() {
        return this.mTask;
    }

    public TaskIdAttributeContainer getTaskAttributesById(int i4) {
        TaskIdAttributeContainer[] taskIdAttributeContainerArr;
        for (TaskIdAttributeContainer taskIdAttributeContainer : this.mTaskIdAttributeContainer) {
            if (taskIdAttributeContainer.getTask().key.id == i4) {
                return taskIdAttributeContainer;
            }
        }
        return null;
    }

    public float getTaskCornerRadius() {
        return this.mCurrentFullscreenParams.mCornerRadius;
    }

    public TaskIdAttributeContainer[] getTaskIdAttributeContainers() {
        return this.mTaskIdAttributeContainer;
    }

    public int[] getTaskIds() {
        int[] iArr = this.mTaskIdContainer;
        return Arrays.copyOf(iArr, iArr.length);
    }

    public FloatProperty getTaskResistanceTranslationProperty() {
        return (FloatProperty) getPagedOrientationHandler().getSecondaryValue(TASK_RESISTANCE_TRANSLATION_X, TASK_RESISTANCE_TRANSLATION_Y);
    }

    public int getTaskViewId() {
        return this.mTaskViewId;
    }

    public int getThisTaskCurrentlyInSplitSelection() {
        SplitSelectStateController splitSelectController = getRecentsView().getSplitSelectController();
        for (TaskIdAttributeContainer taskIdAttributeContainer : getTaskIdAttributeContainers()) {
            int i4 = taskIdAttributeContainer.getTask().key.id;
            if (i4 == splitSelectController.getInitialTaskId()) {
                return i4;
            }
        }
        return -1;
    }

    public TaskThumbnailView getThumbnail() {
        return this.mSnapshotView;
    }

    public TaskThumbnailView[] getThumbnails() {
        return new TaskThumbnailView[]{this.mSnapshotView};
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    public void initiateSplitSelect(SplitConfigurationOptions$SplitPositionOption splitConfigurationOptions$SplitPositionOption) {
        RecentsView recentsView = getRecentsView();
        int i4 = splitConfigurationOptions$SplitPositionOption.stagePosition;
        recentsView.initiateSplitSelect(this, i4, i4 == 0 ? StatsLogManager.LauncherEvent.LAUNCHER_APP_ICON_MENU_SPLIT_LEFT_TOP : StatsLogManager.LauncherEvent.LAUNCHER_APP_ICON_MENU_SPLIT_RIGHT_BOTTOM);
    }

    public boolean isDesktopTask() {
        return false;
    }

    public boolean isEndQuickswitchCuj() {
        return this.mEndQuickswitchCuj;
    }

    public boolean isFocusedTask() {
        return getRecentsView() != null && this == getRecentsView().getFocusedTaskView();
    }

    public boolean isGridTask() {
        return this.mActivity.getDeviceProfile().isTablet && !isFocusedTask();
    }

    public boolean isRunningTask() {
        return getRecentsView() != null && this == getRecentsView().getRunningTaskView();
    }

    public void launchTask(Consumer consumer) {
        launchTask(consumer, false);
    }

    public RunnableList launchTaskAnimated() {
        Task task = this.mTask;
        if (task != null) {
            TestLogging.recordEvent(task);
            ActivityOptionsWrapper activityLaunchOptions = this.mActivity.getActivityLaunchOptions(this, null);
            activityLaunchOptions.options.setLaunchDisplayId(getDisplay() == null ? 0 : getDisplay().getDisplayId());
            if (ActivityManagerWrapper.getInstance().startActivityFromRecents(this.mTask.key, activityLaunchOptions.options)) {
                RecentsView recentsView = getRecentsView();
                if (recentsView.getRunningTaskViewId() != -1) {
                    recentsView.onTaskLaunchedInLiveTileMode();
                    RunnableList runnableList = new RunnableList();
                    recentsView.addSideTaskLaunchCallback(runnableList);
                    return runnableList;
                }
                boolean z4 = TaskAnimationManager.ENABLE_SHELL_TRANSITIONS;
                RunnableList runnableList2 = activityLaunchOptions.onEndCallback;
                if (z4) {
                    recentsView.addSideTaskLaunchCallback(runnableList2);
                }
                return runnableList2;
            }
            notifyTaskLaunchFailed(TAG);
        }
        return null;
    }

    public RunnableList launchTasks() {
        RemoteAnimationTargets remoteAnimationTargets;
        RecentsView recentsView = getRecentsView();
        RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr = recentsView.mRemoteTargetHandles;
        if (!isRunningTask() || remoteTargetHandleArr == null) {
            return launchTaskAnimated();
        }
        if (!this.mIsClickableAsLiveTile) {
            Log.e(TAG, "TaskView is not clickable as a live tile; returning to home.");
            return null;
        }
        this.mIsClickableAsLiveTile = false;
        if (remoteTargetHandleArr.length == 1) {
            remoteAnimationTargets = remoteTargetHandleArr[0].getTransformParams().getTargetSet();
        } else {
            TransformParams transformParams = remoteTargetHandleArr[0].getTransformParams();
            TransformParams transformParams2 = remoteTargetHandleArr[1].getTransformParams();
            remoteAnimationTargets = new RemoteAnimationTargets((RemoteAnimationTarget[]) Stream.concat(Arrays.stream(transformParams.getTargetSet().apps), Arrays.stream(transformParams2.getTargetSet().apps)).toArray(new IntFunction() { // from class: com.android.quickstep.views.T
                @Override // java.util.function.IntFunction
                public final Object apply(int i4) {
                    RemoteAnimationTarget[] lambda$launchTasks$8;
                    RemoteAnimationTarget[] lambda$launchTasks$7;
                    switch (r1) {
                        case 0:
                            lambda$launchTasks$7 = TaskView.lambda$launchTasks$7(i4);
                            return lambda$launchTasks$7;
                        default:
                            lambda$launchTasks$8 = TaskView.lambda$launchTasks$8(i4);
                            return lambda$launchTasks$8;
                    }
                }
            }), (RemoteAnimationTarget[]) Stream.concat(Arrays.stream(transformParams.getTargetSet().wallpapers), Arrays.stream(transformParams2.getTargetSet().wallpapers)).toArray(new IntFunction() { // from class: com.android.quickstep.views.T
                @Override // java.util.function.IntFunction
                public final Object apply(int i4) {
                    RemoteAnimationTarget[] lambda$launchTasks$8;
                    RemoteAnimationTarget[] lambda$launchTasks$7;
                    switch (r1) {
                        case 0:
                            lambda$launchTasks$7 = TaskView.lambda$launchTasks$7(i4);
                            return lambda$launchTasks$7;
                        default:
                            lambda$launchTasks$8 = TaskView.lambda$launchTasks$8(i4);
                            return lambda$launchTasks$8;
                    }
                }
            }), transformParams.getTargetSet().nonApps, transformParams.getTargetSet().targetMode);
        }
        if (remoteAnimationTargets == null) {
            RunnableList launchTaskAnimated = launchTaskAnimated();
            if (launchTaskAnimated == null) {
                Log.e(TAG, "Recents animation cancelled and cannot launch task as non-live tile; returning to home");
            }
            this.mIsClickableAsLiveTile = true;
            return launchTaskAnimated;
        }
        RunnableList runnableList = new RunnableList();
        AnimatorSet animatorSet = new AnimatorSet();
        TaskViewUtils.composeRecentsLaunchAnimator(animatorSet, this, remoteAnimationTargets.apps, remoteAnimationTargets.wallpapers, remoteAnimationTargets.nonApps, true, this.mActivity.getStateManager(), recentsView, recentsView.getDepthController());
        animatorSet.addListener(new AnonymousClass14(recentsView, runnableList));
        animatorSet.start();
        recentsView.onTaskLaunchedInLiveTileMode();
        return runnableList;
    }

    public boolean needsUpdate(int i4, int i5) {
        return (i4 & i5) == i5;
    }

    public boolean offerTouchToChildren(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            computeAndSetIconTouchDelegate(this.mIconView, this.mIconCenterCoords, this.mIconTouchDelegate);
        }
        TransformingTouchDelegate transformingTouchDelegate = this.mIconTouchDelegate;
        return transformingTouchDelegate != null && transformingTouchDelegate.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSnapshotView = (TaskThumbnailView) findViewById(R.id.snapshot);
        this.mIconView = (IconView) findViewById(R.id.icon);
        this.mIconTouchDelegate = new TransformingTouchDelegate(this.mIconView);
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z4, int i4, Rect rect) {
        super.onFocusChanged(z4, i4, rect);
        BorderAnimator borderAnimator = this.mFocusBorderAnimator;
        if (borderAnimator != null) {
            borderAnimator.buildAnimator(z4).start();
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (FeatureFlags.ENABLE_CURSOR_HOVER_STATES.get()) {
            int action = motionEvent.getAction();
            if (action == 9) {
                this.mHoverBorderAnimator.buildAnimator(true).start();
            } else if (action == 10) {
                this.mHoverBorderAnimator.buildAnimator(false).start();
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        TaskIdAttributeContainer[] taskIdAttributeContainerArr;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.string.accessibility_close, getContext().getText(R.string.accessibility_close)));
        Context context = getContext();
        for (final TaskIdAttributeContainer taskIdAttributeContainer : this.mTaskIdAttributeContainer) {
            if (taskIdAttributeContainer != null) {
                for (SystemShortcut systemShortcut : (List) TraceHelper.allowIpcs("TV.a11yInfo", new Supplier() { // from class: com.android.quickstep.views.U
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        List lambda$onInitializeAccessibilityNodeInfo$13;
                        lambda$onInitializeAccessibilityNodeInfo$13 = TaskView.this.lambda$onInitializeAccessibilityNodeInfo$13(taskIdAttributeContainer);
                        return lambda$onInitializeAccessibilityNodeInfo$13;
                    }
                })) {
                    accessibilityNodeInfo.addAction(systemShortcut.createAccessibilityAction(context));
                }
            }
        }
        if (this.mDigitalWellBeingToast.hasLimit()) {
            accessibilityNodeInfo.addAction(new AccessibilityNodeInfo.AccessibilityAction(R.string.accessibility_app_usage_settings, getContext().getText(R.string.accessibility_app_usage_settings)));
        }
        RecentsView recentsView = getRecentsView();
        accessibilityNodeInfo.setCollectionItemInfo(AccessibilityNodeInfo.CollectionItemInfo.obtain(0, 1, (recentsView.getTaskViewCount() - recentsView.indexOfChild(this)) - 1, 1, false));
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
        if (FeatureFlags.ENABLE_CURSOR_HOVER_STATES.get()) {
            return true;
        }
        return super.onInterceptHoverEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        if (this.mActivity.getDeviceProfile().isTablet) {
            setPivotX(getLayoutDirection() == 1 ? EDGE_SCALE_DOWN_FACTOR_GRID : i6 - i4);
            setPivotY(this.mSnapshotView.getTop());
        } else {
            setPivotX((i6 - i4) * 0.5f);
            setPivotY((this.mSnapshotView.getHeight() * 0.5f) + this.mSnapshotView.getTop());
        }
        if (Utilities.ATLEAST_Q) {
            List list = SYSTEM_GESTURE_EXCLUSION_RECT;
            ((Rect) list.get(0)).set(0, 0, getWidth(), getHeight());
            setSystemGestureExclusionRects(list);
        }
    }

    public void onRecycle() {
        resetPersistentViewTransforms();
        this.mSnapshotView.setThumbnail(this.mTask, null);
        setOverlayEnabled(false);
        onTaskListVisibilityChanged(false);
    }

    public void onTaskListVisibilityChanged(boolean z4) {
        onTaskListVisibilityChanged(z4, 7);
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i4, Bundle bundle) {
        TaskIdAttributeContainer[] taskIdAttributeContainerArr;
        if (i4 == R.string.accessibility_close) {
            getRecentsView().dismissTask(this, true, true);
            return true;
        } else if (i4 == R.string.accessibility_app_usage_settings) {
            this.mDigitalWellBeingToast.openAppUsageSettings(this);
            return true;
        } else {
            for (TaskIdAttributeContainer taskIdAttributeContainer : this.mTaskIdAttributeContainer) {
                if (taskIdAttributeContainer != null) {
                    for (SystemShortcut systemShortcut : TaskOverlayFactory.getEnabledShortcuts(this, taskIdAttributeContainer)) {
                        if (systemShortcut.hasHandlerForAction(i4)) {
                            systemShortcut.onClick(this);
                            return true;
                        }
                    }
                    continue;
                }
            }
            return super.performAccessibilityAction(i4, bundle);
        }
    }

    public void refreshTaskThumbnailSplash() {
        this.mSnapshotView.refreshSplashView();
    }

    public void refreshThumbnails(HashMap hashMap) {
        ThumbnailData thumbnailData;
        Task task = this.mTask;
        if (task == null || hashMap == null || (thumbnailData = (ThumbnailData) hashMap.get(Integer.valueOf(task.key.id))) == null) {
            this.mSnapshotView.refresh();
        } else {
            this.mSnapshotView.setThumbnail(this.mTask, thumbnailData);
        }
    }

    public void resetPersistentViewTransforms() {
        this.mBoxTranslationY = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mGridTranslationY = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mGridTranslationX = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mNonGridTranslationY = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mNonGridTranslationX = EDGE_SCALE_DOWN_FACTOR_GRID;
        resetViewTransforms();
    }

    public void resetViewTransforms() {
        this.mGridEndTranslationX = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mSplitSelectTranslationX = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mTaskResistanceTranslationX = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mTaskOffsetTranslationX = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mDismissTranslationX = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mTaskResistanceTranslationY = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mTaskOffsetTranslationY = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mDismissTranslationY = EDGE_SCALE_DOWN_FACTOR_GRID;
        if (getRecentsView() == null || !getRecentsView().isSplitSelectionActive()) {
            this.mSplitSelectTranslationY = EDGE_SCALE_DOWN_FACTOR_GRID;
        }
        setSnapshotScale(1.0f);
        applyTranslationX();
        applyTranslationY();
        setTranslationZ(EDGE_SCALE_DOWN_FACTOR_GRID);
        setAlpha(this.mStableAlpha);
        setIconScaleAndDim(1.0f);
        setColorTint(EDGE_SCALE_DOWN_FACTOR_GRID, 0);
        this.mSnapshotView.resetViewTransforms();
    }

    public void setColorTint(float f4, int i4) {
        this.mSnapshotView.setDimAlpha(f4);
        this.mIconView.setIconColorTint(i4, f4);
        this.mDigitalWellBeingToast.setBannerColorTint(i4, f4);
    }

    public void setEndQuickswitchCuj(boolean z4) {
        this.mEndQuickswitchCuj = z4;
    }

    public void setFullscreenProgress(float f4) {
        float boundToRange = Utilities.boundToRange(f4, (float) EDGE_SCALE_DOWN_FACTOR_GRID, 1.0f);
        this.mFullscreenProgress = boundToRange;
        this.mIconView.setVisibility(boundToRange < 1.0f ? 0 : 4);
        this.mSnapshotView.getTaskOverlay().setFullscreenProgress(boundToRange);
        if (this.mActivity.getStateManager().getState() != LauncherState.BACKGROUND_APP) {
            setIconsAndBannersTransitionProgress(boundToRange, true);
        }
        updateSnapshotRadius();
    }

    public void setGridProgress(float f4) {
        this.mGridProgress = f4;
        applyTranslationX();
        applyTranslationY();
        applyScale();
    }

    public void setGridTranslationX(float f4) {
        this.mGridTranslationX = f4;
        applyTranslationX();
    }

    public void setGridTranslationY(float f4) {
        this.mGridTranslationY = f4;
        applyTranslationY();
    }

    public void setIcon(final IconView iconView, Drawable drawable) {
        if (drawable != null) {
            iconView.setDrawable(drawable);
            iconView.setOnClickListener(new Q(this, iconView, 0));
            iconView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.quickstep.views.V
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean lambda$setIcon$12;
                    lambda$setIcon$12 = TaskView.this.lambda$setIcon$12(iconView, view);
                    return lambda$setIcon$12;
                }
            });
            return;
        }
        iconView.setDrawable(null);
        iconView.setOnClickListener(null);
        iconView.setOnLongClickListener(null);
    }

    public void setIconOrientation(RecentsOrientedState recentsOrientedState) {
        PagedOrientationHandler orientationHandler = recentsOrientedState.getOrientationHandler();
        boolean z4 = getLayoutDirection() == 1;
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        boolean isGridTask = isGridTask();
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mIconView.getLayoutParams();
        int i4 = deviceProfile.overviewTaskThumbnailTopMarginPx;
        int i5 = deviceProfile.overviewTaskIconSizePx;
        orientationHandler.setTaskIconParams(layoutParams, deviceProfile.overviewTaskMarginPx, i5, i4, z4);
        layoutParams.height = i5;
        layoutParams.width = i5;
        this.mIconView.setLayoutParams(layoutParams);
        this.mIconView.setRotation(orientationHandler.getDegreesRotated());
        int i6 = isGridTask ? deviceProfile.overviewTaskIconDrawableSizeGridPx : deviceProfile.overviewTaskIconDrawableSizePx;
        this.mIconView.setDrawableSize(i6, i6);
    }

    public void setIconScaleAndDim(float f4) {
        setIconScaleAndDim(f4, false);
    }

    public void setIconScaleAnimStartProgress(float f4) {
        this.mIconScaleAnimStartProgress = f4;
    }

    public void setIconsAndBannersTransitionProgress(float f4, boolean z4) {
        if (z4) {
            f4 = 1.0f - f4;
        }
        this.mFocusTransitionProgress = f4;
        float interpolation = y0.e.b(z4 ? 0.82857144f : EDGE_SCALE_DOWN_FACTOR_GRID, z4 ? 1.0f : 0.17142858f, y0.e.f12950n).getInterpolation(f4);
        this.mIconView.setAlpha(interpolation);
        this.mDigitalWellBeingToast.updateBannerOffset(1.0f - interpolation);
    }

    public void setModalness(float f4) {
        if (this.mModalness == f4) {
            return;
        }
        this.mModalness = f4;
        this.mIconView.setAlpha(1.0f - f4);
        this.mDigitalWellBeingToast.updateBannerOffset(f4);
    }

    public void setOrientationState(RecentsOrientedState recentsOrientedState) {
        setIconOrientation(recentsOrientedState);
        setThumbnailOrientation(recentsOrientedState);
    }

    public void setOverlayEnabled(boolean z4) {
        this.mSnapshotView.setOverlayEnabled(z4);
    }

    public void setShowScreenshot(boolean z4) {
        this.mShowScreenshot = z4;
    }

    public void setStableAlpha(float f4) {
        this.mStableAlpha = f4;
        setAlpha(f4);
    }

    public void setTaskThumbnailSplashAlpha(float f4) {
        this.mTaskThumbnailSplashAlpha = f4;
        applyThumbnailSplashAlpha();
    }

    public void setTaskViewId(int i4) {
        this.mTaskViewId = i4;
    }

    public void setThumbnailOrientation(RecentsOrientedState recentsOrientedState) {
        int i4 = this.mActivity.getDeviceProfile().overviewTaskThumbnailTopMarginPx;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.mSnapshotView.getLayoutParams();
        layoutParams.topMargin = i4;
        this.mSnapshotView.setLayoutParams(layoutParams);
        this.mSnapshotView.getTaskOverlay().updateOrientationState(recentsOrientedState);
        this.mDigitalWellBeingToast.initialize(this.mTask);
    }

    public void setThumbnailVisibility(int i4, int i5) {
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            if (childAt != this.mIconView) {
                childAt.setVisibility(i4);
            }
        }
    }

    public void setUpShowAllInstancesListener() {
        updateFilterCallback(findViewById(R.id.show_windows), getFilterUpdateCallback(this.mTaskIdAttributeContainer[0].mTask.key.getPackageName()));
    }

    public boolean showScreenshot() {
        if (isRunningTask()) {
            return this.mShowScreenshot;
        }
        return true;
    }

    public boolean showTaskMenuWithContainer(IconView iconView) {
        int i4 = 0;
        TaskIdAttributeContainer taskIdAttributeContainer = this.mTaskIdAttributeContainer[iconView == this.mIconView ? (char) 0 : (char) 1];
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        if (deviceProfile.isTablet) {
            if (getRecentsView().isOnGridBottomRow(taskIdAttributeContainer.getTaskView()) && deviceProfile.isLandscape) {
                i4 = FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get() ? 2 : 1;
            }
            return TaskMenuViewWithArrow.Companion.showForTask(taskIdAttributeContainer, i4);
        }
        return TaskMenuView.showForTask(taskIdAttributeContainer);
    }

    public void updateBorderBounds(Rect rect) {
        rect.set(Math.round(this.mSnapshotView.getTranslationX()) + this.mSnapshotView.getLeft(), Math.round(this.mSnapshotView.getTranslationY()) + this.mSnapshotView.getTop(), Math.round(this.mSnapshotView.getTranslationX()) + this.mSnapshotView.getRight(), Math.round(this.mSnapshotView.getTranslationY()) + this.mSnapshotView.getBottom());
    }

    public void updateCurrentFullscreenParams(PreviewPositionHelper previewPositionHelper) {
        updateFullscreenParams(this.mCurrentFullscreenParams, previewPositionHelper);
    }

    public void updateFilterCallback(View view, View.OnClickListener onClickListener) {
        if (onClickListener == null) {
            view.setAlpha(EDGE_SCALE_DOWN_FACTOR_GRID);
        } else {
            view.setAlpha(1.0f);
        }
        view.setOnClickListener(onClickListener);
    }

    public void updateFullscreenParams(FullscreenDrawParams fullscreenDrawParams, PreviewPositionHelper previewPositionHelper) {
        if (getRecentsView() == null) {
            return;
        }
        fullscreenDrawParams.setProgress(this.mFullscreenProgress, getRecentsView().getScaleX(), getScaleX(), getWidth(), this.mActivity.getDeviceProfile(), previewPositionHelper);
    }

    public void updateSnapshotRadius() {
        updateCurrentFullscreenParams(this.mSnapshotView.getPreviewPositionHelper());
        this.mSnapshotView.setFullscreenParams(this.mCurrentFullscreenParams);
    }

    public void updateTaskSize() {
        int i4;
        float f4;
        float f5;
        int i5;
        int height;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        if (deviceProfile.isTablet) {
            int i6 = deviceProfile.overviewTaskThumbnailTopMarginPx;
            Rect lastComputedTaskSize = getRecentsView().getLastComputedTaskSize();
            int width = lastComputedTaskSize.width();
            int height2 = lastComputedTaskSize.height();
            boolean isFocusedTask = isFocusedTask();
            if (isDesktopTask()) {
                Rect lastComputedDesktopTaskSize = getRecentsView().getLastComputedDesktopTaskSize();
                i4 = lastComputedDesktopTaskSize.width();
                height = lastComputedDesktopTaskSize.height();
            } else if (isFocusedTask) {
                height = height2;
                i4 = width;
            } else {
                Rect lastComputedGridTaskSize = getRecentsView().getLastComputedGridTaskSize();
                i4 = lastComputedGridTaskSize.width();
                height = lastComputedGridTaskSize.height();
            }
            i5 = height + i6;
            f4 = width / i4;
            f5 = ((i5 - i6) - height2) / 2.0f;
        } else {
            i4 = -1;
            f4 = 1.0f;
            f5 = EDGE_SCALE_DOWN_FACTOR_GRID;
            i5 = -1;
        }
        setNonGridScale(f4);
        setBoxTranslationY(f5);
        if (layoutParams.width == i4 && layoutParams.height == i5) {
            return;
        }
        layoutParams.width = i4;
        layoutParams.height = i5;
        setLayoutParams(layoutParams);
    }

    public TaskView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void setIconScaleAndDim(float f4, boolean z4) {
        ObjectAnimator objectAnimator = this.mIconAndDimAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        setIconsAndBannersTransitionProgress(f4, z4);
    }

    public WorkspaceItemInfo getItemInfo(Task task) {
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.itemType = 7;
        workspaceItemInfo.container = -109;
        if (task == null) {
            return workspaceItemInfo;
        }
        ComponentKey launchComponentKeyForTask = TaskUtils.getLaunchComponentKeyForTask(task.key);
        workspaceItemInfo.user = launchComponentKeyForTask.user;
        workspaceItemInfo.intent = new Intent().setComponent(launchComponentKeyForTask.componentName);
        workspaceItemInfo.title = task.title;
        if (getRecentsView() != null) {
            workspaceItemInfo.screenId = getRecentsView().indexOfChild(this);
        }
        return workspaceItemInfo;
    }

    public void launchTask(final Consumer consumer, boolean z4) {
        Task task = this.mTask;
        if (task != null) {
            TestLogging.recordEvent(task);
            final TaskRemovedDuringLaunchListener taskRemovedDuringLaunchListener = new TaskRemovedDuringLaunchListener();
            if (z4) {
                taskRemovedDuringLaunchListener.register(this.mActivity, this.mTask.key.id, new Runnable() { // from class: com.android.quickstep.views.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        TaskView.this.lambda$launchTask$1();
                    }
                });
            }
            final ActivityOptions makeCustomTaskAnimation = ActivityOptions.makeCustomTaskAnimation(getContext(), 0, 0, Executors.MAIN_EXECUTOR.getHandler(), new ActivityOptions.OnAnimationStartedListener() { // from class: com.android.quickstep.views.c0
                public final void onAnimationStarted(long j4) {
                    TaskView.lambda$launchTask$2(consumer, j4);
                }
            }, new ActivityOptions.OnAnimationFinishedListener() { // from class: com.android.quickstep.views.d0
                public final void onAnimationFinished(long j4) {
                    TaskRemovedDuringLaunchListener.this.onTransitionFinished();
                }
            });
            makeCustomTaskAnimation.setLaunchDisplayId(getDisplay() == null ? 0 : getDisplay().getDisplayId());
            if (z4) {
                makeCustomTaskAnimation.setFreezeRecentTasksReordering();
            }
            makeCustomTaskAnimation.setDisableStartingWindow(this.mSnapshotView.shouldShowSplashView());
            final Task.TaskKey taskKey = this.mTask.key;
            Executors.UI_HELPER_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.views.S
                @Override // java.lang.Runnable
                public final void run() {
                    TaskView.this.lambda$launchTask$5(taskKey, makeCustomTaskAnimation, consumer);
                }
            });
            return;
        }
        consumer.accept(Boolean.FALSE);
    }

    public void onTaskListVisibilityChanged(boolean z4, int i4) {
        if (this.mTask == null) {
            return;
        }
        cancelPendingLoadTasks();
        if (z4) {
            RecentsModel recentsModel = (RecentsModel) RecentsModel.INSTANCE.get(getContext());
            TaskThumbnailCache thumbnailCache = recentsModel.getThumbnailCache();
            TaskIconCache iconCache = recentsModel.getIconCache();
            if (needsUpdate(i4, 2)) {
                this.mThumbnailLoadRequest = thumbnailCache.updateThumbnailInBackground(this.mTask, new Consumer(this) { // from class: com.android.quickstep.views.Z

                    /* renamed from: b  reason: collision with root package name */
                    public final /* synthetic */ TaskView f5957b;

                    {
                        this.f5957b = this;
                    }

                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r2) {
                            case 0:
                                this.f5957b.lambda$onTaskListVisibilityChanged$9((ThumbnailData) obj);
                                return;
                            default:
                                this.f5957b.lambda$onTaskListVisibilityChanged$10((Task) obj);
                                return;
                        }
                    }
                });
            }
            if (needsUpdate(i4, 1)) {
                this.mIconLoadRequest = iconCache.updateIconInBackground(this.mTask, new Consumer(this) { // from class: com.android.quickstep.views.Z

                    /* renamed from: b  reason: collision with root package name */
                    public final /* synthetic */ TaskView f5957b;

                    {
                        this.f5957b = this;
                    }

                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        switch (r2) {
                            case 0:
                                this.f5957b.lambda$onTaskListVisibilityChanged$9((ThumbnailData) obj);
                                return;
                            default:
                                this.f5957b.lambda$onTaskListVisibilityChanged$10((Task) obj);
                                return;
                        }
                    }
                });
            }
            if (needsUpdate(i4, 4)) {
                this.mCurrentFullscreenParams.updateCornerRadius(getContext());
                return;
            }
            return;
        }
        if (needsUpdate(i4, 2)) {
            this.mSnapshotView.setThumbnail(null, null);
            this.mTask.thumbnail = null;
        }
        if (needsUpdate(i4, 1)) {
            setIcon(this.mIconView, null);
        }
    }

    public TaskView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public TaskView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mNonGridScale = 1.0f;
        this.mDismissScale = 1.0f;
        this.mIconScaleAnimStartProgress = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mFocusTransitionProgress = 1.0f;
        this.mModalness = EDGE_SCALE_DOWN_FACTOR_GRID;
        this.mStableAlpha = 1.0f;
        this.mTaskViewId = -1;
        this.mTaskIdContainer = new int[]{-1, -1};
        this.mTaskIdAttributeContainer = new TaskIdAttributeContainer[2];
        this.mIconCenterCoords = new float[2];
        this.mLastTouchDownPosition = new PointF();
        this.mIsClickableAsLiveTile = true;
        StatefulActivity statefulActivity = (StatefulActivity) BaseActivity.fromContext(context);
        this.mActivity = statefulActivity;
        setOnClickListener(new View.OnClickListener() { // from class: com.android.quickstep.views.W
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TaskView.this.onClick(view);
            }
        });
        FullscreenDrawParams fullscreenDrawParams = new FullscreenDrawParams(context);
        this.mCurrentFullscreenParams = fullscreenDrawParams;
        this.mDigitalWellBeingToast = new DigitalWellBeingToast(statefulActivity, this);
        boolean z4 = FeatureFlags.ENABLE_KEYBOARD_QUICK_SWITCH.get() || DesktopTaskView.DESKTOP_MODE_SUPPORTED;
        boolean z5 = z4 || FeatureFlags.ENABLE_CURSOR_HOVER_STATES.get();
        setWillNotDraw(!z5);
        if (z5) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TaskView, i4, i5);
            this.mFocusBorderAnimator = z4 ? new BorderAnimator((int) fullscreenDrawParams.mCornerRadius, obtainStyledAttributes.getColor(0, -1), new BorderAnimator.SimpleParams(context.getResources().getDimensionPixelSize(R.dimen.keyboard_quick_switch_border_width), new BorderAnimator.BorderBoundsBuilder(this) { // from class: com.android.quickstep.views.X

                /* renamed from: b  reason: collision with root package name */
                public final /* synthetic */ TaskView f5953b;

                {
                    this.f5953b = this;
                }

                @Override // com.android.quickstep.util.BorderAnimator.BorderBoundsBuilder
                public final void updateBorderBounds(Rect rect) {
                    int i6 = r2;
                    TaskView taskView = this.f5953b;
                    switch (i6) {
                        case 0:
                            taskView.updateBorderBounds(rect);
                            return;
                        default:
                            taskView.updateBorderBounds(rect);
                            return;
                    }
                }
            }, this)) : null;
            this.mHoverBorderAnimator = FeatureFlags.ENABLE_CURSOR_HOVER_STATES.get() ? new BorderAnimator((int) fullscreenDrawParams.mCornerRadius, obtainStyledAttributes.getColor(1, -1), new BorderAnimator.SimpleParams(context.getResources().getDimensionPixelSize(R.dimen.task_hover_border_width), new BorderAnimator.BorderBoundsBuilder(this) { // from class: com.android.quickstep.views.X

                /* renamed from: b  reason: collision with root package name */
                public final /* synthetic */ TaskView f5953b;

                {
                    this.f5953b = this;
                }

                @Override // com.android.quickstep.util.BorderAnimator.BorderBoundsBuilder
                public final void updateBorderBounds(Rect rect) {
                    int i6 = r2;
                    TaskView taskView = this.f5953b;
                    switch (i6) {
                        case 0:
                            taskView.updateBorderBounds(rect);
                            return;
                        default:
                            taskView.updateBorderBounds(rect);
                            return;
                    }
                }
            }, this)) : null;
            obtainStyledAttributes.recycle();
            return;
        }
        this.mFocusBorderAnimator = null;
        this.mHoverBorderAnimator = null;
    }
}
