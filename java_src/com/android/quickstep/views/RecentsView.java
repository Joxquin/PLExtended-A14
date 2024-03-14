package com.android.quickstep.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.LayoutTransition;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.Intent;
import android.content.LocusId;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.VibrationEffect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.Log;
import android.util.Pair;
import android.util.Property;
import android.util.SparseBooleanArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.RemoteAnimationTarget;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ListView;
import android.widget.OverScroller;
import android.widget.Toast;
import android.window.PictureInPictureSurfaceTransaction;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.LauncherState;
import com.android.launcher3.PagedView;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.anim.SpringProperty;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.W0;
import com.android.launcher3.statehandlers.DepthController;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.touch.OverScroll;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.util.DynamicResource;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.MultiPropertyFactory;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.SplitConfigurationOptions$SplitBounds;
import com.android.launcher3.util.SplitConfigurationOptions$SplitSelectSource;
import com.android.launcher3.util.TranslateEdgeEffect;
import com.android.launcher3.util.VibratorWrapper;
import com.android.launcher3.util.ViewPool;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.GestureState;
import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.RecentsAnimationTargets;
import com.android.quickstep.RecentsFilterState;
import com.android.quickstep.RecentsModel;
import com.android.quickstep.RemoteAnimationTargets;
import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.RotationTouchHelper;
import com.android.quickstep.SplitSelectionListener;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.TaskThumbnailCache;
import com.android.quickstep.TaskUtils;
import com.android.quickstep.TaskViewUtils;
import com.android.quickstep.TopTaskTracker;
import com.android.quickstep.ViewUtils;
import com.android.quickstep.util.ActiveGestureErrorDetector;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.util.AnimUtils;
import com.android.quickstep.util.DesktopTask;
import com.android.quickstep.util.GroupTask;
import com.android.quickstep.util.LayoutUtils;
import com.android.quickstep.util.LogUtils;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.quickstep.util.SplitAnimationController;
import com.android.quickstep.util.SplitAnimationTimings;
import com.android.quickstep.util.SplitSelectStateController;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.SurfaceTransactionApplier;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.util.TaskVisualsChangeListener;
import com.android.quickstep.util.TransformParams;
import com.android.quickstep.util.VibrationConstants;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import com.android.systemui.shared.system.PackageManagerWrapper;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import com.android.wm.shell.pip.IPipAnimationListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.function.Predicate;
import java.util.stream.Collectors;
/* loaded from: classes.dex */
public abstract class RecentsView extends PagedView implements Insettable, TaskThumbnailCache.HighResLoadingState.HighResLoadingStateChangedCallback, TaskVisualsChangeListener {
    private static final float ADDITIONAL_DISMISS_TRANSLATION_INTERPOLATION_OFFSET = 0.05f;
    private static final int ADDITION_TASK_DURATION = 200;
    private static final float ANIMATION_DISMISS_PROGRESS_MIDPOINT = 0.5f;
    private static final FloatProperty COLOR_TINT;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_ACTIONS_VIEW_ALPHA_ANIMATION_DURATION = 300;
    private static final int DISMISS_TASK_DURATION = 300;
    private static final float END_DISMISS_TRANSLATION_INTERPOLATION_OFFSET = 0.75f;
    private static final float INITIAL_DISMISS_TRANSLATION_INTERPOLATION_OFFSET = 0.55f;
    private static final int OVERSCROLL_PAGE_SNAP_ANIMATION_DURATION = 270;
    public static final FloatProperty RECENTS_GRID_PROGRESS;
    public static final FloatProperty RECENTS_SCALE_PROPERTY;
    public static final VibrationEffect SCROLL_VIBRATION_FALLBACK;
    public static final int SCROLL_VIBRATION_PRIMITIVE;
    public static final float SCROLL_VIBRATION_PRIMITIVE_SCALE = 0.6f;
    private static final float SIGNIFICANT_MOVE_SCREEN_WIDTH_PERCENTAGE = 0.15f;
    private static final String TAG = "RecentsView";
    public static final FloatProperty TASK_PRIMARY_SPLIT_TRANSLATION;
    public static final FloatProperty TASK_SECONDARY_SPLIT_TRANSLATION;
    public static final FloatProperty TASK_SECONDARY_TRANSLATION;
    public static final FloatProperty TASK_THUMBNAIL_SPLASH_ALPHA;
    public static final float UPDATE_SYSUI_FLAGS_THRESHOLD = 0.85f;
    private final int[] INVALID_TASK_IDS;
    private OverviewActionsView mActionsView;
    private ObjectAnimator mActionsViewAlphaAnimator;
    private float mActionsViewAlphaAnimatorFinalValue;
    protected final StatefulActivity mActivity;
    private float mAdjacentPageHorizontalOffset;
    private int mClampedScrollOffsetBound;
    private final ClearAllButton mClearAllButton;
    private final Rect mClearAllButtonDeadZoneRect;
    private int mClearAllShortTotalWidthTranslation;
    private float mColorTint;
    @ViewDebug.ExportedProperty(category = "launcher")
    protected float mContentAlpha;
    protected GestureState.GestureEndTarget mCurrentGestureEndTarget;
    private DesktopTaskView mDesktopTaskView;
    private final ViewPool mDesktopTaskViewPool;
    protected boolean mDisallowScrollToClearAll;
    private int mDownX;
    private int mDownY;
    private final Drawable mEmptyIcon;
    private final CharSequence mEmptyMessage;
    private final int mEmptyMessagePadding;
    private final TextPaint mEmptyMessagePaint;
    private Layout mEmptyTextLayout;
    protected boolean mEnableDrawingLiveTile;
    private final float mFastFlingVelocity;
    private final RecentsFilterState mFilterState;
    protected int mFocusedTaskViewId;
    protected boolean mFreezeViewVisibility;
    @ViewDebug.ExportedProperty(category = "launcher")
    protected float mFullscreenProgress;
    private boolean mGestureActive;
    private float mGridProgress;
    private final ViewPool mGroupedTaskViewPool;
    private boolean mHandleTaskStackChanges;
    private final SparseBooleanArray mHasVisibleTaskData;
    private final PinnedStackAnimationListener mIPipAnimationListener;
    private final InvariantDeviceProfile mIdp;
    private int mIgnoreResetTaskId;
    protected final Rect mLastComputedDesktopTaskSize;
    protected final Rect mLastComputedGridSize;
    protected final Rect mLastComputedGridTaskSize;
    protected Float mLastComputedTaskEndPushOutDistance;
    protected final Rect mLastComputedTaskSize;
    protected Float mLastComputedTaskStartPushOutDistance;
    private final Point mLastMeasureSize;
    private LayoutTransition mLayoutTransition;
    protected boolean mLoadPlanEverApplied;
    private final RecentsModel mModel;
    private TaskView mMovingTaskView;
    private BaseActivity.MultiWindowModeChangedListener mMultiWindowModeChangedListener;
    private OnEmptyMessageUpdatedListener mOnEmptyMessageUpdatedListener;
    protected final RecentsOrientedState mOrientationState;
    private int mOverScrollShift;
    private boolean mOverlayEnabled;
    private boolean mOverviewFullscreenEnabled;
    private boolean mOverviewGridEnabled;
    private boolean mOverviewSelectEnabled;
    private boolean mOverviewStateEnabled;
    private PendingAnimation mPendingAnimation;
    private int mPipCornerRadius;
    private int mPipShadowRadius;
    protected RecentsAnimationController mRecentsAnimationController;
    protected RemoteTargetGluer.RemoteTargetHandle[] mRemoteTargetHandles;
    private boolean mRunningTaskShowScreenshot;
    protected boolean mRunningTaskTileHidden;
    protected int mRunningTaskViewId;
    private final int mScrollHapticMinGapMillis;
    private long mScrollLastHapticTimestamp;
    private final List mScrollListeners;
    private FloatingTaskView mSecondFloatingTaskView;
    private TaskView mSecondSplitHiddenView;
    private TaskView mSelectedTask;
    private boolean mShouldClampScrollOffset;
    private boolean mShowAsGridLastOnLayout;
    private boolean mShowEmptyMessage;
    private RunnableList mSideTaskLaunchCallback;
    protected final BaseActivityInterface mSizeStrategy;
    private SplitConfigurationOptions$SplitBounds mSplitBoundsConfig;
    private TaskView mSplitHiddenTaskView;
    private int mSplitHiddenTaskViewIndex;
    private final int mSplitPlaceholderInset;
    private final int mSplitPlaceholderSize;
    private SplitConfigurationOptions$SplitSelectSource mSplitSelectSource;
    protected SplitSelectStateController mSplitSelectStateController;
    private final SplitSelectionListener mSplitSelectionListener;
    private final Toast mSplitUnsupportedToast;
    private final float mSquaredTouchSlop;
    private boolean mSwipeDownShouldLaunchApp;
    protected SurfaceTransactionApplier mSyncTransactionApplier;
    private float mTaskGridVerticalDiff;
    protected int mTaskHeight;
    private boolean mTaskIconScaledDown;
    private TaskLaunchListener mTaskLaunchListener;
    private int mTaskListChangeId;
    @ViewDebug.ExportedProperty(category = "launcher")
    protected float mTaskModalness;
    private final TaskOverlayFactory mTaskOverlayFactory;
    private final TaskStackChangeListener mTaskStackListener;
    private float mTaskThumbnailSplashAlpha;
    private final Rect mTaskViewDeadZoneRect;
    private int mTaskViewIdCount;
    private final ViewPool mTaskViewPool;
    protected float mTaskViewsPrimarySplitTranslation;
    protected float mTaskViewsSecondarySplitTranslation;
    protected float mTaskViewsSecondaryTranslation;
    protected int mTaskWidth;
    private final float[] mTempFloat;
    private final Matrix mTempMatrix;
    private final PointF mTempPointF;
    protected final Rect mTempRect;
    protected final RectF mTempRectF;
    private ObjectAnimator mTintingAnimator;
    private final int mTintingColor;
    private Task[] mTmpRunningTasks;
    private float mTopBottomRowHeightDiff;
    private final IntSet mTopRowIdSet;
    private boolean mTouchDownToStartHome;
    public static final FloatProperty CONTENT_ALPHA = new FloatProperty("contentAlpha") { // from class: com.android.quickstep.views.RecentsView.1
        @Override // android.util.Property
        public Float get(RecentsView recentsView) {
            return Float.valueOf(recentsView.getContentAlpha());
        }

        @Override // android.util.FloatProperty
        public void setValue(RecentsView recentsView, float f4) {
            recentsView.setContentAlpha(f4);
        }
    };
    public static final FloatProperty FULLSCREEN_PROGRESS = new FloatProperty("fullscreenProgress") { // from class: com.android.quickstep.views.RecentsView.2
        @Override // android.util.Property
        public Float get(RecentsView recentsView) {
            return Float.valueOf(recentsView.mFullscreenProgress);
        }

        @Override // android.util.FloatProperty
        public void setValue(RecentsView recentsView, float f4) {
            recentsView.setFullscreenProgress(f4);
        }
    };
    public static final FloatProperty TASK_MODALNESS = new FloatProperty("taskModalness") { // from class: com.android.quickstep.views.RecentsView.3
        @Override // android.util.Property
        public Float get(RecentsView recentsView) {
            return Float.valueOf(recentsView.mTaskModalness);
        }

        @Override // android.util.FloatProperty
        public void setValue(RecentsView recentsView, float f4) {
            recentsView.setTaskModalness(f4);
        }
    };
    public static final FloatProperty ADJACENT_PAGE_HORIZONTAL_OFFSET = new FloatProperty("adjacentPageHorizontalOffset") { // from class: com.android.quickstep.views.RecentsView.4
        @Override // android.util.Property
        public Float get(RecentsView recentsView) {
            return Float.valueOf(recentsView.mAdjacentPageHorizontalOffset);
        }

        @Override // android.util.FloatProperty
        public void setValue(RecentsView recentsView, float f4) {
            if (recentsView.mAdjacentPageHorizontalOffset != f4) {
                recentsView.mAdjacentPageHorizontalOffset = f4;
                recentsView.updatePageOffsets();
            }
        }
    };

    /* renamed from: com.android.quickstep.views.RecentsView$12 */
    /* loaded from: classes.dex */
    public class AnonymousClass12 implements TaskStackChangeListener {
        public AnonymousClass12() {
            RecentsView.this = r1;
        }

        public static /* synthetic */ Boolean lambda$onTaskRemoved$0(Task.TaskKey taskKey) {
            return Boolean.valueOf(PackageManagerWrapper.getInstance().getActivityInfo(taskKey.getComponent(), taskKey.userId) == null);
        }

        public /* synthetic */ void lambda$onTaskRemoved$1(int i4, Boolean bool) {
            if (bool.booleanValue()) {
                RecentsView.this.dismissTask(i4);
            }
        }

        public /* synthetic */ void lambda$onTaskRemoved$2(final int i4, Task.TaskKey taskKey, Boolean bool) {
            if (bool.booleanValue()) {
                RecentsView.this.dismissTask(i4);
            } else {
                RecentsView.this.mModel.isTaskRemoved(taskKey.id, new Consumer() { // from class: com.android.quickstep.views.F
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RecentsView.AnonymousClass12.this.lambda$onTaskRemoved$1(i4, (Boolean) obj);
                    }
                }, RecentsFilterState.getFilter(RecentsView.this.mFilterState.getPackageNameToFilter()));
            }
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onActivityPinned(String str, int i4, int i5, int i6) {
            TaskView taskViewByTaskId;
            if (RecentsView.this.mHandleTaskStackChanges && TaskUtils.checkCurrentOrManagedUserId(i4, RecentsView.this.getContext()) && (taskViewByTaskId = RecentsView.this.getTaskViewByTaskId(i5)) != null) {
                RecentsView.this.removeView(taskViewByTaskId);
            }
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onActivityUnpinned() {
            if (RecentsView.this.mHandleTaskStackChanges) {
                RecentsView.this.reloadIfNeeded();
                RecentsView.this.enableLayoutTransitions();
            }
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onTaskRemoved(final int i4) {
            TaskView taskViewByTaskId;
            if (RecentsView.this.mHandleTaskStackChanges && (taskViewByTaskId = RecentsView.this.getTaskViewByTaskId(i4)) != null) {
                final Task.TaskKey taskKey = taskViewByTaskId.getTask().key;
                LooperExecutor looperExecutor = Executors.UI_HELPER_EXECUTOR;
                looperExecutor.execute(new HandlerRunnable(looperExecutor.getHandler(), new C0598p(2, taskKey), Executors.MAIN_EXECUTOR, new Consumer() { // from class: com.android.quickstep.views.E
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        RecentsView.AnonymousClass12.this.lambda$onTaskRemoved$2(i4, taskKey, (Boolean) obj);
                    }
                }));
            }
        }
    }

    /* renamed from: com.android.quickstep.views.RecentsView$15 */
    /* loaded from: classes.dex */
    public class AnonymousClass15 extends AnimatorListenerAdapter {
        final /* synthetic */ Animator val$animatorAppear;

        public AnonymousClass15(Animator animator) {
            RecentsView.this = r1;
            this.val$animatorAppear = animator;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            RecentsView.this.invalidateTaskList();
            RecentsView.this.updateClearAllFunction();
            RecentsView.this.reloadIfNeeded();
            if (RecentsView.this.mPendingAnimation != null) {
                RecentsView.this.mPendingAnimation.addEndListener(new G(0, this.val$animatorAppear));
            } else {
                this.val$animatorAppear.start();
            }
        }
    }

    /* renamed from: com.android.quickstep.views.RecentsView$19 */
    /* loaded from: classes.dex */
    public class AnonymousClass19 extends AnimatorListenerAdapter {
        public AnonymousClass19() {
            RecentsView.this = r1;
        }

        public /* synthetic */ void lambda$onAnimationStart$0() {
            RecentsView.this.finishRecentsAnimation(true, false, null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (RecentsView.this.mSplitHiddenTaskView == RecentsView.this.getRunningTaskView()) {
                RecentsView.this.finishRecentsAnimation(true, false, null);
            } else {
                RecentsView.this.switchToScreenshot(new H(0, this));
            }
        }
    }

    /* renamed from: com.android.quickstep.views.RecentsView$21 */
    /* loaded from: classes.dex */
    public class AnonymousClass21 implements Consumer {
        final /* synthetic */ boolean val$currentPageSnapsToEndOfGrid;
        final /* synthetic */ int val$dismissedIndex;
        final /* synthetic */ TaskView val$dismissedTaskView;
        final /* synthetic */ int val$dismissedTaskViewId;
        final /* synthetic */ boolean val$finalCloseGapBetweenClearAll;
        final /* synthetic */ boolean val$finalIsFocusedTaskDismissed;
        final /* synthetic */ TaskView val$finalNextFocusedTaskView;
        final /* synthetic */ boolean val$finalSnapToLastTask;
        final /* synthetic */ boolean val$isClearAllHidden;
        final /* synthetic */ boolean val$shouldRemoveTask;
        final /* synthetic */ boolean val$showAsGrid;
        final /* synthetic */ int val$taskCount;

        public AnonymousClass21(TaskView taskView, boolean z4, int i4, boolean z5, boolean z6, boolean z7, int i5, boolean z8, TaskView taskView2, int i6, boolean z9, boolean z10) {
            RecentsView.this = r1;
            this.val$dismissedTaskView = taskView;
            this.val$shouldRemoveTask = z4;
            this.val$dismissedTaskViewId = i4;
            this.val$showAsGrid = z5;
            this.val$finalCloseGapBetweenClearAll = z6;
            this.val$finalSnapToLastTask = z7;
            this.val$taskCount = i5;
            this.val$isClearAllHidden = z8;
            this.val$finalNextFocusedTaskView = taskView2;
            this.val$dismissedIndex = i6;
            this.val$finalIsFocusedTaskDismissed = z9;
            this.val$currentPageSnapsToEndOfGrid = z10;
        }

        public /* synthetic */ void lambda$accept$0(Boolean bool) {
            onEnd(bool.booleanValue());
        }

        public /* synthetic */ void lambda$onEnd$1(int i4) {
            RecentsView.this.removeTaskInternal(i4);
        }

        /* JADX WARN: Code restructure failed: missing block: B:227:0x024b, code lost:
            if (r7 <= (((com.android.launcher3.PagedView) com.android.quickstep.views.RecentsView.this).mPageSpacing + r6)) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:230:0x0274, code lost:
            if ((r7 + ((int) (r4.getSizeAdjustment(false) * ((com.android.launcher3.PagedView) com.android.quickstep.views.RecentsView.this).mOrientationHandler.getMeasuredSize(r4)))) >= ((((com.android.launcher3.PagedView) com.android.quickstep.views.RecentsView.this).mOrientationHandler.getMeasuredSize(com.android.quickstep.views.RecentsView.this) + r6) - ((com.android.launcher3.PagedView) com.android.quickstep.views.RecentsView.this).mPageSpacing)) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:231:0x0276, code lost:
            r4 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:232:0x0278, code lost:
            r4 = false;
         */
        /* JADX WARN: Removed duplicated region for block: B:192:0x015f  */
        /* JADX WARN: Removed duplicated region for block: B:201:0x0192  */
        /* JADX WARN: Removed duplicated region for block: B:202:0x0194  */
        /* JADX WARN: Removed duplicated region for block: B:205:0x01ab  */
        /* JADX WARN: Removed duplicated region for block: B:211:0x01ce  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void onEnd(boolean r11) {
            /*
                Method dump skipped, instructions count: 762
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.views.RecentsView.AnonymousClass21.onEnd(boolean):void");
        }

        @Override // java.util.function.Consumer
        public void accept(Boolean bool) {
            if (RecentsView.this.mEnableDrawingLiveTile && this.val$dismissedTaskView.isRunningTask() && bool.booleanValue()) {
                RecentsView.this.finishRecentsAnimation(true, false, new J(0, this, bool));
            } else {
                onEnd(bool.booleanValue());
            }
        }
    }

    /* loaded from: classes.dex */
    public interface OnEmptyMessageUpdatedListener {
        void onEmptyMessageUpdated(boolean z4);
    }

    /* loaded from: classes.dex */
    public class PinnedStackAnimationListener extends IPipAnimationListener.Stub {
        private BaseActivity mActivity;
        private RecentsView mRecentsView;

        public /* synthetic */ PinnedStackAnimationListener(int i4) {
            this();
        }

        public /* synthetic */ void lambda$onExpandPip$1() {
            RecentsView recentsView = this.mRecentsView;
            if (recentsView == null || recentsView.mSizeStrategy.getTaskbarController() == null) {
                return;
            }
            this.mRecentsView.mSizeStrategy.getTaskbarController().onExpandPip();
        }

        public /* synthetic */ void lambda$onPipAnimationStarted$0() {
            BaseActivity baseActivity = this.mActivity;
            if (baseActivity != null) {
                baseActivity.clearForceInvisibleFlag(9);
            }
        }

        @Override // com.android.wm.shell.pip.IPipAnimationListener
        public void onExpandPip() {
            Executors.MAIN_EXECUTOR.execute(new K(this, 1));
        }

        @Override // com.android.wm.shell.pip.IPipAnimationListener
        public void onPipAnimationStarted() {
            Executors.MAIN_EXECUTOR.execute(new K(this, 0));
        }

        @Override // com.android.wm.shell.pip.IPipAnimationListener
        public void onPipResourceDimensionsChanged(int i4, int i5) {
            RecentsView recentsView = this.mRecentsView;
            if (recentsView != null) {
                recentsView.mPipCornerRadius = i4;
                this.mRecentsView.mPipShadowRadius = i5;
            }
        }

        public void setActivityAndRecentsView(BaseActivity baseActivity, RecentsView recentsView) {
            this.mActivity = baseActivity;
            this.mRecentsView = recentsView;
        }

        private PinnedStackAnimationListener() {
        }
    }

    /* loaded from: classes.dex */
    public interface TaskLaunchListener {
        void onTaskLaunched();
    }

