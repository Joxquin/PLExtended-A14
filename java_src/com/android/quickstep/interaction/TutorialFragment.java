package com.android.quickstep.interaction;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Insets;
import android.graphics.drawable.Animatable2;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.ArraySet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.widget.ImageView;
import androidx.fragment.app.P;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.StatsLogManager;
import com.android.quickstep.interaction.TutorialController;
import com.android.systemui.shared.R;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class TutorialFragment extends GestureSandboxFragment implements View.OnTouchListener {
    private static final String COMPLETED_TUTORIAL_STEPS_PREFERENCE_KEY = "pref_completedTutorialSteps";
    private static final String LOG_TAG = "TutorialFragment";
    private static final String TUTORIAL_SKIPPED_PREFERENCE_KEY = "pref_gestureTutorialSkipped";
    private DeviceProfile mDeviceProfile;
    EdgeBackGestureHandler mEdgeBackGestureHandler;
    private ImageView mEdgeGestureVideoView;
    View mFakePreviousTaskView;
    View mFingerDotView;
    private final boolean mFromTutorialMenu;
    private boolean mIsFoldable;
    private boolean mIsLargeScreen;
    NavBarGestureHandler mNavBarGestureHandler;
    RootSandboxLayout mRootView;
    TutorialController.TutorialType mTutorialType;
    boolean mGestureComplete = false;
    TutorialController mTutorialController = null;
    private Animator mGestureAnimation = null;
    private AnimatedVectorDrawable mEdgeAnimation = null;
    private boolean mIntroductionShown = false;
    private boolean mFragmentStopped = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.quickstep.interaction.TutorialFragment$4  reason: invalid class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;

        static {
            int[] iArr = new int[TutorialController.TutorialType.values().length];
            $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType = iArr;
            try {
                iArr[TutorialController.TutorialType.BACK_NAVIGATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[TutorialController.TutorialType.BACK_NAVIGATION_COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[TutorialController.TutorialType.HOME_NAVIGATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[TutorialController.TutorialType.HOME_NAVIGATION_COMPLETE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[TutorialController.TutorialType.OVERVIEW_NAVIGATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[TutorialController.TutorialType.OVERVIEW_NAVIGATION_COMPLETE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public TutorialFragment(boolean z4) {
        this.mFromTutorialMenu = z4;
    }

    private static TutorialFragment getFragmentForTutorialType(TutorialController.TutorialType tutorialType, boolean z4) {
        switch (AnonymousClass4.$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[tutorialType.ordinal()]) {
            case 1:
            case 2:
                return new BackGestureTutorialFragment(z4);
            case 3:
            case 4:
                return new HomeGestureTutorialFragment(z4);
            case 5:
            case 6:
                return new OverviewGestureTutorialFragment(z4);
            default:
                Log.e(LOG_TAG, "Failed to find an appropriate fragment for " + tutorialType.name());
                return null;
        }
    }

    private GestureSandboxActivity getGestureSandboxActivity() {
        P activity = getActivity();
        if (activity instanceof GestureSandboxActivity) {
            return (GestureSandboxActivity) activity;
        }
        return null;
    }

    private SharedPreferences getSharedPreferences() {
        GestureSandboxActivity gestureSandboxActivity = getGestureSandboxActivity();
        if (gestureSandboxActivity != null) {
            return gestureSandboxActivity.getSharedPrefs();
        }
        return null;
    }

    private StatsLogManager getStatsLogManager() {
        GestureSandboxActivity gestureSandboxActivity = getGestureSandboxActivity();
        if (gestureSandboxActivity != null) {
            return gestureSandboxActivity.getStatsLogManager();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsets lambda$onCreateView$0(View view, WindowInsets windowInsets) {
        Insets insets = windowInsets.getInsets(WindowInsets.Type.systemBars());
        this.mEdgeBackGestureHandler.setInsets(insets.left, insets.right);
        return windowInsets;
    }

    public static TutorialFragment newInstance(TutorialController.TutorialType tutorialType, boolean z4, boolean z5) {
        TutorialFragment fragmentForTutorialType = getFragmentForTutorialType(tutorialType, z5);
        if (fragmentForTutorialType == null) {
            fragmentForTutorialType = new BackGestureTutorialFragment(z5);
            tutorialType = TutorialController.TutorialType.BACK_NAVIGATION;
        }
        Bundle bundle = new Bundle();
        bundle.putSerializable("tutorial_type", tutorialType);
        bundle.putBoolean("gesture_complete", z4);
        fragmentForTutorialType.setArguments(bundle);
        return fragmentForTutorialType;
    }

    public void changeController(TutorialController.TutorialType tutorialType) {
        if (getControllerClass().isInstance(this.mTutorialController)) {
            this.mTutorialController.setTutorialType(tutorialType);
            if (isGestureComplete()) {
                this.mTutorialController.setGestureCompleted();
            }
            final TutorialController tutorialController = this.mTutorialController;
            Objects.requireNonNull(tutorialController);
            tutorialController.fadeTaskViewAndRun(new Runnable() { // from class: com.android.quickstep.interaction.y
                @Override // java.lang.Runnable
                public final void run() {
                    TutorialController.this.transitToController();
                }
            });
        } else {
            this.mTutorialController = createController(tutorialType);
            if (isGestureComplete()) {
                this.mTutorialController.setGestureCompleted();
            }
            this.mTutorialController.transitToController();
        }
        this.mEdgeBackGestureHandler.registerBackGestureAttemptCallback(this.mTutorialController);
        this.mNavBarGestureHandler.registerNavBarGestureAttemptCallback(this.mTutorialController);
        this.mTutorialType = tutorialType;
        initializeFeedbackVideoView();
    }

    @Override // com.android.quickstep.interaction.GestureSandboxFragment
    public void close() {
        closeTutorialStep(false);
    }

    public void closeTutorialStep(boolean z4) {
        if (z4) {
            SharedPreferences sharedPreferences = getSharedPreferences();
            if (sharedPreferences != null) {
                sharedPreferences.edit().putBoolean(TUTORIAL_SKIPPED_PREFERENCE_KEY, true).apply();
            }
            StatsLogManager statsLogManager = getStatsLogManager();
            if (statsLogManager != null) {
                statsLogManager.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_GESTURE_TUTORIAL_SKIPPED);
            }
        }
        GestureSandboxActivity gestureSandboxActivity = getGestureSandboxActivity();
        if (!this.mFromTutorialMenu || gestureSandboxActivity == null) {
            super.close();
        } else {
            gestureSandboxActivity.launchTutorialMenu();
        }
    }

    public void continueTutorial() {
        SharedPreferences sharedPreferences = getSharedPreferences();
        if (sharedPreferences != null) {
            ArraySet arraySet = new ArraySet(sharedPreferences.getStringSet(COMPLETED_TUTORIAL_STEPS_PREFERENCE_KEY, new ArraySet()));
            arraySet.add(this.mTutorialType.toString());
            sharedPreferences.edit().putStringSet(COMPLETED_TUTORIAL_STEPS_PREFERENCE_KEY, arraySet).apply();
        }
        StatsLogManager statsLogManager = getStatsLogManager();
        if (statsLogManager != null) {
            logTutorialStepCompleted(statsLogManager);
        }
        GestureSandboxActivity gestureSandboxActivity = getGestureSandboxActivity();
        if (gestureSandboxActivity == null) {
            close();
        } else {
            gestureSandboxActivity.continueTutorial();
        }
    }

    public abstract TutorialController createController(TutorialController.TutorialType tutorialType);

    public Animator createGestureAnimation() {
        return null;
    }

    public abstract Class getControllerClass();

    public int getCurrentStep() {
        GestureSandboxActivity gestureSandboxActivity = getGestureSandboxActivity();
        if (gestureSandboxActivity == null) {
            return -1;
        }
        return gestureSandboxActivity.getCurrentStep();
    }

    public abstract TutorialController.TutorialType getDefaultTutorialType();

    public DeviceProfile getDeviceProfile() {
        return this.mDeviceProfile;
    }

    public AnimatedVectorDrawable getEdgeAnimation() {
        return this.mEdgeAnimation;
    }

    public Integer getEdgeAnimationResId() {
        return null;
    }

    public Animator getGestureAnimation() {
        return this.mGestureAnimation;
    }

    public int getNumSteps() {
        GestureSandboxActivity gestureSandboxActivity = getGestureSandboxActivity();
        if (gestureSandboxActivity == null) {
            return -1;
        }
        return gestureSandboxActivity.getNumSteps();
    }

    public RootSandboxLayout getRootView() {
        return this.mRootView;
    }

    public void initializeFeedbackVideoView() {
        if (!updateFeedbackAnimation() || this.mTutorialController == null) {
            return;
        }
        if (isGestureComplete()) {
            this.mTutorialController.showSuccessFeedback();
        } else if (this.mIntroductionShown) {
        } else {
            int introductionTitle = this.mTutorialController.getIntroductionTitle();
            int introductionSubtitle = this.mTutorialController.getIntroductionSubtitle();
            if (introductionTitle == -1) {
                Log.e(LOG_TAG, "Cannot show introduction feedback for tutorial step: " + this.mTutorialType + ", no introduction feedback title", new IllegalStateException());
            }
            if (introductionTitle == -1) {
                Log.e(LOG_TAG, "Cannot show introduction feedback for tutorial step: " + this.mTutorialType + ", no introduction feedback subtitle", new IllegalStateException());
            }
            TutorialController tutorialController = this.mTutorialController;
            tutorialController.showFeedback(introductionTitle, introductionSubtitle, tutorialController.getSpokenIntroductionSubtitle(), false, true);
            this.mIntroductionShown = true;
        }
    }

    public boolean isAtFinalStep() {
        return getCurrentStep() == getNumSteps();
    }

    public boolean isFoldable() {
        return this.mIsFoldable;
    }

    public boolean isGestureComplete() {
        TutorialController tutorialController;
        return this.mGestureComplete || ((tutorialController = this.mTutorialController) != null && tutorialController.isGestureCompleted());
    }

    public boolean isLargeScreen() {
        return this.mIsLargeScreen;
    }

    public abstract void logTutorialStepCompleted(StatsLogManager statsLogManager);

    public abstract void logTutorialStepShown(StatsLogManager statsLogManager);

    @Override // com.android.quickstep.interaction.GestureSandboxFragment
    public void onAttachedToWindow() {
        StatsLogManager statsLogManager = getStatsLogManager();
        if (statsLogManager != null) {
            logTutorialStepShown(statsLogManager);
        }
        this.mEdgeBackGestureHandler.setViewGroupParent(getRootView());
    }

    @Override // androidx.fragment.app.K
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.mTutorialType = (TutorialController.TutorialType) bundle.getSerializable("tutorial_type");
        this.mGestureComplete = bundle.getBoolean("gesture_complete", false);
        this.mEdgeBackGestureHandler = new EdgeBackGestureHandler(getContext());
        this.mNavBarGestureHandler = new NavBarGestureHandler(getContext());
        DeviceProfile deviceProfile = ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(getContext())).getDeviceProfile(getContext());
        this.mDeviceProfile = deviceProfile;
        this.mIsLargeScreen = deviceProfile.isTablet;
        this.mIsFoldable = deviceProfile.isTwoPanels;
    }

    @Override // androidx.fragment.app.K
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        RootSandboxLayout rootSandboxLayout = (RootSandboxLayout) layoutInflater.inflate(FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? R.layout.redesigned_gesture_tutorial_fragment : R.layout.gesture_tutorial_fragment, viewGroup, false);
        this.mRootView = rootSandboxLayout;
        rootSandboxLayout.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: com.android.quickstep.interaction.z
            @Override // android.view.View.OnApplyWindowInsetsListener
            public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                WindowInsets lambda$onCreateView$0;
                lambda$onCreateView$0 = TutorialFragment.this.lambda$onCreateView$0(view, windowInsets);
                return lambda$onCreateView$0;
            }
        });
        this.mRootView.setOnTouchListener(this);
        this.mEdgeGestureVideoView = (ImageView) this.mRootView.findViewById(R.id.gesture_tutorial_edge_gesture_video);
        this.mFingerDotView = this.mRootView.findViewById(R.id.gesture_tutorial_finger_dot);
        this.mFakePreviousTaskView = this.mRootView.findViewById(R.id.gesture_tutorial_fake_previous_task_view);
        return this.mRootView;
    }

    @Override // androidx.fragment.app.K
    public void onDestroy() {
        super.onDestroy();
        this.mEdgeBackGestureHandler.unregisterBackGestureAttemptCallback();
        this.mNavBarGestureHandler.unregisterNavBarGestureAttemptCallback();
    }

    @Override // com.android.quickstep.interaction.GestureSandboxFragment
    public void onDetachedFromWindow() {
        this.mEdgeBackGestureHandler.setViewGroupParent(null);
    }

    public boolean onInterceptTouch(MotionEvent motionEvent) {
        return this.mNavBarGestureHandler.onInterceptTouch(motionEvent) | this.mEdgeBackGestureHandler.onInterceptTouch(motionEvent);
    }

    @Override // androidx.fragment.app.K
    public void onResume() {
        TutorialController tutorialController;
        super.onResume();
        releaseFeedbackAnimation();
        if (!this.mFragmentStopped || (tutorialController = this.mTutorialController) == null) {
            this.mRootView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.android.quickstep.interaction.TutorialFragment.3
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    TutorialFragment tutorialFragment = TutorialFragment.this;
                    tutorialFragment.changeController(tutorialFragment.mTutorialType);
                    TutorialFragment.this.mRootView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                }
            });
            return;
        }
        tutorialController.showFeedback();
        this.mFragmentStopped = false;
    }

    @Override // androidx.fragment.app.K
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putSerializable("tutorial_type", this.mTutorialType);
        bundle.putBoolean("gesture_complete", isGestureComplete());
        bundle.putBoolean("use_tutorial_menu", this.mFromTutorialMenu);
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.fragment.app.K
    public void onStop() {
        super.onStop();
        releaseFeedbackAnimation();
        this.mFragmentStopped = true;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (this.mTutorialController != null && !isGestureComplete()) {
            this.mTutorialController.hideFeedback();
        }
        if (FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get()) {
            this.mTutorialController.pauseAndHideLottieAnimation();
        }
        return this.mNavBarGestureHandler.onTouch(view, motionEvent) | this.mEdgeBackGestureHandler.onTouch(view, motionEvent);
    }

    @Override // com.android.quickstep.interaction.GestureSandboxFragment
    public GestureSandboxFragment recreateFragment() {
        TutorialController.TutorialType tutorialType;
        TutorialController tutorialController = this.mTutorialController;
        if (tutorialController == null) {
            tutorialType = this.mTutorialType;
            if (tutorialType == null) {
                tutorialType = getDefaultTutorialType();
            }
        } else {
            tutorialType = tutorialController.mTutorialType;
        }
        return newInstance(tutorialType, isGestureComplete(), this.mFromTutorialMenu);
    }

    public void releaseFeedbackAnimation() {
        TutorialController tutorialController = this.mTutorialController;
        if (tutorialController != null && !tutorialController.isGestureCompleted()) {
            this.mTutorialController.cancelQueuedGestureAnimation();
        }
        Animator animator = this.mGestureAnimation;
        if (animator != null && animator.isRunning()) {
            this.mGestureAnimation.cancel();
        }
        AnimatedVectorDrawable animatedVectorDrawable = this.mEdgeAnimation;
        if (animatedVectorDrawable != null && animatedVectorDrawable.isRunning()) {
            this.mEdgeAnimation.stop();
        }
        this.mEdgeGestureVideoView.setVisibility(8);
    }

    public void startSystemNavigationSetting() {
        startActivity(new Intent("com.android.settings.GESTURE_NAVIGATION_SETTINGS"));
    }

    public boolean updateEdgeAnimation() {
        Integer edgeAnimationResId = getEdgeAnimationResId();
        if (edgeAnimationResId == null || getContext() == null) {
            return false;
        }
        AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) getContext().getDrawable(edgeAnimationResId.intValue());
        this.mEdgeAnimation = animatedVectorDrawable;
        if (animatedVectorDrawable != null) {
            animatedVectorDrawable.registerAnimationCallback(new Animatable2.AnimationCallback() { // from class: com.android.quickstep.interaction.TutorialFragment.2
                @Override // android.graphics.drawable.Animatable2.AnimationCallback
                public void onAnimationEnd(Drawable drawable) {
                    super.onAnimationEnd(drawable);
                    TutorialFragment.this.mEdgeAnimation.start();
                }
            });
        }
        this.mEdgeGestureVideoView.setImageDrawable(this.mEdgeAnimation);
        return this.mEdgeAnimation != null;
    }

    public boolean updateFeedbackAnimation() {
        if (updateEdgeAnimation()) {
            Animator createGestureAnimation = createGestureAnimation();
            this.mGestureAnimation = createGestureAnimation;
            if (createGestureAnimation != null) {
                createGestureAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.TutorialFragment.1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        super.onAnimationCancel(animator);
                        TutorialFragment.this.mFingerDotView.setVisibility(8);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        TutorialFragment.this.mFingerDotView.setVisibility(8);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        super.onAnimationStart(animator);
                        TutorialFragment.this.mFingerDotView.setVisibility(0);
                    }
                });
            }
            return this.mGestureAnimation != null;
        }
        return false;
    }
}
