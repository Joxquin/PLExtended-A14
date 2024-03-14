package com.android.quickstep.interaction;

import android.graphics.PointF;
import android.view.animation.Interpolator;
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
public final class BackGestureTutorialController extends TutorialController {
    private static final float EXITING_APP_MIN_SIZE_PERCENTAGE = 0.8f;
    private static final float Y_TRANSLATION_SMOOTHENING_FACTOR = 0.2f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.quickstep.interaction.BackGestureTutorialController$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult;
        static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult;
        static final /* synthetic */ int[] $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType;

        static {
            int[] iArr = new int[NavBarGestureHandler.NavBarGestureResult.values().length];
            $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult = iArr;
            try {
                iArr[NavBarGestureHandler.NavBarGestureResult.HOME_NOT_STARTED_TOO_FAR_FROM_EDGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[NavBarGestureHandler.NavBarGestureResult.OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[NavBarGestureHandler.NavBarGestureResult.HOME_OR_OVERVIEW_CANCELLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[NavBarGestureHandler.NavBarGestureResult.HOME_GESTURE_COMPLETED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[NavBarGestureHandler.NavBarGestureResult.OVERVIEW_GESTURE_COMPLETED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[NavBarGestureHandler.NavBarGestureResult.HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            int[] iArr2 = new int[EdgeBackGestureHandler.BackGestureResult.values().length];
            $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult = iArr2;
            try {
                iArr2[EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult[EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult[EdgeBackGestureHandler.BackGestureResult.BACK_CANCELLED_FROM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult[EdgeBackGestureHandler.BackGestureResult.BACK_CANCELLED_FROM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult[EdgeBackGestureHandler.BackGestureResult.BACK_NOT_STARTED_TOO_FAR_FROM_EDGE.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult[EdgeBackGestureHandler.BackGestureResult.BACK_NOT_STARTED_IN_NAV_BAR_REGION.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr3 = new int[TutorialController.TutorialType.values().length];
            $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType = iArr3;
            try {
                iArr3[TutorialController.TutorialType.BACK_NAVIGATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[TutorialController.TutorialType.BACK_NAVIGATION_COMPLETE.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    public BackGestureTutorialController(BackGestureTutorialFragment backGestureTutorialFragment, TutorialController.TutorialType tutorialType) {
        super(backGestureTutorialFragment, tutorialType);
        if (FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get()) {
            LottieAnimationColorUtils.updateColors(this.mAnimatedGestureDemonstration, Map.of(".onSurfaceBack", Integer.valueOf(backGestureTutorialFragment.mRootView.mColorOnSurfaceBack), ".surfaceBack", Integer.valueOf(backGestureTutorialFragment.mRootView.mColorSurfaceBack), ".secondaryBack", Integer.valueOf(backGestureTutorialFragment.mRootView.mColorSecondaryBack)));
            LottieAnimationColorUtils.updateColors(this.mCheckmarkAnimation, Map.of(".checkmark", Integer.valueOf(Utilities.isDarkTheme(this.mContext) ? backGestureTutorialFragment.mRootView.mColorOnSurfaceBack : backGestureTutorialFragment.mRootView.mColorSecondaryBack), ".checkmarkBackground", Integer.valueOf(backGestureTutorialFragment.mRootView.mColorSurfaceBack)));
        }
    }

    private void handleBackAttempt(EdgeBackGestureHandler.BackGestureResult backGestureResult) {
        FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL;
        if (booleanFlag.get()) {
            resetViewsForBackGesture();
        }
        switch (AnonymousClass1.$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult[backGestureResult.ordinal()]) {
            case 1:
            case 2:
                this.mTutorialFragment.releaseFeedbackAnimation();
                if (booleanFlag.get()) {
                    this.mExitingAppView.setVisibility(8);
                }
                updateFakeAppTaskViewLayout(getMockAppTaskPreviousPageLayoutResId());
                showSuccessFeedback();
                return;
            case 3:
            case 4:
                showFeedback(R.string.back_gesture_feedback_cancelled);
                return;
            case 5:
                showFeedback(R.string.back_gesture_feedback_swipe_too_far_from_edge);
                return;
            case 6:
                showFeedback(R.string.back_gesture_feedback_swipe_in_nav_bar);
                return;
            default:
                return;
        }
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getDoneButtonColor() {
        return Utilities.isDarkTheme(this.mContext) ? this.mTutorialFragment.mRootView.mColorOnSurfaceBack : this.mTutorialFragment.mRootView.mColorSecondaryBack;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getDoneButtonTextAppearance() {
        return R.style.TextAppearance_GestureTutorial_ButtonLabel_Back;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getExitingAppColor() {
        return this.mTutorialFragment.mRootView.mColorSurfaceBack;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getFakeLauncherColor() {
        return this.mTutorialFragment.mRootView.mColorSurfaceContainer;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getGestureLottieAnimationId() {
        return this.mTutorialFragment.isLargeScreen() ? this.mTutorialFragment.isFoldable() ? R.raw.back_gesture_tutorial_open_foldable_animation : R.raw.back_gesture_tutorial_tablet_animation : R.raw.back_gesture_tutorial_animation;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getIntroductionSubtitle() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? R.string.back_gesture_tutorial_subtitle : R.string.back_gesture_intro_subtitle;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getIntroductionTitle() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? R.string.back_gesture_tutorial_title : R.string.back_gesture_intro_title;
    }

    public int getMockAppTaskCurrentPageLayoutResId() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? R.layout.back_gesture_tutorial_background : this.mTutorialFragment.isLargeScreen() ? R.layout.gesture_tutorial_tablet_mock_conversation : R.layout.gesture_tutorial_mock_conversation;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getMockAppTaskLayoutResId() {
        return getMockAppTaskCurrentPageLayoutResId();
    }

    public int getMockAppTaskPreviousPageLayoutResId() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? R.layout.back_gesture_tutorial_background : this.mTutorialFragment.isLargeScreen() ? R.layout.gesture_tutorial_tablet_mock_conversation_list : R.layout.gesture_tutorial_mock_conversation_list;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getSpokenIntroductionSubtitle() {
        return R.string.back_gesture_spoken_intro_subtitle;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getSuccessFeedbackSubtitle() {
        return this.mTutorialFragment.isAtFinalStep() ? R.string.back_gesture_feedback_complete_without_follow_up : R.string.back_gesture_feedback_complete_with_overview_follow_up;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getSuccessFeedbackTitle() {
        return R.string.gesture_tutorial_nice;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getSuccessTitleTextAppearance() {
        return R.style.TextAppearance_GestureTutorial_MainTitle_Success_Back;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getTitleTextAppearance() {
        return R.style.TextAppearance_GestureTutorial_MainTitle_Back;
    }

    @Override // com.android.quickstep.interaction.EdgeBackGestureHandler.BackGestureAttemptCallback
    public void onBackGestureAttempted(EdgeBackGestureHandler.BackGestureResult backGestureResult) {
        if (isGestureCompleted()) {
            return;
        }
        int i4 = AnonymousClass1.$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[this.mTutorialType.ordinal()];
        if (i4 == 1) {
            handleBackAttempt(backGestureResult);
        } else if (i4 != 2) {
        } else {
            if (backGestureResult == EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_LEFT || backGestureResult == EdgeBackGestureHandler.BackGestureResult.BACK_COMPLETED_FROM_RIGHT) {
                this.mTutorialFragment.close();
            }
        }
    }

    @Override // com.android.quickstep.interaction.EdgeBackGestureHandler.BackGestureAttemptCallback
    public void onBackGestureProgress(float f4, float f5, boolean z4) {
        if (isGestureCompleted()) {
            return;
        }
        float abs = Math.abs(f4 / this.mScreenWidth);
        Interpolator interpolator = y0.e.f12962z;
        float mapBoundToRange = Utilities.mapBoundToRange(abs, 0.0f, 1.0f, 1.0f, EXITING_APP_MIN_SIZE_PERCENTAGE, interpolator);
        this.mExitingAppView.setPivotX(z4 ? this.mScreenWidth : 0.0f);
        this.mExitingAppView.setPivotY(this.mScreenHeight / 2.0f);
        this.mExitingAppView.setScaleX(mapBoundToRange);
        this.mExitingAppView.setScaleY(mapBoundToRange);
        this.mExitingAppView.setTranslationY(f5 * Y_TRANSLATION_SMOOTHENING_FACTOR);
        this.mExitingAppView.setTranslationX(Utilities.mapBoundToRange(abs, 0.0f, 1.0f, 0.0f, this.mExitingAppMargin, interpolator) * (z4 ? -1 : 1));
        this.mExitingAppRadius = (int) Utilities.mapBoundToRange(abs, 0.0f, 1.0f, this.mExitingAppStartingCornerRadius, this.mExitingAppEndingCornerRadius, y0.e.f12939c);
        this.mExitingAppView.invalidateOutline();
    }

    @Override // com.android.quickstep.interaction.NavBarGestureHandler.NavBarGestureAttemptCallback
    public void onNavBarGestureAttempted(NavBarGestureHandler.NavBarGestureResult navBarGestureResult, PointF pointF) {
        if (isGestureCompleted()) {
            return;
        }
        TutorialController.TutorialType tutorialType = this.mTutorialType;
        if (tutorialType == TutorialController.TutorialType.BACK_NAVIGATION_COMPLETE) {
            if (navBarGestureResult == NavBarGestureHandler.NavBarGestureResult.HOME_GESTURE_COMPLETED) {
                this.mTutorialFragment.close();
            }
        } else if (tutorialType == TutorialController.TutorialType.BACK_NAVIGATION) {
            int i4 = AnonymousClass1.$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[navBarGestureResult.ordinal()];
            if (i4 == 1 || i4 == 2 || i4 == 3) {
                showFeedback(R.string.back_gesture_feedback_swipe_too_far_from_edge);
            } else {
                showFeedback(R.string.back_gesture_feedback_swipe_in_nav_bar);
            }
        }
    }
}