    static {
        SCROLL_VIBRATION_PRIMITIVE = Utilities.ATLEAST_S ? 8 : -1;
        SCROLL_VIBRATION_FALLBACK = VibrationConstants.EFFECT_TEXTURE_TICK;
        COLOR_TINT = new FloatProperty("colorTint") { // from class: com.android.quickstep.views.RecentsView.5
            @Override // android.util.Property
            public Float get(RecentsView recentsView) {
                return Float.valueOf(recentsView.getColorTint());
            }

            @Override // android.util.FloatProperty
            public void setValue(RecentsView recentsView, float f4) {
                recentsView.setColorTint(f4);
            }
        };
        TASK_SECONDARY_TRANSLATION = new FloatProperty("taskSecondaryTranslation") { // from class: com.android.quickstep.views.RecentsView.6
            @Override // android.util.Property
            public Float get(RecentsView recentsView) {
                return Float.valueOf(recentsView.mTaskViewsSecondaryTranslation);
            }

            @Override // android.util.FloatProperty
            public void setValue(RecentsView recentsView, float f4) {
                recentsView.setTaskViewsResistanceTranslation(f4);
            }
        };
        TASK_PRIMARY_SPLIT_TRANSLATION = new FloatProperty("taskPrimarySplitTranslation") { // from class: com.android.quickstep.views.RecentsView.7
            @Override // android.util.Property
            public Float get(RecentsView recentsView) {
                return Float.valueOf(recentsView.mTaskViewsPrimarySplitTranslation);
            }

            @Override // android.util.FloatProperty
            public void setValue(RecentsView recentsView, float f4) {
                recentsView.setTaskViewsPrimarySplitTranslation(f4);
            }
        };
        TASK_SECONDARY_SPLIT_TRANSLATION = new FloatProperty("taskSecondarySplitTranslation") { // from class: com.android.quickstep.views.RecentsView.8
            @Override // android.util.Property
            public Float get(RecentsView recentsView) {
                return Float.valueOf(recentsView.mTaskViewsSecondarySplitTranslation);
            }

            @Override // android.util.FloatProperty
            public void setValue(RecentsView recentsView, float f4) {
                recentsView.setTaskViewsSecondarySplitTranslation(f4);
            }
        };
        RECENTS_SCALE_PROPERTY = new FloatProperty("recentsScale") { // from class: com.android.quickstep.views.RecentsView.9
            @Override // android.util.Property
            public Float get(RecentsView recentsView) {
                return Float.valueOf(recentsView.getScaleX());
            }

            @Override // android.util.FloatProperty
            public void setValue(RecentsView recentsView, final float f4) {
                recentsView.setScaleX(f4);
                recentsView.setScaleY(f4);
                recentsView.mLastComputedTaskStartPushOutDistance = null;
                recentsView.mLastComputedTaskEndPushOutDistance = null;
                recentsView.runActionOnRemoteHandles(new Consumer() { // from class: com.android.quickstep.views.RecentsView.9.1
                    {
                        AnonymousClass9.this = this;
                    }

                    @Override // java.util.function.Consumer
                    public void accept(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
                        remoteTargetHandle.getTaskViewSimulator().recentsViewScale.value = f4;
                    }
                });
                recentsView.setTaskViewsResistanceTranslation(recentsView.mTaskViewsSecondaryTranslation);
                recentsView.updateTaskViewsSnapshotRadius();
                recentsView.updatePageOffsets();
            }
        };
        RECENTS_GRID_PROGRESS = new FloatProperty("recentsGrid") { // from class: com.android.quickstep.views.RecentsView.10
            @Override // android.util.Property
            public Float get(RecentsView recentsView) {
                return Float.valueOf(recentsView.mGridProgress);
            }

            @Override // android.util.FloatProperty
            public void setValue(RecentsView recentsView, float f4) {
                recentsView.setGridProgress(f4);
            }
        };
        TASK_THUMBNAIL_SPLASH_ALPHA = new FloatProperty("taskThumbnailSplashAlpha") { // from class: com.android.quickstep.views.RecentsView.11
            @Override // android.util.Property
            public Float get(RecentsView recentsView) {
                return Float.valueOf(recentsView.mTaskThumbnailSplashAlpha);
            }

            @Override // android.util.FloatProperty
            public void setValue(RecentsView recentsView, float f4) {
                recentsView.setTaskThumbnailSplashAlpha(f4);
            }
        };
    }

    public RecentsView(Context context, AttributeSet attributeSet, int i4, BaseActivityInterface baseActivityInterface) {
        super(context, attributeSet, i4);
        this.mLastComputedTaskSize = new Rect();
        this.mLastComputedGridSize = new Rect();
        this.mLastComputedGridTaskSize = new Rect();
        this.mLastComputedDesktopTaskSize = new Rect();
        this.mSelectedTask = null;
        this.mLastComputedTaskStartPushOutDistance = null;
        this.mLastComputedTaskEndPushOutDistance = null;
        this.mEnableDrawingLiveTile = false;
        this.mTempRect = new Rect();
        this.mTempRectF = new RectF();
        this.mTempPointF = new PointF();
        this.mTempMatrix = new Matrix();
        this.mTempFloat = new float[1];
        this.mScrollListeners = new ArrayList();
        this.mClearAllButtonDeadZoneRect = new Rect();
        this.mTaskViewDeadZoneRect = new Rect();
        this.mHasVisibleTaskData = new SparseBooleanArray();
        this.mAdjacentPageHorizontalOffset = 0.0f;
        this.mTaskViewsSecondaryTranslation = 0.0f;
        this.mTaskViewsPrimarySplitTranslation = 0.0f;
        this.mTaskViewsSecondarySplitTranslation = 0.0f;
        this.mGridProgress = 0.0f;
        this.mTaskThumbnailSplashAlpha = 0.0f;
        this.mShowAsGridLastOnLayout = false;
        this.mTopRowIdSet = new IntSet();
        this.mClearAllShortTotalWidthTranslation = 0;
        this.mOverScrollShift = 0;
        this.mTaskStackListener = new AnonymousClass12();
        this.mIPipAnimationListener = new PinnedStackAnimationListener(0);
        this.mTaskListChangeId = -1;
        this.mRunningTaskViewId = -1;
        this.INVALID_TASK_IDS = new int[]{-1, -1};
        this.mFocusedTaskViewId = -1;
        this.mTaskIconScaledDown = false;
        this.mRunningTaskShowScreenshot = false;
        this.mContentAlpha = 1.0f;
        this.mFullscreenProgress = 0.0f;
        this.mTaskModalness = 0.0f;
        this.mIgnoreResetTaskId = -1;
        this.mLastMeasureSize = new Point();
        this.mSplitUnsupportedToast = Toast.makeText(getContext(), (int) R.string.toast_split_app_unsupported, 0);
        this.mSplitSelectionListener = new SplitSelectionListener() { // from class: com.android.quickstep.views.RecentsView.13
            {
                RecentsView.this = this;
            }

            @Override // com.android.quickstep.SplitSelectionListener
            public void onSplitSelectionActive() {
            }

            @Override // com.android.quickstep.SplitSelectionListener
            public void onSplitSelectionConfirmed() {
            }

            @Override // com.android.quickstep.SplitSelectionListener
            public void onSplitSelectionExit(boolean z4) {
                RecentsView.this.resetFromSplitSelectionState();
            }
        };
        this.mSplitHiddenTaskViewIndex = -1;
        this.mMultiWindowModeChangedListener = new BaseActivity.MultiWindowModeChangedListener() { // from class: com.android.quickstep.views.RecentsView.14
            {
                RecentsView.this = this;
            }

            @Override // com.android.launcher3.BaseActivity.MultiWindowModeChangedListener
            public void onMultiWindowModeChanged(boolean z4) {
                RecentsView.this.mOrientationState.setMultiWindowMode(z4);
                RecentsView recentsView = RecentsView.this;
                recentsView.setLayoutRotation(recentsView.mOrientationState.getTouchRotation(), RecentsView.this.mOrientationState.getDisplayRotation());
                RecentsView.this.updateChildTaskOrientations();
                if (z4 || !RecentsView.this.mOverviewStateEnabled) {
                    return;
                }
                RecentsView.this.reloadIfNeeded();
            }
        };
        RecentsFilterState recentsFilterState = new RecentsFilterState();
        this.mFilterState = recentsFilterState;
        setEnableFreeScroll(true);
        this.mSizeStrategy = baseActivityInterface;
        StatefulActivity statefulActivity = (StatefulActivity) BaseActivity.fromContext(context);
        this.mActivity = statefulActivity;
        RecentsOrientedState recentsOrientedState = new RecentsOrientedState(context, baseActivityInterface, new IntConsumer() { // from class: com.android.quickstep.views.A
            @Override // java.util.function.IntConsumer
            public final void accept(int i5) {
                RecentsView.this.animateRecentsRotationInPlace(i5);
            }
        });
        this.mOrientationState = recentsOrientedState;
        recentsOrientedState.setRecentsRotation(statefulActivity.getDisplay().getRotation());
        this.mScrollHapticMinGapMillis = getResources().getInteger(R.integer.recentsScrollHapticMinGapMillis);
        this.mFastFlingVelocity = getResources().getDimensionPixelSize(R.dimen.recents_fast_fling_velocity);
        this.mModel = (RecentsModel) RecentsModel.INSTANCE.get(context);
        this.mIdp = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(context);
        ClearAllButton clearAllButton = (ClearAllButton) LayoutInflater.from(context).inflate(R.layout.overview_clear_all_button, (ViewGroup) this, false);
        this.mClearAllButton = clearAllButton;
        clearAllButton.setOnClickListener(new View$OnClickListenerC0607z(this, 2));
        this.mTaskViewPool = new ViewPool(context, this, R.layout.task, 20, 10);
        this.mGroupedTaskViewPool = new ViewPool(context, this, R.layout.task_grouped, 20, 10);
        this.mDesktopTaskViewPool = new ViewPool(context, this, R.layout.task_desktop, 5, 1);
        boolean recentsRtlSetting = this.mOrientationHandler.getRecentsRtlSetting(getResources());
        this.mIsRtl = recentsRtlSetting;
        setLayoutDirection(recentsRtlSetting ? 1 : 0);
        this.mSplitPlaceholderSize = getResources().getDimensionPixelSize(R.dimen.split_placeholder_size);
        this.mSplitPlaceholderInset = getResources().getDimensionPixelSize(R.dimen.split_placeholder_inset);
        this.mSquaredTouchSlop = Utilities.squaredTouchSlop(context);
        this.mClampedScrollOffsetBound = getResources().getDimensionPixelSize(R.dimen.transient_taskbar_clamped_offset_bound);
        Drawable drawable = context.getDrawable(R.drawable.ic_empty_recents);
        this.mEmptyIcon = drawable;
        drawable.setCallback(this);
        this.mEmptyMessage = context.getText(R.string.recents_empty_message);
        TextPaint textPaint = new TextPaint();
        this.mEmptyMessagePaint = textPaint;
        textPaint.setColor(GraphicsUtils.getAttrColor(16842806, context));
        textPaint.setTextSize(getResources().getDimension(R.dimen.recents_empty_message_text_size));
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(16974253, new int[]{16843692});
        String string = obtainStyledAttributes.getString(0);
        obtainStyledAttributes.recycle();
        textPaint.setTypeface(Typeface.create(string, 0));
        textPaint.setAntiAlias(true);
        this.mEmptyMessagePadding = getResources().getDimensionPixelSize(R.dimen.recents_empty_message_text_padding);
        setWillNotDraw(false);
        updateEmptyMessage();
        this.mOrientationHandler = recentsOrientedState.getOrientationHandler();
        this.mTaskOverlayFactory = (TaskOverlayFactory) ResourceBasedOverride.Overrides.getObject(R.string.task_overlay_factory_class, context.getApplicationContext(), TaskOverlayFactory.class);
        statefulActivity.getViewCache().setCacheSize(R.layout.digital_wellbeing_toast, 5);
        this.mTintingColor = getForegroundScrimDimColor(context);
        if (FeatureFlags.ENABLE_MULTI_INSTANCE.get()) {
            recentsFilterState.setOnFilterUpdatedListener(new B(this, 0));
        }
        recentsFilterState.setFilterBy(null);
    }

    public static /* synthetic */ int access$1312(RecentsView recentsView, int i4) {
        int i5 = recentsView.mCurrentPageScrollDiff + i4;
        recentsView.mCurrentPageScrollDiff = i5;
        return i5;
    }

    private void addDismissedTaskAnimations(TaskView taskView, long j4, PendingAnimation pendingAnimation) {
        pendingAnimation.setFloat(taskView, LauncherAnimUtils.VIEW_ALPHA, 0.0f, y0.e.b(0.0f, ANIMATION_DISMISS_PROGRESS_MIDPOINT, isOnGridBottomRow(taskView) ? y0.e.f12957u : y0.e.f12942f));
        FloatProperty secondaryDismissTranslationProperty = taskView.getSecondaryDismissTranslationProperty();
        int secondaryDimension = this.mOrientationHandler.getSecondaryDimension(taskView);
        int secondaryTranslationDirectionFactor = this.mOrientationHandler.getSecondaryTranslationDirectionFactor();
        n1.m provider = DynamicResource.provider(this.mActivity);
        SpringProperty springProperty = new SpringProperty(2);
        springProperty.setDampingRatio(provider.getFloat(R.dimen.dismiss_task_trans_y_damping_ratio));
        springProperty.setStiffness(provider.getFloat(R.dimen.dismiss_task_trans_y_stiffness));
        ObjectAnimator duration = ObjectAnimator.ofFloat(taskView, secondaryDismissTranslationProperty, secondaryTranslationDirectionFactor * secondaryDimension * 2).setDuration(j4);
        duration.setInterpolator(y0.e.f12949m);
        pendingAnimation.add(duration, springProperty);
        if (this.mEnableDrawingLiveTile && taskView.isRunningTask()) {
            pendingAnimation.addOnFrameCallback(new r(this, taskView, 0));
        }
    }

    private void animateActionsViewAlpha(float f4, long j4) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mActionsView.getVisibilityAlpha(), MultiPropertyFactory.MULTI_PROPERTY_VALUE, f4);
        this.mActionsViewAlphaAnimator = ofFloat;
        this.mActionsViewAlphaAnimatorFinalValue = f4;
        ofFloat.setDuration(j4);
        this.mActionsViewAlphaAnimator.setAutoCancel(true);
        this.mActionsViewAlphaAnimator.start();
    }

    private void animateActionsViewIn() {
        if (!showAsGrid() || isFocusedTaskInExpectedScrollPosition()) {
            animateActionsViewAlpha(1.0f, 120L);
        }
    }

    public void animateRecentsRotationInPlace(int i4) {
        if (this.mOrientationState.isRecentsActivityRotationAllowed()) {
            return;
        }
        AnimatorSet recentsChangedOrientation = setRecentsChangedOrientation(true);
        recentsChangedOrientation.addListener(AnimatorListeners.forSuccessCallback(new I(i4, 1, this)));
        recentsChangedOrientation.start();
    }

    public void animateToFullscreen(View view) {
        FloatingTaskView floatingTaskView = (FloatingTaskView) view;
        PendingAnimation pendingAnimation = new PendingAnimation(this.mActivity.getDeviceProfile().isTablet ? 500 : SplitAnimationTimings.PHONE_CONFIRM_DURATION);
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        floatingTaskView.getBoundsOnScreen(rect);
        this.mActivity.getDragLayer().getBoundsOnScreen(rect2);
        floatingTaskView.addConfirmAnimation(pendingAnimation, new RectF(rect), rect2, false, true);
        pendingAnimation.addEndListener(new C0603v(this, 2));
        pendingAnimation.buildAnim().start();
    }

    private void createInitialSplitSelectAnimation(PendingAnimation pendingAnimation) {
        this.mOrientationHandler.getInitialSplitPlaceholderBounds(this.mSplitPlaceholderSize, this.mSplitPlaceholderInset, this.mActivity.getDeviceProfile(), this.mSplitSelectStateController.getActiveSplitStagePosition(), this.mTempRect);
        SplitAnimationTimings deviceOverviewToSplitTimings = AnimUtils.getDeviceOverviewToSplitTimings(this.mActivity.getDeviceProfile().isTablet);
        RectF rectF = new RectF();
        safeRemoveDragLayerView(this.mSplitSelectStateController.getFirstFloatingTaskView());
        SplitAnimationController.Companion.SplitAnimInitProps firstAnimInitViews = this.mSplitSelectStateController.getSplitAnimationController().getFirstAnimInitViews(new C0598p(0, this), new C0598p(1, this));
        if (this.mSplitSelectStateController.isAnimateCurrentTaskDismissal()) {
            this.mSplitHiddenTaskView.setThumbnailVisibility(4, this.mSplitSelectStateController.getInitialTaskId());
            pendingAnimation.setViewAlpha(firstAnimInitViews.getIconView(), 0.0f, y0.e.b(deviceOverviewToSplitTimings.getIconFadeStartOffset(), deviceOverviewToSplitTimings.getIconFadeEndOffset(), y0.e.f12949m));
        }
        FloatingTaskView floatingTaskView = FloatingTaskView.getFloatingTaskView(this.mActivity, firstAnimInitViews.getOriginalView(), firstAnimInitViews.getOriginalBitmap(), firstAnimInitViews.getIconDrawable(), rectF);
        floatingTaskView.setAlpha(1.0f);
        floatingTaskView.addStagingAnimation(pendingAnimation, rectF, this.mTempRect, firstAnimInitViews.getFadeWithThumbnail(), firstAnimInitViews.isStagedTask());
        this.mSplitSelectStateController.setFirstFloatingTaskView(floatingTaskView);
        floatingTaskView.setOnClickListener(new View$OnClickListenerC0607z(this, 3));
        safeRemoveDragLayerView(this.mSplitSelectStateController.getSplitInstructionsView());
        SplitInstructionsView splitInstructionsView = SplitInstructionsView.getSplitInstructionsView(this.mActivity);
        splitInstructionsView.setAlpha(0.0f);
        Interpolator interpolator = y0.e.f12949m;
        pendingAnimation.setViewAlpha(splitInstructionsView, 1.0f, y0.e.b(deviceOverviewToSplitTimings.getInstructionsContainerFadeInStartOffset(), deviceOverviewToSplitTimings.getInstructionsContainerFadeInEndOffset(), interpolator));
        pendingAnimation.setViewAlpha(splitInstructionsView.getTextView(), 1.0f, y0.e.b(deviceOverviewToSplitTimings.getInstructionsTextFadeInStartOffset(), deviceOverviewToSplitTimings.getInstructionsTextFadeInEndOffset(), interpolator));
        pendingAnimation.addFloat(splitInstructionsView, SplitInstructionsView.UNFOLD, 0.1f, 1.0f, y0.e.b(deviceOverviewToSplitTimings.getInstructionsUnfoldStartOffset(), deviceOverviewToSplitTimings.getInstructionsUnfoldEndOffset(), y0.e.f12939c));
        this.mSplitSelectStateController.setSplitInstructionsView(splitInstructionsView);
        InteractionJankMonitorWrapper.begin(this, 49, "First tile selected");
        pendingAnimation.addListener(new AnonymousClass19());
        pendingAnimation.addEndListener(new C0603v(this, 3));
    }

    public void dismissAllTasks(View view) {
        runDismissAnimation(createAllTasksDismissAnimation(300L));
        this.mActivity.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_TASK_CLEAR_ALL);
    }

    private void dismissCurrentTask() {
        TaskView nextPageTaskView = getNextPageTaskView();
        if (nextPageTaskView != null) {
            dismissTask(nextPageTaskView, true, true);
        }
    }

    public void dismissTask(int i4) {
        TaskView taskViewByTaskId = getTaskViewByTaskId(i4);
        if (taskViewByTaskId == null) {
            return;
        }
        dismissTask(taskViewByTaskId, true, false);
    }

    public void dispatchScrollChanged() {
        runActionOnRemoteHandles(new C0603v(this, 1));
        for (int size = this.mScrollListeners.size() - 1; size >= 0; size--) {
            ((ViewTreeObserver.OnScrollChangedListener) this.mScrollListeners.get(size)).onScrollChanged();
        }
    }

