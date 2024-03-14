package com.android.quickstep.interaction;

import android.graphics.PointF;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.quickstep.interaction.EdgeBackGestureHandler;
import com.android.quickstep.interaction.NavBarGestureHandler;
import com.android.quickstep.interaction.TutorialController;
import com.android.quickstep.util.LottieAnimationColorUtils;
import com.android.systemui.shared.R;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class HomeGestureTutorialController extends SwipeUpGestureTutorialController {

    /* renamed from: com.android.quickstep.interaction.HomeGestureTutorialController$1  reason: invalid class name */
    /* loaded from: classes.dex */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
        static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
        static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;

        static {
            int[] iArr = new int[NavBarGestureHandler.NavBarGestureResult.values().length];
            $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult = iArr;
            try {
                iArr[NavBarGestureHandler.NavBarGestureResult.HOME_GESTURE_COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[NavBarGestureHandler.NavBarGestureResult.HOME_NOT_STARTED_TOO_FAR_FROM_EDGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[NavBarGestureHandler.NavBarGestureResult.OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[NavBarGestureHandler.NavBarGestureResult.OVERVIEW_GESTURE_COMPLETED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[NavBarGestureHandler.NavBarGestureResult.HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[NavBarGestureHandler.NavBarGestureResult.HOME_OR_OVERVIEW_CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[TutorialController.TutorialType.values().length];
            $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType = iArr2;
            try {
                iArr2[TutorialController.TutorialType.HOME_NAVIGATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[TutorialController.TutorialType.HOME_NAVIGATION_COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[EdgeBackGestureHandler.BackGestureResult.values().length];
            $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult = iArr3;
            try {
                iArr3[EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult[EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult[EdgeBackGestureHandler.BackGestureResult.BACK_CANCELLED_FROM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult[EdgeBackGestureHandler.BackGestureResult.BACK_CANCELLED_FROM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult[EdgeBackGestureHandler.BackGestureResult.BACK_NOT_STARTED_TOO_FAR_FROM_EDGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public HomeGestureTutorialController(HomeGestureTutorialFragment homeGestureTutorialFragment, TutorialController.TutorialType tutorialType) {
        super(homeGestureTutorialFragment, tutorialType);
        if (FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get()) {
            LottieAnimationColorUtils.updateColors(this.mAnimatedGestureDemonstration, Map.of(".onSurfaceHome", Integer.valueOf(homeGestureTutorialFragment.mRootView.mColorOnSurfaceHome), ".surfaceHome", Integer.valueOf(homeGestureTutorialFragment.mRootView.mColorSurfaceHome), ".secondaryHome", Integer.valueOf(homeGestureTutorialFragment.mRootView.mColorSecondaryHome)));
            LottieAnimationColorUtils.updateColors(this.mCheckmarkAnimation, Map.of(".checkmark", Integer.valueOf(Utilities.isDarkTheme(this.mContext) ? homeGestureTutorialFragment.mRootView.mColorOnSurfaceHome : homeGestureTutorialFragment.mRootView.mColorSecondaryHome), ".checkmarkBackground", Integer.valueOf(homeGestureTutorialFragment.mRootView.mColorSurfaceHome)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onNavBarGestureAttempted$0() {
        showFeedback(R.string.home_gesture_feedback_overview_detected);
        showFakeTaskbar(false);
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getDoneButtonColor() {
        return Utilities.isDarkTheme(this.mContext) ? this.mTutorialFragment.mRootView.mColorOnSurfaceHome : this.mTutorialFragment.mRootView.mColorSecondaryHome;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getDoneButtonTextAppearance() {
        return R.style.TextAppearance_GestureTutorial_ButtonLabel_Home;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getExitingAppColor() {
        return this.mTutorialFragment.mRootView.mColorSurfaceHome;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getFakeLauncherColor() {
        return this.mTutorialFragment.mRootView.mColorSurfaceContainer;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getFakeTaskViewColor() {
        return isGestureCompleted() ? getFakeLauncherColor() : getExitingAppColor();
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getGestureLottieAnimationId() {
        return this.mTutorialFragment.isLargeScreen() ? this.mTutorialFragment.isFoldable() ? R.raw.home_gesture_tutorial_open_foldable_animation : R.raw.home_gesture_tutorial_tablet_animation : R.raw.home_gesture_tutorial_animation;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getHotseatIconColor() {
        return getExitingAppColor();
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getIntroductionSubtitle() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? R.string.home_gesture_tutorial_subtitle : R.string.home_gesture_intro_subtitle;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getIntroductionTitle() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? R.string.home_gesture_tutorial_title : R.string.home_gesture_intro_title;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getMockAppTaskLayoutResId() {
        return this.mTutorialFragment.isLargeScreen() ? R.layout.gesture_tutorial_tablet_mock_webpage : R.layout.gesture_tutorial_mock_webpage;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getSpokenIntroductionSubtitle() {
        return R.string.home_gesture_spoken_intro_subtitle;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getSuccessFeedbackSubtitle() {
        return this.mTutorialFragment.isAtFinalStep() ? R.string.home_gesture_feedback_complete_without_follow_up : R.string.home_gesture_feedback_complete_with_follow_up;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getSuccessFeedbackTitle() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? R.string.home_gesture_tutorial_success : R.string.gesture_tutorial_nice;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getSuccessTitleTextAppearance() {
        return R.style.TextAppearance_GestureTutorial_MainTitle_Success_Home;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getTitleTextAppearance() {
        return R.style.TextAppearance_GestureTutorial_MainTitle_Home;
    }

    @Override // com.android.quickstep.interaction.EdgeBackGestureHandler.BackGestureAttemptCallback
    public void onBackGestureAttempted(EdgeBackGestureHandler.BackGestureResult backGestureResult) {
        if (isGestureCompleted()) {
            return;
        }
        int i4 = AnonymousClass1.$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[this.mTutorialType.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                return;
            }
            if (backGestureResult == EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_LEFT || backGestureResult == EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_RIGHT) {
                this.mTutorialFragment.close();
                return;
            }
            return;
        }
        int i5 = AnonymousClass1.$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult[backGestureResult.ordinal()];
        if (i5 == 1 || i5 == 2 || i5 == 3 || i5 == 4 || i5 == 5) {
            resetTaskViews();
            showFeedback(R.string.home_gesture_feedback_swipe_too_far_from_edge);
        }
    }

    @Override // com.android.quickstep.interaction.NavBarGestureHandler.NavBarGestureAttemptCallback
    public void onNavBarGestureAttempted(NavBarGestureHandler.NavBarGestureResult navBarGestureResult, PointF pointF) {
        if (isGestureCompleted()) {
            return;
        }
        int i4 = AnonymousClass1.$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[this.mTutorialType.ordinal()];
        if (i4 != 1) {
            if (i4 == 2 && navBarGestureResult == NavBarGestureHandler.NavBarGestureResult.HOME_GESTURE_COMPLETED) {
                this.mTutorialFragment.close();
                return;
            }
            return;
        }
        switch (AnonymousClass1.$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[navBarGestureResult.ordinal()]) {
            case 1:
                this.mTutorialFragment.releaseFeedbackAnimation();
                animateFakeTaskViewHome(pointF, null);
                showSuccessFeedback();
                return;
            case 2:
            case 3:
                resetTaskViews();
                showFeedback(R.string.home_gesture_feedback_swipe_too_far_from_edge);
                return;
            case 4:
                fadeOutFakeTaskView(false, new Runnable() { // from class: com.android.quickstep.interaction.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        HomeGestureTutorialController.this.lambda$onNavBarGestureAttempted$0();
                    }
                });
                return;
            case 5:
            case 6:
                fadeOutFakeTaskView(false, null);
                showFeedback(R.string.home_gesture_feedback_wrong_swipe_direction);
                return;
            default:
                return;
        }
    }
}
