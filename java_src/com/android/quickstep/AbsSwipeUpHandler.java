package com.android.quickstep;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.PictureInPictureParams;
import android.app.TaskInfo;
import android.app.WindowConfiguration;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.BlendMode;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.MathUtils;
import android.view.Choreographer;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.view.SyncRtSurfaceTransactionApplier;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.Toast;
import android.window.PictureInPictureSurfaceTransaction;
import android.window.SplashScreenView;
import com.android.internal.util.LatencyTracker;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.dragndrop.DragView;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.statehandlers.DesktopVisibilityController;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.taskbar.TaskbarThresholdUtils;
import com.android.launcher3.taskbar.TaskbarUIController;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.ActivityLifecycleCallbacksAdapter;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.util.TraceHelper;
import com.android.launcher3.util.VibratorWrapper;
import com.android.launcher3.util.WindowBounds;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.BaseActivityInterface;
import com.android.quickstep.GestureState;
import com.android.quickstep.RemoteAnimationTargets;
import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.SwipeUpAnimationLogic;
import com.android.quickstep.TopTaskTracker;
import com.android.quickstep.util.ActiveGestureErrorDetector;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.util.ActivityInitListener;
import com.android.quickstep.util.AnimatorControllerWithResistance;
import com.android.quickstep.util.InputConsumerProxy;
import com.android.quickstep.util.InputProxyHandlerFactory;
import com.android.quickstep.util.MotionPauseDetector;
import com.android.quickstep.util.RecentsOrientedState;
import com.android.quickstep.util.RectFSpringAnim;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.SurfaceTransactionApplier;
import com.android.quickstep.util.SwipePipToHomeAnimator;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.views.DesktopTaskView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.InputConsumerController;
import com.android.systemui.shared.system.InteractionJankMonitorWrapper;
import com.android.systemui.shared.system.SysUiStatsLog;
import com.android.systemui.shared.system.TaskStackChangeListener;
import com.android.systemui.shared.system.TaskStackChangeListeners;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.Optional;
import java.util.OptionalInt;
import java.util.function.BooleanSupplier;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public abstract class AbsSwipeUpHandler extends SwipeUpAnimationLogic implements View.OnApplyWindowInsetsListener {
    private static final int LAUNCHER_UI_STATES;
    private static final int LOG_NO_OP_PAGE_INDEX = -1;
    private static final float MAX_QUICK_SWITCH_RECENTS_SCALE_PROGRESS = 0.07f;
    public static final long MAX_SWIPE_DURATION = 350;
    public static final float MIN_PROGRESS_FOR_OVERVIEW = 0.7f;
    public static final long RECENTS_ATTACH_DURATION = 300;
    private static final String SCREENSHOT_CAPTURED_EVT = "ScreenshotCaptured";
    private static final int SPLASH_ANIMATION_DURATION = 349;
    private static final int SPLASH_APP_REVEAL_DELAY = 83;
    private static final int SPLASH_APP_REVEAL_DURATION = 266;
    private static final int SPLASH_FADE_OUT_DURATION = 133;
    private static final int STATE_APP_CONTROLLER_RECEIVED;
    private static final int STATE_CAPTURE_SCREENSHOT;
    private static final int STATE_CURRENT_TASK_FINISHED;
    private static final int STATE_FINISH_WITH_NO_END;
    private static final int STATE_GESTURE_CANCELLED;
    private static final int STATE_GESTURE_COMPLETED;
    private static final int STATE_GESTURE_STARTED;
    protected static final int STATE_HANDLER_INVALIDATED;
    protected static final int STATE_LAUNCHER_BIND_TO_SERVICE;
    protected static final int STATE_LAUNCHER_DRAWN;
    protected static final int STATE_LAUNCHER_PRESENT;
    protected static final int STATE_LAUNCHER_STARTED;
    private static final int STATE_RESUME_LAST_TASK;
    private static final int STATE_SCALED_CONTROLLER_HOME;
    private static final int STATE_SCALED_CONTROLLER_RECENTS;
    protected static final int STATE_SCREENSHOT_CAPTURED;
    private static final int STATE_SCREENSHOT_VIEW_SHOWN;
    private static final int STATE_SETTLED_ON_ALL_APPS;
    private static final int STATE_START_NEW_TASK;
    private static final float SWIPE_DURATION_MULTIPLIER;
    private static final String TAG = "AbsSwipeUpHandler";
    protected StatefulActivity mActivity;
    protected final ActivityInitListener mActivityInitListener;
    protected final BaseActivityInterface mActivityInterface;
    private final TaskStackChangeListener mActivityRestartListener;
    private BaseActivityInterface.AnimationFactory mAnimationFactory;
    private boolean mCanSlowSwipeGoHome;
    protected boolean mCanceled;
    private boolean mContinuingLastGesture;
    protected RecentsAnimationController mDeferredCleanupRecentsAnimationController;
    protected Runnable mGestureEndCallback;
    private boolean mGestureStarted;
    private boolean mHasEndedLauncherTransition;
    private boolean mHasMotionEverBeenPaused;
    protected final InputConsumerProxy mInputConsumerProxy;
    private boolean mIsDividerShown;
    private boolean mIsInAllAppsRegion;
    private boolean mIsLikelyToStartNewTask;
    private boolean mIsMotionPaused;
    protected boolean mIsSwipingPipToHome;
    private final boolean mIsTaskbarAllAppsOpen;
    private final boolean mIsTransientTaskbar;
    private long mLauncherFrameDrawnTime;
    private AnimatorControllerWithResistance mLauncherTransitionController;
    private final ActivityLifecycleCallbacksAdapter mLifecycleCallbacks;
    private boolean mLogDirectionUpOrLeft;
    private final Runnable mOnDeferredActivityLaunch;
    private final ViewTreeObserver.OnScrollChangedListener mOnRecentsScrollListener;
    private Animator mParallelRunningAnim;
    private final float mQuickSwitchScaleScrollThreshold;
    protected RecentsAnimationController mRecentsAnimationController;
    private final ArrayList mRecentsAnimationStartCallbacks;
    protected RecentsAnimationTargets mRecentsAnimationTargets;
    protected RecentsView mRecentsView;
    private boolean mRecentsViewScrollLinked;
    private SwipeUpAnimationLogic.RunningWindowAnim[] mRunningWindowAnim;
    private final int mSplashMainWindowShiftLength;
    private boolean mStartMovingTasks;
    protected MultiStateCallback mStateCallback;
    private SwipePipToHomeAnimator mSwipePipToHomeAnimator;
    private final SwipePipToHomeAnimator[] mSwipePipToHomeAnimators;
    private RemoteAnimationTargets.ReleaseCheck mSwipePipToHomeReleaseCheck;
    protected final TaskAnimationManager mTaskAnimationManager;
    private HashMap mTaskSnapshotCache;
    private final boolean mTaskbarAlreadyOpen;
    private final int mTaskbarAppWindowThreshold;
    private final int mTaskbarCatchUpThreshold;
    private final int mTaskbarHomeOverviewThreshold;
    private final long mTouchTimeMs;
    private boolean mWasLauncherAlreadyVisible;
    private static final ArrayList STATE_NAMES = new ArrayList();
    private static int FLAG_COUNT = 0;

    /* renamed from: com.android.quickstep.AbsSwipeUpHandler$11 */
    /* loaded from: classes.dex */
    class AnonymousClass11 extends AnimatorListenerAdapter {
        final /* synthetic */ QuickstepLauncher val$quickstepLauncher;
        final /* synthetic */ ViewGroup val$splashView;

        public AnonymousClass11(ViewGroup viewGroup, QuickstepLauncher quickstepLauncher) {
            AbsSwipeUpHandler.this = r1;
            this.val$splashView = viewGroup;
            this.val$quickstepLauncher = quickstepLauncher;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.val$splashView.setAlpha(AbsSwipeUpHandler.SWIPE_DURATION_MULTIPLIER);
            QuickstepLauncher quickstepLauncher = this.val$quickstepLauncher;
            if (quickstepLauncher != null) {
                quickstepLauncher.getDepthController().pauseBlursOnWindows(false);
            }
            AbsSwipeUpHandler.this.finishRecentsAnimationOnTasksAppeared(new RunnableC0549t(0, this.val$splashView));
        }
    }

    /* renamed from: com.android.quickstep.AbsSwipeUpHandler$12 */
    /* loaded from: classes.dex */
    public /* synthetic */ class AnonymousClass12 {
        static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget;

        static {
            int[] iArr = new int[GestureState.GestureEndTarget.values().length];
            $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget = iArr;
            try {
                iArr[GestureState.GestureEndTarget.ALL_APPS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureState.GestureEndTarget.HOME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureState.GestureEndTarget.RECENTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureState.GestureEndTarget.NEW_TASK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[GestureState.GestureEndTarget.LAST_TASK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* renamed from: com.android.quickstep.AbsSwipeUpHandler$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements ViewTreeObserver.OnDrawListener {
        boolean mHandled = false;
        final /* synthetic */ StatefulActivity val$activity;
        final /* synthetic */ View val$dragLayer;
        final /* synthetic */ SafeCloseable val$traceToken;

        public AnonymousClass2(SafeCloseable safeCloseable, View view, StatefulActivity statefulActivity) {
            AbsSwipeUpHandler.this = r1;
            this.val$traceToken = safeCloseable;
            this.val$dragLayer = view;
            this.val$activity = statefulActivity;
        }

        public /* synthetic */ void lambda$onDraw$0(View view) {
            view.getViewTreeObserver().removeOnDrawListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            if (this.mHandled) {
                return;
            }
            this.mHandled = true;
            this.val$traceToken.close();
            View view = this.val$dragLayer;
            view.post(new RunnableC0552u(0, this, view));
            StatefulActivity statefulActivity = this.val$activity;
            AbsSwipeUpHandler absSwipeUpHandler = AbsSwipeUpHandler.this;
            if (statefulActivity != absSwipeUpHandler.mActivity) {
                return;
            }
            absSwipeUpHandler.mStateCallback.lambda$setStateOnUiThread$1(AbsSwipeUpHandler.STATE_LAUNCHER_DRAWN);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.quickstep.AbsSwipeUpHandler$4 */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements ViewTreeObserver.OnDrawListener {
        boolean mHandled = false;
        final /* synthetic */ View val$rv;

        public AnonymousClass4(View view) {
            AbsSwipeUpHandler.this = r1;
            this.val$rv = view;
        }

        public /* synthetic */ void lambda$onDraw$0(View view) {
            view.getViewTreeObserver().removeOnDrawListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            if (this.mHandled) {
                return;
            }
            this.mHandled = true;
            InteractionJankMonitorWrapper.begin(AbsSwipeUpHandler.this.mRecentsView, 11, 2000L);
            InteractionJankMonitorWrapper.begin(AbsSwipeUpHandler.this.mRecentsView, 9);
            InteractionJankMonitorWrapper.begin(AbsSwipeUpHandler.this.mRecentsView, 66);
            View view = this.val$rv;
            view.post(new RunnableC0552u(1, this, view));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.quickstep.AbsSwipeUpHandler$5 */
    /* loaded from: classes.dex */
    public class AnonymousClass5 implements TaskStackChangeListener {
        public AnonymousClass5() {
            AbsSwipeUpHandler.this = r1;
        }

        public static /* synthetic */ boolean lambda$onActivityRestartAttempt$0(ActivityManager.RunningTaskInfo runningTaskInfo, int i4) {
            return runningTaskInfo.taskId == i4 && runningTaskInfo.configuration.windowConfiguration.getActivityType() != 2;
        }

        @Override // com.android.systemui.shared.system.TaskStackChangeListener
        public void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z4, boolean z5, boolean z6) {
            if (Arrays.stream(AbsSwipeUpHandler.this.mGestureState.getRunningTaskIds(true)).anyMatch(new C0608w(0, runningTaskInfo))) {
                AbsSwipeUpHandler.this.endRunningWindowAnim(true);
                TaskStackChangeListeners.getInstance().unregisterTaskStackListener(AbsSwipeUpHandler.this.mActivityRestartListener);
                ActivityManagerWrapper.getInstance().startActivityFromRecents(runningTaskInfo.taskId, (ActivityOptions) null);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface Factory {
        AbsSwipeUpHandler newHandler(GestureState gestureState, long j4);
    }

    static {
        int nextStateFlag = getNextStateFlag("STATE_LAUNCHER_PRESENT");
        STATE_LAUNCHER_PRESENT = nextStateFlag;
        int nextStateFlag2 = getNextStateFlag("STATE_LAUNCHER_STARTED");
        STATE_LAUNCHER_STARTED = nextStateFlag2;
        int nextStateFlag3 = getNextStateFlag("STATE_LAUNCHER_DRAWN");
        STATE_LAUNCHER_DRAWN = nextStateFlag3;
        int nextStateFlag4 = getNextStateFlag("STATE_LAUNCHER_BIND_TO_SERVICE");
        STATE_LAUNCHER_BIND_TO_SERVICE = nextStateFlag4;
        STATE_APP_CONTROLLER_RECEIVED = getNextStateFlag("STATE_APP_CONTROLLER_RECEIVED");
        STATE_SCALED_CONTROLLER_HOME = getNextStateFlag("STATE_SCALED_CONTROLLER_HOME");
        STATE_SCALED_CONTROLLER_RECENTS = getNextStateFlag("STATE_SCALED_CONTROLLER_RECENTS");
        STATE_HANDLER_INVALIDATED = getNextStateFlag("STATE_HANDLER_INVALIDATED");
        STATE_GESTURE_STARTED = getNextStateFlag("STATE_GESTURE_STARTED");
        STATE_GESTURE_CANCELLED = getNextStateFlag("STATE_GESTURE_CANCELLED");
        STATE_GESTURE_COMPLETED = getNextStateFlag("STATE_GESTURE_COMPLETED");
        STATE_CAPTURE_SCREENSHOT = getNextStateFlag("STATE_CAPTURE_SCREENSHOT");
        STATE_SCREENSHOT_CAPTURED = getNextStateFlag("STATE_SCREENSHOT_CAPTURED");
        STATE_SCREENSHOT_VIEW_SHOWN = getNextStateFlag("STATE_SCREENSHOT_VIEW_SHOWN");
        STATE_RESUME_LAST_TASK = getNextStateFlag("STATE_RESUME_LAST_TASK");
        STATE_START_NEW_TASK = getNextStateFlag("STATE_START_NEW_TASK");
        STATE_CURRENT_TASK_FINISHED = getNextStateFlag("STATE_CURRENT_TASK_FINISHED");
        STATE_FINISH_WITH_NO_END = getNextStateFlag("STATE_FINISH_WITH_NO_END");
        STATE_SETTLED_ON_ALL_APPS = getNextStateFlag("STATE_SETTLED_ON_ALL_APPS");
        LAUNCHER_UI_STATES = nextStateFlag | nextStateFlag3 | nextStateFlag2 | nextStateFlag4;
        SWIPE_DURATION_MULTIPLIER = Math.min(1.4285715f, 3.3333333f);
    }

    public AbsSwipeUpHandler(Context context, RecentsAnimationDeviceState recentsAnimationDeviceState, TaskAnimationManager taskAnimationManager, GestureState gestureState, long j4, boolean z4, InputConsumerController inputConsumerController) {
        super(context, recentsAnimationDeviceState, gestureState);
        this.mRecentsAnimationStartCallbacks = new ArrayList();
        this.mOnRecentsScrollListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.android.quickstep.l
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                AbsSwipeUpHandler.this.onRecentsViewScroll();
            }
        };
        this.mRecentsViewScrollLinked = false;
        this.mLifecycleCallbacks = new ActivityLifecycleCallbacksAdapter() { // from class: com.android.quickstep.AbsSwipeUpHandler.1
            {
                AbsSwipeUpHandler.this = this;
            }

            @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
            public /* bridge */ /* synthetic */ void onActivityCreated(Activity activity, Bundle bundle) {
            }

            @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
                if (AbsSwipeUpHandler.this.mActivity != activity) {
                    return;
                }
                ActiveGestureLog.INSTANCE.addLog("Launcher destroyed", ActiveGestureErrorDetector.GestureEvent.LAUNCHER_DESTROYED);
                AbsSwipeUpHandler absSwipeUpHandler = AbsSwipeUpHandler.this;
                absSwipeUpHandler.mRecentsView = null;
                absSwipeUpHandler.mActivity = null;
                absSwipeUpHandler.mStateCallback.clearState(AbsSwipeUpHandler.STATE_LAUNCHER_PRESENT);
            }

            @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
            public /* bridge */ /* synthetic */ void onActivityPaused(Activity activity) {
            }

            @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
            public /* bridge */ /* synthetic */ void onActivityResumed(Activity activity) {
            }

            @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
            public /* bridge */ /* synthetic */ void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
            public /* bridge */ /* synthetic */ void onActivityStarted(Activity activity) {
            }

            @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
            public /* bridge */ /* synthetic */ void onActivityStopped(Activity activity) {
            }
        };
        this.mTaskSnapshotCache = new HashMap();
        this.mAnimationFactory = new C0529m();
        boolean z5 = true;
        this.mLogDirectionUpOrLeft = true;
        this.mOnDeferredActivityLaunch = new RunnableC0493a(this, 5);
        this.mSwipePipToHomeAnimators = new SwipePipToHomeAnimator[2];
        this.mCanSlowSwipeGoHome = true;
        this.mIsDividerShown = true;
        this.mSwipePipToHomeReleaseCheck = null;
        this.mActivityRestartListener = new AnonymousClass5();
        BaseActivityInterface activityInterface = gestureState.getActivityInterface();
        this.mActivityInterface = activityInterface;
        this.mActivityInitListener = activityInterface.createActivityInitListener(new Predicate() { // from class: com.android.quickstep.n
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AbsSwipeUpHandler.this.onActivityInit((Boolean) obj);
            }
        });
        this.mInputConsumerProxy = new InputConsumerProxy(context, new Supplier() { // from class: com.android.quickstep.o
            @Override // java.util.function.Supplier
            public final Object get() {
                Integer lambda$new$1;
                lambda$new$1 = AbsSwipeUpHandler.this.lambda$new$1();
                return lambda$new$1;
            }
        }, inputConsumerController, new RunnableC0493a(this, 6), new InputProxyHandlerFactory(activityInterface, this.mGestureState));
        this.mTaskAnimationManager = taskAnimationManager;
        this.mTouchTimeMs = j4;
        this.mContinuingLastGesture = z4;
        Resources resources = context.getResources();
        this.mQuickSwitchScaleScrollThreshold = resources.getDimension(R.dimen.quick_switch_scaling_scroll_threshold);
        this.mSplashMainWindowShiftLength = -resources.getDimensionPixelSize(R.dimen.starting_surface_exit_animation_window_shift_length);
        initTransitionEndpoints(this.mRemoteTargetHandles[0].getTaskViewSimulator().getOrientationState().getLauncherDeviceProfile());
        initStateCallbacks();
        this.mIsTransientTaskbar = this.mDp.isTaskbarPresent && DisplayController.isTransientTaskbar(this.mActivity);
        TaskbarUIController taskbarController = activityInterface.getTaskbarController();
        boolean z6 = (taskbarController == null || taskbarController.isTaskbarStashed()) ? false : true;
        this.mTaskbarAlreadyOpen = z6;
        this.mIsTaskbarAllAppsOpen = taskbarController != null && taskbarController.isTaskbarAllAppsOpen();
        this.mTaskbarAppWindowThreshold = TaskbarThresholdUtils.getAppWindowThreshold(resources, this.mDp);
        if (!z6 && !this.mGestureState.isTrackpadGesture()) {
            z5 = false;
        }
        this.mTaskbarHomeOverviewThreshold = z5 ? 0 : TaskbarThresholdUtils.getHomeOverviewThreshold(resources, this.mDp);
        this.mTaskbarCatchUpThreshold = TaskbarThresholdUtils.getCatchUpThreshold(resources, this.mDp);
    }

    private void animateToProgress(final float f4, final float f5, final long j4, final Interpolator interpolator, final GestureState.GestureEndTarget gestureEndTarget, final PointF pointF) {
        runOnRecentsAnimationAndLauncherBound(new Runnable() { // from class: com.android.quickstep.c
            @Override // java.lang.Runnable
            public final void run() {
                AbsSwipeUpHandler.this.lambda$animateToProgress$16(f4, f5, j4, interpolator, gestureEndTarget, pointF);
            }
        });
    }

    /* renamed from: animateToProgressInternal */
    public void lambda$animateToProgress$16(float f4, float f5, long j4, Interpolator interpolator, final GestureState.GestureEndTarget gestureEndTarget, PointF pointF) {
        RectFSpringAnim[] createWindowAnimationToHome;
        PictureInPictureParams pictureInPictureParams;
        SurfaceControl surfaceControl;
        maybeUpdateRecentsAttachedState();
        if (this.mGestureState.getEndTarget().isLauncher) {
            StatefulActivity statefulActivity = this.mActivity;
            int i4 = DragView.f4582d;
            BaseDragLayer dragLayer = statefulActivity.getDragLayer();
            int childCount = dragLayer.getChildCount();
            while (true) {
                childCount--;
                if (childCount < 0) {
                    break;
                }
                View childAt = dragLayer.getChildAt(childCount);
                if (childAt instanceof DragView) {
                    dragLayer.removeView(childAt);
                }
            }
            TaskStackChangeListeners.getInstance().registerTaskStackListener(this.mActivityRestartListener);
            Animator parallelAnimationToLauncher = this.mActivityInterface.getParallelAnimationToLauncher(this.mGestureState.getEndTarget(), j4, this.mTaskAnimationManager.getCurrentCallbacks());
            this.mParallelRunningAnim = parallelAnimationToLauncher;
            if (parallelAnimationToLauncher != null) {
                parallelAnimationToLauncher.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.AbsSwipeUpHandler.6
                    {
                        AbsSwipeUpHandler.this = this;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        AbsSwipeUpHandler.this.mParallelRunningAnim = null;
                    }
                });
                this.mParallelRunningAnim.start();
            }
        }
        if (this.mGestureState.getEndTarget() != GestureState.GestureEndTarget.HOME) {
            AnimatorSet animatorSet = new AnimatorSet();
            ObjectAnimator animateToValue = this.mCurrentShift.animateToValue(f4, f5);
            animateToValue.addUpdateListener(new C0520j(this, 0));
            animateToValue.addListener(new AnimationSuccessListener() { // from class: com.android.quickstep.AbsSwipeUpHandler.8
                {
                    AbsSwipeUpHandler.this = this;
                }

                @Override // com.android.launcher3.anim.AnimationSuccessListener
                public void onAnimationSuccess(Animator animator) {
                    AbsSwipeUpHandler absSwipeUpHandler = AbsSwipeUpHandler.this;
                    if (absSwipeUpHandler.mRecentsAnimationController == null) {
                        return;
                    }
                    RecentsView recentsView = absSwipeUpHandler.mRecentsView;
                    if (recentsView != null) {
                        int nextPage = recentsView.getNextPage();
                        int lastAppearedTaskIndex = AbsSwipeUpHandler.this.getLastAppearedTaskIndex();
                        boolean hasStartedNewTask = AbsSwipeUpHandler.this.hasStartedNewTask();
                        GestureState.GestureEndTarget gestureEndTarget2 = gestureEndTarget;
                        GestureState.GestureEndTarget gestureEndTarget3 = GestureState.GestureEndTarget.NEW_TASK;
                        if (gestureEndTarget2 == gestureEndTarget3 && nextPage == lastAppearedTaskIndex && !hasStartedNewTask) {
                            AbsSwipeUpHandler.this.mGestureState.setEndTarget(GestureState.GestureEndTarget.LAST_TASK);
                        } else if (gestureEndTarget2 == GestureState.GestureEndTarget.LAST_TASK && hasStartedNewTask) {
                            AbsSwipeUpHandler.this.mGestureState.setEndTarget(gestureEndTarget3);
                        }
                    }
                    AbsSwipeUpHandler.this.mGestureState.setState(GestureState.STATE_END_TARGET_ANIMATION_FINISHED);
                }
            });
            animatorSet.play(animateToValue);
            RecentsView recentsView = this.mRecentsView;
            if (recentsView != null) {
                recentsView.onPrepareGestureEndAnimation(animatorSet, this.mGestureState.getEndTarget(), getRemoteTaskViewSimulators());
            }
            animatorSet.setDuration(j4).setInterpolator(interpolator);
            animatorSet.start();
            this.mRunningWindowAnim = new SwipeUpAnimationLogic.RunningWindowAnim[]{SwipeUpAnimationLogic.RunningWindowAnim.wrap(animatorSet)};
            return;
        }
        getOrientationHandler().adjustFloatingIconStartVelocity(pointF);
        RecentsAnimationTargets recentsAnimationTargets = this.mRecentsAnimationTargets;
        RemoteAnimationTarget findTask = recentsAnimationTargets != null ? recentsAnimationTargets.findTask(this.mGestureState.getTopRunningTaskId()) : null;
        ArrayList arrayList = findTask != null ? findTask.taskInfo.launchCookies : new ArrayList();
        boolean z4 = findTask != null && findTask.isTranslucent;
        boolean z5 = !this.mDeviceState.isPipActive() && (findTask != null && (surfaceControl = findTask.leash) != null && surfaceControl.isValid()) && findTask.allowEnterPip && (pictureInPictureParams = findTask.taskInfo.pictureInPictureParams) != null && pictureInPictureParams.isAutoEnterEnabled();
        SwipeUpAnimationLogic.HomeAnimationFactory createHomeAnimationFactory = createHomeAnimationFactory(arrayList, j4, z4, z5, findTask);
        boolean z6 = !this.mIsSwipeForSplit && z5;
        this.mIsSwipingPipToHome = z6;
        if (z6) {
            SwipePipToHomeAnimator createWindowAnimationToPip = createWindowAnimationToPip(createHomeAnimationFactory, findTask, f4);
            this.mSwipePipToHomeAnimator = createWindowAnimationToPip;
            this.mSwipePipToHomeAnimators[0] = createWindowAnimationToPip;
            RemoteAnimationTargets.ReleaseCheck releaseCheck = this.mSwipePipToHomeReleaseCheck;
            if (releaseCheck != null) {
                releaseCheck.setCanRelease(false);
            }
            Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0514h(this, 8));
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).stopSwipePipToHome(this.mSwipePipToHomeAnimator.getTaskId(), this.mSwipePipToHomeAnimator.getComponentName(), this.mSwipePipToHomeAnimator.getDestinationBounds(), this.mSwipePipToHomeAnimator.getContentOverlay());
            createWindowAnimationToHome = this.mSwipePipToHomeAnimators;
        } else {
            this.mSwipePipToHomeAnimator = null;
            RemoteAnimationTargets.ReleaseCheck releaseCheck2 = this.mSwipePipToHomeReleaseCheck;
            if (releaseCheck2 != null) {
                releaseCheck2.setCanRelease(true);
                this.mSwipePipToHomeReleaseCheck = null;
            }
            createWindowAnimationToHome = createWindowAnimationToHome(f4, createHomeAnimationFactory);
            createWindowAnimationToHome[0].addAnimatorListener(new AnimationSuccessListener() { // from class: com.android.quickstep.AbsSwipeUpHandler.7
                {
                    AbsSwipeUpHandler.this = this;
                }

                @Override // com.android.launcher3.anim.AnimationSuccessListener
                public void onAnimationSuccess(Animator animator) {
                    AbsSwipeUpHandler absSwipeUpHandler = AbsSwipeUpHandler.this;
                    if (absSwipeUpHandler.mRecentsAnimationController == null) {
                        return;
                    }
                    absSwipeUpHandler.mGestureState.setState(GestureState.STATE_END_TARGET_ANIMATION_FINISHED);
                }
            });
        }
        this.mRunningWindowAnim = new SwipeUpAnimationLogic.RunningWindowAnim[createWindowAnimationToHome.length];
        int length = createWindowAnimationToHome.length;
        for (int i5 = 0; i5 < length; i5++) {
            RectFSpringAnim rectFSpringAnim = createWindowAnimationToHome[i5];
            if (rectFSpringAnim != null) {
                StatefulActivity statefulActivity2 = this.mActivity;
                rectFSpringAnim.start(this.mContext, statefulActivity2 == null ? null : statefulActivity2.getDeviceProfile(), pointF);
                this.mRunningWindowAnim[i5] = SwipeUpAnimationLogic.RunningWindowAnim.wrap(rectFSpringAnim);
            }
        }
        createHomeAnimationFactory.setSwipeVelocity(pointF.y);
        createHomeAnimationFactory.playAtomicAnimation(pointF.y);
        this.mLauncherTransitionController = null;
        RecentsView recentsView2 = this.mRecentsView;
        if (recentsView2 != null) {
            recentsView2.onPrepareGestureEndAnimation(null, this.mGestureState.getEndTarget(), getRemoteTaskViewSimulators());
        }
    }

    private void buildAnimationController() {
        if (canCreateNewOrUpdateExistingLauncherTransitionController()) {
            initTransitionEndpoints(this.mActivity.getDeviceProfile());
            this.mAnimationFactory.createActivityInterface(this.mTransitionDragLength);
        }
    }

    private GestureState.GestureEndTarget calculateEndTarget(PointF pointF, float f4, boolean z4, boolean z5) {
        ActiveGestureLog.INSTANCE.addLog(new ActiveGestureLog.CompoundString("calculateEndTarget: velocities=(x=").append(Float.toString(dpiFromPx(pointF.x))).append("dp/ms, y=").append(Float.toString(dpiFromPx(pointF.y))).append("dp/ms), angle=").append(Double.toString(Math.toDegrees(Math.atan2(-pointF.y, pointF.x)))));
        if (this.mGestureState.isHandlingAtomicEvent()) {
            return GestureState.GestureEndTarget.RECENTS;
        }
        GestureState.GestureEndTarget calculateEndTargetForFlingY = z5 ? GestureState.GestureEndTarget.LAST_TASK : z4 ? calculateEndTargetForFlingY(pointF, f4) : calculateEndTargetForNonFling(pointF);
        return (this.mDeviceState.isOverviewDisabled() && calculateEndTargetForFlingY == GestureState.GestureEndTarget.RECENTS) ? GestureState.GestureEndTarget.LAST_TASK : (DesktopTaskView.DESKTOP_MODE_SUPPORTED && calculateEndTargetForFlingY == GestureState.GestureEndTarget.NEW_TASK) ? GestureState.GestureEndTarget.LAST_TASK : calculateEndTargetForFlingY;
    }

    private GestureState.GestureEndTarget calculateEndTargetForFlingY(PointF pointF, float f4) {
        boolean z4 = isScrollingToNewTask() && Math.abs(pointF.x) > Math.abs(f4);
        boolean z5 = f4 < SWIPE_DURATION_MULTIPLIER;
        if (this.mIsInAllAppsRegion) {
            return z5 ? GestureState.GestureEndTarget.ALL_APPS : GestureState.GestureEndTarget.LAST_TASK;
        } else if (z5) {
            return z4 ? GestureState.GestureEndTarget.NEW_TASK : GestureState.GestureEndTarget.HOME;
        } else {
            return (z4 || (this.mRecentsView.getDestinationPage() != this.mRecentsView.getRunningTaskIndex())) ? GestureState.GestureEndTarget.NEW_TASK : GestureState.GestureEndTarget.LAST_TASK;
        }
    }

    private GestureState.GestureEndTarget calculateEndTargetForNonFling(PointF pointF) {
        boolean isScrollingToNewTask = isScrollingToNewTask();
        return this.mIsInAllAppsRegion ? GestureState.GestureEndTarget.ALL_APPS : (isScrollingToNewTask && ((Math.abs(pointF.x) > this.mContext.getResources().getDimension(R.dimen.quickstep_fling_threshold_speed) ? 1 : (Math.abs(pointF.x) == this.mContext.getResources().getDimension(R.dimen.quickstep_fling_threshold_speed) ? 0 : -1)) > 0)) ? GestureState.GestureEndTarget.NEW_TASK : this.mIsMotionPaused ? GestureState.GestureEndTarget.RECENTS : isScrollingToNewTask ? GestureState.GestureEndTarget.NEW_TASK : (pointF.y >= SWIPE_DURATION_MULTIPLIER || !this.mCanSlowSwipeGoHome) ? GestureState.GestureEndTarget.LAST_TASK : GestureState.GestureEndTarget.HOME;
    }

    private int calculateWindowRotation(RemoteAnimationTarget remoteAnimationTarget, RecentsOrientedState recentsOrientedState) {
        int i4 = remoteAnimationTarget.rotationChange;
        return (i4 == 0 || !TaskAnimationManager.ENABLE_SHELL_TRANSITIONS) ? recentsOrientedState.getDisplayRotation() : Math.abs(i4) == 1 ? 3 : 1;
    }

    private boolean canCreateNewOrUpdateExistingLauncherTransitionController() {
        return (this.mGestureState.getEndTarget() == GestureState.GestureEndTarget.HOME || this.mHasEndedLauncherTransition || this.mActivity == null) ? false : true;
    }

    private void cancelCurrentAnimation() {
        ActiveGestureLog.INSTANCE.addLog("AbsSwipeUpHandler.cancelCurrentAnimation", ActiveGestureErrorDetector.GestureEvent.CANCEL_CURRENT_ANIMATION);
        this.mCanceled = true;
        this.mCurrentShift.cancelAnimation();
        this.mInputConsumerProxy.unregisterCallback();
        this.mActivityInitListener.unregister();
        TaskStackChangeListeners.getInstance().unregisterTaskStackListener(this.mActivityRestartListener);
        this.mTaskSnapshotCache.clear();
    }

    private void computeRecentsScrollIfInvisible() {
        RecentsView recentsView = this.mRecentsView;
        if (recentsView == null || recentsView.getVisibility() == 0) {
            return;
        }
        this.mRecentsView.computeScroll();
    }

    public void continueComputingRecentsScrollIfNecessary() {
        if (this.mGestureState.hasState(GestureState.STATE_RECENTS_SCROLLING_FINISHED) || this.mStateCallback.hasStates(STATE_HANDLER_INVALIDATED) || this.mCanceled) {
            return;
        }
        computeRecentsScrollIfInvisible();
        this.mRecentsView.postOnAnimation(new RunnableC0514h(this, 6));
    }

    private SwipePipToHomeAnimator createWindowAnimationToPip(SwipeUpAnimationLogic.HomeAnimationFactory homeAnimationFactory, RemoteAnimationTarget remoteAnimationTarget, float f4) {
        ActivityManager.RunningTaskInfo runningTaskInfo = remoteAnimationTarget.taskInfo;
        RecentsOrientedState orientationState = this.mRemoteTargetHandles[0].getTaskViewSimulator().getOrientationState();
        int calculateWindowRotation = calculateWindowRotation(remoteAnimationTarget, orientationState);
        int recentsActivityRotation = orientationState.getRecentsActivityRotation();
        Matrix[] matrixArr = new Matrix[this.mRemoteTargetHandles.length];
        RectF rectF = updateProgressForStartRect(matrixArr, f4)[0];
        Matrix matrix = matrixArr[0];
        Matrix matrix2 = new Matrix();
        matrix.invert(matrix2);
        matrix2.mapRect(rectF);
        Rect startSwipePipToHome = ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).startSwipePipToHome(runningTaskInfo.topActivity, runningTaskInfo.topActivityInfo, remoteAnimationTarget.taskInfo.pictureInPictureParams, recentsActivityRotation, getKeepClearAreaForHotseat());
        if (startSwipePipToHome == null) {
            return null;
        }
        Rect rect = new Rect();
        WindowConfiguration windowConfiguration = runningTaskInfo.configuration.windowConfiguration;
        if (windowConfiguration.getWindowingMode() == 1) {
            this.mRemoteTargetHandles[0].getTaskViewSimulator().getCurrentCropRect().round(rect);
        } else {
            rect.set(windowConfiguration.getBounds());
        }
        SwipePipToHomeAnimator.Builder attachedView = new SwipePipToHomeAnimator.Builder().setContext(this.mContext).setTaskId(remoteAnimationTarget.taskId).setActivityInfo(runningTaskInfo.topActivityInfo).setAppIconSizePx(this.mDp.iconSizePx).setLeash(remoteAnimationTarget.leash).setSourceRectHint(remoteAnimationTarget.taskInfo.pictureInPictureParams.getSourceRectHint()).setAppBounds(rect).setHomeToWindowPositionMap(matrix).setStartBounds(rectF).setDestinationBounds(startSwipePipToHome).setCornerRadius(this.mRecentsView.getPipCornerRadius()).setShadowRadius(this.mRecentsView.getPipShadowRadius()).setAttachedView(this.mRecentsView);
        if (recentsActivityRotation == 0 && (calculateWindowRotation == 1 || calculateWindowRotation == 3)) {
            attachedView.setFromRotation(this.mRemoteTargetHandles[0].getTaskViewSimulator(), calculateWindowRotation, runningTaskInfo.displayCutoutInsets);
        }
        SwipePipToHomeAnimator build = attachedView.build();
        final AnimatorPlaybackController createActivityAnimationToHome = homeAnimationFactory.createActivityAnimationToHome();
        build.addAnimatorListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.AbsSwipeUpHandler.9
            private boolean mHasAnimationEnded;

            {
                AbsSwipeUpHandler.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (this.mHasAnimationEnded) {
                    return;
                }
                this.mHasAnimationEnded = true;
                createActivityAnimationToHome.getAnimationPlayer().end();
                AbsSwipeUpHandler absSwipeUpHandler = AbsSwipeUpHandler.this;
                if (absSwipeUpHandler.mRecentsAnimationController == null) {
                    return;
                }
                absSwipeUpHandler.mGestureState.setState(GestureState.STATE_END_TARGET_ANIMATION_FINISHED);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (this.mHasAnimationEnded) {
                    return;
                }
                createActivityAnimationToHome.dispatchOnStart();
            }
        });
        setupWindowAnimation(new RectFSpringAnim[]{build});
        return build;
    }

    private void doLogGesture(GestureState.GestureEndTarget gestureEndTarget, TaskView taskView) {
        RecentsView recentsView;
        DeviceProfile deviceProfile = this.mDp;
        if (deviceProfile == null || !deviceProfile.isGestureMode) {
            return;
        }
        int i4 = AnonymousClass12.$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[gestureEndTarget.ordinal()];
        StatsLogManager.LauncherEvent launcherEvent = i4 != 2 ? i4 != 3 ? (i4 == 4 || i4 == 5) ? this.mLogDirectionUpOrLeft ? StatsLogManager.LauncherEvent.LAUNCHER_QUICKSWITCH_LEFT : StatsLogManager.LauncherEvent.LAUNCHER_QUICKSWITCH_RIGHT : StatsLogManager.LauncherEvent.IGNORE : StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_GESTURE : StatsLogManager.LauncherEvent.LAUNCHER_HOME_GESTURE;
        StatsLogManager.StatsLogger withInputType = StatsLogManager.newInstance(this.mContext).logger().withSrcState(1).withDstState(gestureEndTarget.containerType).withInputType(this.mGestureState.isTrackpadGesture() ? 2 : 1);
        if (taskView != null) {
            withInputType.withItemInfo(taskView.getItemInfo());
        }
        withInputType.withRank((gestureEndTarget == GestureState.GestureEndTarget.LAST_TASK || (recentsView = this.mRecentsView) == null) ? -1 : recentsView.getNextPage());
        withInputType.log(launcherEvent);
    }

    private float dpiFromPx(float f4) {
        int i4 = this.mContext.getResources().getDisplayMetrics().densityDpi;
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        return f4 / (i4 / 160.0f);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.quickstep.p] */
    private void endLauncherTransitionController() {
        this.mHasEndedLauncherTransition = true;
        AnimatorControllerWithResistance animatorControllerWithResistance = this.mLauncherTransitionController;
        if (animatorControllerWithResistance != null) {
            animatorControllerWithResistance.getNormalController().dispatchSetInterpolator(new TimeInterpolator() { // from class: com.android.quickstep.p
                @Override // android.animation.TimeInterpolator
                public final float getInterpolation(float f4) {
                    float lambda$endLauncherTransitionController$21;
                    lambda$endLauncherTransitionController$21 = AbsSwipeUpHandler.this.lambda$endLauncherTransitionController$21(f4);
                    return lambda$endLauncherTransitionController$21;
                }
            });
            this.mLauncherTransitionController.getNormalController().getAnimationPlayer().end();
            this.mLauncherTransitionController = null;
        }
        RecentsView recentsView = this.mRecentsView;
        if (recentsView != null) {
            recentsView.abortScrollerAnimation();
        }
    }

    public void endRunningWindowAnim(boolean z4) {
        SwipeUpAnimationLogic.RunningWindowAnim[] runningWindowAnimArr = this.mRunningWindowAnim;
        if (runningWindowAnimArr != null) {
            int i4 = 0;
            if (z4) {
                int length = runningWindowAnimArr.length;
                while (i4 < length) {
                    SwipeUpAnimationLogic.RunningWindowAnim runningWindowAnim = runningWindowAnimArr[i4];
                    if (runningWindowAnim != null) {
                        runningWindowAnim.cancel();
                    }
                    i4++;
                }
            } else {
                int length2 = runningWindowAnimArr.length;
                while (i4 < length2) {
                    SwipeUpAnimationLogic.RunningWindowAnim runningWindowAnim2 = runningWindowAnimArr[i4];
                    if (runningWindowAnim2 != null) {
                        runningWindowAnim2.end();
                    }
                    i4++;
                }
            }
        }
        Animator animator = this.mParallelRunningAnim;
        if (animator != null) {
            animator.end();
        }
    }

    public void finishCurrentTransitionToAllApps() {
        finishCurrentTransitionToHome();
        reset();
    }

    public void finishCurrentTransitionToHome() {
        if (!hasTargets() || this.mRecentsAnimationController == null) {
            this.mStateCallback.setStateOnUiThread(STATE_CURRENT_TASK_FINISHED);
            maybeAbortSwipePipToHome();
        } else {
            maybeFinishSwipePipToHome();
            finishRecentsControllerToHome(new RunnableC0514h(this, 10));
        }
        RemoteAnimationTargets.ReleaseCheck releaseCheck = this.mSwipePipToHomeReleaseCheck;
        if (releaseCheck != null) {
            releaseCheck.setCanRelease(true);
            this.mSwipePipToHomeReleaseCheck = null;
        }
        GestureState.GestureEndTarget gestureEndTarget = GestureState.GestureEndTarget.HOME;
        RecentsView recentsView = this.mRecentsView;
        doLogGesture(gestureEndTarget, recentsView != null ? recentsView.getCurrentPageTaskView() : null);
    }

    public void finishCurrentTransitionToRecents() {
        if (this.mRecentsView != null && this.mActivityInterface.getDesktopVisibilityController() != null && this.mActivityInterface.getDesktopVisibilityController().areFreeformTasksVisible()) {
            this.mRecentsView.switchToScreenshot(new RunnableC0514h(this, 7));
            return;
        }
        this.mStateCallback.setStateOnUiThread(STATE_CURRENT_TASK_FINISHED);
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.detachNavigationBarFromApp(true);
        }
    }

    public void finishRecentsAnimationOnTasksAppeared(Runnable runnable) {
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.finish(false, runnable);
        }
        ActiveGestureLog.INSTANCE.addLog("finishRecentsAnimationOnTasksAppeared");
    }

    private void flushOnRecentsAnimationAndLauncherBound() {
        if (this.mRecentsAnimationTargets == null || !this.mStateCallback.hasStates(STATE_LAUNCHER_BIND_TO_SERVICE) || this.mRecentsAnimationStartCallbacks.isEmpty()) {
            return;
        }
        Iterator it = new ArrayList(this.mRecentsAnimationStartCallbacks).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.mRecentsAnimationStartCallbacks.clear();
    }

    private Rect getKeepClearAreaForHotseat() {
        DeviceProfile deviceProfile = this.mDp;
        if (!deviceProfile.isPhone) {
            DeviceProfile deviceProfile2 = this.mDp;
            int i4 = deviceProfile2.heightPx;
            return new Rect(0, i4 - deviceProfile2.hotseatBarSizePx, deviceProfile2.widthPx, i4);
        } else if (deviceProfile.isSeascape()) {
            DeviceProfile deviceProfile3 = this.mDp;
            return new Rect(0, 0, deviceProfile3.hotseatBarSizePx, deviceProfile3.heightPx);
        } else if (this.mDp.isLandscape) {
            DeviceProfile deviceProfile4 = this.mDp;
            int i5 = deviceProfile4.widthPx;
            return new Rect(i5 - deviceProfile4.hotseatBarSizePx, 0, i5, deviceProfile4.heightPx);
        } else {
            DeviceProfile deviceProfile5 = this.mDp;
            int i6 = deviceProfile5.heightPx;
            return new Rect(0, i6 - deviceProfile5.hotseatBarSizePx, deviceProfile5.widthPx, i6);
        }
    }

    private static int getNextStateFlag(String str) {
        int i4 = FLAG_COUNT;
        int i5 = 1 << i4;
        FLAG_COUNT = i4 + 1;
        return i5;
    }

    private float getScaleProgressDueToScroll() {
        RecentsView recentsView;
        StatefulActivity statefulActivity = this.mActivity;
        if (statefulActivity == null || !statefulActivity.getDeviceProfile().isTablet || (recentsView = this.mRecentsView) == null || !this.mRecentsViewScrollLinked) {
            return SWIPE_DURATION_MULTIPLIER;
        }
        float abs = Math.abs(recentsView.getScrollOffset(recentsView.getCurrentPage()));
        int pageSpacing = this.mRecentsView.getPageSpacing() + this.mRecentsView.getPagedOrientationHandler().getPrimaryValue(this.mRecentsView.getLastComputedTaskSize().width(), this.mRecentsView.getLastComputedTaskSize().height());
        float maxScaleForFullScreen = this.mRecentsView.getMaxScaleForFullScreen() * MAX_QUICK_SWITCH_RECENTS_SCALE_PROGRESS;
        float f4 = this.mQuickSwitchScaleScrollThreshold;
        if (abs < f4) {
            return Utilities.mapToRange(abs, SWIPE_DURATION_MULTIPLIER, f4, SWIPE_DURATION_MULTIPLIER, maxScaleForFullScreen, y0.e.f12961y);
        }
        float f5 = pageSpacing;
        return abs > f5 - f4 ? Utilities.mapToRange(abs, f5 - f4, f5, maxScaleForFullScreen, SWIPE_DURATION_MULTIPLIER, y0.e.f12961y) : maxScaleForFullScreen;
    }

    public static ActiveGestureErrorDetector.GestureEvent getTrackedEventForState(int i4) {
        if (i4 == STATE_GESTURE_STARTED) {
            return ActiveGestureErrorDetector.GestureEvent.STATE_GESTURE_STARTED;
        }
        if (i4 == STATE_GESTURE_COMPLETED) {
            return ActiveGestureErrorDetector.GestureEvent.STATE_GESTURE_COMPLETED;
        }
        if (i4 == STATE_GESTURE_CANCELLED) {
            return ActiveGestureErrorDetector.GestureEvent.STATE_GESTURE_CANCELLED;
        }
        if (i4 == STATE_SCREENSHOT_CAPTURED) {
            return ActiveGestureErrorDetector.GestureEvent.STATE_SCREENSHOT_CAPTURED;
        }
        if (i4 == STATE_CAPTURE_SCREENSHOT) {
            return ActiveGestureErrorDetector.GestureEvent.STATE_CAPTURE_SCREENSHOT;
        }
        if (i4 == STATE_HANDLER_INVALIDATED) {
            return ActiveGestureErrorDetector.GestureEvent.STATE_HANDLER_INVALIDATED;
        }
        if (i4 == STATE_LAUNCHER_DRAWN) {
            return ActiveGestureErrorDetector.GestureEvent.STATE_LAUNCHER_DRAWN;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0095  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void handleNormalGestureEnd(float r12, boolean r13, android.graphics.PointF r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.AbsSwipeUpHandler.handleNormalGestureEnd(float, boolean, android.graphics.PointF, boolean):void");
    }

    private void initStateCallbacks() {
        MultiStateCallback multiStateCallback = new MultiStateCallback((String[]) STATE_NAMES.toArray(new String[0]), new C0529m());
        this.mStateCallback = multiStateCallback;
        int i4 = STATE_LAUNCHER_PRESENT;
        int i5 = STATE_GESTURE_STARTED;
        multiStateCallback.runOnceAtState(i4 | i5, new RunnableC0493a(this, 19));
        MultiStateCallback multiStateCallback2 = this.mStateCallback;
        int i6 = STATE_LAUNCHER_DRAWN;
        multiStateCallback2.runOnceAtState(i6 | i5, new RunnableC0493a(this, 20));
        this.mStateCallback.runOnceAtState(i4 | i6, new RunnableC0493a(this, 21));
        this.mStateCallback.runOnceAtState(STATE_LAUNCHER_STARTED | i4 | STATE_GESTURE_CANCELLED, new RunnableC0493a(this, 22));
        MultiStateCallback multiStateCallback3 = this.mStateCallback;
        int i7 = STATE_RESUME_LAST_TASK;
        int i8 = STATE_APP_CONTROLLER_RECEIVED;
        multiStateCallback3.runOnceAtState(i7 | i8, new RunnableC0493a(this, 23));
        MultiStateCallback multiStateCallback4 = this.mStateCallback;
        int i9 = STATE_START_NEW_TASK;
        int i10 = STATE_SCREENSHOT_CAPTURED;
        multiStateCallback4.runOnceAtState(i9 | i10, new RunnableC0493a(this, 24));
        this.mStateCallback.runOnceAtState(i4 | i8 | i6 | STATE_CAPTURE_SCREENSHOT, new RunnableC0493a(this, 25));
        MultiStateCallback multiStateCallback5 = this.mStateCallback;
        int i11 = STATE_GESTURE_COMPLETED;
        int i12 = STATE_SCALED_CONTROLLER_RECENTS;
        multiStateCallback5.runOnceAtState(i10 | i11 | i12, new RunnableC0493a(this, 26));
        MultiStateCallback multiStateCallback6 = this.mStateCallback;
        int i13 = STATE_SCALED_CONTROLLER_HOME;
        multiStateCallback6.runOnceAtState(i10 | i11 | i13, new RunnableC0493a(this, 27));
        MultiStateCallback multiStateCallback7 = this.mStateCallback;
        int i14 = STATE_CURRENT_TASK_FINISHED;
        multiStateCallback7.runOnceAtState(i13 | i14, new RunnableC0493a(this, 10));
        this.mStateCallback.runOnceAtState(i10 | STATE_SETTLED_ON_ALL_APPS | i11, new RunnableC0493a(this, 11));
        this.mStateCallback.runOnceAtState(i5 | i6 | i8 | i4 | i12 | i14 | i11, new RunnableC0493a(this, 12));
        GestureState gestureState = this.mGestureState;
        int i15 = GestureState.STATE_END_TARGET_ANIMATION_FINISHED;
        gestureState.runOnceAtState(i15, new RunnableC0493a(this, 13));
        this.mGestureState.runOnceAtState(i15 | GestureState.STATE_RECENTS_SCROLLING_FINISHED, new RunnableC0493a(this, 14));
        MultiStateCallback multiStateCallback8 = this.mStateCallback;
        int i16 = STATE_HANDLER_INVALIDATED;
        multiStateCallback8.runOnceAtState(i16, new RunnableC0493a(this, 15));
        this.mStateCallback.runOnceAtState(i4 | i16, new RunnableC0493a(this, 16));
        this.mStateCallback.runOnceAtState(i16 | i7, new RunnableC0493a(this, 17));
        this.mStateCallback.runOnceAtState(STATE_FINISH_WITH_NO_END | i16, new RunnableC0493a(this, 18));
    }

    public void initializeLauncherAnimationController() {
        buildAnimationController();
        SafeCloseable allowIpcs = TraceHelper.INSTANCE.allowIpcs("logToggleRecents");
        try {
            LatencyTracker.getInstance(this.mContext).logAction(1, (int) (this.mLauncherFrameDrawnTime - this.mTouchTimeMs));
            if (allowIpcs != null) {
                allowIpcs.close();
            }
            ((RecentsModel) RecentsModel.INSTANCE.get(this.mContext)).getThumbnailCache().getHighResLoadingState().setVisible(true);
        } catch (Throwable th) {
            if (allowIpcs != null) {
                try {
                    allowIpcs.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public void invalidateHandler() {
        if (!this.mActivityInterface.isInLiveTileMode() || this.mGestureState.getEndTarget() != GestureState.GestureEndTarget.RECENTS) {
            this.mInputConsumerProxy.destroy();
            this.mTaskAnimationManager.setLiveTileCleanUpHandler(null);
        }
        this.mInputConsumerProxy.unregisterCallback();
        endRunningWindowAnim(false);
        Runnable runnable = this.mGestureEndCallback;
        if (runnable != null) {
            runnable.run();
        }
        this.mActivityInitListener.unregister();
        TaskStackChangeListeners.getInstance().unregisterTaskStackListener(this.mActivityRestartListener);
        this.mTaskSnapshotCache.clear();
    }

    public void invalidateHandlerWithLauncher() {
        endLauncherTransitionController();
        RecentsView recentsView = this.mRecentsView;
        if (recentsView != null) {
            recentsView.onGestureAnimationEnd();
        }
        resetLauncherListeners();
    }

    private static boolean isNotInRecents(RemoteAnimationTarget remoteAnimationTarget) {
        return remoteAnimationTarget.isNotInRecents || remoteAnimationTarget.windowConfiguration.getActivityType() == 2;
    }

    private boolean isScrollingToNewTask() {
        if (this.mRecentsView == null) {
            return false;
        }
        if (hasTargets()) {
            int runningTaskIndex = this.mRecentsView.getRunningTaskIndex();
            return runningTaskIndex >= 0 && this.mRecentsView.getNextPage() != runningTaskIndex;
        }
        return true;
    }

    public /* synthetic */ void lambda$animateToProgressInternal$17() {
        int topRunningTaskId = this.mGestureState.getTopRunningTaskId();
        this.mTaskSnapshotCache.put(Integer.valueOf(topRunningTaskId), this.mRecentsAnimationController.screenshotTask(topRunningTaskId));
    }

    public /* synthetic */ void lambda$animateToProgressInternal$18(ValueAnimator valueAnimator) {
        computeRecentsScrollIfInvisible();
    }

    public /* synthetic */ float lambda$endLauncherTransitionController$21(float f4) {
        return Utilities.boundToRange(this.mCurrentShift.value, (float) SWIPE_DURATION_MULTIPLIER, 1.0f);
    }

    public /* synthetic */ void lambda$finishCurrentTransitionToHome$27() {
        this.mStateCallback.setStateOnUiThread(STATE_CURRENT_TASK_FINISHED);
    }

    public /* synthetic */ void lambda$finishCurrentTransitionToRecents$25() {
        this.mStateCallback.setStateOnUiThread(STATE_CURRENT_TASK_FINISHED);
    }

    public /* synthetic */ void lambda$finishCurrentTransitionToRecents$26() {
        this.mRecentsView.finishRecentsAnimation(true, false, new RunnableC0514h(this, 1));
    }

    public static /* synthetic */ boolean lambda$getLastAppearedTaskIndex$34(int i4) {
        return i4 != -1;
    }

    public /* synthetic */ void lambda$handleNormalGestureEnd$15() {
        this.mGestureState.setState(GestureState.STATE_RECENTS_SCROLLING_FINISHED);
        setClampScrollOffset(false);
    }

    public static /* synthetic */ void lambda$linkRecentsViewScroll$29(SurfaceTransactionApplier surfaceTransactionApplier, RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTransformParams().setSyncTransactionApplier(surfaceTransactionApplier);
    }

    public /* synthetic */ void lambda$linkRecentsViewScroll$30(SurfaceTransactionApplier surfaceTransactionApplier) {
        this.mRecentsAnimationTargets.addReleaseCheck(surfaceTransactionApplier);
    }

    public /* synthetic */ void lambda$linkRecentsViewScroll$31() {
        this.mRecentsView.setRecentsAnimationTargets(this.mRecentsAnimationController, this.mRecentsAnimationTargets);
    }

    public /* synthetic */ void lambda$maybeUpdateRecentsAttachedState$9(ValueAnimator valueAnimator) {
        SwipeUpAnimationLogic.RunningWindowAnim[] runningWindowAnimArr = this.mRunningWindowAnim;
        if (runningWindowAnimArr == null || runningWindowAnimArr.length == 0) {
            applyScrollAndTransform();
        }
    }

    public static /* synthetic */ void lambda$new$0(long j4) {
    }

    public /* synthetic */ Integer lambda$new$1() {
        RecentsView recentsView = this.mRecentsView;
        if (recentsView == null) {
            return 0;
        }
        return Integer.valueOf(recentsView.getPagedViewOrientedState().getRecentsActivityRotation());
    }

    public /* synthetic */ void lambda$new$2() {
        endRunningWindowAnim(this.mGestureState.getEndTarget() == GestureState.GestureEndTarget.HOME);
        endLauncherTransitionController();
    }

    public /* synthetic */ void lambda$onActivityInit$3() {
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.cleanupScreenshot();
            return;
        }
        RecentsAnimationController recentsAnimationController2 = this.mDeferredCleanupRecentsAnimationController;
        if (recentsAnimationController2 != null) {
            recentsAnimationController2.cleanupScreenshot();
            this.mDeferredCleanupRecentsAnimationController = null;
        }
    }

    public /* synthetic */ void lambda$onActivityInit$4() {
        HashMap consumeRecentsAnimationCanceledSnapshot;
        if (this.mRecentsView == null || (consumeRecentsAnimationCanceledSnapshot = this.mGestureState.consumeRecentsAnimationCanceledSnapshot()) == null) {
            return;
        }
        this.mRecentsView.switchToScreenshot(consumeRecentsAnimationCanceledSnapshot, new RunnableC0493a(this, 0));
        this.mRecentsView.onRecentsAnimationComplete();
    }

    public /* synthetic */ void lambda$onAnimatorPlaybackControllerCreated$11() {
        this.mLauncherTransitionController.getNormalController().dispatchOnStart();
        updateLauncherTransitionProgress();
    }

    public /* synthetic */ void lambda$onDeferredActivityLaunch$8() {
        this.mTaskAnimationManager.finishRunningRecentsAnimation(true);
    }

    public /* synthetic */ void lambda$onGestureEnded$13(float f4, boolean z4, PointF pointF) {
        handleNormalGestureEnd(f4, z4, pointF, false);
    }

    public /* synthetic */ void lambda$onLauncherPresentAndGestureStarted$7() {
        this.mDeviceState.getRotationTouchHelper().onEndTargetCalculated(this.mGestureState.getEndTarget(), this.mActivityInterface);
    }

    public /* synthetic */ void lambda$onLauncherStart$5(RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().setOrientationState(this.mRecentsView.getPagedViewOrientedState());
    }

    public /* synthetic */ void lambda$onLauncherStart$6() {
        this.mAnimationFactory = this.mActivityInterface.prepareRecentsUI(this.mDeviceState, this.mWasLauncherAlreadyVisible, new C0511g(1, this));
        maybeUpdateRecentsAttachedState(false);
        if (this.mGestureState.getEndTarget() != null) {
            this.mAnimationFactory.setEndTarget(this.mGestureState.getEndTarget());
        }
    }

    public /* synthetic */ void lambda$onSettledOnEndTarget$14() {
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_RESUME_LAST_TASK);
    }

    public /* synthetic */ void lambda$setClampScrollOffset$12(boolean z4) {
        this.mRecentsView.setClampScrollOffset(z4);
    }

    public static /* synthetic */ void lambda$setIsInAllAppsRegion$10(boolean z4, RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle) {
        remoteTargetHandle.getTaskViewSimulator().setDrawsBelowRecents(z4);
    }

    public /* synthetic */ void lambda$setupLauncherUiAfterSwipeUpToRecentsAnimation$28() {
        this.mRecentsView.cleanupRemoteTargets();
        this.mInputConsumerProxy.destroy();
    }

    public /* synthetic */ void lambda$setupWindowAnimation$19(RectF rectF, float f4) {
        updateSysUiFlags(Math.max(f4, this.mCurrentShift.value));
    }

    public /* synthetic */ void lambda$startNewTask$20(TaskView taskView, Boolean bool) {
        if (!bool.booleanValue()) {
            reset();
            endLauncherTransitionController();
            updateSysUiFlags(1.0f);
        }
        doLogGesture(GestureState.GestureEndTarget.NEW_TASK, taskView);
    }

    public /* synthetic */ boolean lambda$startNewTask$32(int i4) {
        return this.mGestureState.getPreviouslyAppearedTaskIds().contains(Integer.valueOf(i4));
    }

    public /* synthetic */ void lambda$startNewTask$33(Consumer consumer, boolean z4, Boolean bool) {
        consumer.accept(bool);
        if (bool.booleanValue()) {
            if (z4) {
                onRestartPreviouslyAppearedTask();
                return;
            }
            return;
        }
        this.mActivityInterface.onLaunchTaskFailed();
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.finish(true, null);
        }
    }

    public /* synthetic */ void lambda$switchToScreenshot$22() {
        if (updateThumbnail(false)) {
            return;
        }
        setScreenshotCapturedState();
    }

    public /* synthetic */ void lambda$switchToScreenshot$23(int[] iArr) {
        if (this.mRecentsAnimationController == null) {
            return;
        }
        for (int i4 : iArr) {
            this.mTaskSnapshotCache.put(Integer.valueOf(i4), this.mRecentsAnimationController.screenshotTask(i4));
        }
        Executors.MAIN_EXECUTOR.execute(new RunnableC0493a(this, 7));
    }

    public /* synthetic */ void lambda$updateThumbnail$24() {
        this.mStateCallback.setStateOnUiThread(STATE_SCREENSHOT_CAPTURED);
    }

    public void launcherFrameDrawn() {
        this.mLauncherFrameDrawnTime = SystemClock.uptimeMillis();
    }

    private void maybeAbortSwipePipToHome() {
        if (!this.mIsSwipingPipToHome || this.mSwipePipToHomeAnimators[0] == null) {
            return;
        }
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).abortSwipePipToHome(this.mSwipePipToHomeAnimator.getTaskId(), this.mSwipePipToHomeAnimator.getComponentName());
        this.mIsSwipingPipToHome = false;
    }

    private void maybeFinishSwipePipToHome() {
        if (this.mIsSwipingPipToHome && this.mSwipePipToHomeAnimators[0] != null) {
            this.mRecentsAnimationController.setFinishTaskTransaction(this.mSwipePipToHomeAnimator.getTaskId(), this.mSwipePipToHomeAnimator.getFinishTransaction(), this.mSwipePipToHomeAnimator.getContentOverlay());
            this.mIsSwipingPipToHome = false;
        } else if (this.mIsSwipeForSplit) {
            PictureInPictureSurfaceTransaction build = new PictureInPictureSurfaceTransaction.Builder().setAlpha((float) SWIPE_DURATION_MULTIPLIER).build();
            build.setShouldDisableCanAffectSystemUiFlags(false);
            for (int i4 : ((TopTaskTracker) TopTaskTracker.INSTANCE.get(this.mContext)).getRunningSplitTaskIds()) {
                this.mRecentsAnimationController.setFinishTaskTransaction(i4, build, null);
            }
        }
    }

    private void maybeUpdateRecentsAttachedState() {
        maybeUpdateRecentsAttachedState(true);
    }

    private void notifyGestureStarted() {
        StatefulActivity statefulActivity = this.mActivity;
        if (statefulActivity != null) {
            statefulActivity.clearForceInvisibleFlag(9);
        }
    }

    public void onAnimatorPlaybackControllerCreated(AnimatorControllerWithResistance animatorControllerWithResistance) {
        boolean z4 = this.mLauncherTransitionController == null;
        this.mLauncherTransitionController = animatorControllerWithResistance;
        if (z4) {
            this.mStateCallback.runOnceAtState(STATE_GESTURE_STARTED, new RunnableC0514h(this, 5));
        }
    }

    public void onDeferredActivityLaunch() {
        this.mActivityInterface.switchRunningTaskViewToScreenshot(null, new RunnableC0514h(this, 3));
    }

    public void onLauncherBindToService() {
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_LAUNCHER_BIND_TO_SERVICE);
        flushOnRecentsAnimationAndLauncherBound();
    }

    public void onLauncherPresentAndGestureStarted() {
        setupRecentsViewUi();
        this.mGestureState.getActivityInterface().setOnDeferredActivityLaunchCallback(this.mOnDeferredActivityLaunch);
        this.mGestureState.runOnceAtState(GestureState.STATE_END_TARGET_SET, new RunnableC0514h(this, 9));
        notifyGestureStarted();
    }

    public void onLauncherStart() {
        StatefulActivity createdActivity = this.mActivityInterface.getCreatedActivity();
        if (this.mActivity == createdActivity && !this.mStateCallback.hasStates(STATE_HANDLER_INVALIDATED)) {
            this.mRecentsView.updateRecentsRotation();
            runActionOnRemoteHandles(new C0511g(0, this));
            if (this.mGestureState.getEndTarget() != GestureState.GestureEndTarget.HOME) {
                RunnableC0514h runnableC0514h = new RunnableC0514h(this, 0);
                if (this.mWasLauncherAlreadyVisible) {
                    this.mStateCallback.runOnceAtState(STATE_GESTURE_STARTED, runnableC0514h);
                } else {
                    runnableC0514h.run();
                }
            }
            AbstractFloatingView.closeAllOpenViewsExcept(createdActivity, this.mWasLauncherAlreadyVisible, 256);
            if (this.mWasLauncherAlreadyVisible) {
                this.mStateCallback.lambda$setStateOnUiThread$1(STATE_LAUNCHER_DRAWN);
            } else {
                SafeCloseable beginAsyncSection = TraceHelper.INSTANCE.beginAsyncSection("WTS-init");
                BaseDragLayer dragLayer = createdActivity.getDragLayer();
                dragLayer.getViewTreeObserver().addOnDrawListener(new AnonymousClass2(beginAsyncSection, dragLayer, createdActivity));
            }
            createdActivity.getRootView().setOnApplyWindowInsetsListener(this);
            this.mStateCallback.lambda$setStateOnUiThread$1(STATE_LAUNCHER_STARTED);
        }
    }

    public void onRecentsViewScroll() {
        if (moveWindowWithRecentsScroll()) {
            onCurrentShiftUpdated();
        }
    }

    public void onSettledOnEndTarget() {
        DesktopVisibilityController desktopVisibilityController;
        maybeUpdateRecentsAttachedState(false);
        GestureState.GestureEndTarget endTarget = this.mGestureState.getEndTarget();
        View onSettledOnEndTarget = this.mActivityInterface.onSettledOnEndTarget(endTarget);
        if (endTarget != GestureState.GestureEndTarget.NEW_TASK) {
            InteractionJankMonitorWrapper.cancel(11);
        }
        if (endTarget != GestureState.GestureEndTarget.HOME) {
            InteractionJankMonitorWrapper.cancel(9);
        }
        if (endTarget != GestureState.GestureEndTarget.RECENTS) {
            InteractionJankMonitorWrapper.cancel(66);
        }
        int i4 = AnonymousClass12.$SwitchMap$com$android$quickstep$GestureState$GestureEndTarget[endTarget.ordinal()];
        if (i4 == 1) {
            this.mStateCallback.lambda$setStateOnUiThread$1(STATE_SETTLED_ON_ALL_APPS | STATE_CAPTURE_SCREENSHOT);
        } else if (i4 == 2) {
            this.mStateCallback.lambda$setStateOnUiThread$1(STATE_SCALED_CONTROLLER_HOME | STATE_CAPTURE_SCREENSHOT);
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).setPipAnimationTypeToAlpha();
            if (DesktopTaskView.DESKTOP_IS_PROTO2_ENABLED && (desktopVisibilityController = this.mActivityInterface.getDesktopVisibilityController()) != null) {
                desktopVisibilityController.onHomeActionTriggered();
            }
        } else if (i4 == 3) {
            this.mStateCallback.lambda$setStateOnUiThread$1(STATE_SCALED_CONTROLLER_RECENTS | STATE_CAPTURE_SCREENSHOT | STATE_SCREENSHOT_VIEW_SHOWN);
        } else if (i4 == 4) {
            this.mStateCallback.lambda$setStateOnUiThread$1(STATE_START_NEW_TASK | STATE_CAPTURE_SCREENSHOT);
        } else if (i4 == 5) {
            if (onSettledOnEndTarget != null) {
                ViewUtils.postFrameDrawn(onSettledOnEndTarget, new RunnableC0514h(this, 2));
            } else {
                this.mStateCallback.lambda$setStateOnUiThread$1(STATE_RESUME_LAST_TASK);
            }
            setDividerShown(true);
        }
        ActiveGestureLog activeGestureLog = ActiveGestureLog.INSTANCE;
        activeGestureLog.addLog("onSettledOnEndTarget " + endTarget, ActiveGestureErrorDetector.GestureEvent.ON_SETTLED_ON_END_TARGET);
    }

    public void reset() {
        this.mStateCallback.setStateOnUiThread(STATE_HANDLER_INVALIDATED);
        StatefulActivity statefulActivity = this.mActivity;
        if (statefulActivity != null) {
            statefulActivity.unregisterActivityLifecycleCallbacks(this.mLifecycleCallbacks);
        }
    }

    private void resetLauncherListeners() {
        this.mActivity.getRootView().setOnApplyWindowInsetsListener(null);
        RecentsView recentsView = this.mRecentsView;
        if (recentsView != null) {
            recentsView.removeOnScrollChangedListener(this.mOnRecentsScrollListener);
        }
    }

    public void resetStateForAnimationCancel() {
        this.mActivityInterface.onTransitionCancelled(this.mWasLauncherAlreadyVisible || this.mGestureStarted, this.mGestureState.getEndTarget());
        StatefulActivity statefulActivity = this.mActivity;
        if (statefulActivity != null) {
            statefulActivity.clearForceInvisibleFlag(1);
        }
    }

    public void resumeLastTask() {
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.finish(false, null);
        }
        doLogGesture(GestureState.GestureEndTarget.LAST_TASK, null);
        reset();
    }

    private void runOnRecentsAnimationAndLauncherBound(Runnable runnable) {
        this.mRecentsAnimationStartCallbacks.add(runnable);
        flushOnRecentsAnimationAndLauncherBound();
    }

    private void setClampScrollOffset(final boolean z4) {
        if (this.mIsTransientTaskbar) {
            RecentsView recentsView = this.mRecentsView;
            if (recentsView == null) {
                this.mStateCallback.runOnceAtState(STATE_LAUNCHER_PRESENT, new Runnable() { // from class: com.android.quickstep.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        AbsSwipeUpHandler.this.lambda$setClampScrollOffset$12(z4);
                    }
                });
            } else {
                recentsView.setClampScrollOffset(z4);
            }
        }
    }

    private void setDividerShown(boolean z4) {
        RecentsAnimationTargets recentsAnimationTargets = this.mRecentsAnimationTargets;
        if (recentsAnimationTargets == null || this.mIsDividerShown == z4) {
            return;
        }
        this.mIsDividerShown = z4;
        TaskViewUtils.createSplitAuxiliarySurfacesAnimator(recentsAnimationTargets.nonApps, z4, null);
    }

    private void setIsInAllAppsRegion(final boolean z4) {
        if (this.mIsInAllAppsRegion == z4 || !this.mActivityInterface.allowAllAppsFromOverview()) {
            return;
        }
        this.mIsInAllAppsRegion = z4;
        ((VibratorWrapper) VibratorWrapper.INSTANCE.get(this.mContext)).vibrate(VibratorWrapper.OVERVIEW_HAPTIC);
        maybeUpdateRecentsAttachedState(true);
        StatefulActivity statefulActivity = this.mActivity;
        if (statefulActivity != null) {
            statefulActivity.getAppsView().getSearchUiManager().prepareToFocusEditText(this.mIsInAllAppsRegion);
        }
        runActionOnRemoteHandles(new Consumer() { // from class: com.android.quickstep.q
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AbsSwipeUpHandler.lambda$setIsInAllAppsRegion$10(z4, (RemoteTargetGluer.RemoteTargetHandle) obj);
            }
        });
    }

    private void setScreenshotCapturedState() {
        TraceHelper.INSTANCE.beginSection(SCREENSHOT_CAPTURED_EVT);
        this.mStateCallback.setStateOnUiThread(STATE_SCREENSHOT_CAPTURED);
        TraceHelper.INSTANCE.endSection();
    }

    public void setupLauncherUiAfterSwipeUpToRecentsAnimation() {
        if (this.mStateCallback.hasStates(STATE_HANDLER_INVALIDATED)) {
            return;
        }
        endLauncherTransitionController();
        this.mRecentsView.onSwipeUpAnimationSuccess();
        this.mTaskAnimationManager.setLiveTileCleanUpHandler(new RunnableC0514h(this, 4));
        this.mTaskAnimationManager.enableLiveTileRestartListener();
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mContext)).onOverviewShown(false, TAG);
        doLogGesture(GestureState.GestureEndTarget.RECENTS, this.mRecentsView.getCurrentPageTaskView());
        reset();
    }

    private void setupRecentsViewUi() {
        if (this.mContinuingLastGesture) {
            updateSysUiFlags(this.mCurrentShift.value);
        } else {
            notifyGestureAnimationStartToRecents();
        }
    }

    private void setupWindowAnimation(RectFSpringAnim[] rectFSpringAnimArr) {
        rectFSpringAnimArr[0].addOnUpdateListener(new RectFSpringAnim.OnUpdateListener() { // from class: com.android.quickstep.b
            @Override // com.android.quickstep.util.RectFSpringAnim.OnUpdateListener
            public final void onUpdate(RectF rectF, float f4) {
                AbsSwipeUpHandler.this.lambda$setupWindowAnimation$19(rectF, f4);
            }
        });
        rectFSpringAnimArr[0].addAnimatorListener(new AnimationSuccessListener() { // from class: com.android.quickstep.AbsSwipeUpHandler.10
            {
                AbsSwipeUpHandler.this = this;
            }

            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                RecentsView recentsView = AbsSwipeUpHandler.this.mRecentsView;
                if (recentsView != null) {
                    Objects.requireNonNull(recentsView);
                    recentsView.post(new RunnableC0549t(2, recentsView));
                }
                AbsSwipeUpHandler.this.maybeUpdateRecentsAttachedState(false);
                AbsSwipeUpHandler absSwipeUpHandler = AbsSwipeUpHandler.this;
                absSwipeUpHandler.mActivityInterface.onSwipeUpToHomeComplete(absSwipeUpHandler.mDeviceState);
            }
        });
        RecentsAnimationTargets recentsAnimationTargets = this.mRecentsAnimationTargets;
        if (recentsAnimationTargets != null) {
            recentsAnimationTargets.addReleaseCheck(rectFSpringAnimArr[0]);
        }
    }

    public void startInterceptingTouchesForGesture() {
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController == null || !this.mStartMovingTasks) {
            return;
        }
        recentsAnimationController.enableInputConsumer();
        setDividerShown(false);
    }

    public void startNewTask() {
        RecentsView recentsView = this.mRecentsView;
        final TaskView nextPageTaskView = recentsView == null ? null : recentsView.getNextPageTaskView();
        startNewTask(new Consumer() { // from class: com.android.quickstep.r
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AbsSwipeUpHandler.this.lambda$startNewTask$20(nextPageTaskView, (Boolean) obj);
            }
        });
    }

    private void updateLauncherTransitionProgress() {
        if (this.mLauncherTransitionController == null || !canCreateNewOrUpdateExistingLauncherTransitionController()) {
            return;
        }
        this.mLauncherTransitionController.setProgress(Math.max(this.mCurrentShift.value, getScaleProgressDueToScroll()), this.mDragLengthFactor);
    }

    private void updateSysUiFlags(float f4) {
        RecentsView recentsView;
        if (this.mRecentsAnimationController == null || (recentsView = this.mRecentsView) == null) {
            return;
        }
        TaskView runningTaskView = recentsView.getRunningTaskView();
        TaskView taskViewNearestToCenterOfScreen = this.mRecentsView.getTaskViewNearestToCenterOfScreen();
        int sysUiStatusNavFlags = taskViewNearestToCenterOfScreen == null ? 0 : taskViewNearestToCenterOfScreen.getThumbnail().getSysUiStatusNavFlags();
        boolean z4 = true;
        boolean z5 = f4 > 0.14999998f;
        boolean z6 = taskViewNearestToCenterOfScreen != runningTaskView;
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (!z5 && (!z6 || sysUiStatusNavFlags == 0)) {
            z4 = false;
        }
        recentsAnimationController.setUseLauncherSystemBarFlags(z4);
        this.mRecentsAnimationController.setSplitScreenMinimized(this.mContext, z5);
        this.mRecentsAnimationController.setWillFinishToHome(z5);
        if (z5) {
            this.mActivity.getSystemUiController().updateUiState(3, 0);
        } else {
            this.mActivity.getSystemUiController().updateUiState(3, sysUiStatusNavFlags);
        }
    }

    private boolean updateThumbnail(boolean z4) {
        RecentsView recentsView;
        TaskView updateThumbnail;
        if (this.mGestureState.getEndTarget() == GestureState.GestureEndTarget.HOME || this.mGestureState.getEndTarget() == GestureState.GestureEndTarget.NEW_TASK || this.mGestureState.getEndTarget() == GestureState.GestureEndTarget.ALL_APPS || (recentsView = this.mRecentsView) == null || (updateThumbnail = recentsView.updateThumbnail(this.mTaskSnapshotCache, z4)) == null || !z4 || this.mCanceled) {
            return false;
        }
        return ViewUtils.postFrameDrawn(updateThumbnail, new RunnableC0493a(this, 8), new BooleanSupplier() { // from class: com.android.quickstep.s
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return AbsSwipeUpHandler.this.isCanceled();
            }
        });
    }

    public void applyScrollAndTransform() {
        RemoteTargetGluer.RemoteTargetHandle[] remoteTargetHandleArr;
        boolean z4 = (this.mRecentsAnimationTargets == null || this.mGestureState.getEndTarget() == GestureState.GestureEndTarget.HOME) ? false : true;
        boolean z5 = this.mRecentsViewScrollLinked && this.mRecentsView != null;
        float max = Math.max(this.mCurrentShift.value, getScaleProgressDueToScroll());
        int scrollOffset = z5 ? this.mRecentsView.getScrollOffset() : 0;
        if (!this.mStartMovingTasks && (max > SWIPE_DURATION_MULTIPLIER || scrollOffset != 0)) {
            this.mStartMovingTasks = true;
            startInterceptingTouchesForGesture();
        }
        for (RemoteTargetGluer.RemoteTargetHandle remoteTargetHandle : this.mRemoteTargetHandles) {
            AnimatorControllerWithResistance playbackController = remoteTargetHandle.getPlaybackController();
            if (playbackController != null) {
                playbackController.setProgress(max, this.mDragLengthFactor);
            }
            if (z4) {
                TaskViewSimulator taskViewSimulator = remoteTargetHandle.getTaskViewSimulator();
                if (z5) {
                    taskViewSimulator.setScroll(scrollOffset);
                }
                taskViewSimulator.apply(remoteTargetHandle.getTransformParams());
            }
        }
    }

    public abstract SwipeUpAnimationLogic.HomeAnimationFactory createHomeAnimationFactory(ArrayList arrayList, long j4, boolean z4, boolean z5, RemoteAnimationTarget remoteAnimationTarget);

    @Override // com.android.quickstep.SwipeUpAnimationLogic
    public RectFSpringAnim[] createWindowAnimationToHome(float f4, SwipeUpAnimationLogic.HomeAnimationFactory homeAnimationFactory) {
        RectFSpringAnim[] createWindowAnimationToHome = super.createWindowAnimationToHome(f4, homeAnimationFactory);
        setupWindowAnimation(createWindowAnimationToHome);
        return createWindowAnimationToHome;
    }

    public abstract void finishRecentsControllerToHome(Runnable runnable);

    public int getLastAppearedTaskIndex() {
        if (this.mRecentsView == null) {
            return -1;
        }
        OptionalInt findFirst = Arrays.stream(this.mGestureState.getLastAppearedTaskIds()).filter(new C0505e()).findFirst();
        return findFirst.isPresent() ? this.mRecentsView.getTaskIndexForId(findFirst.getAsInt()) : this.mRecentsView.getRunningTaskIndex();
    }

    public Intent getLaunchIntent() {
        return this.mGestureState.getOverviewIntent();
    }

    public MotionPauseDetector.OnMotionPauseListener getMotionPauseListener() {
        return new MotionPauseDetector.OnMotionPauseListener() { // from class: com.android.quickstep.AbsSwipeUpHandler.3
            {
                AbsSwipeUpHandler.this = this;
            }

            @Override // com.android.quickstep.util.MotionPauseDetector.OnMotionPauseListener
            public void onMotionPauseChanged(boolean z4) {
                AbsSwipeUpHandler.this.mIsMotionPaused = z4;
            }

            @Override // com.android.quickstep.util.MotionPauseDetector.OnMotionPauseListener
            public void onMotionPauseDetected() {
                AbsSwipeUpHandler.this.mHasMotionEverBeenPaused = true;
                AbsSwipeUpHandler.this.maybeUpdateRecentsAttachedState(true, true);
                Optional.ofNullable(AbsSwipeUpHandler.this.mActivityInterface.getTaskbarController()).ifPresent(new C0580v());
                if (AbsSwipeUpHandler.this.mIsInAllAppsRegion) {
                    return;
                }
                AbsSwipeUpHandler.this.performHapticFeedback();
            }
        };
    }

    public Consumer getRecentsViewDispatcher(float f4) {
        RecentsView recentsView = this.mRecentsView;
        if (recentsView != null) {
            return recentsView.getEventDispatcher(f4);
        }
        return null;
    }

    public float getThresholdToAllowMotionPause() {
        return this.mIsTransientTaskbar ? this.mTaskbarHomeOverviewThreshold : SWIPE_DURATION_MULTIPLIER;
    }

    public boolean handleTaskAppeared(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        if (this.mStateCallback.hasStates(STATE_HANDLER_INVALIDATED)) {
            return false;
        }
        boolean anyMatch = Arrays.stream(remoteAnimationTargetArr).anyMatch(this.mGestureState.mLastStartedTaskIdPredicate);
        if (this.mStateCallback.hasStates(STATE_START_NEW_TASK) && anyMatch) {
            reset();
            return true;
        }
        return false;
    }

    public boolean hasStartedNewTask() {
        return this.mGestureState.getLastStartedTaskIds()[0] != -1;
    }

    public boolean hasTargets() {
        RecentsAnimationTargets recentsAnimationTargets = this.mRecentsAnimationTargets;
        return recentsAnimationTargets != null && recentsAnimationTargets.hasTargets();
    }

    public void initWhenReady() {
        ((RecentsModel) RecentsModel.INSTANCE.get(this.mContext)).getTasks(null);
        this.mActivityInitListener.register();
    }

    public boolean isCanceled() {
        return this.mCanceled;
    }

    public void linkRecentsViewScroll() {
        SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(this.mRecentsView);
        runActionOnRemoteHandles(new C0511g(2, surfaceTransactionApplier));
        runOnRecentsAnimationAndLauncherBound(new RunnableC0552u(2, this, surfaceTransactionApplier));
        this.mRecentsView.addOnScrollChangedListener(this.mOnRecentsScrollListener);
        runOnRecentsAnimationAndLauncherBound(new RunnableC0493a(this, 29));
        if (this.mGestureState.isThreeFingerTrackpadGesture()) {
            return;
        }
        this.mRecentsViewScrollLinked = true;
    }

    public boolean moveWindowWithRecentsScroll() {
        return this.mGestureState.getEndTarget() != GestureState.GestureEndTarget.HOME;
    }

    public void notifyGestureAnimationStartToRecents() {
        TopTaskTracker.CachedTaskInfo runningTask = this.mGestureState.getRunningTask();
        Task[] placeholderTasks = this.mIsSwipeForSplit ? runningTask.getPlaceholderTasks(((TopTaskTracker) TopTaskTracker.INSTANCE.get(this.mContext)).getRunningSplitTaskIds()) : runningTask.getPlaceholderTasks();
        if (Arrays.stream(placeholderTasks).anyMatch(new C0508f())) {
            return;
        }
        this.mRecentsView.onGestureAnimationStart(placeholderTasks, this.mDeviceState.getRotationTouchHelper());
    }

    public boolean onActivityInit(Boolean bool) {
        if (this.mStateCallback.hasStates(STATE_HANDLER_INVALIDATED)) {
            return false;
        }
        StatefulActivity createdActivity = this.mActivityInterface.getCreatedActivity();
        if (createdActivity != null) {
            initTransitionEndpoints(createdActivity.getDeviceProfile());
        }
        StatefulActivity createdActivity2 = this.mActivityInterface.getCreatedActivity();
        StatefulActivity statefulActivity = this.mActivity;
        if (statefulActivity == createdActivity2) {
            return true;
        }
        if (statefulActivity != null) {
            if (this.mStateCallback.hasStates(STATE_GESTURE_COMPLETED)) {
                this.mGestureState.setState(GestureState.STATE_RECENTS_SCROLLING_FINISHED);
                return true;
            }
            int state = this.mStateCallback.getState() & (~LAUNCHER_UI_STATES);
            initStateCallbacks();
            this.mStateCallback.lambda$setStateOnUiThread$1(state);
        }
        this.mWasLauncherAlreadyVisible = bool.booleanValue();
        this.mActivity = createdActivity2;
        if (bool.booleanValue()) {
            this.mActivity.clearForceInvisibleFlag(9);
        } else {
            this.mActivity.addForceInvisibleFlag(9);
        }
        RecentsView recentsView = (RecentsView) createdActivity2.getOverviewPanel();
        this.mRecentsView = recentsView;
        recentsView.setOnPageTransitionEndCallback(null);
        this.mStateCallback.lambda$setStateOnUiThread$1(STATE_LAUNCHER_PRESENT);
        if (bool.booleanValue()) {
            onLauncherStart();
        } else {
            createdActivity2.runOnceOnStart(new RunnableC0493a(this, 1));
        }
        this.mGestureState.runOnceAtState(GestureState.STATE_RECENTS_ANIMATION_CANCELED, new RunnableC0493a(this, 2));
        setupRecentsViewUi();
        this.mRecentsView.runOnPageScrollsInitialized(new RunnableC0493a(this, 3));
        createdActivity2.runOnBindToTouchInteractionService(new RunnableC0493a(this, 4));
        this.mActivity.registerActivityLifecycleCallbacks(this.mLifecycleCallbacks);
        return true;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        WindowInsets onApplyWindowInsets = view.onApplyWindowInsets(windowInsets);
        if (windowInsets.isVisible(WindowInsets.Type.ime())) {
            return onApplyWindowInsets;
        }
        buildAnimationController();
        onCurrentShiftUpdated();
        return onApplyWindowInsets;
    }

    public void onConsumerAboutToBeSwitched() {
        StatefulActivity statefulActivity = this.mActivity;
        if (statefulActivity != null) {
            statefulActivity.clearRunOnceOnStartCallback();
            resetLauncherListeners();
        }
        if (this.mGestureState.isRecentsAnimationRunning() && this.mGestureState.getEndTarget() != null && !this.mGestureState.getEndTarget().isLauncher) {
            cancelCurrentAnimation();
            return;
        }
        this.mStateCallback.setStateOnUiThread(STATE_FINISH_WITH_NO_END);
        reset();
    }

    @Override // com.android.quickstep.SwipeUpAnimationLogic
    public void onCurrentShiftUpdated() {
        setIsInAllAppsRegion(this.mCurrentShift.value >= ((float) ((Integer) LauncherPrefs.get(this.mContext).get(LauncherPrefs.ALL_APPS_OVERVIEW_THRESHOLD)).intValue()) / 100.0f);
        updateSysUiFlags(this.mCurrentShift.value);
        applyScrollAndTransform();
        updateLauncherTransitionProgress();
    }

    public void onGestureCancelled() {
        updateDisplacement(SWIPE_DURATION_MULTIPLIER);
        this.mStateCallback.setStateOnUiThread(STATE_GESTURE_COMPLETED);
        handleNormalGestureEnd(SWIPE_DURATION_MULTIPLIER, false, new PointF(), true);
    }

    public void onGestureEnded(final float f4, final PointF pointF) {
        final boolean z4 = this.mGestureStarted && !this.mIsMotionPaused && Math.abs(f4) > this.mContext.getResources().getDimension(R.dimen.quickstep_fling_threshold_speed);
        this.mStateCallback.setStateOnUiThread(STATE_GESTURE_COMPLETED);
        if (Math.abs(pointF.y) > Math.abs(pointF.x)) {
            this.mLogDirectionUpOrLeft = pointF.y < SWIPE_DURATION_MULTIPLIER;
        } else {
            this.mLogDirectionUpOrLeft = pointF.x < SWIPE_DURATION_MULTIPLIER;
        }
        Runnable runnable = new Runnable() { // from class: com.android.quickstep.k
            @Override // java.lang.Runnable
            public final void run() {
                AbsSwipeUpHandler.this.lambda$onGestureEnded$13(f4, z4, pointF);
            }
        };
        RecentsView recentsView = this.mRecentsView;
        if (recentsView != null) {
            recentsView.runOnPageScrollsInitialized(runnable);
        } else {
            runnable.run();
        }
    }

    public void onGestureStarted(boolean z4) {
        this.mActivityInterface.closeOverlay();
        TaskUtils.closeSystemWindowsAsync(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
        RecentsView recentsView = this.mRecentsView;
        if (recentsView != null) {
            recentsView.getViewTreeObserver().addOnDrawListener(new AnonymousClass4(recentsView));
        }
        notifyGestureStarted();
        setIsLikelyToStartNewTask(z4, false);
        if (this.mIsTransientTaskbar && !this.mTaskbarAlreadyOpen && !z4) {
            setClampScrollOffset(true);
        }
        this.mStateCallback.setStateOnUiThread(STATE_GESTURE_STARTED);
        this.mGestureStarted = true;
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationCanceled(HashMap hashMap) {
        ActiveGestureLog.INSTANCE.addLog("cancelRecentsAnimation", ActiveGestureErrorDetector.GestureEvent.CANCEL_RECENTS_ANIMATION);
        this.mActivityInitListener.unregister();
        this.mDeferredCleanupRecentsAnimationController = this.mRecentsAnimationController;
        this.mStateCallback.setStateOnUiThread(STATE_GESTURE_CANCELLED | STATE_HANDLER_INVALIDATED);
        this.mRecentsAnimationController = null;
        this.mRecentsAnimationTargets = null;
        RecentsView recentsView = this.mRecentsView;
        if (recentsView != null) {
            recentsView.setRecentsAnimationTargets(null, null);
        }
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationFinished(RecentsAnimationController recentsAnimationController) {
        this.mRecentsAnimationController = null;
        this.mRecentsAnimationTargets = null;
        RecentsView recentsView = this.mRecentsView;
        if (recentsView != null) {
            recentsView.setRecentsAnimationTargets(null, null);
        }
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
        DeviceProfile build;
        super.onRecentsAnimationStart(recentsAnimationController, recentsAnimationTargets);
        if (DesktopTaskView.DESKTOP_MODE_SUPPORTED && recentsAnimationTargets.hasDesktopTasks()) {
            this.mRemoteTargetHandles = this.mTargetGluer.assignTargetsForDesktop(recentsAnimationTargets);
        } else {
            int length = this.mRemoteTargetHandles.length;
            RemoteTargetGluer.RemoteTargetHandle[] assignTargetsForSplitScreen = this.mTargetGluer.assignTargetsForSplitScreen(recentsAnimationTargets);
            this.mRemoteTargetHandles = assignTargetsForSplitScreen;
            if (assignTargetsForSplitScreen.length < length && this.mIsSwipeForSplit) {
                updateIsGestureForSplit(assignTargetsForSplitScreen.length);
                setupRecentsViewUi();
            }
        }
        this.mRecentsAnimationController = recentsAnimationController;
        this.mRecentsAnimationTargets = recentsAnimationTargets;
        RemoteAnimationTargets.ReleaseCheck releaseCheck = new RemoteAnimationTargets.ReleaseCheck();
        this.mSwipePipToHomeReleaseCheck = releaseCheck;
        releaseCheck.setCanRelease(true);
        this.mRecentsAnimationTargets.addReleaseCheck(this.mSwipePipToHomeReleaseCheck);
        if (this.mActivity == null) {
            RemoteAnimationTarget remoteAnimationTarget = recentsAnimationTargets.apps[0];
            RecentsOrientedState orientationState = this.mRemoteTargetHandles[0].getTaskViewSimulator().getOrientationState();
            DeviceProfile launcherDeviceProfile = orientationState.getLauncherDeviceProfile();
            Rect rect = recentsAnimationTargets.minimizedHomeBounds;
            if (rect == null || remoteAnimationTarget == null) {
                build = launcherDeviceProfile.toBuilder(this.mContext).build();
            } else {
                build = launcherDeviceProfile.getMultiWindowProfile(this.mContext, new WindowBounds(-1, this.mActivityInterface.getOverviewWindowBounds(rect, remoteAnimationTarget), recentsAnimationTargets.homeContentInsets));
            }
            build.updateInsets(recentsAnimationTargets.homeContentInsets);
            build.updateIsSeascape(this.mContext);
            initTransitionEndpoints(build);
            orientationState.setMultiWindowMode(build.isMultiWindowMode);
        }
        flushOnRecentsAnimationAndLauncherBound();
        MultiStateCallback multiStateCallback = this.mStateCallback;
        int i4 = STATE_APP_CONTROLLER_RECEIVED;
        multiStateCallback.runOnceAtState(STATE_GESTURE_STARTED | i4, new RunnableC0493a(this, 28));
        this.mStateCallback.setStateOnUiThread(i4);
    }

    public void onRestartPreviouslyAppearedTask() {
        RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
        if (recentsAnimationController != null) {
            recentsAnimationController.finish(false, null);
        }
        reset();
    }

    @Override // com.android.quickstep.RecentsAnimationCallbacks.RecentsAnimationListener
    public void onTasksAppeared(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        final F1.d dVar;
        View view;
        if (this.mRecentsAnimationController != null) {
            boolean anyMatch = Arrays.stream(remoteAnimationTargetArr).anyMatch(this.mGestureState.mLastStartedTaskIdPredicate);
            final F1.f fVar = null;
            if (!this.mStateCallback.hasStates(STATE_GESTURE_COMPLETED) && !anyMatch) {
                ActivityManager.RunningTaskInfo runningTaskInfo = remoteAnimationTargetArr[0].taskInfo;
                ActiveGestureLog.INSTANCE.addLog("Unexpected task appeared id=" + ((TaskInfo) runningTaskInfo).taskId + " pkg=" + ((TaskInfo) runningTaskInfo).baseIntent.getComponent().getPackageName());
                finishRecentsAnimationOnTasksAppeared(null);
            } else if (handleTaskAppeared(remoteAnimationTargetArr)) {
                Optional findFirst = Arrays.stream(remoteAnimationTargetArr).filter(this.mGestureState.mLastStartedTaskIdPredicate).findFirst();
                if (!findFirst.isPresent()) {
                    ActiveGestureLog.INSTANCE.addLog("No appeared task matching started task id");
                    finishRecentsAnimationOnTasksAppeared(null);
                    return;
                }
                RemoteAnimationTarget remoteAnimationTarget = (RemoteAnimationTarget) findFirst.get();
                RecentsView recentsView = this.mRecentsView;
                TaskView taskViewByTaskId = recentsView == null ? null : recentsView.getTaskViewByTaskId(remoteAnimationTarget.taskId);
                if (taskViewByTaskId == null || !taskViewByTaskId.getThumbnail().shouldShowSplashView()) {
                    ActiveGestureLog.INSTANCE.addLog("Invalid task view splash state");
                    finishRecentsAnimationOnTasksAppeared(null);
                    return;
                }
                final BaseDragLayer dragLayer = this.mActivity.getDragLayer();
                StatefulActivity statefulActivity = this.mActivity;
                QuickstepLauncher quickstepLauncher = statefulActivity instanceof QuickstepLauncher ? (QuickstepLauncher) statefulActivity : null;
                if (quickstepLauncher != null) {
                    quickstepLauncher.getDepthController().pauseBlursOnWindows(true);
                }
                SurfaceTransactionApplier surfaceTransactionApplier = new SurfaceTransactionApplier(dragLayer);
                SurfaceTransaction surfaceTransaction = new SurfaceTransaction();
                for (RemoteAnimationTarget remoteAnimationTarget2 : remoteAnimationTargetArr) {
                    surfaceTransaction.forSurface(remoteAnimationTarget2.leash).setAlpha(1.0f).setLayer(-1).setShow();
                }
                surfaceTransactionApplier.scheduleApply(surfaceTransaction);
                SurfaceControl surfaceControl = remoteAnimationTarget.leash;
                int i4 = this.mSplashMainWindowShiftLength;
                A1.a aVar = new A1.a();
                Rect rect = new Rect();
                AnonymousClass11 anonymousClass11 = new AnonymousClass11(dragLayer, quickstepLauncher);
                Interpolator interpolator = F1.g.f386a;
                int height = dragLayer.getHeight() - 0;
                int width = dragLayer.getWidth() / 2;
                float[] fArr = {SWIPE_DURATION_MULTIPLIER, 0.8f, 1.0f};
                F1.d dVar2 = new F1.d(dragLayer);
                dVar2.f372g.set(width, 0);
                dVar2.f370e = 0;
                dVar2.f371f = (int) ((((int) Math.sqrt((width * width) + (height * height))) * 1.25f) + 0.5d);
                dVar2.f374i.setShader(new RadialGradient((float) SWIPE_DURATION_MULTIPLIER, (float) SWIPE_DURATION_MULTIPLIER, 1.0f, new int[]{-1, -1, 0}, fArr, Shader.TileMode.CLAMP));
                dVar2.f374i.setBlendMode(BlendMode.DST_OUT);
                if (surfaceControl == null || !surfaceControl.isValid()) {
                    dVar = dVar2;
                    view = null;
                } else {
                    View view2 = new View(dragLayer.getContext());
                    if (dragLayer instanceof SplashScreenView) {
                        view2.setBackgroundColor(((SplashScreenView) dragLayer).getInitBackgroundColor());
                    } else {
                        view2.setBackgroundColor((dragLayer.getContext().getResources().getConfiguration().uiMode & 48) == 32 ? -16777216 : -1);
                    }
                    dragLayer.addView(view2, new ViewGroup.LayoutParams(-1, i4));
                    dVar = dVar2;
                    fVar = new F1.f(-i4, view2, surfaceControl, dragLayer, aVar, rect, i4);
                    view = view2;
                }
                ValueAnimator ofFloat = ValueAnimator.ofFloat(SWIPE_DURATION_MULTIPLIER, 1.0f);
                ofFloat.setDuration(349);
                ofFloat.setInterpolator(com.android.wm.shell.animation.a.f6256a);
                ofFloat.addListener(anonymousClass11);
                ofFloat.addListener(new F1.c(fVar, dragLayer, dVar, view));
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: F1.b

                    /* renamed from: d  reason: collision with root package name */
                    public final /* synthetic */ int f356d = 133;

                    /* renamed from: e  reason: collision with root package name */
                    public final /* synthetic */ int f357e = SysUiStatsLog.DEVICE_CONTROL_CHANGED;

                    /* renamed from: g  reason: collision with root package name */
                    public final /* synthetic */ float f359g = 0.0f;

                    /* renamed from: h  reason: collision with root package name */
                    public final /* synthetic */ float f360h = 0.0f;

                    /* renamed from: i  reason: collision with root package name */
                    public final /* synthetic */ int f361i = 83;

                    /* renamed from: j  reason: collision with root package name */
                    public final /* synthetic */ int f362j = 266;

                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        View view3;
                        View view4;
                        SurfaceControl surfaceControl2;
                        int i5;
                        int i6 = this.f356d;
                        int i7 = this.f357e;
                        ViewGroup viewGroup = dragLayer;
                        float f4 = this.f359g;
                        float f5 = this.f360h;
                        int i8 = this.f361i;
                        int i9 = this.f362j;
                        d dVar3 = dVar;
                        f fVar2 = fVar;
                        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue() * i7;
                        float interpolation = ((PathInterpolator) g.f386a).getInterpolation(MathUtils.constrain((floatValue - ((float) 0)) / i6, 0.0f, 1.0f));
                        if (viewGroup instanceof SplashScreenView) {
                            SplashScreenView splashScreenView = (SplashScreenView) viewGroup;
                            view3 = splashScreenView.getIconView();
                            view4 = splashScreenView.getBrandingView();
                        } else {
                            view3 = null;
                            view4 = null;
                        }
                        if (view3 != null) {
                            view3.setAlpha((1.0f - interpolation) * f4);
                        }
                        if (view4 != null) {
                            view4.setAlpha((1.0f - interpolation) * f5);
                        }
                        float constrain = MathUtils.constrain((floatValue - i8) / i9, 0.0f, 1.0f);
                        if (dVar3.f374i.getShader() != null) {
                            float interpolation2 = ((PathInterpolator) g.f387b).getInterpolation(constrain);
                            float interpolation3 = ((PathInterpolator) com.android.wm.shell.animation.a.f6257b).getInterpolation(constrain);
                            float f6 = ((dVar3.f371f - i5) * interpolation2) + dVar3.f370e;
                            dVar3.f373h.setScale(f6, f6);
                            Matrix matrix = dVar3.f373h;
                            Point point = dVar3.f372g;
                            matrix.postTranslate(point.x, point.y);
                            dVar3.f374i.getShader().setLocalMatrix(dVar3.f373h);
                            dVar3.f374i.setAlpha(Math.round(interpolation3 * 255.0f));
                            dVar3.postInvalidate();
                        }
                        if (fVar2 == null || (surfaceControl2 = fVar2.f381f) == null || !surfaceControl2.isValid() || !fVar2.f382g.isAttachedToWindow()) {
                            return;
                        }
                        float interpolation4 = ((PathInterpolator) g.f388c).getInterpolation(constrain);
                        float f7 = fVar2.f377b;
                        float f8 = fVar2.f376a;
                        float a4 = w.f.a(f7, f8, interpolation4, f8);
                        fVar2.f378c.setTranslationY(a4);
                        Matrix matrix2 = fVar2.f380e;
                        matrix2.setTranslate(0.0f, a4);
                        A1.a aVar2 = fVar2.f383h;
                        SurfaceControl.Transaction transaction = (SurfaceControl.Transaction) aVar2.f78a.acquire();
                        if (transaction == null) {
                            transaction = new SurfaceControl.Transaction();
                        }
                        transaction.setFrameTimelineVsync(Choreographer.getSfInstance().getVsyncId());
                        Rect rect2 = fVar2.f384i;
                        matrix2.postTranslate(rect2.left, rect2.top + fVar2.f385j);
                        fVar2.f379d.scheduleApply(new SyncRtSurfaceTransactionApplier.SurfaceParams[]{new SyncRtSurfaceTransactionApplier.SurfaceParams.Builder(surfaceControl2).withMatrix(matrix2).withMergeTransaction(transaction).build()});
                        if (aVar2.f78a.release(transaction)) {
                            return;
                        }
                        transaction.close();
                    }
                });
                ofFloat.start();
            }
        }
    }

    @Override // com.android.quickstep.SwipeUpAnimationLogic
    public float overrideDisplacementForTransientTaskbar(float f4) {
        if (this.mIsTransientTaskbar && !this.mTaskbarAlreadyOpen && !this.mIsTaskbarAllAppsOpen && !this.mGestureState.isTrackpadGesture()) {
            int i4 = this.mTaskbarAppWindowThreshold;
            if (f4 < i4) {
                return SWIPE_DURATION_MULTIPLIER;
            }
            int i5 = this.mTaskbarCatchUpThreshold;
            if (f4 < i5) {
                return Utilities.mapToRange(f4, i4, i5, SWIPE_DURATION_MULTIPLIER, i5, y0.e.f12961y);
            }
        }
        return f4;
    }

    public void performHapticFeedback() {
        ((VibratorWrapper) VibratorWrapper.INSTANCE.get(this.mContext)).vibrate(VibratorWrapper.OVERVIEW_HAPTIC);
    }

    public void setCanSlowSwipeGoHome(boolean z4) {
        this.mCanSlowSwipeGoHome = z4;
    }

    public void setGestureEndCallback(Runnable runnable) {
        this.mGestureEndCallback = runnable;
    }

    public void setIsLikelyToStartNewTask(boolean z4) {
        setIsLikelyToStartNewTask(z4, true);
    }

    public void switchToScreenshot() {
        boolean z4;
        if (!hasTargets()) {
            this.mStateCallback.setStateOnUiThread(STATE_SCREENSHOT_CAPTURED);
            return;
        }
        int[] runningTaskIds = this.mGestureState.getRunningTaskIds(this.mIsSwipeForSplit);
        int length = runningTaskIds.length;
        boolean z5 = false;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                z4 = false;
                break;
            }
            if (!this.mTaskSnapshotCache.containsKey(Integer.valueOf(runningTaskIds[i4]))) {
                z4 = true;
                break;
            }
            i4++;
        }
        if (this.mRecentsAnimationController != null) {
            if (z4) {
                Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0552u(3, this, runningTaskIds));
                return;
            }
            z5 = updateThumbnail(false);
        }
        if (z5) {
            return;
        }
        setScreenshotCapturedState();
    }

    private void setIsLikelyToStartNewTask(boolean z4, boolean z5) {
        if (this.mIsLikelyToStartNewTask != z4) {
            this.mIsLikelyToStartNewTask = z4;
            maybeUpdateRecentsAttachedState(z5);
        }
    }

    public void maybeUpdateRecentsAttachedState(boolean z4) {
        maybeUpdateRecentsAttachedState(z4, false);
    }

    public void maybeUpdateRecentsAttachedState(boolean z4, boolean z5) {
        if ((this.mDeviceState.isFullyGesturalNavMode() || this.mGestureState.isTrackpadGesture()) && this.mRecentsView != null) {
            RecentsAnimationTargets recentsAnimationTargets = this.mRecentsAnimationTargets;
            RemoteAnimationTarget findTask = recentsAnimationTargets != null ? recentsAnimationTargets.findTask(this.mGestureState.getTopRunningTaskId()) : null;
            boolean z6 = false;
            if (!this.mIsInAllAppsRegion) {
                if (this.mGestureState.getEndTarget() != null) {
                    z6 = this.mGestureState.getEndTarget().recentsAttachedToAppWindow;
                } else if ((this.mContinuingLastGesture && this.mRecentsView.getRunningTaskIndex() != this.mRecentsView.getNextPage()) || ((findTask != null && isNotInRecents(findTask)) || this.mHasMotionEverBeenPaused || this.mIsLikelyToStartNewTask)) {
                    z6 = true;
                }
            }
            if (z5 && !this.mAnimationFactory.hasRecentsEverAttachedToAppWindow() && z6) {
                this.mRecentsView.moveRunningTaskToFront();
            }
            this.mAnimationFactory.setRecentsAttachedToAppWindow(z6, z4);
            if (z4) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(SWIPE_DURATION_MULTIPLIER, 1.0f);
                ofFloat.addUpdateListener(new C0520j(this, 1));
                ofFloat.setDuration(300L).start();
                this.mStateCallback.runOnceAtState(STATE_HANDLER_INVALIDATED, new RunnableC0549t(1, ofFloat));
                return;
            }
            applyScrollAndTransform();
        }
    }

    public void startNewTask(final Consumer consumer) {
        TaskView.TaskIdAttributeContainer[] taskIdAttributeContainers;
        if (!this.mCanceled) {
            RecentsView recentsView = this.mRecentsView;
            TaskView nextPageTaskView = recentsView == null ? null : recentsView.getNextPageTaskView();
            if (nextPageTaskView != null) {
                int[] taskIds = nextPageTaskView.getTaskIds();
                StringBuilder sb = new StringBuilder();
                for (TaskView.TaskIdAttributeContainer taskIdAttributeContainer : nextPageTaskView.getTaskIdAttributeContainers()) {
                    if (taskIdAttributeContainer != null) {
                        sb.append("[id: ");
                        sb.append(taskIdAttributeContainer.getTask().key.id);
                        sb.append(", pkg: ");
                        sb.append(taskIdAttributeContainer.getTask().key.getPackageName());
                        sb.append("] | ");
                    }
                }
                this.mGestureState.updateLastStartedTaskIds(taskIds);
                final boolean anyMatch = Arrays.stream(taskIds).anyMatch(new C0608w(1, this));
                if (!anyMatch) {
                    ActiveGestureLog.INSTANCE.trackEvent(ActiveGestureErrorDetector.GestureEvent.EXPECTING_TASK_APPEARED);
                }
                ActiveGestureLog.INSTANCE.addLog("Launching task: " + ((Object) sb));
                nextPageTaskView.launchTask(new Consumer() { // from class: com.android.quickstep.d
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        AbsSwipeUpHandler.this.lambda$startNewTask$33(consumer, anyMatch, (Boolean) obj);
                    }
                }, true);
            } else {
                this.mActivityInterface.onLaunchTaskFailed();
                Toast.makeText(this.mContext, (int) R.string.activity_not_available, 0).show();
                RecentsAnimationController recentsAnimationController = this.mRecentsAnimationController;
                if (recentsAnimationController != null) {
                    recentsAnimationController.finish(true, null);
                }
            }
        }
        this.mCanceled = false;
    }
}