    public void enableLayoutTransitions() {
        if (this.mLayoutTransition == null) {
            LayoutTransition layoutTransition = new LayoutTransition();
            this.mLayoutTransition = layoutTransition;
            layoutTransition.enableTransitionType(2);
            this.mLayoutTransition.setDuration(200L);
            this.mLayoutTransition.setStartDelay(2, 0L);
            this.mLayoutTransition.addTransitionListener(new LayoutTransition.TransitionListener() { // from class: com.android.quickstep.views.RecentsView.18
                {
                    RecentsView.this = this;
                }

                @Override // android.animation.LayoutTransition.TransitionListener
                public void endTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i4) {
                    if (view instanceof TaskView) {
                        RecentsView.this.snapToPage(0);
                        RecentsView.this.setLayoutTransition(null);
                    }
                }

                @Override // android.animation.LayoutTransition.TransitionListener
                public void startTransition(LayoutTransition layoutTransition2, ViewGroup viewGroup, View view, int i4) {
                }
            });
        }
        setLayoutTransition(this.mLayoutTransition);
    }

    private void executeSideTaskLaunchCallback() {
        RunnableList runnableList = this.mSideTaskLaunchCallback;
        if (runnableList != null) {
            runnableList.executeAllAndDestroy();
            this.mSideTaskLaunchCallback = null;
        }
    }

    public IntArray getBottomRowIdArray() {
        int bottomRowTaskCountForTablet = getBottomRowTaskCountForTablet();
        if (bottomRowTaskCountForTablet <= 0) {
            return new IntArray(0);
        }
        IntArray intArray = new IntArray(bottomRowTaskCountForTablet);
        int taskViewCount = getTaskViewCount();
        for (int i4 = 0; i4 < taskViewCount; i4++) {
            int taskViewId = requireTaskViewAt(i4).getTaskViewId();
            if (!this.mTopRowIdSet.contains(taskViewId) && taskViewId != this.mFocusedTaskViewId) {
                intArray.add(taskViewId);
            }
        }
        return intArray;
    }

    public float getColorTint() {
        return this.mColorTint;
    }

    private int getFirstViewIndex() {
        if (!DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED || this.mDesktopTaskView == null) {
            TaskView focusedTaskView = this.mShowAsGridLastOnLayout ? getFocusedTaskView() : null;
            if (focusedTaskView != null) {
                return indexOfChild(focusedTaskView);
            }
            return 0;
        }
        return 0;
    }

    public static int getForegroundScrimDimColor(Context context) {
        return E.a.d(-16777216, GraphicsUtils.getAttrColor(R.attr.overviewScrimColor, context), 0.25f);
    }

    public int getHighestVisibleTaskIndex() {
        if (this.mTopRowIdSet.isEmpty()) {
            return Integer.MAX_VALUE;
        }
        IntArray topRowIdArray = getTopRowIdArray();
        IntArray bottomRowIdArray = getBottomRowIdArray();
        int min = Math.min(bottomRowIdArray.size(), topRowIdArray.size());
        int i4 = Integer.MAX_VALUE;
        for (int i5 = 0; i5 < min; i5++) {
            TaskView taskViewFromTaskViewId = getTaskViewFromTaskViewId(topRowIdArray.get(i5));
            if (isTaskViewVisible(taskViewFromTaskViewId)) {
                i4 = Math.max(indexOfChild(taskViewFromTaskViewId), indexOfChild(getTaskViewFromTaskViewId(bottomRowIdArray.get(i5))));
            } else if (i4 < Integer.MAX_VALUE) {
                break;
            }
        }
        return i4;
    }

    private float getHorizontalOffsetSize(int i4, int i5, float f4) {
        boolean z4;
        float start;
        float floatValue;
        if (f4 == 0.0f) {
            return 0.0f;
        }
        RectF rectF = this.mTempRectF;
        if (i5 > -1) {
            int primaryScroll = (this.mOrientationHandler.getPrimaryScroll(this) + getScrollForPage(i5)) - getScrollForPage(this.mCurrentPage);
            getPersistentChildPosition(i5, primaryScroll, rectF);
            float start2 = this.mOrientationHandler.getStart(rectF);
            getPersistentChildPosition(i4, primaryScroll, rectF);
            z4 = this.mOrientationHandler.getStart(rectF) < start2;
        } else {
            getPersistentChildPosition(i4, getScrollForPage(i4), rectF);
            z4 = this.mIsRtl;
        }
        if (z4) {
            float f5 = -this.mOrientationHandler.getPrimarySize(rectF);
            start = -this.mOrientationHandler.getEnd(rectF);
            if (this.mLastComputedTaskStartPushOutDistance == null) {
                rectF.offsetTo(this.mOrientationHandler.getPrimaryValue(f5, 0.0f), this.mOrientationHandler.getSecondaryValue(f5, 0.0f));
                getMatrix().mapRect(rectF);
                this.mLastComputedTaskStartPushOutDistance = Float.valueOf(this.mOrientationHandler.getEnd(rectF) / this.mOrientationHandler.getPrimaryScale(this));
            }
            floatValue = this.mLastComputedTaskStartPushOutDistance.floatValue();
        } else {
            float primarySize = this.mOrientationHandler.getPrimarySize(this);
            start = primarySize - this.mOrientationHandler.getStart(rectF);
            if (this.mLastComputedTaskEndPushOutDistance == null) {
                rectF.offsetTo(this.mOrientationHandler.getPrimaryValue(primarySize, 0.0f), this.mOrientationHandler.getSecondaryValue(primarySize, 0.0f));
                getMatrix().mapRect(rectF);
                this.mLastComputedTaskEndPushOutDistance = Float.valueOf((this.mOrientationHandler.getStart(rectF) - primarySize) / this.mOrientationHandler.getPrimaryScale(this));
            }
            floatValue = this.mLastComputedTaskEndPushOutDistance.floatValue();
        }
        return (start - floatValue) * f4;
    }

    private TaskView getLastGridTaskView() {
        return getLastGridTaskView(getTopRowIdArray(), getBottomRowIdArray());
    }

    private int getLastTaskEnd() {
        return this.mIsRtl ? this.mLastComputedGridSize.left + this.mPageSpacing + this.mClearAllShortTotalWidthTranslation : (this.mLastComputedGridSize.right - this.mPageSpacing) - this.mClearAllShortTotalWidthTranslation;
    }

    private int getLastTaskScroll(int i4, int i5) {
        int clearAllExtraPageSpacing = getClearAllExtraPageSpacing() + i5;
        if (!this.mIsRtl) {
            clearAllExtraPageSpacing = -clearAllExtraPageSpacing;
        }
        return i4 + clearAllExtraPageSpacing;
    }

    private int getLastViewIndex() {
        if (this.mDisallowScrollToClearAll) {
            if (this.mShowAsGridLastOnLayout) {
                TaskView lastGridTaskView = getLastGridTaskView();
                return lastGridTaskView != null ? indexOfChild(lastGridTaskView) : indexOfChild(getFocusedTaskView());
            }
            return getTaskViewCount() - 1;
        }
        return indexOfChild(this.mClearAllButton);
    }

    private int getOffsetFromScrollPosition(int i4) {
        return getOffsetFromScrollPosition(i4, getTopRowIdArray(), getBottomRowIdArray());
    }

    private void getPersistentChildPosition(int i4, int i5, RectF rectF) {
        View childAt = getChildAt(i4);
        rectF.set(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
        if (childAt instanceof TaskView) {
            TaskView taskView = (TaskView) childAt;
            rectF.offset(taskView.getPersistentTranslationX(), taskView.getPersistentTranslationY());
            rectF.top += this.mActivity.getDeviceProfile().overviewTaskThumbnailTopMarginPx;
            this.mTempMatrix.reset();
            float persistentScale = taskView.getPersistentScale();
            this.mTempMatrix.postScale(persistentScale, persistentScale, this.mIsRtl ? rectF.right : rectF.left, rectF.top);
            this.mTempMatrix.mapRect(rectF);
        }
        int i6 = -i5;
        rectF.offset(this.mOrientationHandler.getPrimaryValue(i6, 0), this.mOrientationHandler.getSecondaryValue(i6, 0));
    }

    private int getPositionInRow(TaskView taskView, IntArray intArray, IntArray intArray2) {
        int indexOf = intArray.indexOf(taskView.getTaskViewId());
        return indexOf != -1 ? indexOf : intArray2.indexOf(taskView.getTaskViewId());
    }

    private int getSnapToLastTaskScrollDiff() {
        return this.mOrientationHandler.getPrimaryScroll(this) - getLastTaskScroll(getScrollForPage(indexOfChild(this.mClearAllButton)), this.mOrientationHandler.getPrimarySize(this.mClearAllButton));
    }

    private Rect getTaskBounds(TaskView taskView) {
        int indexOfChild = indexOfChild(taskView);
        int primaryScroll = this.mOrientationHandler.getPrimaryScroll(this);
        int scrollForPage = getScrollForPage(indexOfChild);
        boolean z4 = taskView != null && this.mTopRowIdSet.contains(taskView.getTaskViewId());
        Rect rect = new Rect(this.mLastComputedTaskSize);
        rect.offset(-(primaryScroll - (scrollForPage + getOffsetFromScrollPosition(indexOfChild))), (int) ((showAsGrid() && FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get() && !z4) ? this.mTopBottomRowHeightDiff : 0.0f));
        return rect;
    }

    private int[] getTaskIdsForTaskViewId(int i4) {
        TaskView taskViewFromTaskViewId = getTaskViewFromTaskViewId(i4);
        return taskViewFromTaskViewId == null ? this.INVALID_TASK_IDS : taskViewFromTaskViewId.getTaskIds();
    }

    private TaskView getTaskViewFromPool(int i4) {
        TaskView taskView = i4 != 2 ? i4 != 3 ? (TaskView) this.mTaskViewPool.getView() : (TaskView) this.mDesktopTaskViewPool.getView() : (TaskView) this.mGroupedTaskViewPool.getView();
        taskView.setTaskViewId(this.mTaskViewIdCount);
        int i5 = this.mTaskViewIdCount;
        if (i5 == Integer.MAX_VALUE) {
            this.mTaskViewIdCount = 0;
        } else {
            this.mTaskViewIdCount = i5 + 1;
        }
        return taskView;
    }

    public TaskView getTaskViewFromTaskViewId(int i4) {
        if (i4 == -1) {
            return null;
        }
        for (int i5 = 0; i5 < getTaskViewCount(); i5++) {
            TaskView requireTaskViewAt = requireTaskViewAt(i5);
            if (requireTaskViewAt.getTaskViewId() == i4) {
                return requireTaskViewAt;
            }
        }
        return null;
    }

    private int getTaskViewIdFromTaskId(int i4) {
        TaskView taskViewByTaskId = getTaskViewByTaskId(i4);
        if (taskViewByTaskId != null) {
            return taskViewByTaskId.getTaskViewId();
        }
        return -1;
    }

    public IntArray getTopRowIdArray() {
        if (this.mTopRowIdSet.isEmpty()) {
            return new IntArray(0);
        }
        IntArray intArray = new IntArray(this.mTopRowIdSet.size());
        int taskViewCount = getTaskViewCount();
        for (int i4 = 0; i4 < taskViewCount; i4++) {
            int taskViewId = requireTaskViewAt(i4).getTaskViewId();
            if (this.mTopRowIdSet.contains(taskViewId)) {
                intArray.add(taskViewId);
            }
        }
        return intArray;
    }

    private int getUnclampedScrollOffset(int i4) {
        if (i4 == -1) {
            return 0;
        }
        int overScrollShift = getOverScrollShift();
        float f4 = this.mAdjacentPageHorizontalOffset;
        if (f4 > 0.0f) {
            float f5 = overScrollShift;
            float undampedOverScrollShift = getUndampedOverScrollShift();
            String[] strArr = Utilities.EMPTY_STRING_ARRAY;
            overScrollShift = (int) w.f.a(undampedOverScrollShift, f5, f4, f5);
        }
        return (getScrollForPage(i4) - this.mOrientationHandler.getPrimaryScroll(this)) + overScrollShift + getOffsetFromScrollPosition(i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private float getUndampedOverScrollShift() {
        /*
            r5 = this;
            int r0 = r5.getWidth()
            int r1 = r5.getHeight()
            com.android.launcher3.touch.PagedOrientationHandler r2 = r5.mOrientationHandler
            int r2 = r2.getPrimaryValue(r0, r1)
            com.android.launcher3.touch.PagedOrientationHandler r3 = r5.mOrientationHandler
            int r0 = r3.getSecondaryValue(r0, r1)
            com.android.launcher3.util.EdgeEffectCompat r1 = r5.mEdgeGlowLeft
            boolean r1 = r1.isFinished()
            r3 = 0
            if (r1 != 0) goto L36
            com.android.launcher3.util.EdgeEffectCompat r1 = r5.mEdgeGlowLeft
            r1.setSize(r0, r2)
            com.android.launcher3.util.EdgeEffectCompat r1 = r5.mEdgeGlowLeft
            com.android.launcher3.util.TranslateEdgeEffect r1 = (com.android.launcher3.util.TranslateEdgeEffect) r1
            float[] r4 = r5.mTempFloat
            boolean r1 = r1.getTranslationShift(r4)
            if (r1 == 0) goto L36
            float[] r1 = r5.mTempFloat
            r1 = r1[r3]
            r5.postInvalidateOnAnimation()
            goto L37
        L36:
            r1 = 0
        L37:
            com.android.launcher3.util.EdgeEffectCompat r4 = r5.mEdgeGlowRight
            boolean r4 = r4.isFinished()
            if (r4 != 0) goto L58
            com.android.launcher3.util.EdgeEffectCompat r4 = r5.mEdgeGlowRight
            r4.setSize(r0, r2)
            com.android.launcher3.util.EdgeEffectCompat r0 = r5.mEdgeGlowRight
            com.android.launcher3.util.TranslateEdgeEffect r0 = (com.android.launcher3.util.TranslateEdgeEffect) r0
            float[] r4 = r5.mTempFloat
            boolean r0 = r0.getTranslationShift(r4)
            if (r0 == 0) goto L58
            float[] r0 = r5.mTempFloat
            r0 = r0[r3]
            float r1 = r1 - r0
            r5.postInvalidateOnAnimation()
        L58:
            float r5 = (float) r2
            float r1 = r1 * r5
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.views.RecentsView.getUndampedOverScrollShift():float");
    }

    private float getVerticalOffsetSize(int i4, float f4) {
        int i5;
        float f5 = 0.0f;
        if (f4 == 0.0f || !showAsGrid() || !FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get() || this.mSelectedTask == null) {
            return 0.0f;
        }
        TaskView taskViewAt = getTaskViewAt(i4);
        Rect taskBounds = getTaskBounds(taskViewAt);
        boolean contains = this.mTopRowIdSet.contains(this.mSelectedTask.getTaskViewId());
        boolean contains2 = this.mTopRowIdSet.contains(taskViewAt.getTaskViewId());
        boolean z4 = true;
        boolean z5 = !contains && contains2;
        if (!contains || contains2) {
            z4 = false;
        }
        if (!z5) {
            if (z4) {
                i5 = this.mActivity.getDeviceProfile().heightPx - taskBounds.top;
            }
            return f5 * f4;
        }
        i5 = -taskBounds.bottom;
        f5 = i5;
        return f5 * f4;
    }

    private boolean hasAnyValidTaskIds(int[] iArr) {
        return (iArr == null || Arrays.equals(iArr, this.INVALID_TASK_IDS)) ? false : true;
    }

    private boolean hasDesktopTask(Task[] taskArr) {
        if (DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED) {
            for (Task task : taskArr) {
                if (task.key.windowingMode == 5) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public void invalidateTaskList() {
        this.mTaskListChangeId = -1;
    }

    private boolean isFocusedTaskInExpectedScrollPosition() {
        TaskView focusedTaskView = getFocusedTaskView();
        return focusedTaskView != null && isTaskInExpectedScrollPosition(indexOfChild(focusedTaskView));
    }

    private boolean isModal() {
        return this.mTaskModalness > 0.0f;
    }

    private boolean isSameGridRow(TaskView taskView, TaskView taskView2) {
        if (taskView == null || taskView2 == null) {
            return false;
        }
        int taskViewId = taskView.getTaskViewId();
        int taskViewId2 = taskView2.getTaskViewId();
        int i4 = this.mFocusedTaskViewId;
        if (taskViewId == i4 || taskViewId2 == i4) {
            return false;
        }
        return (this.mTopRowIdSet.contains(taskViewId) && this.mTopRowIdSet.contains(taskViewId2)) || !(this.mTopRowIdSet.contains(taskViewId) || this.mTopRowIdSet.contains(taskViewId2));
    }

    private boolean isTaskViewFullyWithinBounds(TaskView taskView, int i4, int i5) {
        int childStart = this.mOrientationHandler.getChildStart(taskView) + ((int) taskView.getOffsetAdjustment(showAsGrid()));
        return childStart >= i4 && ((int) (taskView.getSizeAdjustment(showAsFullscreen()) * ((float) this.mOrientationHandler.getMeasuredSize(taskView)))) + childStart <= i5;
    }

    private boolean isTaskViewWithinBounds(TaskView taskView, int i4, int i5) {
        int childStart = this.mOrientationHandler.getChildStart(taskView) + ((int) taskView.getOffsetAdjustment(showAsGrid()));
        int sizeAdjustment = ((int) (taskView.getSizeAdjustment(showAsFullscreen()) * this.mOrientationHandler.getMeasuredSize(taskView))) + childStart;
        return (childStart >= i4 && childStart <= i5) || (sizeAdjustment >= i4 && sizeAdjustment <= i5);
    }

    public /* synthetic */ void lambda$addDismissedTaskAnimations$14(TaskView taskView, RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().taskSecondaryTranslation.value = this.mOrientationHandler.getSecondaryValue(taskView.getTranslationX(), taskView.getTranslationY());
    }

    public /* synthetic */ void lambda$addDismissedTaskAnimations$15(TaskView taskView) {
        runActionOnRemoteHandles(new C0599q(this, taskView, 0));
        redrawLiveTile();
    }

    public /* synthetic */ void lambda$animateRecentsRotationInPlace$12(int i4) {
        setLayoutRotation(i4, this.mOrientationState.getDisplayRotation());
        this.mActivity.getDragLayer().recreateControllers();
        setRecentsChangedOrientation(false).start();
    }

    public /* synthetic */ void lambda$animateToFullscreen$19(Boolean bool) {
        if (FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
            this.mSplitSelectStateController.resetState();
        } else {
            resetFromSplitSelectionState();
        }
    }

    public /* synthetic */ void lambda$animateToFullscreen$20(Boolean bool) {
        this.mSplitSelectStateController.launchInitialAppFullscreen(new C0603v(this, 8));
    }

    public /* synthetic */ void lambda$applyLoadPlan$5(ArrayList arrayList, Boolean bool) {
        applyLoadPlan(arrayList);
    }

    public /* synthetic */ void lambda$applyLoadPlan$6(int i4, int i5) {
        if (Utilities.isRunningInTestHarness()) {
            Log.d("b/246283207", "RecentsView#applyLoadPlan() -> previousCurrentPage: " + i4 + ", targetPage: " + i5 + ", getScrollForPage(targetPage): " + getScrollForPage(i5));
        }
        setCurrentPage(i5);
    }

    public /* synthetic */ void lambda$confirmSplitSelect$33(Boolean bool) {
        if (FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
            this.mSplitSelectStateController.resetState();
        } else {
            resetFromSplitSelectionState();
        }
        InteractionJankMonitorWrapper.end(49);
    }

    public /* synthetic */ void lambda$confirmSplitSelect$34(Boolean bool) {
        this.mSplitSelectStateController.launchSplitTasks(new C0603v(this, 7));
    }

    public /* synthetic */ void lambda$createAllTasksDismissAnimation$27() {
        Handler handler = Executors.UI_HELPER_EXECUTOR.getHandler();
        ActivityManagerWrapper activityManagerWrapper = ActivityManagerWrapper.getInstance();
        Objects.requireNonNull(activityManagerWrapper);
        handler.post(new H(3, activityManagerWrapper));
        removeTasksViewsAndClearAllButton();
        startHome();
    }

    public /* synthetic */ void lambda$createAllTasksDismissAnimation$28(Boolean bool) {
        if (bool.booleanValue()) {
            finishRecentsAnimation(true, false, new B(this, 2));
        }
        this.mPendingAnimation = null;
    }

    public /* synthetic */ TaskView lambda$createInitialSplitSelectAnimation$16() {
        return this.mSplitHiddenTaskView;
    }

    public /* synthetic */ SplitConfigurationOptions$SplitSelectSource lambda$createInitialSplitSelectAnimation$17() {
        return this.mSplitSelectSource;
    }

    public /* synthetic */ void lambda$createInitialSplitSelectAnimation$18(Boolean bool) {
        if (bool.booleanValue()) {
            InteractionJankMonitorWrapper.end(49);
        } else {
            if (FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
                this.mSplitSelectStateController.resetState();
            } else {
                resetFromSplitSelectionState();
            }
            InteractionJankMonitorWrapper.cancel(49);
        }
        updateCurrentTaskActionsVisibility();
    }

    public /* synthetic */ void lambda$createSplitSelectInitAnimation$32(TaskThumbnailView taskThumbnailView) {
        taskThumbnailView.refreshSplashView();
        this.mSplitHiddenTaskView.updateSnapshotRadius();
    }

    public static /* synthetic */ boolean lambda$createTaskDismissAnimation$21(TaskView taskView, View view) {
        return (view.getVisibility() == 8 || view == taskView) ? false : true;
    }

    public static /* synthetic */ void lambda$createTaskDismissAnimation$22(TaskView taskView, RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().taskPrimaryTranslation.value = ((Float) TaskView.GRID_END_TRANSLATION_X.get(taskView)).floatValue();
    }

    public /* synthetic */ void lambda$createTaskDismissAnimation$23(TaskView taskView) {
        runActionOnRemoteHandles(new G(1, taskView));
        redrawLiveTile();
    }

    public /* synthetic */ void lambda$createTaskDismissAnimation$24(View view, RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().taskPrimaryTranslation.value = this.mOrientationHandler.getPrimaryValue(view.getTranslationX(), view.getTranslationY());
    }

    public /* synthetic */ void lambda$createTaskDismissAnimation$25(View view) {
        runActionOnRemoteHandles(new C0604w(this, view, 1));
        redrawLiveTile();
    }

    public /* synthetic */ void lambda$createTaskLaunchAnimation$35(int i4, boolean[] zArr, ValueAnimator valueAnimator) {
        if (valueAnimator.getAnimatedFraction() > 0.85f) {
            this.mActivity.getSystemUiController().updateUiState(3, i4);
        } else {
            this.mActivity.getSystemUiController().updateUiState(3, 0);
        }
        boolean z4 = valueAnimator.getAnimatedFraction() >= ANIMATION_DISMISS_PROGRESS_MIDPOINT;
        if (z4 != zArr[0]) {
            zArr[0] = z4;
            performHapticFeedback(1, 1);
            RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
            if (recentsAnimationController != null) {
                recentsAnimationController.setWillFinishToHome(!z4);
            }
        }
    }

    public /* synthetic */ void lambda$createTaskLaunchAnimation$36(Interpolator interpolator, RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().addOverviewToAppAnim(this.mPendingAnimation, interpolator);
    }

    public static /* synthetic */ void lambda$createTaskLaunchAnimation$37(ValueAnimator valueAnimator) {
        valueAnimator.start();
        valueAnimator.end();
    }

    public /* synthetic */ void lambda$createTaskLaunchAnimation$38(TaskView taskView, Boolean bool) {
        RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr;
        if (bool.booleanValue()) {
            if (taskView.getTaskIds()[1] != -1 && (remoteTargetHandleArr = this.mRemoteTargetHandles) != null) {
                TaskViewUtils.createSplitAuxiliarySurfacesAnimator(remoteTargetHandleArr[0].getTransformParams().getTargetSet().nonApps, true, new C0595m(0));
            }
            if (taskView.isRunningTask()) {
                finishRecentsAnimation(false, null);
                onTaskLaunchAnimationEnd(true);
            } else {
                taskView.launchTask(new C0603v(this, 0));
            }
            if (taskView.getTask() != null) {
                this.mActivity.getStatsLogManager().logger().withItemInfo(taskView.getItemInfo()).log(StatsLogManager.LauncherEvent.LAUNCHER_TASK_LAUNCH_SWIPE_DOWN);
            }
        } else {
            onTaskLaunchAnimationEnd(false);
        }
        this.mPendingAnimation = null;
    }

    public /* synthetic */ void lambda$dispatchScrollChanged$44(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().setScroll(getScrollOffset());
    }

    public /* synthetic */ void lambda$finishRecentsAnimation$41(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
        onRecentsAnimationComplete();
    }

    public /* synthetic */ void lambda$getEventDispatcher$42(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
    }

    public /* synthetic */ void lambda$getEventDispatcher$43(float f4, float f5, MotionEvent motionEvent) {
        if (f4 != 0.0f && this.mOrientationState.isMultipleOrientationSupportedByDevice() && !this.mOrientationState.getOrientationHandler().isLayoutNaturalToLauncher()) {
            this.mOrientationState.flipVertical(motionEvent);
            super.onTouchEvent(motionEvent);
            this.mOrientationState.flipVertical(motionEvent);
            return;
        }
        float f6 = -f5;
        this.mOrientationState.transformEvent(f6, motionEvent, true);
        super.onTouchEvent(motionEvent);
        this.mOrientationState.transformEvent(f6, motionEvent, false);
    }

    public /* synthetic */ void lambda$launchSideTaskInLiveTileMode$4(RemoteAnimationTarget[] remoteAnimationTargetArr, SurfaceTransactionApplier surfaceTransactionApplier, ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        SurfaceTransaction surfaceTransaction = new SurfaceTransaction();
        Matrix matrix = new Matrix();
        matrix.postScale(animatedFraction, animatedFraction);
        float f4 = 1.0f - animatedFraction;
        matrix.postTranslate((this.mActivity.getDeviceProfile().widthPx * f4) / 2.0f, (this.mActivity.getDeviceProfile().heightPx * f4) / 2.0f);
        surfaceTransaction.forSurface(remoteAnimationTargetArr[remoteAnimationTargetArr.length - 1].leash).setAlpha(animatedFraction).setMatrix(matrix);
        surfaceTransactionApplier.scheduleApply(surfaceTransaction);
    }

    public static /* synthetic */ boolean lambda$loadVisibleTaskData$9(Task task, Task task2) {
        return task2 == task;
    }

    public /* synthetic */ void lambda$new$0() {
        Animator createStateElementAnimation = this.mActivity.getStateManager().createStateElementAnimation(0, 1.0f, 0.0f);
        createStateElementAnimation.addListener(new AnonymousClass15(this.mActivity.getStateManager().createStateElementAnimation(0, 0.0f, 1.0f)));
        createStateElementAnimation.start();
    }

    public /* synthetic */ void lambda$onAttachedToWindow$2(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTransformParams().setSyncTransactionApplier(this.mSyncTransactionApplier);
    }

    public static /* synthetic */ void lambda$onDetachedFromWindow$3(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTransformParams().setSyncTransactionApplier(null);
    }

    public /* synthetic */ void lambda$onLayout$29(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().setScroll(getScrollOffset());
    }

    public static /* synthetic */ void lambda$redrawLiveTile$39(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        TransformParams transformParams = remoteTargetHandle.getTransformParams();
        if (transformParams.getTargetSet() != null) {
            remoteTargetHandle.getTaskViewSimulator().apply(transformParams);
        }
    }

    public static /* synthetic */ void lambda$removeTaskInternal$26(int[] iArr) {
        for (int i4 : iArr) {
            if (i4 != -1) {
                ActivityManagerWrapper.getInstance().removeTask(i4);
            }
        }
    }

    public static /* synthetic */ void lambda$reset$10(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTransformParams().setTargetSet(null);
        remoteTargetHandle.getTaskViewSimulator().setDrawsBelowRecents(false);
    }

    public /* synthetic */ void lambda$reset$11() {
        unloadVisibleTaskData(7);
        setCurrentPage(0);
        LayoutUtils.setViewEnabled(this.mActionsView, true);
        if (this.mOrientationState.setGestureActive(false)) {
            updateOrientationHandler(false);
        }
    }

    public static /* synthetic */ void lambda$resetTaskVisuals$7(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        TaskViewSimulator taskViewSimulator = remoteTargetHandle.getTaskViewSimulator();
        taskViewSimulator.taskPrimaryTranslation.value = 0.0f;
        taskViewSimulator.taskSecondaryTranslation.value = 0.0f;
        taskViewSimulator.fullScreenProgress.value = 0.0f;
        taskViewSimulator.recentsViewScale.value = 1.0f;
    }

    public static /* synthetic */ void lambda$setInsets$8(DeviceProfile deviceProfile, RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().setDp(deviceProfile);
    }

    public /* synthetic */ void lambda$setRecentsAnimationTargets$40(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        TransformParams transformParams = remoteTargetHandle.getTransformParams();
        SurfaceTransactionApplier surfaceTransactionApplier = this.mSyncTransactionApplier;
        if (surfaceTransactionApplier != null) {
            transformParams.setSyncTransactionApplier(surfaceTransactionApplier);
            transformParams.getTargetSet().addReleaseCheck(this.mSyncTransactionApplier);
        }
        TaskViewSimulator taskViewSimulator = remoteTargetHandle.getTaskViewSimulator();
        taskViewSimulator.setOrientationState(this.mOrientationState);
        taskViewSimulator.setDp(this.mActivity.getDeviceProfile());
        taskViewSimulator.recentsViewScale.value = 1.0f;
    }

    public static /* synthetic */ void lambda$setTaskViewsResistanceTranslation$31(float f4, RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().recentsViewSecondaryTranslation.value = f4;
    }

    public /* synthetic */ void lambda$showCurrentTask$13() {
        setCurrentPage(getRunningTaskIndex());
    }

    public /* synthetic */ void lambda$updateClearAllFunction$1(View view) {
        setAndApplyFilter(null);
    }

    public /* synthetic */ void lambda$updateLocusId$45(LocusId locusId) {
        this.mActivity.setLocusContext(locusId, Bundle.EMPTY);
    }

    public static /* synthetic */ void lambda$updatePageOffsets$30(float f4, RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().taskPrimaryTranslation.value = f4;
    }

    private void onOrientationChanged() {
        setModalStateEnabled(-1, false);
        if (isSplitSelectionActive()) {
            onRotateInSplitSelectionState();
        }
    }

    public void removeTaskInternal(int i4) {
        Executors.UI_HELPER_EXECUTOR.getHandler().post(new H(1, getTaskIdsForTaskViewId(i4)));
    }

    private void removeTasksViewsAndClearAllButton() {
        for (int taskViewCount = getTaskViewCount() - 1; taskViewCount >= 0; taskViewCount--) {
            removeView(requireTaskViewAt(taskViewCount));
        }
        if (indexOfChild(this.mClearAllButton) != -1) {
            removeView(this.mClearAllButton);
        }
    }

    public TaskView requireTaskViewAt(int i4) {
        TaskView taskViewAt = getTaskViewAt(i4);
        Objects.requireNonNull(taskViewAt);
        return taskViewAt;
    }

    private void runDismissAnimation(PendingAnimation pendingAnimation) {
        AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
        createPlaybackController.dispatchOnStart();
        createPlaybackController.getAnimationPlayer().setInterpolator(y0.e.f12950n);
        createPlaybackController.start();
    }

    private void safeRemoveDragLayerView(View view) {
        if (view != null) {
            this.mActivity.getDragLayer().removeView(view);
        }
    }

    public void setColorTint(float f4) {
        this.mColorTint = f4;
        for (int i4 = 0; i4 < getTaskViewCount(); i4++) {
            requireTaskViewAt(i4).setColorTint(this.mColorTint, this.mTintingColor);
        }
        Drawable background = this.mActivity.getScrimView().getBackground();
        if (background != null) {
            if (f4 == 0.0f) {
                background.setTintList(null);
                return;
            }
            background.setTintBlendMode(BlendMode.SRC_OVER);
            background.setTint(E.a.k(this.mTintingColor, (int) (f4 * 255.0f)));
        }
    }

    public void setGridProgress(float f4) {
        this.mGridProgress = f4;
        int taskViewCount = getTaskViewCount();
        for (int i4 = 0; i4 < taskViewCount; i4++) {
            requireTaskViewAt(i4).setGridProgress(f4);
        }
        this.mClearAllButton.setGridProgress(f4);
    }

    private void setRunningTaskViewShowScreenshot(boolean z4) {
        this.mRunningTaskShowScreenshot = z4;
        TaskView runningTaskView = getRunningTaskView();
        if (runningTaskView != null) {
            runningTaskView.setShowScreenshot(this.mRunningTaskShowScreenshot);
        }
    }

    public void setTaskModalness(float f4) {
        this.mTaskModalness = f4;
        updatePageOffsets();
        TaskView taskView = this.mSelectedTask;
        if (taskView != null) {
            taskView.setModalness(f4);
        } else if (getCurrentPageTaskView() != null) {
            getCurrentPageTaskView().setModalness(f4);
        }
        boolean z4 = false;
        boolean z5 = (this.mOrientationState.isRecentsActivityRotationAllowed() || this.mOrientationState.getTouchRotation() == 0) ? false : true;
        OverviewActionsView overviewActionsView = this.mActionsView;
        if (f4 < 1.0f && z5) {
            z4 = true;
        }
        overviewActionsView.updateHiddenFlags(1, z4);
    }

    public void setTaskThumbnailSplashAlpha(float f4) {
        int taskViewCount = getTaskViewCount();
        if (taskViewCount == 0) {
            return;
        }
        this.mTaskThumbnailSplashAlpha = f4;
        for (int i4 = 0; i4 < taskViewCount; i4++) {
            requireTaskViewAt(i4).setTaskThumbnailSplashAlpha(f4);
        }
    }

    private boolean showAsFullscreen() {
        return this.mOverviewFullscreenEnabled && this.mCurrentGestureEndTarget != GestureState.GestureEndTarget.RECENTS;
    }

    private void showCurrentTask(Task[] taskArr) {
        int taskViewId;
        TaskView taskViewFromPool;
        if (taskArr.length == 0) {
            return;
        }
        boolean z4 = taskArr.length > 1;
        boolean hasDesktopTask = hasDesktopTask(taskArr);
        if (shouldAddStubTaskView(taskArr)) {
            boolean z5 = getChildCount() == 0;
            if (hasDesktopTask) {
                taskViewFromPool = getTaskViewFromPool(3);
                this.mTmpRunningTasks = (Task[]) Arrays.copyOf(taskArr, taskArr.length);
                addView(taskViewFromPool, 0);
                ((DesktopTaskView) taskViewFromPool).bind(Arrays.asList(this.mTmpRunningTasks), this.mOrientationState);
            } else if (z4) {
                taskViewFromPool = getTaskViewFromPool(2);
                this.mTmpRunningTasks = new Task[]{taskArr[0], taskArr[1]};
                addView(taskViewFromPool, 0);
                Task[] taskArr2 = this.mTmpRunningTasks;
                ((GroupedTaskView) taskViewFromPool).bind(taskArr2[0], taskArr2[1], this.mOrientationState, this.mSplitBoundsConfig);
            } else {
                taskViewFromPool = getTaskViewFromPool(1);
                addView(taskViewFromPool, 0);
                Task[] taskArr3 = {taskArr[0]};
                this.mTmpRunningTasks = taskArr3;
                taskViewFromPool.bind(taskArr3[0], this.mOrientationState);
            }
            taskViewId = taskViewFromPool.getTaskViewId();
            if (z5) {
                addView(this.mClearAllButton);
            }
            measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
            layout(getLeft(), getTop(), getRight(), getBottom());
        } else {
            taskViewId = getTaskViewByTaskId(taskArr[0].key.id) != null ? getTaskViewByTaskId(taskArr[0].key.id).getTaskViewId() : -1;
        }
        boolean z6 = this.mRunningTaskTileHidden;
        setCurrentTask(taskViewId);
        this.mFocusedTaskViewId = FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get() ? -1 : taskViewId;
        runOnPageScrollsInitialized(new B(this, 4));
        setRunningTaskViewShowScreenshot(false);
        setRunningTaskHidden(z6);
        updateTaskSize();
        updateChildTaskOrientations();
        reloadIfNeeded();
    }

    private boolean snapToPageRelative(int i4, int i5, boolean z4) {
        if (i4 == 0) {
            return false;
        }
        int nextPage = getNextPage() + i5;
        if (z4 || (nextPage >= 0 && nextPage < i4)) {
            snapToPage((nextPage + i4) % i4);
            getChildAt(getNextPage()).requestFocus();
            return true;
        }
        return false;
    }

    private void switchToScreenshotInternal(Runnable runnable) {
        TaskView.TaskIdAttributeContainer[] taskIdAttributeContainers;
        TaskView runningTaskView = getRunningTaskView();
        if (runningTaskView == null) {
            runnable.run();
            return;
        }
        runningTaskView.setShowScreenshot(true);
        for (TaskView.TaskIdAttributeContainer taskIdAttributeContainer : runningTaskView.getTaskIdAttributeContainers()) {
            if (taskIdAttributeContainer != null) {
                ThumbnailData screenshotTask = this.mRecentsAnimationController.screenshotTask(taskIdAttributeContainer.getTask().key.id);
                TaskThumbnailView thumbnailView = taskIdAttributeContainer.getThumbnailView();
                if (screenshotTask != null) {
                    thumbnailView.setThumbnail(taskIdAttributeContainer.getTask(), screenshotTask);
                } else {
                    thumbnailView.refresh();
                }
            }
        }
        ViewUtils.postFrameDrawn(runningTaskView, runnable);
    }

    private void unloadVisibleTaskData(int i4) {
        TaskView taskViewByTaskId;
        for (int i5 = 0; i5 < this.mHasVisibleTaskData.size(); i5++) {
            if (this.mHasVisibleTaskData.valueAt(i5) && (taskViewByTaskId = getTaskViewByTaskId(this.mHasVisibleTaskData.keyAt(i5))) != null) {
                taskViewByTaskId.onTaskListVisibilityChanged(false, i4);
            }
        }
        this.mHasVisibleTaskData.clear();
    }

    public void updateActionsViewFocusedScroll() {
        if (showAsGrid()) {
            float f4 = isFocusedTaskInExpectedScrollPosition() ? 1.0f : 0.0f;
            ObjectAnimator objectAnimator = this.mActionsViewAlphaAnimator;
            if (objectAnimator == null || !objectAnimator.isStarted() || (this.mActionsViewAlphaAnimator.isStarted() && this.mActionsViewAlphaAnimatorFinalValue != f4)) {
                animateActionsViewAlpha(f4, 300L);
            }
        }
    }

    public void updateChildTaskOrientations() {
        TaskMenuView taskMenuView;
        for (int i4 = 0; i4 < getTaskViewCount(); i4++) {
            requireTaskViewAt(i4).setOrientationState(this.mOrientationState);
        }
        if ((!this.mOrientationState.isRecentsActivityRotationAllowed()) && (taskMenuView = (TaskMenuView) AbstractFloatingView.getTopOpenViewWithType(this.mActivity, 2048)) != null) {
            taskMenuView.onRotationChanged();
        }
    }

    public void updateCurrentTaskActionsVisibility() {
        this.mActionsView.updateHiddenFlags(8, getCurrentPageTaskView() instanceof GroupedTaskView);
        this.mActionsView.updateHiddenFlags(16, isSplitSelectionActive());
        this.mActionsView.updateSplitButtonHiddenFlags(1, !this.mActivity.getDeviceProfile().isTablet);
        this.mActionsView.updateSplitButtonDisabledFlags(1, false);
        if (DesktopTaskView.DESKTOP_MODE_SUPPORTED) {
            this.mActionsView.updateHiddenFlags(64, getCurrentPageTaskView() instanceof DesktopTaskView);
        }
    }

    private void updateDeadZoneRects() {
        this.mClearAllButtonDeadZoneRect.setEmpty();
        if (this.mClearAllButton.getWidth() > 0) {
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.recents_clear_all_deadzone_vertical_margin);
            this.mClearAllButton.getHitRect(this.mClearAllButtonDeadZoneRect);
            this.mClearAllButtonDeadZoneRect.inset((-getPaddingRight()) / 2, -dimensionPixelSize);
        }
        this.mTaskViewDeadZoneRect.setEmpty();
        int taskViewCount = getTaskViewCount();
        if (taskViewCount > 0) {
            TaskView requireTaskViewAt = requireTaskViewAt(0);
            requireTaskViewAt(taskViewCount - 1).getHitRect(this.mTaskViewDeadZoneRect);
            this.mTaskViewDeadZoneRect.union(requireTaskViewAt.getLeft(), requireTaskViewAt.getTop(), requireTaskViewAt.getRight(), requireTaskViewAt.getBottom());
        }
    }

    private void updateDesktopTaskVisibility(boolean z4) {
        DesktopTaskView desktopTaskView = this.mDesktopTaskView;
        if (desktopTaskView != null) {
            desktopTaskView.setVisibility(z4 ? 0 : 8);
        }
    }

    private void updateEmptyStateUi(boolean z4) {
        boolean z5 = getWidth() > 0 && getHeight() > 0;
        if (z4 && z5) {
            this.mEmptyTextLayout = null;
            this.mLastMeasureSize.set(getWidth(), getHeight());
        }
        if (this.mShowEmptyMessage && z5 && this.mEmptyTextLayout == null) {
            int i4 = this.mLastMeasureSize.x;
            int i5 = this.mEmptyMessagePadding;
            int i6 = (i4 - i5) - i5;
            CharSequence charSequence = this.mEmptyMessage;
            StaticLayout build = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.mEmptyMessagePaint, i6).setAlignment(Layout.Alignment.ALIGN_CENTER).build();
            this.mEmptyTextLayout = build;
            int intrinsicHeight = this.mEmptyIcon.getIntrinsicHeight() + build.getHeight() + this.mEmptyMessagePadding;
            Point point = this.mLastMeasureSize;
            int i7 = (point.y - intrinsicHeight) / 2;
            int intrinsicWidth = (point.x - this.mEmptyIcon.getIntrinsicWidth()) / 2;
            Drawable drawable = this.mEmptyIcon;
            drawable.setBounds(intrinsicWidth, i7, drawable.getIntrinsicWidth() + intrinsicWidth, this.mEmptyIcon.getIntrinsicHeight() + i7);
        }
    }

    private void updateEnabledOverlays() {
        int taskViewCount = getTaskViewCount();
        for (int i4 = 0; i4 < taskViewCount; i4++) {
            TaskView requireTaskViewAt = requireTaskViewAt(i4);
            requireTaskViewAt.setOverlayEnabled(this.mOverlayEnabled && isTaskViewFullyVisible(requireTaskViewAt));
        }
    }

    private void updateGridProperties() {
        updateGridProperties(false, Integer.MAX_VALUE);
    }

    private void updateOrientationHandler() {
        updateOrientationHandler(true);
    }

    public void updatePageOffsets() {
        float horizontalOffsetSize;
        float horizontalOffsetSize2;
        float f4;
        float f5;
        FloatProperty primaryViewTranslate;
        int i4;
        float f6 = this.mAdjacentPageHorizontalOffset;
        float interpolation = ((AccelerateInterpolator) y0.e.f12958v).getInterpolation(this.mTaskModalness);
        int childCount = getChildCount();
        boolean showAsGrid = showAsGrid();
        TaskView runningTaskView = (this.mRunningTaskViewId == -1 || !this.mRunningTaskTileHidden) ? null : getRunningTaskView();
        int indexOfChild = runningTaskView == null ? -1 : indexOfChild(runningTaskView);
        int currentPage = getCurrentPage();
        float f7 = 0.0f;
        boolean z4 = showAsGrid && FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get() && this.mTaskModalness > 0.0f;
        if (z4) {
            currentPage = indexOfChild(this.mSelectedTask);
        }
        int i5 = indexOfChild - 1;
        float horizontalOffsetSize3 = i5 >= 0 ? getHorizontalOffsetSize(i5, indexOfChild, f6) : 0.0f;
        int i6 = indexOfChild + 1;
        float horizontalOffsetSize4 = i6 < childCount ? getHorizontalOffsetSize(i6, indexOfChild, f6) : 0.0f;
        if (showAsGrid) {
            int i7 = currentPage == 0 ? 1 : 0;
            horizontalOffsetSize2 = 0.0f;
            f4 = i7 < childCount ? getHorizontalOffsetSize(i7, currentPage, interpolation) : 0.0f;
            horizontalOffsetSize = 0.0f;
        } else {
            int i8 = currentPage - 1;
            horizontalOffsetSize = i8 >= 0 ? getHorizontalOffsetSize(i8, currentPage, interpolation) : 0.0f;
            int i9 = currentPage + 1;
            horizontalOffsetSize2 = i9 < childCount ? getHorizontalOffsetSize(i9, currentPage, interpolation) : 0.0f;
            f4 = 0.0f;
        }
        int i10 = 0;
        while (i10 < childCount) {
            float f8 = i10 == indexOfChild ? f7 : i10 < indexOfChild ? horizontalOffsetSize3 : horizontalOffsetSize4;
            if (z4) {
                f4 = Math.abs(getHorizontalOffsetSize(i10, currentPage, interpolation)) * (i10 <= currentPage ? 1 : -1);
            }
            float f9 = f8 + (i10 == currentPage ? f7 : showAsGrid ? f4 : i10 < currentPage ? horizontalOffsetSize : horizontalOffsetSize2);
            View childAt = getChildAt(i10);
            boolean z5 = childAt instanceof TaskView;
            if (z5) {
                i4 = childCount;
                f5 = horizontalOffsetSize4;
                primaryViewTranslate = ((TaskView) childAt).getPrimaryTaskOffsetTranslationProperty();
            } else {
                f5 = horizontalOffsetSize4;
                primaryViewTranslate = this.mOrientationHandler.getPrimaryViewTranslate();
                i4 = childCount;
            }
            primaryViewTranslate.set((FloatProperty) childAt, Float.valueOf(f9));
            if (this.mEnableDrawingLiveTile && i10 == getRunningTaskIndex()) {
                runActionOnRemoteHandles(new C0606y(f9, 0));
                redrawLiveTile();
            }
            if (showAsGrid && FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get() && z5) {
                ((TaskView) childAt).getSecondaryTaskOffsetTranslationProperty().set((FloatProperty) childAt, Float.valueOf(getVerticalOffsetSize(i10, interpolation)));
            }
            i10++;
            horizontalOffsetSize4 = f5;
            childCount = i4;
            f7 = 0.0f;
        }
        updateCurveProperties();
    }

    private void updatePivots() {
        if (!this.mOverviewSelectEnabled) {
            getPagedViewOrientedState().getFullScreenScaleAndPivot(this.mTempRect, this.mActivity.getDeviceProfile(), this.mTempPointF);
            setPivotX(this.mTempPointF.x);
            setPivotY(this.mTempPointF.y);
            return;
        }
        getModalTaskSize(this.mTempRect);
        Rect selectedTaskBounds = getSelectedTaskBounds();
        Rect rect = this.mTempRect;
        PointF pointF = this.mTempPointF;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        pointF.x = (selectedTaskBounds.width() * ((rect.left - selectedTaskBounds.left) / (selectedTaskBounds.width() - rect.width()))) + selectedTaskBounds.left;
        pointF.y = (selectedTaskBounds.height() * ((rect.top - selectedTaskBounds.top) / (selectedTaskBounds.height() - rect.height()))) + selectedTaskBounds.top;
        setPivotX(this.mTempPointF.x);
        setPivotY(this.mTempPointF.y);
    }

    private void updateSizeAndPadding() {
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        getTaskSize(this.mTempRect);
        this.mTaskWidth = this.mTempRect.width();
        this.mTaskHeight = this.mTempRect.height();
        Rect rect = this.mTempRect;
        int i4 = rect.top - deviceProfile.overviewTaskThumbnailTopMarginPx;
        rect.top = i4;
        int i5 = rect.left;
        Rect rect2 = this.mInsets;
        setPadding(i5 - rect2.left, i4 - rect2.top, (deviceProfile.widthPx - rect2.right) - rect.right, (deviceProfile.heightPx - rect2.bottom) - rect.bottom);
        this.mSizeStrategy.calculateGridSize(this.mActivity.getDeviceProfile(), this.mLastComputedGridSize);
        BaseActivityInterface baseActivityInterface = this.mSizeStrategy;
        StatefulActivity statefulActivity = this.mActivity;
        baseActivityInterface.calculateGridTaskSize(statefulActivity, statefulActivity.getDeviceProfile(), this.mLastComputedGridTaskSize, this.mOrientationHandler);
        if (DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED) {
            BaseActivityInterface baseActivityInterface2 = this.mSizeStrategy;
            StatefulActivity statefulActivity2 = this.mActivity;
            baseActivityInterface2.calculateDesktopTaskSize(statefulActivity2, statefulActivity2.getDeviceProfile(), this.mLastComputedDesktopTaskSize);
        }
        Rect rect3 = this.mLastComputedGridTaskSize;
        this.mTaskGridVerticalDiff = rect3.top - this.mLastComputedTaskSize.top;
        this.mTopBottomRowHeightDiff = rect3.height() + deviceProfile.overviewTaskThumbnailTopMarginPx + deviceProfile.overviewRowSpacing;
        updateTaskSize();
    }

    private void updateTaskSize() {
        updateTaskSize(false);
    }

    private void updateTaskStackListenerState() {
        boolean z4 = this.mOverviewStateEnabled && isAttachedToWindow() && getWindowVisibility() == 0;
        if (z4 != this.mHandleTaskStackChanges) {
            this.mHandleTaskStackChanges = z4;
            if (z4) {
                reloadIfNeeded();
            }
        }
    }

    public void updateTaskViewsSnapshotRadius() {
        for (int i4 = 0; i4 < getTaskViewCount(); i4++) {
            requireTaskViewAt(i4).updateSnapshotRadius();
        }
    }

    private void vibrateForScroll() {
        long uptimeMillis = SystemClock.uptimeMillis();
        if (uptimeMillis - this.mScrollLastHapticTimestamp > this.mScrollHapticMinGapMillis) {
            this.mScrollLastHapticTimestamp = uptimeMillis;
            ((VibratorWrapper) VibratorWrapper.INSTANCE.get(((ViewGroup) this).mContext)).vibrate(SCROLL_VIBRATION_PRIMITIVE, 0.6f, SCROLL_VIBRATION_FALLBACK);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addChildrenForAccessibility(ArrayList arrayList) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            arrayList.add(getChildAt(childCount));
        }
    }

    public void addOnScrollChangedListener(ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.mScrollListeners.add(onScrollChangedListener);
    }

    public void addSideTaskLaunchCallback(RunnableList runnableList) {
        if (this.mSideTaskLaunchCallback == null) {
            this.mSideTaskLaunchCallback = new RunnableList();
        }
        RunnableList runnableList2 = this.mSideTaskLaunchCallback;
        Objects.requireNonNull(runnableList);
        runnableList2.add(new H(2, runnableList));
    }

    public void animateUpTaskIconScale() {
        this.mTaskIconScaledDown = false;
        int taskViewCount = getTaskViewCount();
        for (int i4 = 0; i4 < taskViewCount; i4++) {
            TaskView requireTaskViewAt = requireTaskViewAt(i4);
            requireTaskViewAt.setIconScaleAnimStartProgress(0.0f);
            requireTaskViewAt.animateIconScaleAndDimIntoView();
        }
    }

    public void applyLoadPlan(ArrayList arrayList) {
        int i4;
        int i5;
        TaskView taskView;
        final int indexOfChild;
        TaskView taskViewByTaskIds;
        PendingAnimation pendingAnimation = this.mPendingAnimation;
        int i6 = 0;
        if (pendingAnimation != null) {
            pendingAnimation.addEndListener(new C0604w(this, arrayList, 0));
            return;
        }
        int i7 = 1;
        this.mLoadPlanEverApplied = true;
        if (arrayList == null || arrayList.isEmpty()) {
            removeTasksViewsAndClearAllButton();
            onTaskStackUpdated();
            resetTouchState();
            if (isPageScrollsInitialized()) {
                onPageScrollsInitialized();
                return;
            }
            return;
        }
        int[] iArr = this.INVALID_TASK_IDS;
        TaskView taskViewAt = getTaskViewAt(this.mCurrentPage);
        if (taskViewAt != null && taskViewAt.getTask() != null) {
            iArr = taskViewAt.getTaskIds();
        }
        unloadVisibleTaskData(7);
        int i8 = this.mIgnoreResetTaskId;
        int i9 = -1;
        TaskView taskViewByTaskId = i8 == -1 ? null : getTaskViewByTaskId(i8);
        int[] taskIdsForTaskViewId = getTaskIdsForTaskViewId(this.mRunningTaskViewId);
        int[] taskIdsForTaskViewId2 = getTaskIdsForTaskViewId(this.mFocusedTaskViewId);
        this.mFocusedTaskViewId = -1;
        final int i10 = this.mCurrentPage;
        removeAllViews();
        if (isSplitSelectionActive()) {
            i4 = this.mSplitSelectStateController.getInitialTaskId();
            updateCurrentTaskActionsVisibility();
        } else {
            i4 = -1;
        }
        this.mFilterState.updateInstanceCountMap(arrayList);
        this.mDesktopTaskView = null;
        int size = arrayList.size() - 1;
        DesktopTask desktopTask = null;
        while (size >= 0) {
            GroupTask groupTask = (GroupTask) arrayList.get(size);
            int i11 = (i4 == i9 || !groupTask.containsTask(i4)) ? i6 : i7;
            if (groupTask instanceof DesktopTask) {
                desktopTask = (DesktopTask) groupTask;
            } else {
                TaskView taskViewFromPool = (i11 == 0 || !groupTask.hasMultipleTasks()) ? getTaskViewFromPool(groupTask.taskViewType) : getTaskViewFromPool(i7);
                addView(taskViewFromPool);
                if (i11 != 0 && groupTask.hasMultipleTasks()) {
                    Task task = groupTask.task1;
                    if (task.key.id == i4) {
                        taskViewFromPool.bind(groupTask.task2, this.mOrientationState);
                    } else {
                        taskViewFromPool.bind(task, this.mOrientationState);
                    }
                } else if (i11 != 0) {
                    taskViewFromPool.bind(groupTask.task1, this.mOrientationState);
                    removeView(taskViewFromPool);
                } else if (taskViewFromPool instanceof GroupedTaskView) {
                    SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds = groupTask.mSplitBounds;
                    int i12 = splitConfigurationOptions$SplitBounds.leftTopTaskId;
                    Task task2 = groupTask.task1;
                    boolean z4 = i12 == task2.key.id;
                    Task task3 = z4 ? task2 : groupTask.task2;
                    if (z4) {
                        task2 = groupTask.task2;
                    }
                    ((GroupedTaskView) taskViewFromPool).bind(task3, task2, this.mOrientationState, splitConfigurationOptions$SplitBounds);
                } else {
                    taskViewFromPool.bind(groupTask.task1, this.mOrientationState);
                }
                if (FeatureFlags.ENABLE_MULTI_INSTANCE.get()) {
                    taskViewFromPool.setUpShowAllInstancesListener();
                }
            }
            size--;
            i7 = 1;
            i6 = 0;
            i9 = -1;
        }
        if (!arrayList.isEmpty()) {
            addView(this.mClearAllButton);
            if (DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED && desktopTask != null && !desktopTask.tasks.isEmpty() && !getSplitSelectController().isSplitSelectActive()) {
                DesktopTaskView desktopTaskView = (DesktopTaskView) getTaskViewFromPool(3);
                this.mDesktopTaskView = desktopTaskView;
                addView(desktopTaskView, 0);
                this.mDesktopTaskView.bind(desktopTask.tasks, this.mOrientationState);
            }
        }
        TaskView taskViewByTaskIds2 = getTaskViewByTaskIds(taskIdsForTaskViewId2);
        if (taskViewByTaskIds2 == null && getTaskViewCount() > 0 && (taskViewByTaskIds2 = getTaskViewAt(0)) != null && taskViewByTaskIds2.isDesktopTask() && getTaskViewCount() > 1) {
            taskViewByTaskIds2 = getTaskViewAt(1);
        }
        this.mFocusedTaskViewId = (taskViewByTaskIds2 == null || FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get()) ? -1 : taskViewByTaskIds2.getTaskViewId();
        updateTaskSize();
        if (taskViewByTaskIds2 != null) {
            taskViewByTaskIds2.setOrientationState(this.mOrientationState);
        }
        if (hasAnyValidTaskIds(taskIdsForTaskViewId)) {
            taskView = getTaskViewByTaskIds(taskIdsForTaskViewId);
            if (taskView != null) {
                this.mRunningTaskViewId = taskView.getTaskViewId();
                i5 = -1;
            } else {
                i5 = -1;
                this.mRunningTaskViewId = -1;
            }
        } else {
            i5 = -1;
            taskView = null;
        }
        if (this.mNextPage != i5) {
            this.mCurrentPage = i10;
            if (hasAnyValidTaskIds(iArr) && (taskViewByTaskIds = getTaskViewByTaskIds(iArr)) != null) {
                indexOfChild = indexOfChild(taskViewByTaskIds);
            }
            indexOfChild = -1;
        } else if (hasAnyValidTaskIds(taskIdsForTaskViewId)) {
            indexOfChild = indexOfChild(taskView);
        } else {
            if (getTaskViewCount() > 0) {
                TaskView requireTaskViewAt = requireTaskViewAt(0);
                if (requireTaskViewAt.isDesktopTask() && getTaskViewCount() > 1) {
                    requireTaskViewAt = requireTaskViewAt(1);
                }
                indexOfChild = indexOfChild(requireTaskViewAt);
            }
            indexOfChild = -1;
        }
        if (indexOfChild != -1 && this.mCurrentPage != indexOfChild) {
            runOnPageScrollsInitialized(new Runnable() { // from class: com.android.quickstep.views.x
                @Override // java.lang.Runnable
                public final void run() {
                    RecentsView.this.lambda$applyLoadPlan$6(i10, indexOfChild);
                }
            });
        }
        int i13 = this.mIgnoreResetTaskId;
        if (i13 != -1 && getTaskViewByTaskId(i13) != taskViewByTaskId) {
            this.mIgnoreResetTaskId = -1;
        }
        resetTaskVisuals();
        onTaskStackUpdated();
        updateEnabledOverlays();
        if (isPageScrollsInitialized()) {
            onPageScrollsInitialized();
        }
    }

    public boolean canLaunchFullscreenTask() {
        return true;
    }

    public abstract boolean canStartHomeSafely();

    public void cleanupRemoteTargets() {
        this.mRemoteTargetHandles = null;
    }

    public void clearIgnoreResetTask(int i4) {
        if (this.mIgnoreResetTaskId == i4) {
            this.mIgnoreResetTaskId = -1;
        }
    }

    @Override // com.android.launcher3.PagedView
    public int computeMaxScroll() {
        if (getTaskViewCount() <= 0) {
            return super.computeMaxScroll();
        }
        return getScrollForPage(this.mIsRtl ? getFirstViewIndex() : getLastViewIndex());
    }

    @Override // com.android.launcher3.PagedView
    public int computeMinScroll() {
        if (getTaskViewCount() <= 0) {
            return super.computeMinScroll();
        }
        return getScrollForPage(this.mIsRtl ? getLastViewIndex() : getFirstViewIndex());
    }

    @Override // com.android.launcher3.PagedView
    public boolean computeScrollHelper() {
        boolean computeScrollHelper = super.computeScrollHelper();
        updateCurveProperties();
        boolean z4 = false;
        if (computeScrollHelper || isHandlingTouch()) {
            if (computeScrollHelper && this.mScroller.getCurrVelocity() > this.mFastFlingVelocity) {
                z4 = true;
            }
            loadVisibleTaskData(7);
        }
        updateActionsViewFocusedScroll();
        this.mModel.getThumbnailCache().getHighResLoadingState().setFlingingFast(z4);
        return computeScrollHelper;
    }

    public boolean confirmSplitSelect(TaskView taskView, Task task, Drawable drawable, View view, Bitmap bitmap, Intent intent, UserHandle userHandle) {
        if (canLaunchFullscreenTask()) {
            return false;
        }
        if (this.mSplitSelectStateController.isBothSplitAppsConfirmed()) {
            Log.w(TAG, LogUtils.splitFailureMessage("confirmSplitSelect", "both apps have already been set"));
            return true;
        }
        if (task == null) {
            this.mSplitSelectStateController.setSecondTask(intent, userHandle);
        } else if (!task.isDockable) {
            this.mSplitUnsupportedToast.show();
            Log.w(TAG, LogUtils.splitFailureMessage("confirmSplitSelect", "selected Task (" + task.key.getPackageName() + ") is not dockable / does not support splitscreen"));
            return true;
        } else {
            this.mSplitSelectStateController.setSecondTask(task);
        }
        RectF rectF = new RectF();
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        Rect rect3 = this.mTempRect;
        SplitAnimationTimings deviceSplitToConfirmTimings = AnimUtils.getDeviceSplitToConfirmTimings(this.mActivity.getDeviceProfile().isTablet);
        PendingAnimation pendingAnimation = new PendingAnimation(deviceSplitToConfirmTimings.getDuration());
        this.mOrientationHandler.getFinalSplitPlaceholderBounds(getResources().getDimensionPixelSize(R.dimen.multi_window_task_divider_size) / 2, this.mActivity.getDeviceProfile(), this.mSplitSelectStateController.getActiveSplitStagePosition(), rect3, rect);
        FloatingTaskView firstFloatingTaskView = this.mSplitSelectStateController.getFirstFloatingTaskView();
        firstFloatingTaskView.getBoundsOnScreen(rect2);
        firstFloatingTaskView.addConfirmAnimation(pendingAnimation, new RectF(rect2), rect3, false, true);
        safeRemoveDragLayerView(this.mSecondFloatingTaskView);
        FloatingTaskView floatingTaskView = FloatingTaskView.getFloatingTaskView(this.mActivity, view, bitmap, drawable, rectF);
        this.mSecondFloatingTaskView = floatingTaskView;
        floatingTaskView.setAlpha(1.0f);
        this.mSecondFloatingTaskView.addConfirmAnimation(pendingAnimation, rectF, rect, true, false);
        pendingAnimation.setViewAlpha(this.mSplitSelectStateController.getSplitInstructionsView(), 0.0f, y0.e.b(deviceSplitToConfirmTimings.getInstructionsFadeStartOffset(), deviceSplitToConfirmTimings.getInstructionsFadeEndOffset(), y0.e.f12949m));
        pendingAnimation.addEndListener(new C0603v(this, 4));
        this.mSecondSplitHiddenView = taskView;
        if (taskView != null) {
            taskView.setThumbnailVisibility(4, this.mSplitSelectStateController.getSecondTaskId());
        }
        InteractionJankMonitorWrapper.begin(this, 49, "Second tile selected");
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, CONTENT_ALPHA, 1.0f, 0.0f);
        Interpolator interpolator = y0.e.f12929C;
        SpringProperty springProperty = SpringProperty.DEFAULT;
        ofFloat.setInterpolator(interpolator);
        pendingAnimation.add(ofFloat, springProperty);
        pendingAnimation.buildAnim().start();
        return true;
    }

    public AnimatorSet createAdjacentPageAnimForTaskLaunch(TaskView taskView) {
        AnimatorSet animatorSet = new AnimatorSet();
        int indexOfChild = indexOfChild(taskView);
        int currentPage = getCurrentPage();
        float maxScaleForFullScreen = getMaxScaleForFullScreen();
        boolean showAsGrid = showAsGrid();
        if (!showAsGrid ? indexOfChild != currentPage : !(taskView.isFocusedTask() && isTaskViewFullyVisible(taskView))) {
            animatorSet.play(ObjectAnimator.ofFloat(this, RECENTS_SCALE_PROPERTY, maxScaleForFullScreen));
            animatorSet.play(ObjectAnimator.ofFloat(this, FULLSCREEN_PROGRESS, 1.0f));
        } else if (!showAsGrid) {
            float width = (maxScaleForFullScreen - 1.0f) * taskView.getWidth();
            if (this.mIsRtl) {
                width = -width;
            }
            animatorSet.play(ObjectAnimator.ofFloat(getPageAt(currentPage), this.mOrientationHandler.getPrimaryViewTranslate(), width));
            int runningTaskIndex = getRunningTaskIndex();
            if (runningTaskIndex != -1 && runningTaskIndex != indexOfChild && getRemoteTargetHandles() != null) {
                for (RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle : getRemoteTargetHandles()) {
                    animatorSet.play(ObjectAnimator.ofFloat(remoteTargetHandle.getTaskViewSimulator().taskPrimaryTranslation, AnimatedFloat.VALUE, width));
                }
            }
            int i4 = (currentPage - indexOfChild) + currentPage;
            if (i4 >= 0 && i4 < getPageCount()) {
                animatorSet.play(ObjectAnimator.ofPropertyValuesHolder(getPageAt(i4), PropertyValuesHolder.ofFloat(this.mOrientationHandler.getPrimaryViewTranslate(), width), PropertyValuesHolder.ofFloat(View.SCALE_X, 1.0f), PropertyValuesHolder.ofFloat(View.SCALE_Y, 1.0f)));
            }
        }
        animatorSet.play(ObjectAnimator.ofFloat(this, TASK_THUMBNAIL_SPLASH_ALPHA, 0.0f, 1.0f));
        return animatorSet;
    }

    public PendingAnimation createAllTasksDismissAnimation(long j4) {
        PendingAnimation pendingAnimation = new PendingAnimation(j4);
        int taskViewCount = getTaskViewCount();
        for (int i4 = 0; i4 < taskViewCount; i4++) {
            addDismissedTaskAnimations(requireTaskViewAt(i4), j4, pendingAnimation);
        }
        this.mPendingAnimation = pendingAnimation;
        pendingAnimation.addEndListener(new C0603v(this, 12));
        return pendingAnimation;
    }

    public void createSplitSelectInitAnimation(PendingAnimation pendingAnimation, int i4) {
        boolean isAnimateCurrentTaskDismissal = this.mSplitSelectStateController.isAnimateCurrentTaskDismissal();
        boolean isDismissingFromSplitPair = this.mSplitSelectStateController.isDismissingFromSplitPair();
        if (!isAnimateCurrentTaskDismissal || !isDismissingFromSplitPair) {
            if (isAnimateCurrentTaskDismissal) {
                createTaskDismissAnimation(pendingAnimation, this.mSplitHiddenTaskView, true, false, i4, true);
                return;
            } else {
                createInitialSplitSelectAnimation(pendingAnimation);
                return;
            }
        }
        createInitialSplitSelectAnimation(pendingAnimation);
        boolean z4 = this.mSplitHiddenTaskView.getTaskIdAttributeContainers()[0].getTask().key.id == this.mSplitSelectStateController.getInitialTaskId();
        TaskView.TaskIdAttributeContainer taskIdAttributeContainer = this.mSplitHiddenTaskView.getTaskIdAttributeContainers()[z4 ? 1 : 0];
        TaskThumbnailView thumbnailView = taskIdAttributeContainer.getThumbnailView();
        this.mSplitSelectStateController.getSplitAnimationController().addInitialSplitFromPair(taskIdAttributeContainer, pendingAnimation, this.mActivity.getDeviceProfile(), this.mSplitHiddenTaskView.getWidth(), this.mSplitHiddenTaskView.getHeight(), z4);
        pendingAnimation.addOnFrameCallback(new J(3, this, thumbnailView));
    }

    /* JADX WARN: Code restructure failed: missing block: B:453:0x0306, code lost:
        if (r0 != false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:457:0x030d, code lost:
        if (r0 != false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x030f, code lost:
        r0 = -r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:459:0x0311, code lost:
        r0 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x0312, code lost:
        r35 = r35 + r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x03cc, code lost:
        if (isSameGridRow(r12, r8) == false) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x03d8, code lost:
        if (isSameGridRow(r12, r40) != false) goto L163;
     */
    /* JADX WARN: Removed duplicated region for block: B:335:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x021d  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:542:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:544:0x04e6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void createTaskDismissAnimation(com.android.launcher3.anim.PendingAnimation r39, final com.android.quickstep.views.TaskView r40, boolean r41, boolean r42, long r43, boolean r45) {
        /*
            Method dump skipped, instructions count: 1296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.views.RecentsView.createTaskDismissAnimation(com.android.launcher3.anim.PendingAnimation, com.android.quickstep.views.TaskView, boolean, boolean, long, boolean):void");
    }

    public PendingAnimation createTaskLaunchAnimation(TaskView taskView, long j4, Interpolator interpolator) {
        if (getTaskViewCount() == 0) {
            return new PendingAnimation(j4);
        }
        updateGridProperties();
        updateScrollSynchronously();
        final int sysUiStatusNavFlags = taskView.getThumbnail().getSysUiStatusNavFlags();
        final boolean[] zArr = {false};
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.quickstep.views.u
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RecentsView.this.lambda$createTaskLaunchAnimation$35(sysUiStatusNavFlags, zArr, valueAnimator);
            }
        });
        AnimatorSet createAdjacentPageAnimForTaskLaunch = createAdjacentPageAnimForTaskLaunch(taskView);
        DepthController depthController = getDepthController();
        if (depthController != null) {
            createAdjacentPageAnimForTaskLaunch.play(ObjectAnimator.ofFloat(depthController.stateDepth, MultiPropertyFactory.MULTI_PROPERTY_VALUE, LauncherState.BACKGROUND_APP.getDepth(this.mActivity)));
        }
        createAdjacentPageAnimForTaskLaunch.play(ObjectAnimator.ofFloat(this, TASK_THUMBNAIL_SPLASH_ALPHA, 0.0f, 1.0f));
        createAdjacentPageAnimForTaskLaunch.play(ofFloat);
        createAdjacentPageAnimForTaskLaunch.setInterpolator(interpolator);
        PendingAnimation pendingAnimation = new PendingAnimation(j4);
        this.mPendingAnimation = pendingAnimation;
        pendingAnimation.add(createAdjacentPageAnimForTaskLaunch, SpringProperty.DEFAULT);
        runActionOnRemoteHandles(new C0604w(this, interpolator, 2));
        this.mPendingAnimation.addOnFrameCallback(new B(this, 5));
        this.mPendingAnimation.addEndListener(new C0599q(this, taskView, 1));
        return this.mPendingAnimation;
    }

    @Override // com.android.launcher3.PagedView
    public void determineScrollingStart(MotionEvent motionEvent, float f4) {
        if (isModal()) {
            return;
        }
        super.determineScrollingStart(motionEvent, f4);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (!this.mAllowOverScroll || (this.mEdgeGlowRight.isFinished() && this.mEdgeGlowLeft.isFinished())) {
            if (this.mOverScrollShift != 0) {
                this.mOverScrollShift = 0;
                dispatchScrollChanged();
            }
            super.dispatchDraw(canvas);
        } else {
            int save = canvas.save();
            int dampedScroll = OverScroll.dampedScroll(getUndampedOverScrollShift(), this.mOrientationHandler.getPrimaryValue(getWidth(), getHeight()));
            this.mOrientationHandler.setPrimary(canvas, PagedOrientationHandler.CANVAS_TRANSLATE, dampedScroll);
            if (this.mOverScrollShift != dampedScroll) {
                this.mOverScrollShift = dampedScroll;
                dispatchScrollChanged();
            }
            super.dispatchDraw(canvas);
            canvas.restoreToCount(save);
        }
        if (!this.mEnableDrawingLiveTile || this.mRemoteTargetHandles == null) {
            return;
        }
        redrawLiveTile();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                return snapToPageRelative(getPageCount(), this.mIsRtl ? 1 : -1, false);
            } else if (keyCode == 22) {
                return snapToPageRelative(getPageCount(), this.mIsRtl ? -1 : 1, false);
            } else if (keyCode == 61) {
                return snapToPageRelative(getTaskViewCount(), keyEvent.isShiftPressed() ? -1 : 1, keyEvent.isAltPressed());
            } else if (keyCode == 67 || keyCode == 112) {
                dismissCurrentTask();
                return true;
            } else if (keyCode == 158 && keyEvent.isAltPressed()) {
                dismissCurrentTask();
                return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public void draw(Canvas canvas) {
        maybeDrawEmptyMessage(canvas);
        super.draw(canvas);
    }

    @Override // com.android.launcher3.PagedView
    public void drawEdgeEffect(Canvas canvas) {
    }

    public void finishRecentsAnimation(boolean z4, Runnable runnable) {
        finishRecentsAnimation(z4, true, runnable);
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return ListView.class.getName();
    }

    public int getBottomRowTaskCountForTablet() {
        return (getTaskViewCount() - this.mTopRowIdSet.size()) - (!FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get());
    }

    @Override // com.android.launcher3.PagedView
    public int getChildGap(int i4, int i5) {
        int indexOfChild = indexOfChild(this.mClearAllButton);
        if (i4 == indexOfChild || i5 == indexOfChild) {
            return getClearAllExtraPageSpacing();
        }
        return 0;
    }

    @Override // com.android.launcher3.PagedView
    public int getChildOffset(int i4) {
        float f4;
        float offsetAdjustment;
        int childOffset = super.getChildOffset(i4);
        View childAt = getChildAt(i4);
        if (childAt instanceof TaskView) {
            f4 = childOffset;
            offsetAdjustment = ((TaskView) childAt).getOffsetAdjustment(showAsGrid());
        } else if (!(childAt instanceof ClearAllButton)) {
            return childOffset;
        } else {
            f4 = childOffset;
            offsetAdjustment = ((ClearAllButton) childAt).getOffsetAdjustment(this.mOverviewFullscreenEnabled, showAsGrid());
        }
        return (int) (offsetAdjustment + f4);
    }

    @Override // com.android.launcher3.PagedView
    public int getChildVisibleSize(int i4) {
        TaskView taskViewAt = getTaskViewAt(i4);
        if (taskViewAt == null) {
            return super.getChildVisibleSize(i4);
        }
        return (int) (taskViewAt.getSizeAdjustment(showAsFullscreen()) * super.getChildVisibleSize(i4));
    }

    public ClearAllButton getClearAllButton() {
        return this.mClearAllButton;
    }

    public int getClearAllExtraPageSpacing() {
        if (showAsGrid()) {
            return Math.max(this.mActivity.getDeviceProfile().overviewGridSideMargin - this.mPageSpacing, 0);
        }
        return 0;
    }

    public int getClearAllScroll() {
        return getScrollForPage(indexOfChild(this.mClearAllButton));
    }

    public float getContentAlpha() {
        return this.mContentAlpha;
    }

    @Override // com.android.launcher3.PagedView
    public String getCurrentPageDescription() {
        return "";
    }

    public TaskView getCurrentPageTaskView() {
        return getTaskViewAt(getCurrentPage());
    }

    public DepthController getDepthController() {
        return null;
    }

    @Override // com.android.launcher3.PagedView
    public int getDestinationPage(int i4) {
        if (this.mActivity.getDeviceProfile().isTablet) {
            int i5 = -1;
            if (!isPageScrollsInitialized()) {
                Log.e(TAG, "Cannot get destination page: RecentsView not properly initialized", new IllegalStateException());
                return -1;
            }
            int i6 = Integer.MAX_VALUE;
            for (int i7 = 0; i7 < getChildCount(); i7++) {
                int abs = Math.abs(this.mPageScrolls[i7] - i4);
                if (abs < i6) {
                    i5 = i7;
                    i6 = abs;
                }
            }
            return i5;
        }
        return super.getDestinationPage(i4);
    }

    public Consumer getEventDispatcher(final float f4) {
        final float degreesRotated = f4 == 0.0f ? this.mOrientationHandler.getDegreesRotated() : -f4;
        return degreesRotated == 0.0f ? new C0603v(this, 9) : new Consumer() { // from class: com.android.quickstep.views.t
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RecentsView.this.lambda$getEventDispatcher$43(f4, degreesRotated, (MotionEvent) obj);
            }
        };
    }

    public RecentsFilterState getFilterState() {
        return this.mFilterState;
    }

    public TaskView getFocusedTaskView() {
        return getTaskViewFromTaskViewId(this.mFocusedTaskViewId);
    }

    public int getGroupedTaskViewCount() {
        int i4 = 0;
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            if (getChildAt(i5) instanceof GroupedTaskView) {
                i4++;
            }
        }
        return i4;
    }

    public TaskView getHomeTaskView() {
        return null;
    }

    public Rect getLastComputedDesktopTaskSize() {
        return this.mLastComputedDesktopTaskSize;
    }

    public Rect getLastComputedGridTaskSize() {
        return this.mLastComputedGridTaskSize;
    }

    public Rect getLastComputedTaskSize() {
        return this.mLastComputedTaskSize;
    }

    public float getMaxScaleForFullScreen() {
        getTaskSize(this.mTempRect);
        return getPagedViewOrientedState().getFullScreenScaleAndPivot(this.mTempRect, this.mActivity.getDeviceProfile(), this.mTempPointF);
    }

    public void getModalTaskSize(Rect rect) {
        BaseActivityInterface baseActivityInterface = this.mSizeStrategy;
        StatefulActivity statefulActivity = this.mActivity;
        baseActivityInterface.calculateModalTaskSize(statefulActivity, statefulActivity.getDeviceProfile(), rect, this.mOrientationHandler);
    }

    public TaskView getNextPageTaskView() {
        return getTaskViewAt(getNextPage());
    }

    public TaskView getNextTaskView() {
        return getTaskViewAt(getRunningTaskIndex() + 1);
    }

    public int getOverScrollShift() {
        return this.mOverScrollShift;
    }

    @Override // com.android.launcher3.PagedView
    public boolean getPageScrolls(int[] iArr, boolean z4, PagedView.ComputePageScrollsLogic computePageScrollsLogic) {
        boolean z5;
        int i4;
        int[] iArr2 = new int[iArr.length];
        super.getPageScrolls(iArr2, z4, computePageScrollsLogic);
        boolean showAsFullscreen = showAsFullscreen();
        boolean showAsGrid = showAsGrid();
        if (z4) {
            int primaryValue = this.mOrientationHandler.getPrimaryValue(this.mTaskWidth, this.mTaskHeight) - this.mOrientationHandler.getPrimarySize(this.mClearAllButton);
            ClearAllButton clearAllButton = this.mClearAllButton;
            if (!this.mIsRtl) {
                primaryValue = -primaryValue;
            }
            clearAllButton.setScrollOffsetPrimary(primaryValue);
        }
        int indexOfChild = indexOfChild(this.mClearAllButton);
        int primarySize = this.mOrientationHandler.getPrimarySize(this.mClearAllButton);
        if (indexOfChild == -1 || indexOfChild >= iArr.length) {
            z5 = false;
            i4 = 0;
        } else {
            i4 = iArr2[indexOfChild] + ((int) this.mClearAllButton.getScrollAdjustment(showAsFullscreen, showAsGrid));
            if (iArr[indexOfChild] != i4) {
                iArr[indexOfChild] = i4;
                z5 = true;
            } else {
                z5 = false;
            }
        }
        int taskViewCount = getTaskViewCount();
        int lastTaskScroll = getLastTaskScroll(i4, primarySize);
        for (int i5 = 0; i5 < taskViewCount; i5++) {
            int scrollAdjustment = iArr2[i5] + ((int) requireTaskViewAt(i5).getScrollAdjustment(showAsGrid));
            boolean z6 = this.mIsRtl;
            if ((z6 && scrollAdjustment < lastTaskScroll) || (!z6 && scrollAdjustment > lastTaskScroll)) {
                scrollAdjustment = lastTaskScroll;
            }
            if (iArr[i5] != scrollAdjustment) {
                iArr[i5] = scrollAdjustment;
                z5 = true;
            }
        }
        return z5;
    }

    public PagedOrientationHandler getPagedOrientationHandler() {
        return this.mOrientationHandler;
    }

    public RecentsOrientedState getPagedViewOrientedState() {
        return this.mOrientationState;
    }

    public int getPipCornerRadius() {
        return this.mPipCornerRadius;
    }

    public int getPipShadowRadius() {
        return this.mPipShadowRadius;
    }

    public RecentsAnimationController getRecentsAnimationController() {
        return this.mRecentsAnimationController;
    }

    public RemoteTargetGluer.RemoteTargetHandle[] getRemoteTargetHandles() {
        return this.mRemoteTargetHandles;
    }

    public int getRunningTaskIndex() {
        TaskView runningTaskView = getRunningTaskView();
        if (runningTaskView == null) {
            return -1;
        }
        return indexOfChild(runningTaskView);
    }

    public TaskView getRunningTaskView() {
        return getTaskViewFromTaskViewId(this.mRunningTaskViewId);
    }

    public int getRunningTaskViewId() {
        return this.mRunningTaskViewId;
    }

    public int getScrollOffset() {
        return getScrollOffset(getRunningTaskIndex());
    }

    public OverScroller getScroller() {
        return this.mScroller;
    }

    public Rect getSelectedTaskBounds() {
        TaskView taskView = this.mSelectedTask;
        return taskView == null ? this.mLastComputedTaskSize : getTaskBounds(taskView);
    }

    public BaseActivityInterface getSizeStrategy() {
        return this.mSizeStrategy;
    }

    public SplitInstructionsView getSplitInstructionsView() {
        return this.mSplitSelectStateController.getSplitInstructionsView();
    }

    public SplitSelectStateController getSplitSelectController() {
        return this.mSplitSelectStateController;
    }

    public float getSplitSelectTranslation() {
        int i4;
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        PagedOrientationHandler pagedOrientationHandler = getPagedOrientationHandler();
        int activeSplitStagePosition = getSplitSelectController().getActiveSplitStagePosition();
        int dimensionPixelSize = this.mActivity.getResources().getDimensionPixelSize(R.dimen.split_placeholder_size);
        int splitTranslationDirectionFactor = pagedOrientationHandler.getSplitTranslationDirectionFactor(activeSplitStagePosition, deviceProfile);
        if (deviceProfile.isTablet && deviceProfile.isLandscape) {
            if (this.mIsRtl) {
                i4 = deviceProfile.widthPx - this.mLastComputedTaskSize.right;
            } else {
                i4 = this.mLastComputedTaskSize.left;
            }
            dimensionPixelSize = (dimensionPixelSize + this.mPageSpacing) - i4;
            if (dimensionPixelSize <= 0.0f) {
                return 0.0f;
            }
        }
        return dimensionPixelSize * splitTranslationDirectionFactor;
    }

    public int[] getTaskIdsForRunningTaskView() {
        return getTaskIdsForTaskViewId(this.mRunningTaskViewId);
    }

    public int getTaskIndexForId(int i4) {
        TaskView taskViewByTaskId = getTaskViewByTaskId(i4);
        if (taskViewByTaskId == null) {
            return -1;
        }
        return indexOfChild(taskViewByTaskId);
    }

    public TaskOverlayFactory getTaskOverlayFactory() {
        return this.mTaskOverlayFactory;
    }

    public void getTaskSize(Rect rect) {
        BaseActivityInterface baseActivityInterface = this.mSizeStrategy;
        StatefulActivity statefulActivity = this.mActivity;
        baseActivityInterface.calculateTaskSize(statefulActivity, statefulActivity.getDeviceProfile(), rect, this.mOrientationHandler);
        this.mLastComputedTaskSize.set(rect);
    }

    public TaskView getTaskViewAt(int i4) {
        View childAt = getChildAt(i4);
        if (childAt instanceof TaskView) {
            return (TaskView) childAt;
        }
        return null;
    }

    public TaskView getTaskViewByTaskId(int i4) {
        if (i4 == -1) {
            return null;
        }
        for (int i5 = 0; i5 < getTaskViewCount(); i5++) {
            TaskView requireTaskViewAt = requireTaskViewAt(i5);
            if (requireTaskViewAt.containsTaskId(i4)) {
                return requireTaskViewAt;
            }
        }
        return null;
    }

    public TaskView getTaskViewByTaskIds(int[] iArr) {
        if (hasAnyValidTaskIds(iArr)) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            Arrays.sort(copyOf);
            for (int i4 = 0; i4 < getTaskViewCount(); i4++) {
                TaskView requireTaskViewAt = requireTaskViewAt(i4);
                int[] taskIds = requireTaskViewAt.getTaskIds();
                Arrays.sort(taskIds);
                if (Arrays.equals(copyOf, taskIds)) {
                    return requireTaskViewAt;
                }
            }
            return null;
        }
        return null;
    }

    public int getTaskViewCount() {
        int childCount = getChildCount();
        return indexOfChild(this.mClearAllButton) != -1 ? childCount - 1 : childCount;
    }

    public TaskView getTaskViewNearestToCenterOfScreen() {
        return getTaskViewAt(getPageNearestToCenterOfScreen());
    }

    public int getTopRowTaskCountForTablet() {
        return this.mTopRowIdSet.size();
    }

    public abstract void handleStartHome(boolean z4);

    public void init(OverviewActionsView overviewActionsView, SplitSelectStateController splitSelectStateController) {
        this.mActionsView = overviewActionsView;
        overviewActionsView.updateHiddenFlags(2, getTaskViewCount() == 0);
        this.mSplitSelectStateController = splitSelectStateController;
    }

    @Override // com.android.launcher3.PagedView
    public void initEdgeEffect() {
        this.mEdgeGlowLeft = new TranslateEdgeEffect(getContext());
        this.mEdgeGlowRight = new TranslateEdgeEffect(getContext());
    }

    public void initiateSplitSelect(TaskView taskView) {
        initiateSplitSelect(taskView, this.mOrientationHandler.getDefaultSplitPosition(this.mActivity.getDeviceProfile()), StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_ACTIONS_SPLIT);
    }

    public boolean isClearAllHidden() {
        return this.mClearAllButton.getAlpha() != 1.0f;
    }

    public boolean isLoadingTasks() {
        return this.mModel.isLoadingTasksInBackground();
    }

    public boolean isOnGridBottomRow(TaskView taskView) {
        return (!showAsGrid() || this.mTopRowIdSet.contains(taskView.getTaskViewId()) || taskView.getTaskViewId() == this.mFocusedTaskViewId) ? false : true;
    }

    @Override // com.android.launcher3.PagedView
    public boolean isPageOrderFlipped() {
        return true;
    }

    @Override // com.android.launcher3.PagedView
    public boolean isPageScrollsInitialized() {
        return super.isPageScrollsInitialized() && this.mLoadPlanEverApplied;
    }

    public boolean isRtl() {
        return this.mIsRtl;
    }

    @Override // com.android.launcher3.PagedView
    public boolean isSignificantMove(float f4, int i4) {
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        return !deviceProfile.isTablet ? super.isSignificantMove(f4, i4) : f4 > ((float) deviceProfile.availableWidthPx) * SIGNIFICANT_MOVE_SCREEN_WIDTH_PERCENTAGE;
    }

    public boolean isSplitSelectionActive() {
        return this.mSplitSelectStateController.isSplitSelectActive();
    }

    public boolean isTaskInExpectedScrollPosition(int i4) {
        return getScrollForPage(i4) == getPagedOrientationHandler().getPrimaryScroll(this);
    }

    public boolean isTaskViewFullyVisible(TaskView taskView) {
        if (!showAsGrid()) {
            return indexOfChild(taskView) == getNextPage();
        }
        int primaryScroll = this.mOrientationHandler.getPrimaryScroll(this);
        return isTaskViewFullyWithinBounds(taskView, primaryScroll, this.mOrientationHandler.getMeasuredSize(this) + primaryScroll);
    }

    public boolean isTaskViewVisible(TaskView taskView) {
        if (!showAsGrid()) {
            return Math.abs(indexOfChild(taskView) - getNextPage()) <= 1;
        }
        int primaryScroll = this.mOrientationHandler.getPrimaryScroll(this);
        return isTaskViewWithinBounds(taskView, primaryScroll, this.mOrientationHandler.getMeasuredSize(this) + primaryScroll);
    }

    public void launchSideTaskInLiveTileMode(int i4, final RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, RemoteAnimationTarget[] remoteAnimationTargetArr3) {
        AnimatorSet animatorSet = new AnimatorSet();
        TaskView taskViewByTaskId = getTaskViewByTaskId(i4);
        if (taskViewByTaskId == null || !isTaskViewVisible(taskViewByTaskId)) {
            final SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(this.mActivity.getDragLayer());
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.setDuration(336L);
            ofFloat.setInterpolator(y0.e.f12961y);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.quickstep.views.C
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    RecentsView.this.lambda$launchSideTaskInLiveTileMode$4(remoteAnimationTargetArr, surfaceTransactionApplier, valueAnimator);
                }
            });
            ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.views.RecentsView.16
                {
                    RecentsView.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    SurfaceTransaction surfaceTransaction = new SurfaceTransaction();
                    for (int length = remoteAnimationTargetArr.length - 1; length >= 0; length--) {
                        surfaceTransaction.getTransaction().show(remoteAnimationTargetArr[length].leash);
                    }
                    surfaceTransactionApplier.scheduleApply(surfaceTransaction);
                }
            });
            animatorSet.play(ofFloat);
            animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.views.RecentsView.17
                {
                    RecentsView.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    RecentsView.this.finishRecentsAnimation(false, null);
                }
            });
        } else {
            TaskViewUtils.composeRecentsLaunchAnimator(animatorSet, taskViewByTaskId, remoteAnimationTargetArr, remoteAnimationTargetArr2, remoteAnimationTargetArr3, true, this.mActivity.getStateManager(), this, getDepthController());
        }
        animatorSet.start();
    }

    public void launchSideTaskInLiveTileModeForRestartedApp(int i4) {
        RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr;
        RemoteAnimationTargets targetSet;
        int taskViewIdFromTaskId = getTaskViewIdFromTaskId(i4);
        int i5 = this.mRunningTaskViewId;
        if (i5 == -1 || i5 != taskViewIdFromTaskId || (remoteTargetHandleArr = this.mRemoteTargetHandles) == null || (targetSet = remoteTargetHandleArr[0].getTransformParams().getTargetSet()) == null || targetSet.findTask(i4) == null) {
            return;
        }
        launchSideTaskInLiveTileMode(i4, targetSet.apps, targetSet.wallpapers, targetSet.nonApps);
    }

    public void loadVisibleTaskData(int i4) {
        int max;
        int min;
        int i5;
        int i6;
        int i7;
        int i8 = 0;
        if ((!this.mOverviewStateEnabled && this.mScroller.isFinished()) || this.mTaskListChangeId == -1) {
            return;
        }
        if (showAsGrid()) {
            int primaryScroll = this.mOrientationHandler.getPrimaryScroll(this);
            int measuredSize = this.mOrientationHandler.getMeasuredSize(this);
            int i9 = measuredSize / 2;
            i6 = primaryScroll - i9;
            i5 = primaryScroll + measuredSize + i9;
            min = 0;
            max = 0;
        } else {
            int pageNearestToCenterOfScreen = getPageNearestToCenterOfScreen();
            int childCount = getChildCount();
            max = Math.max(0, pageNearestToCenterOfScreen - 2);
            min = Math.min(pageNearestToCenterOfScreen + 2, childCount - 1);
            i5 = 0;
            i6 = 0;
        }
        int i10 = 0;
        while (i10 < getTaskViewCount()) {
            TaskView requireTaskViewAt = requireTaskViewAt(i10);
            TaskView.TaskIdAttributeContainer[] taskIdAttributeContainers = requireTaskViewAt.getTaskIdAttributeContainers();
            if (taskIdAttributeContainers[i8] == null && taskIdAttributeContainers[1] == null) {
                i7 = i8;
            } else {
                int indexOfChild = indexOfChild(requireTaskViewAt);
                boolean isTaskViewWithinBounds = showAsGrid() ? isTaskViewWithinBounds(requireTaskViewAt, i6, i5) : (max > indexOfChild || indexOfChild > min) ? i8 : true;
                if (isTaskViewWithinBounds) {
                    List<Task> list = (List) Arrays.stream(taskIdAttributeContainers).filter(new D()).map(new C0596n()).collect(Collectors.toCollection(new W0()));
                    Task[] taskArr = this.mTmpRunningTasks;
                    if (taskArr != null) {
                        int length = taskArr.length;
                        for (int i11 = i8; i11 < length; i11++) {
                            final Task task = taskArr[i11];
                            list.removeIf(new Predicate() { // from class: com.android.quickstep.views.o
                                @Override // java.util.function.Predicate
                                public final boolean test(Object obj) {
                                    boolean lambda$loadVisibleTaskData$9;
                                    lambda$loadVisibleTaskData$9 = RecentsView.lambda$loadVisibleTaskData$9(Task.this, (Task) obj);
                                    return lambda$loadVisibleTaskData$9;
                                }
                            });
                        }
                    }
                    if (!list.isEmpty()) {
                        for (Task task2 : list) {
                            if (!this.mHasVisibleTaskData.get(task2.key.id)) {
                                requireTaskViewAt.onTaskListVisibilityChanged(true, (requireTaskViewAt == getRunningTaskView() && this.mGestureActive) ? i4 & (-3) : i4);
                            }
                            this.mHasVisibleTaskData.put(task2.key.id, isTaskViewWithinBounds);
                        }
                    }
                } else {
                    for (TaskView.TaskIdAttributeContainer taskIdAttributeContainer : taskIdAttributeContainers) {
                        if (taskIdAttributeContainer != null) {
                            if (this.mHasVisibleTaskData.get(taskIdAttributeContainer.getTask().key.id)) {
                                requireTaskViewAt.onTaskListVisibilityChanged(false, i4);
                            }
                            this.mHasVisibleTaskData.delete(taskIdAttributeContainer.getTask().key.id);
                        }
                    }
                }
                i7 = 0;
            }
            i10++;
            i8 = i7;
        }
    }

    public void maybeDrawEmptyMessage(Canvas canvas) {
        if (!this.mShowEmptyMessage || this.mEmptyTextLayout == null) {
            return;
        }
        this.mTempRect.set(getPaddingLeft() + this.mInsets.left, getPaddingTop() + this.mInsets.top, getPaddingRight() + this.mInsets.right, getPaddingBottom() + this.mInsets.bottom);
        canvas.save();
        int scrollX = getScrollX();
        Rect rect = this.mTempRect;
        canvas.translate(((rect.left - rect.right) / 2) + scrollX, (rect.top - rect.bottom) / 2);
        this.mEmptyIcon.draw(canvas);
        canvas.translate(this.mEmptyMessagePadding, this.mEmptyIcon.getBounds().bottom + this.mEmptyMessagePadding);
        this.mEmptyTextLayout.draw(canvas);
        canvas.restore();
    }

    public void moveRunningTaskToFront() {
        TaskView runningTaskView;
        if (this.mActivity.getDeviceProfile().isTablet && (runningTaskView = getRunningTaskView()) != null) {
            int indexOfChild = indexOfChild(runningTaskView);
            int i4 = this.mCurrentPage;
            if (indexOfChild == i4 && i4 != 0) {
                this.mCurrentPageScrollDiff = this.mOrientationHandler.getPrimaryScroll(this) - getScrollForPage(this.mCurrentPage);
                this.mMovingTaskView = runningTaskView;
                removeView(runningTaskView);
                this.mMovingTaskView = null;
                runningTaskView.resetPersistentViewTransforms();
                int i5 = (!DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED || this.mDesktopTaskView == null || runningTaskView.isDesktopTask()) ? 0 : 1;
                addView(runningTaskView, i5);
                setCurrentPage(i5);
                updateTaskSize();
            }
        }
    }

    @Override // com.android.launcher3.PagedView
    public void notifyPageSwitchListener(int i4) {
        super.notifyPageSwitchListener(i4);
        updateCurrentTaskActionsVisibility();
        loadVisibleTaskData(7);
        updateEnabledOverlays();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateTaskStackListenerState();
        this.mModel.getThumbnailCache().getHighResLoadingState().addCallback(this);
        this.mActivity.addMultiWindowModeChangedListener(this.mMultiWindowModeChangedListener);
        TaskStackChangeListeners.getInstance().registerTaskStackListener(this.mTaskStackListener);
        this.mSyncTransactionApplier = new SurfaceTransactionApplier(this);
        runActionOnRemoteHandles(new C0603v(this, 10));
        ((RecentsModel) RecentsModel.INSTANCE.get(getContext())).addThumbnailChangeListener(this);
        this.mIPipAnimationListener.setActivityAndRecentsView(this.mActivity, this);
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(getContext())).setPipAnimationListener(this.mIPipAnimationListener);
        this.mOrientationState.initListeners();
        this.mTaskOverlayFactory.initListeners();
        if (FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
            this.mSplitSelectStateController.registerSplitListener(this.mSplitSelectionListener);
        }
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateRecentsRotation();
        onOrientationChanged();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        updateTaskStackListenerState();
        this.mModel.getThumbnailCache().getHighResLoadingState().removeCallback(this);
        this.mActivity.removeMultiWindowModeChangedListener(this.mMultiWindowModeChangedListener);
        TaskStackChangeListeners.getInstance().unregisterTaskStackListener(this.mTaskStackListener);
        this.mSyncTransactionApplier = null;
        runActionOnRemoteHandles(new C0595m(3));
        executeSideTaskLaunchCallback();
        ((RecentsModel) RecentsModel.INSTANCE.get(getContext())).removeThumbnailChangeListener(this);
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(getContext())).setPipAnimationListener(null);
        this.mIPipAnimationListener.setActivityAndRecentsView(null, null);
        this.mOrientationState.destroyListeners();
        this.mTaskOverlayFactory.removeListeners();
        if (FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
            this.mSplitSelectStateController.unregisterSplitListener(this.mSplitSelectionListener);
        }
    }

    public void onDismissAnimationEnds() {
        AccessibilityManagerCompat.sendDismissAnimationEndsEventToTest(getContext());
    }

    @Override // com.android.launcher3.PagedView
    public void onEdgeAbsorbingScroll() {
        vibrateForScroll();
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z4, int i4, Rect rect) {
        super.onFocusChanged(z4, i4, rect);
        if (!z4 || getChildCount() <= 0) {
            return;
        }
        if (i4 != 1) {
            if (i4 == 2) {
                setCurrentPage(0);
                return;
            } else if (i4 != 17 && i4 != 66) {
                return;
            }
        }
        setCurrentPage(getChildCount() - 1);
    }

    public void onGestureAnimationEnd() {
        this.mGestureActive = false;
        if (this.mOrientationState.setGestureActive(false)) {
            updateOrientationHandler(false);
        }
        setEnableFreeScroll(true);
        setEnableDrawingLiveTile(this.mCurrentGestureEndTarget == GestureState.GestureEndTarget.RECENTS);
        setRunningTaskHidden(false);
        animateUpTaskIconScale();
        animateActionsViewIn();
        this.mCurrentGestureEndTarget = null;
    }

    public void onGestureAnimationStart(Task[] taskArr, RotationTouchHelper rotationTouchHelper) {
        this.mGestureActive = true;
        if (this.mOrientationState.setGestureActive(true)) {
            setLayoutRotation(rotationTouchHelper.getCurrentActiveRotation(), rotationTouchHelper.getDisplayRotation());
            updateSizeAndPadding();
        }
        showCurrentTask(taskArr);
        setEnableFreeScroll(false);
        setEnableDrawingLiveTile(false);
        setRunningTaskHidden(true);
        setTaskIconScaledDown(true);
    }

    @Override // com.android.quickstep.TaskThumbnailCache.HighResLoadingState.HighResLoadingStateChangedCallback
    public void onHighResLoadingStateChanged(boolean z4) {
        TaskView taskViewByTaskId;
        for (int i4 = 0; i4 < this.mHasVisibleTaskData.size(); i4++) {
            if (this.mHasVisibleTaskData.valueAt(i4) && (taskViewByTaskId = getTaskViewByTaskId(this.mHasVisibleTaskData.keyAt(i4))) != null) {
                taskViewByTaskId.onTaskListVisibilityChanged(true);
            }
        }
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        int taskViewCount = getTaskViewCount();
        accessibilityEvent.setScrollable(taskViewCount > 0);
        if (accessibilityEvent.getEventType() == 4096) {
            int[] visibleChildrenRange = getVisibleChildrenRange();
            accessibilityEvent.setFromIndex(taskViewCount - visibleChildrenRange[1]);
            accessibilityEvent.setToIndex(taskViewCount - visibleChildrenRange[0]);
            accessibilityEvent.setItemCount(taskViewCount);
        }
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(1, getTaskViewCount(), false, 0));
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        if (this.mOverviewStateEnabled || this.mFirstLayout) {
            this.mShowAsGridLastOnLayout = showAsGrid();
            super.onLayout(z4, i4, i5, i6, i7);
            updateEmptyStateUi(z4);
            getTaskSize(this.mTempRect);
            updatePivots();
            setTaskModalness(this.mTaskModalness);
            this.mLastComputedTaskStartPushOutDistance = null;
            this.mLastComputedTaskEndPushOutDistance = null;
            updatePageOffsets();
            runActionOnRemoteHandles(new C0603v(this, 11));
            setImportantForAccessibility(isModal() ? 2 : 0);
        }
    }

    @Override // com.android.launcher3.PagedView
    public void onNotSnappingToPageInFreeScroll() {
        int finalX = this.mScroller.getFinalX();
        if (finalX <= this.mMinScroll || finalX >= this.mMaxScroll) {
            return;
        }
        int scrollForPage = getScrollForPage(!this.mIsRtl ? 0 : getPageCount() - 1);
        int scrollForPage2 = getScrollForPage(!this.mIsRtl ? getPageCount() - 1 : 0);
        int i4 = this.mMinScroll;
        if (finalX >= (scrollForPage + i4) / 2) {
            i4 = this.mMaxScroll;
            if (finalX <= (scrollForPage2 + i4) / 2) {
                i4 = getScrollForPage(this.mNextPage);
            }
        }
        if (showAsGrid()) {
            if (isSplitSelectionActive()) {
                return;
            }
            TaskView taskViewAt = getTaskViewAt(this.mNextPage);
            boolean z4 = taskViewAt != null && taskViewAt.isFocusedTask() && isTaskViewFullyVisible(taskViewAt);
            boolean z5 = this.mNextPage == indexOfChild(this.mClearAllButton);
            if (!z4 && !z5) {
                return;
            }
        }
        this.mScroller.setFinalX(i4);
        int duration = 270 - this.mScroller.getDuration();
        if (duration > 0) {
            this.mScroller.extendDuration(duration);
        }
    }

    @Override // com.android.launcher3.PagedView
    public void onPageBeginTransition() {
        super.onPageBeginTransition();
        if (!this.mActivity.getDeviceProfile().isTablet) {
            this.mActionsView.updateDisabledFlags(1, true);
        }
        if (this.mOverviewStateEnabled) {
            InteractionJankMonitorWrapper.begin(this, 65);
        }
    }

    @Override // com.android.launcher3.PagedView
    public void onPageEndTransition() {
        super.onPageEndTransition();
        ActiveGestureLog.INSTANCE.addLog("onPageEndTransition: current page index updated", getNextPage());
        if (isClearAllHidden() && !this.mActivity.getDeviceProfile().isTablet) {
            this.mActionsView.updateDisabledFlags(1, false);
        }
        if (getNextPage() > 0) {
            setSwipeDownShouldLaunchApp(true);
        }
        InteractionJankMonitorWrapper.end(65);
    }

    public void onPrepareGestureEndAnimation(AnimatorSet animatorSet, GestureState.GestureEndTarget gestureEndTarget, TaskViewSimulator[] taskViewSimulatorArr) {
        this.mCurrentGestureEndTarget = gestureEndTarget;
        if ((gestureEndTarget == GestureState.GestureEndTarget.RECENTS ? 1 : null) != null) {
            updateGridProperties();
        }
        BaseState stateFromGestureEndTarget = this.mSizeStrategy.stateFromGestureEndTarget(gestureEndTarget);
        if (stateFromGestureEndTarget.displayOverviewTasksAsGrid(this.mActivity.getDeviceProfile())) {
            TaskView runningTaskView = getRunningTaskView();
            float primaryValue = runningTaskView != null ? this.mOrientationHandler.getPrimaryValue(runningTaskView.getGridTranslationX(), runningTaskView.getGridTranslationY()) - ((Float) runningTaskView.getPrimaryNonGridTranslationProperty().get(runningTaskView)).floatValue() : 0.0f;
            for (TaskViewSimulator taskViewSimulator : taskViewSimulatorArr) {
                if (animatorSet == null) {
                    setGridProgress(1.0f);
                    taskViewSimulator.taskPrimaryTranslation.value = primaryValue;
                } else {
                    animatorSet.play(ObjectAnimator.ofFloat(this, RECENTS_GRID_PROGRESS, 1.0f));
                    animatorSet.play(taskViewSimulator.taskPrimaryTranslation.animateToValue(primaryValue));
                }
            }
        }
        boolean showTaskThumbnailSplash = stateFromGestureEndTarget.showTaskThumbnailSplash();
        if (animatorSet == null) {
            setTaskThumbnailSplashAlpha(showTaskThumbnailSplash ? 1.0f : 0.0f);
        } else {
            animatorSet.play(ObjectAnimator.ofFloat(this, TASK_THUMBNAIL_SPLASH_ALPHA, showTaskThumbnailSplash ? 1.0f : 0.0f));
        }
    }

    public void onRecentsAnimationComplete() {
        setRunningTaskViewShowScreenshot(true);
        setCurrentTask(-1);
        this.mRecentsAnimationController = null;
        this.mSplitSelectStateController.setRecentsAnimationRunning(false);
        executeSideTaskLaunchCallback();
    }

    public void onRotateInSplitSelectionState() {
        this.mOrientationHandler.getInitialSplitPlaceholderBounds(this.mSplitPlaceholderSize, this.mSplitPlaceholderInset, this.mActivity.getDeviceProfile(), this.mSplitSelectStateController.getActiveSplitStagePosition(), this.mTempRect);
        this.mTempRectF.set(this.mTempRect);
        FloatingTaskView firstFloatingTaskView = this.mSplitSelectStateController.getFirstFloatingTaskView();
        firstFloatingTaskView.updateOrientationHandler(this.mOrientationHandler);
        firstFloatingTaskView.update(this.mTempRectF, 1.0f);
        Pair splitSelectTaskOffset = getPagedOrientationHandler().getSplitSelectTaskOffset(TASK_PRIMARY_SPLIT_TRANSLATION, TASK_SECONDARY_SPLIT_TRANSLATION, this.mActivity.getDeviceProfile());
        ((FloatProperty) splitSelectTaskOffset.first).set((FloatProperty) this, Float.valueOf(getSplitSelectTranslation()));
        ((FloatProperty) splitSelectTaskOffset.second).set((FloatProperty) this, Float.valueOf(0.0f));
        if (this.mSplitSelectStateController.getSplitInstructionsView() != null) {
            this.mSplitSelectStateController.getSplitInstructionsView().ensureProperRotation();
        }
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public void onScrollChanged(int i4, int i5, int i6, int i7) {
        super.onScrollChanged(i4, i5, i6, i7);
        dispatchScrollChanged();
    }

    @Override // com.android.launcher3.PagedView
    public void onScrollOverPageChanged() {
        vibrateForScroll();
    }

    @Override // com.android.launcher3.PagedView
    public void onScrollerAnimationAborted() {
        ActiveGestureLog.INSTANCE.addLog("scroller animation aborted", ActiveGestureErrorDetector.GestureEvent.SCROLLER_ANIMATION_ABORTED);
    }

    public void onSwipeUpAnimationSuccess() {
        animateUpTaskIconScale();
        setSwipeDownShouldLaunchApp(true);
    }

    @Override // com.android.quickstep.util.TaskVisualsChangeListener
    public void onTaskIconChanged(String str, UserHandle userHandle) {
        Task.TaskKey taskKey;
        for (int i4 = 0; i4 < getTaskViewCount(); i4++) {
            TaskView requireTaskViewAt = requireTaskViewAt(i4);
            Task task = requireTaskViewAt.getTask();
            if (task != null && (taskKey = task.key) != null && str.equals(taskKey.getPackageName()) && task.key.userId == userHandle.getIdentifier()) {
                task.icon = null;
                if (requireTaskViewAt.getIconView().getDrawable() != null) {
                    requireTaskViewAt.onTaskListVisibilityChanged(true);
                }
            }
        }
    }

    public void onTaskLaunchAnimationEnd(boolean z4) {
        if (z4) {
            resetTaskVisuals();
        }
    }

    public void onTaskLaunchedInLiveTileMode() {
        TaskLaunchListener taskLaunchListener = this.mTaskLaunchListener;
        if (taskLaunchListener != null) {
            taskLaunchListener.onTaskLaunched();
            this.mTaskLaunchListener = null;
        }
    }

    public void onTaskStackUpdated() {
        updateEmptyMessage();
    }

    @Override // com.android.quickstep.util.TaskVisualsChangeListener
    public Task onTaskThumbnailChanged(int i4, ThumbnailData thumbnailData) {
        TaskView taskViewByTaskId;
        TaskView.TaskIdAttributeContainer[] taskIdAttributeContainers;
        if (!this.mHandleTaskStackChanges || (taskViewByTaskId = getTaskViewByTaskId(i4)) == null) {
            return null;
        }
        for (TaskView.TaskIdAttributeContainer taskIdAttributeContainer : taskViewByTaskId.getTaskIdAttributeContainers()) {
            if (taskIdAttributeContainer != null && i4 == taskIdAttributeContainer.getTask().key.id) {
                taskIdAttributeContainer.getThumbnailView().setThumbnail(taskIdAttributeContainer.getTask(), thumbnailData);
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:96:0x006c, code lost:
        if (((r0 * r0) + (r7 * r7)) > r6.mSquaredTouchSlop) goto L32;
     */
    @Override // com.android.launcher3.PagedView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            super.onTouchEvent(r7)
            boolean r0 = r6.showAsGrid()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L26
            int r0 = r6.getTaskViewCount()
            r3 = r1
        L10:
            if (r3 >= r0) goto L33
            com.android.quickstep.views.TaskView r4 = r6.requireTaskViewAt(r3)
            boolean r5 = r6.isTaskViewVisible(r4)
            if (r5 == 0) goto L23
            boolean r4 = r4.offerTouchToChildren(r7)
            if (r4 == 0) goto L23
            return r2
        L23:
            int r3 = r3 + 1
            goto L10
        L26:
            com.android.quickstep.views.TaskView r0 = r6.getCurrentPageTaskView()
            if (r0 == 0) goto L33
            boolean r0 = r0.offerTouchToChildren(r7)
            if (r0 == 0) goto L33
            return r2
        L33:
            float r0 = r7.getX()
            int r0 = (int) r0
            float r3 = r7.getY()
            int r3 = (int) r3
            int r4 = r7.getAction()
            if (r4 == 0) goto L7b
            if (r4 == r2) goto L71
            r7 = 2
            if (r4 == r7) goto L51
            r7 = 3
            if (r4 == r7) goto L4d
            goto Lc8
        L4d:
            r6.mTouchDownToStartHome = r1
            goto Lc8
        L51:
            boolean r7 = r6.mTouchDownToStartHome
            if (r7 == 0) goto Lc8
            boolean r7 = r6.isHandlingTouch()
            if (r7 != 0) goto L6e
            int r7 = r6.mDownX
            int r7 = r7 - r0
            float r7 = (float) r7
            int r0 = r6.mDownY
            int r0 = r0 - r3
            float r0 = (float) r0
            java.lang.String[] r2 = com.android.launcher3.Utilities.EMPTY_STRING_ARRAY
            float r7 = r7 * r7
            float r0 = r0 * r0
            float r0 = r0 + r7
            float r7 = r6.mSquaredTouchSlop
            int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r7 <= 0) goto Lc8
        L6e:
            r6.mTouchDownToStartHome = r1
            goto Lc8
        L71:
            boolean r7 = r6.mTouchDownToStartHome
            if (r7 == 0) goto L78
            r6.startHome()
        L78:
            r6.mTouchDownToStartHome = r1
            goto Lc8
        L7b:
            boolean r4 = r6.isHandlingTouch()
            if (r4 != 0) goto Lc4
            boolean r4 = r6.isModal()
            if (r4 != 0) goto Lc4
            boolean r4 = r6.mShowEmptyMessage
            if (r4 == 0) goto L8e
            r6.mTouchDownToStartHome = r2
            goto Lc4
        L8e:
            r6.updateDeadZoneRects()
            com.android.quickstep.views.ClearAllButton r4 = r6.mClearAllButton
            float r4 = r4.getAlpha()
            r5 = 1065353216(0x3f800000, float:1.0)
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 != 0) goto La7
            android.graphics.Rect r4 = r6.mClearAllButtonDeadZoneRect
            boolean r4 = r4.contains(r0, r3)
            if (r4 == 0) goto La7
            r4 = r2
            goto La8
        La7:
            r4 = r1
        La8:
            int r7 = r7.getEdgeFlags()
            r7 = r7 & 256(0x100, float:3.59E-43)
            if (r7 == 0) goto Lb1
            r1 = r2
        Lb1:
            if (r4 != 0) goto Lc4
            if (r1 != 0) goto Lc4
            android.graphics.Rect r7 = r6.mTaskViewDeadZoneRect
            int r1 = r6.getScrollX()
            int r1 = r1 + r0
            boolean r7 = r7.contains(r1, r3)
            if (r7 != 0) goto Lc4
            r6.mTouchDownToStartHome = r2
        Lc4:
            r6.mDownX = r0
            r6.mDownY = r3
        Lc8:
            boolean r6 = r6.isHandlingTouch()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.views.RecentsView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        view.setAlpha(this.mContentAlpha);
        view.setLayoutDirection(!this.mIsRtl ? 1 : 0);
        this.mActionsView.updateHiddenFlags(2, false);
        updateEmptyMessage();
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (!(view instanceof TaskView) || view == this.mSplitHiddenTaskView || view == this.mMovingTaskView) {
            return;
        }
        TaskView taskView = (TaskView) view;
        for (int i4 : taskView.getTaskIds()) {
            this.mHasVisibleTaskData.delete(i4);
        }
        if (view instanceof GroupedTaskView) {
            this.mGroupedTaskViewPool.recycle((GroupedTaskView) taskView);
        } else if (view instanceof DesktopTaskView) {
            this.mDesktopTaskViewPool.recycle((DesktopTaskView) taskView);
        } else {
            this.mTaskViewPool.recycle(taskView);
        }
        taskView.setTaskViewId(-1);
        this.mActionsView.updateHiddenFlags(2, getTaskViewCount() == 0);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i4) {
        super.onWindowVisibilityChanged(i4);
        updateTaskStackListenerState();
    }

    public void redrawLiveTile() {
        runActionOnRemoteHandles(new C0595m(2));
    }

    public void reloadIfNeeded() {
        if (this.mModel.isTaskListValid(this.mTaskListChangeId)) {
            return;
        }
        this.mTaskListChangeId = this.mModel.getTasks(new C0603v(this, 5), RecentsFilterState.getFilter(this.mFilterState.getPackageNameToFilter()));
    }

    public void removeOnScrollChangedListener(ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.mScrollListeners.remove(onScrollChangedListener);
    }

    @Override // com.android.launcher3.PagedView, android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z4) {
        if (isModal()) {
            return false;
        }
        return super.requestChildRectangleOnScreen(view, rect, z4);
    }

    public void reset() {
        setCurrentTask(-1);
        this.mCurrentPageScrollDiff = 0;
        this.mIgnoreResetTaskId = -1;
        this.mTaskListChangeId = -1;
        this.mFocusedTaskViewId = -1;
        if (this.mRecentsAnimationController != null) {
            if (this.mEnableDrawingLiveTile) {
                finishRecentsAnimation(true, null);
            } else {
                this.mRecentsAnimationController = null;
            }
        }
        setEnableDrawingLiveTile(false);
        runActionOnRemoteHandles(new C0595m(4));
        if (!FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
            resetFromSplitSelectionState();
        }
        post(new B(this, 3));
    }

    public void resetFromSplitSelectionState() {
        if (this.mSplitSelectSource != null || this.mSplitHiddenTaskViewIndex != -1 || FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
            safeRemoveDragLayerView(this.mSplitSelectStateController.getFirstFloatingTaskView());
            safeRemoveDragLayerView(this.mSecondFloatingTaskView);
            safeRemoveDragLayerView(this.mSplitSelectStateController.getSplitInstructionsView());
            this.mSecondFloatingTaskView = null;
            this.mSplitSelectSource = null;
            this.mSplitSelectStateController.getSplitAnimationController().removeSplitInstructionsView(this.mActivity);
        }
        TaskView taskView = this.mSecondSplitHiddenView;
        if (taskView != null) {
            taskView.setThumbnailVisibility(0, -1);
            this.mSecondSplitHiddenView = null;
        }
        setTaskViewsPrimarySplitTranslation(0.0f);
        setTaskViewsSecondarySplitTranslation(0.0f);
        if (!FeatureFlags.ENABLE_SPLIT_FROM_WORKSPACE_TO_WORKSPACE.get()) {
            this.mSplitSelectStateController.resetState();
        }
        if (this.mSplitHiddenTaskViewIndex == -1) {
            return;
        }
        if (!this.mActivity.getDeviceProfile().isTablet) {
            int i4 = this.mCurrentPage;
            int i5 = this.mSplitHiddenTaskViewIndex;
            if (i5 <= i4) {
                i5 = i4 + 1;
            }
            snapToPageImmediately(i5);
        }
        onLayout(false, getLeft(), getTop(), getRight(), getBottom());
        resetTaskVisuals();
        this.mSplitHiddenTaskViewIndex = -1;
        TaskView taskView2 = this.mSplitHiddenTaskView;
        if (taskView2 != null) {
            taskView2.setThumbnailVisibility(0, -1);
            this.mSplitHiddenTaskView = null;
        }
        if (DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED) {
            updateDesktopTaskVisibility(true);
        }
    }

    public void resetModalVisuals() {
        TaskView taskView = this.mSelectedTask;
        if (taskView != null) {
            taskView.getThumbnail().getTaskOverlay().resetModalVisuals();
        }
    }

    public void resetTaskVisuals() {
        int taskViewCount = getTaskViewCount() - 1;
        while (true) {
            if (taskViewCount < 0) {
                break;
            }
            TaskView requireTaskViewAt = requireTaskViewAt(taskViewCount);
            if (this.mIgnoreResetTaskId != requireTaskViewAt.getTaskIds()[0]) {
                requireTaskViewAt.resetViewTransforms();
                requireTaskViewAt.setIconScaleAndDim(this.mTaskIconScaledDown ? 0.0f : 1.0f);
                requireTaskViewAt.setStableAlpha(this.mContentAlpha);
                requireTaskViewAt.setFullscreenProgress(this.mFullscreenProgress);
                requireTaskViewAt.setModalness(this.mTaskModalness);
                requireTaskViewAt.setTaskThumbnailSplashAlpha(this.mTaskThumbnailSplashAlpha);
            }
            taskViewCount--;
        }
        runActionOnRemoteHandles(new C0595m(1));
        boolean z4 = this.mRunningTaskShowScreenshot;
        if (!z4) {
            setRunningTaskViewShowScreenshot(z4);
        }
        boolean z5 = this.mRunningTaskTileHidden;
        if (z5) {
            setRunningTaskHidden(z5);
        }
        updateCurveProperties();
        loadVisibleTaskData(7);
        setTaskModalness(0.0f);
        setColorTint(0.0f);
    }

    public void runActionOnRemoteHandles(Consumer consumer) {
        RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr = this.mRemoteTargetHandles;
        if (remoteTargetHandleArr == null) {
            return;
        }
        for (RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle : remoteTargetHandleArr) {
            consumer.accept(remoteTargetHandle);
        }
    }

    @Override // com.android.launcher3.PagedView
    public boolean scrollLeft() {
        if (showAsGrid()) {
            int nextPage = getNextPage();
            if (nextPage >= 0) {
                TaskView taskViewAt = getTaskViewAt(nextPage);
                while (true) {
                    if ((taskViewAt == null || isTaskViewFullyVisible(taskViewAt)) && nextPage - 1 >= 0) {
                        nextPage--;
                        taskViewAt = getTaskViewAt(nextPage);
                    }
                }
                int scrollForPage = (getScrollForPage(nextPage) + (this.mIsRtl ? this.mLastComputedGridTaskSize.left : this.mLastComputedGridTaskSize.right)) - getLastTaskEnd();
                while (true) {
                    int i4 = nextPage - 1;
                    if (i4 >= 0) {
                        if (!this.mIsRtl) {
                            if (getScrollForPage(i4) <= scrollForPage) {
                                break;
                            }
                            nextPage--;
                        } else if (getScrollForPage(i4) >= scrollForPage) {
                            break;
                        } else {
                            nextPage--;
                        }
                    } else {
                        break;
                    }
                }
                snapToPage(nextPage);
                return true;
            }
            return this.mAllowOverScroll;
        }
        return super.scrollLeft();
    }

    @Override // com.android.launcher3.PagedView
    public boolean scrollRight() {
        if (showAsGrid()) {
            int nextPage = getNextPage();
            if (nextPage < getChildCount()) {
                TaskView taskViewAt = getTaskViewAt(nextPage);
                while (taskViewAt != null && isTaskViewFullyVisible(taskViewAt)) {
                    int i4 = nextPage + 1;
                    if (i4 >= getChildCount()) {
                        break;
                    }
                    taskViewAt = getTaskViewAt(i4);
                    nextPage = i4;
                }
                snapToPage(nextPage);
                return true;
            }
            return this.mAllowOverScroll;
        }
        return super.scrollRight();
    }

    public void setAndApplyFilter(String str) {
        this.mFilterState.setFilterBy(str);
    }

    public void setClampScrollOffset(boolean z4) {
        this.mShouldClampScrollOffset = z4;
    }

    public void setContentAlpha(float f4) {
        if (f4 == this.mContentAlpha) {
            return;
        }
        float boundToRange = Utilities.boundToRange(f4, 0.0f, 1.0f);
        this.mContentAlpha = boundToRange;
        int i4 = getTaskIdsForRunningTaskView()[0];
        for (int taskViewCount = getTaskViewCount() - 1; taskViewCount >= 0; taskViewCount--) {
            TaskView requireTaskViewAt = requireTaskViewAt(taskViewCount);
            int[] taskIds = requireTaskViewAt.getTaskIds();
            if (!this.mRunningTaskTileHidden || (taskIds[0] != i4 && taskIds[1] != i4)) {
                requireTaskViewAt.setStableAlpha(boundToRange);
            }
        }
        this.mClearAllButton.setContentAlpha(this.mContentAlpha);
        int round = Math.round(255.0f * boundToRange);
        this.mEmptyMessagePaint.setAlpha(round);
        this.mEmptyIcon.setAlpha(round);
        this.mActionsView.getContentAlpha().setValue(this.mContentAlpha);
        if (boundToRange > 0.0f) {
            setVisibility(0);
        } else if (!this.mFreezeViewVisibility) {
            setVisibility(4);
        }
    }

    public void setCurrentTask(int i4) {
        int i5 = this.mRunningTaskViewId;
        if (i5 == i4) {
            return;
        }
        if (i5 != -1) {
            setTaskIconScaledDown(false);
            setRunningTaskViewShowScreenshot(true);
            setRunningTaskHidden(false);
        }
        this.mRunningTaskViewId = i4;
    }

    public void setDisallowScrollToClearAll(boolean z4) {
        if (this.mDisallowScrollToClearAll != z4) {
            this.mDisallowScrollToClearAll = z4;
            updateMinAndMaxScrollX();
        }
    }

    public void setEnableDrawingLiveTile(boolean z4) {
        this.mEnableDrawingLiveTile = z4;
    }

    public void setFreezeViewVisibility(boolean z4) {
        if (this.mFreezeViewVisibility != z4) {
            this.mFreezeViewVisibility = z4;
            if (z4) {
                return;
            }
            setVisibility(this.mContentAlpha > 0.0f ? 0 : 4);
        }
    }

    public void setFullscreenProgress(float f4) {
        this.mFullscreenProgress = f4;
        int taskViewCount = getTaskViewCount();
        for (int i4 = 0; i4 < taskViewCount; i4++) {
            requireTaskViewAt(i4).setFullscreenProgress(this.mFullscreenProgress);
        }
        this.mClearAllButton.setFullscreenProgress(f4);
        this.mActionsView.getFullscreenAlpha().setValue(Utilities.mapToRange(f4, 0.0f, 0.1f, 1.0f, 0.0f, y0.e.f12949m));
    }

    public void setIgnoreResetTask(int i4) {
        this.mIgnoreResetTaskId = i4;
    }

    @Override // com.android.launcher3.Insettable
    public void setInsets(Rect rect) {
        this.mInsets.set(rect);
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        setOverviewGridEnabled(this.mActivity.getStateManager().getState().displayOverviewTasksAsGrid(deviceProfile));
        if (FeatureFlags.ENABLE_GRID_ONLY_OVERVIEW.get()) {
            this.mActionsView.updateHiddenFlags(32, deviceProfile.isTablet);
        }
        setPageSpacing(deviceProfile.overviewPageSpacing);
        runActionOnRemoteHandles(new G(2, deviceProfile));
        this.mOrientationState.setDeviceProfile(deviceProfile);
        updateOrientationHandler();
        this.mActionsView.updateDimension(deviceProfile, this.mLastComputedTaskSize);
    }

    public void setLayoutRotation(int i4, int i5) {
        if (this.mOrientationState.update(i4, i5)) {
            updateOrientationHandler();
        }
    }

    public abstract void setModalStateEnabled(int i4, boolean z4);

    public void setOnEmptyMessageUpdatedListener(OnEmptyMessageUpdatedListener onEmptyMessageUpdatedListener) {
        this.mOnEmptyMessageUpdatedListener = onEmptyMessageUpdatedListener;
    }

    public void setOverlayEnabled(boolean z4) {
        if (this.mOverlayEnabled != z4) {
            this.mOverlayEnabled = z4;
            updateEnabledOverlays();
        }
    }

    public void setOverviewFullscreenEnabled(boolean z4) {
        if (this.mOverviewFullscreenEnabled != z4) {
            this.mOverviewFullscreenEnabled = z4;
            requestLayout();
        }
    }

    public void setOverviewGridEnabled(boolean z4) {
        if (this.mOverviewGridEnabled != z4) {
            this.mOverviewGridEnabled = z4;
            updateActionsViewFocusedScroll();
            requestLayout();
        }
    }

    public void setOverviewSelectEnabled(boolean z4) {
        if (this.mOverviewSelectEnabled != z4) {
            this.mOverviewSelectEnabled = z4;
            updatePivots();
            if (this.mOverviewSelectEnabled) {
                return;
            }
            setSelectedTask(-1);
        }
    }

    public void setOverviewStateEnabled(boolean z4) {
        this.mOverviewStateEnabled = z4;
        updateTaskStackListenerState();
        this.mOrientationState.setRotationWatcherEnabled(z4);
        if (!z4) {
            this.mTmpRunningTasks = null;
            this.mSplitBoundsConfig = null;
            this.mTaskOverlayFactory.clearAllActiveState();
        }
        updateLocusId();
    }

    public void setRecentsAnimationTargets(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
        RemoteTargetGluer remoteTargetGluer;
        this.mRecentsAnimationController = recentsAnimationController;
        this.mSplitSelectStateController.setRecentsAnimationRunning(true);
        if (recentsAnimationTargets == null || recentsAnimationTargets.apps.length == 0) {
            return;
        }
        if (DesktopTaskView.DESKTOP_MODE_SUPPORTED && recentsAnimationTargets.hasDesktopTasks()) {
            remoteTargetGluer = new RemoteTargetGluer(getContext(), getSizeStrategy(), recentsAnimationTargets, true);
            this.mRemoteTargetHandles = remoteTargetGluer.assignTargetsForDesktop(recentsAnimationTargets);
        } else {
            remoteTargetGluer = new RemoteTargetGluer(getContext(), getSizeStrategy(), recentsAnimationTargets, false);
            this.mRemoteTargetHandles = remoteTargetGluer.assignTargetsForSplitScreen(recentsAnimationTargets);
        }
        this.mSplitBoundsConfig = remoteTargetGluer.getSplitBounds();
        runActionOnRemoteHandles(new C0603v(this, 6));
        TaskView runningTaskView = getRunningTaskView();
        if (runningTaskView instanceof GroupedTaskView) {
            ((GroupedTaskView) runningTaskView).updateSplitBoundsConfig(this.mSplitBoundsConfig);
        }
    }

    public AnimatorSet setRecentsChangedOrientation(boolean z4) {
        getRunningTaskIndex();
        int currentPage = getCurrentPage();
        AnimatorSet animatorSet = new AnimatorSet();
        for (int i4 = 0; i4 < getTaskViewCount(); i4++) {
            TaskView requireTaskViewAt = requireTaskViewAt(i4);
            if (currentPage != i4 || requireTaskViewAt.getAlpha() == 0.0f) {
                Property property = View.ALPHA;
                float[] fArr = new float[1];
                fArr[0] = z4 ? 0.0f : 1.0f;
                animatorSet.play(ObjectAnimator.ofFloat(requireTaskViewAt, property, fArr));
            }
        }
        return animatorSet;
    }

    public void setRunningTaskHidden(boolean z4) {
        this.mRunningTaskTileHidden = z4;
        TaskView runningTaskView = getRunningTaskView();
        if (runningTaskView != null) {
            runningTaskView.setStableAlpha(z4 ? 0.0f : this.mContentAlpha);
            if (z4) {
                return;
            }
            AccessibilityManagerCompat.sendCustomAccessibilityEvent(runningTaskView, 8, null);
        }
    }

    public void setSelectedTask(int i4) {
        this.mSelectedTask = getTaskViewByTaskId(i4);
    }

    public void setSwipeDownShouldLaunchApp(boolean z4) {
        this.mSwipeDownShouldLaunchApp = z4;
    }

    public void setTaskIconScaledDown(boolean z4) {
        if (this.mTaskIconScaledDown != z4) {
            this.mTaskIconScaledDown = z4;
            int taskViewCount = getTaskViewCount();
            for (int i4 = 0; i4 < taskViewCount; i4++) {
                requireTaskViewAt(i4).setIconScaleAndDim(this.mTaskIconScaledDown ? 0.0f : 1.0f);
            }
        }
    }

    public void setTaskLaunchListener(TaskLaunchListener taskLaunchListener) {
        this.mTaskLaunchListener = taskLaunchListener;
    }

    public void setTaskViewsPrimarySplitTranslation(float f4) {
        this.mTaskViewsPrimarySplitTranslation = f4;
        for (int i4 = 0; i4 < getTaskViewCount(); i4++) {
            TaskView requireTaskViewAt = requireTaskViewAt(i4);
            requireTaskViewAt.getPrimarySplitTranslationProperty().set((FloatProperty) requireTaskViewAt, Float.valueOf(f4));
        }
    }

    public void setTaskViewsResistanceTranslation(float f4) {
        this.mTaskViewsSecondaryTranslation = f4;
        for (int i4 = 0; i4 < getTaskViewCount(); i4++) {
            TaskView requireTaskViewAt = requireTaskViewAt(i4);
            requireTaskViewAt.getTaskResistanceTranslationProperty().set((FloatProperty) requireTaskViewAt, Float.valueOf(f4 / getScaleY()));
        }
        runActionOnRemoteHandles(new C0606y(f4, 1));
    }

    public void setTaskViewsSecondarySplitTranslation(float f4) {
        this.mTaskViewsSecondarySplitTranslation = f4;
        for (int i4 = 0; i4 < getTaskViewCount(); i4++) {
            TaskView requireTaskViewAt = requireTaskViewAt(i4);
            if (requireTaskViewAt != this.mSplitHiddenTaskView || requireTaskViewAt.containsMultipleTasks()) {
                requireTaskViewAt.getSecondarySplitTranslationProperty().set((FloatProperty) requireTaskViewAt, Float.valueOf(f4));
            }
        }
    }

    @Override // android.view.View
    public void setVisibility(int i4) {
        super.setVisibility(i4);
        OverviewActionsView overviewActionsView = this.mActionsView;
        if (overviewActionsView != null) {
            overviewActionsView.updateHiddenFlags(4, i4 != 0);
            if (i4 != 0) {
                this.mActionsView.updateDisabledFlags(1, false);
            }
        }
    }

    public boolean shouldAddStubTaskView(Task[] taskArr) {
        if (taskArr.length <= 1) {
            Task task = taskArr[0];
            return task != null && getTaskViewByTaskId(task.key.id) == null;
        }
        TaskView taskViewByTaskId = getTaskViewByTaskId(taskArr[0].key.id);
        TaskView taskViewByTaskId2 = getTaskViewByTaskId(taskArr[1].key.id);
        int taskViewId = taskViewByTaskId == null ? -1 : taskViewByTaskId.getTaskViewId();
        return taskViewId != (taskViewByTaskId2 == null ? -1 : taskViewByTaskId2.getTaskViewId()) || taskViewId == -1;
    }

    public boolean shouldSwipeDownLaunchApp() {
        return this.mSwipeDownShouldLaunchApp;
    }

    public boolean showAsGrid() {
        GestureState.GestureEndTarget gestureEndTarget;
        return this.mOverviewGridEnabled || ((gestureEndTarget = this.mCurrentGestureEndTarget) != null && this.mSizeStrategy.stateFromGestureEndTarget(gestureEndTarget).displayOverviewTasksAsGrid(this.mActivity.getDeviceProfile()));
    }

    public void showForegroundScrim(boolean z4) {
        if (!z4 && this.mColorTint == 0.0f) {
            ObjectAnimator objectAnimator = this.mTintingAnimator;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.mTintingAnimator = null;
                return;
            }
            return;
        }
        FloatProperty floatProperty = COLOR_TINT;
        float[] fArr = new float[1];
        fArr[0] = z4 ? ANIMATION_DISMISS_PROGRESS_MIDPOINT : 0.0f;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, floatProperty, fArr);
        this.mTintingAnimator = ofFloat;
        ofFloat.setAutoCancel(true);
        this.mTintingAnimator.start();
    }

    public void startHome() {
        startHome(this.mActivity.isStarted());
    }

    public void switchToScreenshot(Runnable runnable) {
        if (this.mRecentsAnimationController != null) {
            switchToScreenshotInternal(runnable);
        } else if (runnable != null) {
            runnable.run();
        }
    }

    public void updateClearAllFunction() {
        if (this.mFilterState.isFiltered()) {
            this.mClearAllButton.setText(R.string.recents_back);
            this.mClearAllButton.setOnClickListener(new View$OnClickListenerC0607z(this, 0));
            return;
        }
        this.mClearAllButton.setText(R.string.recents_clear_all);
        this.mClearAllButton.setOnClickListener(new View$OnClickListenerC0607z(this, 1));
    }

    public void updateCurveProperties() {
        if (getPageCount() == 0 || getPageAt(0).getMeasuredWidth() == 0) {
            return;
        }
        this.mClearAllButton.onRecentsViewScroll(this.mOrientationHandler.getPrimaryScroll(this), this.mOverviewGridEnabled);
        this.mActionsView.getIndexScrollAlpha().setValue(1.0f - this.mClearAllButton.getScrollAlpha());
    }

    public void updateEmptyMessage() {
        boolean z4 = true;
        boolean z5 = getTaskViewCount() == 0;
        if (this.mLastMeasureSize.x == getWidth() && this.mLastMeasureSize.y == getHeight()) {
            z4 = false;
        }
        if (z5 != this.mShowEmptyMessage || z4) {
            setContentDescription(z5 ? this.mEmptyMessage : "");
            this.mShowEmptyMessage = z5;
            updateEmptyStateUi(z4);
            invalidate();
            OnEmptyMessageUpdatedListener onEmptyMessageUpdatedListener = this.mOnEmptyMessageUpdatedListener;
            if (onEmptyMessageUpdatedListener != null) {
                onEmptyMessageUpdatedListener.onEmptyMessageUpdated(this.mShowEmptyMessage);
            }
        }
    }

    public void updateLocusId() {
        Executors.UI_HELPER_EXECUTOR.post(new J(1, this, new LocusId((this.mOverviewStateEnabled && this.mActivity.isStarted()) ? "Overview|ENABLED" : "Overview|DISABLED")));
    }

    @Override // com.android.launcher3.PagedView
    public void updateMinAndMaxScrollX() {
        super.updateMinAndMaxScrollX();
    }

    public void updateRecentsRotation() {
        this.mOrientationState.setRecentsRotation(this.mActivity.getDisplay().getRotation());
    }

    public void updateScrollSynchronously() {
        onMeasure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        onLayout(false, getLeft(), getTop(), getRight(), getBottom());
        updateMinAndMaxScrollX();
    }

    public TaskView updateThumbnail(HashMap hashMap, boolean z4) {
        TaskView.TaskIdAttributeContainer taskAttributesById;
        TaskView taskView = null;
        for (Map.Entry entry : hashMap.entrySet()) {
            Integer num = (Integer) entry.getKey();
            ThumbnailData thumbnailData = (ThumbnailData) entry.getValue();
            TaskView taskViewByTaskId = getTaskViewByTaskId(num.intValue());
            if (taskViewByTaskId != null && (taskAttributesById = taskViewByTaskId.getTaskAttributesById(num.intValue())) != null) {
                taskAttributesById.getThumbnailView().setThumbnail(taskAttributesById.getTask(), thumbnailData, z4);
                taskView = taskViewByTaskId;
            }
        }
        return taskView;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || (this.mShowEmptyMessage && drawable == this.mEmptyIcon);
    }

    public TaskView getLastGridTaskView(IntArray intArray, IntArray intArray2) {
        int i4;
        if (intArray.isEmpty() && intArray2.isEmpty()) {
            return null;
        }
        if (intArray.size() >= intArray2.size()) {
            i4 = intArray.get(intArray.size() - 1);
        } else {
            i4 = intArray2.get(intArray2.size() - 1);
        }
        return getTaskViewFromTaskViewId(i4);
    }

    public int getOffsetFromScrollPosition(int i4, IntArray intArray, IntArray intArray2) {
        TaskView taskViewAt;
        TaskView lastGridTaskView;
        int i5;
        if (showAsGrid() && (taskViewAt = getTaskViewAt(i4)) != null && (lastGridTaskView = getLastGridTaskView(intArray, intArray2)) != null && getScrollForPage(i4) == getScrollForPage(indexOfChild(lastGridTaskView))) {
            int positionInRow = (getPositionInRow(lastGridTaskView, intArray, intArray2) - getPositionInRow(taskViewAt, intArray, intArray2)) * (this.mLastComputedGridTaskSize.width() + this.mPageSpacing);
            int lastTaskEnd = getLastTaskEnd();
            boolean z4 = this.mIsRtl;
            if (!z4) {
                positionInRow = -positionInRow;
            }
            int i6 = lastTaskEnd + positionInRow;
            if (z4) {
                i5 = this.mLastComputedGridTaskSize.left;
            } else {
                i5 = this.mLastComputedGridTaskSize.right;
            }
            return i6 - i5;
        }
        return 0;
    }

    private void updateGridProperties(boolean z4) {
        updateGridProperties(z4, Integer.MAX_VALUE);
    }

    private void updateOrientationHandler(boolean z4) {
        PagedOrientationHandler pagedOrientationHandler = this.mOrientationHandler;
        PagedOrientationHandler orientationHandler = this.mOrientationState.getOrientationHandler();
        this.mOrientationHandler = orientationHandler;
        boolean recentsRtlSetting = orientationHandler.getRecentsRtlSetting(getResources());
        this.mIsRtl = recentsRtlSetting;
        setLayoutDirection(recentsRtlSetting ? 1 : 0);
        this.mClearAllButton.setLayoutDirection(!this.mIsRtl ? 1 : 0);
        this.mClearAllButton.setRotation(this.mOrientationHandler.getDegreesRotated());
        if (z4 || !this.mOrientationHandler.equals(pagedOrientationHandler)) {
            this.mActivity.getDragLayer().recreateControllers();
            onOrientationChanged();
            resetTaskVisuals();
        }
        boolean z5 = false;
        Object[] objArr = (this.mOrientationState.getTouchRotation() == 0 && this.mOrientationState.getRecentsActivityRotation() == 0) ? null : 1;
        OverviewActionsView overviewActionsView = this.mActionsView;
        if (!this.mOrientationState.isRecentsActivityRotationAllowed() && objArr != null) {
            z5 = true;
        }
        overviewActionsView.updateHiddenFlags(1, z5);
        updateChildTaskOrientations();
        updateSizeAndPadding();
        requestLayout();
        setCurrentPage(this.mCurrentPage);
    }

    public void updateTaskSize(boolean z4) {
        int taskViewCount = getTaskViewCount();
        if (taskViewCount == 0) {
            return;
        }
        float f4 = 0.0f;
        for (int i4 = 0; i4 < taskViewCount; i4++) {
            TaskView requireTaskViewAt = requireTaskViewAt(i4);
            requireTaskViewAt.updateTaskSize();
            requireTaskViewAt.getPrimaryNonGridTranslationProperty().set((FloatProperty) requireTaskViewAt, Float.valueOf(f4));
            requireTaskViewAt.getSecondaryNonGridTranslationProperty().set((FloatProperty) requireTaskViewAt, Float.valueOf(0.0f));
            float nonGridScale = (1.0f - requireTaskViewAt.getNonGridScale()) * requireTaskViewAt.getLayoutParams().width;
            if (!this.mIsRtl) {
                nonGridScale = -nonGridScale;
            }
            f4 += nonGridScale;
        }
        this.mClearAllButton.setFullscreenTranslationPrimary(f4);
        updateGridProperties(z4);
    }

    public void finishRecentsAnimation(boolean z4, boolean z5, Runnable runnable) {
        cleanupRemoteTargets();
        if (this.mRecentsAnimationController == null) {
            Log.d("b/293191790", "finish recents animation but recents animation controller was null. returning.");
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        boolean z6 = z4 && z5;
        if (z6) {
            SystemUiProxy systemUiProxy = (SystemUiProxy) SystemUiProxy.INSTANCE.get(getContext());
            systemUiProxy.setPipAnimationTypeToAlpha();
            systemUiProxy.setShelfHeight(true, this.mActivity.getDeviceProfile().hotseatBarSizePx);
            PictureInPictureSurfaceTransaction build = new PictureInPictureSurfaceTransaction.Builder().setAlpha(0.0f).build();
            build.setShouldDisableCanAffectSystemUiFlags(false);
            for (int i4 : ((TopTaskTracker) TopTaskTracker.INSTANCE.get(getContext())).getRunningSplitTaskIds()) {
                this.mRecentsAnimationController.setFinishTaskTransaction(i4, build, null);
            }
        }
        this.mRecentsAnimationController.finish(z4, new J(4, this, runnable), z6);
    }

    public int getScrollOffset(int i4) {
        int unclampedScrollOffset = getUnclampedScrollOffset(i4);
        if (this.mShouldClampScrollOffset) {
            if (Math.abs(unclampedScrollOffset) < this.mClampedScrollOffsetBound) {
                return 0;
            }
            return unclampedScrollOffset - Math.round(Math.signum(unclampedScrollOffset) * this.mClampedScrollOffsetBound);
        }
        return unclampedScrollOffset;
    }

    public void startHome(boolean z4) {
        if (canStartHomeSafely()) {
            handleStartHome(z4);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:229:0x0112, code lost:
        if (r11 <= r12) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0114, code lost:
        r25 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:231:0x0117, code lost:
        r25 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:234:0x0127, code lost:
        if (r11 <= r12) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateGridProperties(boolean r30, int r31) {
        /*
            Method dump skipped, instructions count: 750
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.views.RecentsView.updateGridProperties(boolean, int):void");
    }

    public void dismissTask(TaskView taskView, boolean z4, boolean z5) {
        PendingAnimation pendingAnimation = new PendingAnimation(300L);
        createTaskDismissAnimation(pendingAnimation, taskView, z4, z5, 300L, false);
        runDismissAnimation(pendingAnimation);
    }

    public void initiateSplitSelect(TaskView taskView, int i4, StatsLogManager.EventEnum eventEnum) {
        this.mSplitHiddenTaskView = taskView;
        this.mSplitSelectStateController.setInitialTaskSelect(null, i4, taskView.getItemInfo(), eventEnum, taskView.mTask.key.id);
        this.mSplitSelectStateController.setAnimateCurrentTaskDismissal(true);
        this.mSplitHiddenTaskViewIndex = indexOfChild(taskView);
        if (DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED) {
            updateDesktopTaskVisibility(false);
        }
    }

    public void switchToScreenshot(HashMap hashMap, Runnable runnable) {
        TaskView runningTaskView = getRunningTaskView();
        if (runningTaskView != null) {
            runningTaskView.setShowScreenshot(true);
            runningTaskView.refreshThumbnails(hashMap);
            ViewUtils.postFrameDrawn(runningTaskView, runnable);
            return;
        }
        runnable.run();
    }

    public void onTaskIconChanged(int i4) {
        TaskView taskViewByTaskId = getTaskViewByTaskId(i4);
        if (taskViewByTaskId != null) {
            taskViewByTaskId.refreshTaskThumbnailSplash();
        }
    }

    public void initiateSplitSelect(SplitConfigurationOptions$SplitSelectSource splitConfigurationOptions$SplitSelectSource) {
        TestLogging.recordEvent("Main", "enterSplitSelect");
        this.mSplitSelectSource = splitConfigurationOptions$SplitSelectSource;
        TaskView taskViewByTaskId = getTaskViewByTaskId(splitConfigurationOptions$SplitSelectSource.alreadyRunningTaskId);
        this.mSplitHiddenTaskView = taskViewByTaskId;
        this.mSplitHiddenTaskViewIndex = indexOfChild(taskViewByTaskId);
        this.mSplitSelectStateController.setAnimateCurrentTaskDismissal(splitConfigurationOptions$SplitSelectSource.animateCurrentTaskDismissal);
        SplitSelectStateController splitSelectStateController = this.mSplitSelectStateController;
        TaskView taskView = this.mSplitHiddenTaskView;
        splitSelectStateController.setDismissingFromSplitPair(taskView != null && taskView.containsMultipleTasks());
        this.mSplitSelectStateController.setInitialTaskSelect(splitConfigurationOptions$SplitSelectSource.intent, splitConfigurationOptions$SplitSelectSource.position.stagePosition, splitConfigurationOptions$SplitSelectSource.itemInfo, splitConfigurationOptions$SplitSelectSource.splitEvent, splitConfigurationOptions$SplitSelectSource.alreadyRunningTaskId);
        if (DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED) {
            updateDesktopTaskVisibility(false);
        }
    }
}
