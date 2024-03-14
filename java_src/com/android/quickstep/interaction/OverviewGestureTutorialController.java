package com.android.quickstep.interaction;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.os.Handler;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.quickstep.SwipeUpAnimationLogic;
import com.android.quickstep.interaction.EdgeBackGestureHandler;
import com.android.quickstep.interaction.NavBarGestureHandler;
import com.android.quickstep.interaction.OverviewGestureTutorialController;
import com.android.quickstep.interaction.TutorialController;
import com.android.quickstep.util.LottieAnimationColorUtils;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes.dex */
public final class OverviewGestureTutorialController extends SwipeUpGestureTutorialController {
    private static final float LAUNCHER_COLOR_BLENDING_RATIO = 0.4f;

    /* renamed from: com.android.quickstep.interaction.OverviewGestureTutorialController$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends AnimatorListenerAdapter {
        public AnonymousClass1() {
            OverviewGestureTutorialController.this = r1;
        }

        public /* synthetic */ void lambda$onAnimationEnd$0(ValueAnimator valueAnimator) {
            OverviewGestureTutorialController overviewGestureTutorialController = OverviewGestureTutorialController.this;
            overviewGestureTutorialController.mFakeTaskView.setBackgroundColor(E.a.d(overviewGestureTutorialController.getFakeTaskViewStartColor(), OverviewGestureTutorialController.this.getFakeTaskViewEndColor(), valueAnimator.getAnimatedFraction()));
        }

        public /* synthetic */ void lambda$onAnimationEnd$1() {
            OverviewGestureTutorialController.this.showSuccessFeedback();
            OverviewGestureTutorialController.this.resetTaskViews();
        }

        public /* synthetic */ void lambda$onAnimationEnd$2() {
            OverviewGestureTutorialController.this.fadeOutFakeTaskView(true, false, false, new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.quickstep.interaction.n
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    OverviewGestureTutorialController.AnonymousClass1.this.lambda$onAnimationEnd$0(valueAnimator);
                }
            }, new o(0, this));
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            new Handler().postDelayed(new o(1, this), 300L);
        }
    }

    /* renamed from: com.android.quickstep.interaction.OverviewGestureTutorialController$2 */
    /* loaded from: classes.dex */
    /* synthetic */ class AnonymousClass2 {
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
                iArr2[TutorialController.TutorialType.OVERVIEW_NAVIGATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[TutorialController.TutorialType.OVERVIEW_NAVIGATION_COMPLETE.ordinal()] = 2;
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

    public OverviewGestureTutorialController(OverviewGestureTutorialFragment overviewGestureTutorialFragment, TutorialController.TutorialType tutorialType) {
        super(overviewGestureTutorialFragment, tutorialType);
        if (FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get()) {
            LottieAnimationColorUtils.updateColors(this.mAnimatedGestureDemonstration, Map.of(".onSurfaceOverview", Integer.valueOf(overviewGestureTutorialFragment.mRootView.mColorOnSurfaceOverview), ".surfaceOverview", Integer.valueOf(overviewGestureTutorialFragment.mRootView.mColorSurfaceOverview), ".secondaryOverview", Integer.valueOf(overviewGestureTutorialFragment.mRootView.mColorSecondaryOverview)));
            LottieAnimationColorUtils.updateColors(this.mCheckmarkAnimation, Map.of(".checkmark", Integer.valueOf(Utilities.isDarkTheme(this.mContext) ? overviewGestureTutorialFragment.mRootView.mColorOnSurfaceOverview : overviewGestureTutorialFragment.mRootView.mColorSecondaryOverview), ".checkmarkBackground", Integer.valueOf(overviewGestureTutorialFragment.mRootView.mColorSurfaceOverview)));
        }
    }

    public int getFakeTaskViewEndColor() {
        return getMockPreviousAppTaskThumbnailColor();
    }

    public int getFakeTaskViewStartColor() {
        return this.mTutorialFragment.mRootView.mColorSurfaceOverview;
    }

    public /* synthetic */ void lambda$onNavBarGestureAttempted$0() {
        showFeedback(R.string.overview_gesture_feedback_home_detected);
        resetFakeTaskView(true);
    }

    public void animateTaskViewToOverview(boolean z4) {
        AnimatorSet createAnimationToMultiRowLayout;
        PendingAnimation pendingAnimation = new PendingAnimation(300L);
        pendingAnimation.setFloat(this.mTaskViewSwipeUpAnimation.getCurrentShift(), AnimatedFloat.VALUE, 1.0f, y0.e.f12957u);
        if (z4) {
            pendingAnimation.addListener(new AnonymousClass1());
        }
        ArrayList arrayList = new ArrayList();
        if (this.mTutorialFragment.isLargeScreen() && (createAnimationToMultiRowLayout = this.mFakePreviousTaskView.createAnimationToMultiRowLayout()) != null) {
            createAnimationToMultiRowLayout.setDuration(300L);
            arrayList.add(createAnimationToMultiRowLayout);
        }
        arrayList.add(pendingAnimation.buildAnim());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.start();
        this.mRunningWindowAnim = SwipeUpAnimationLogic.RunningWindowAnim.wrap(animatorSet);
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getDoneButtonColor() {
        return Utilities.isDarkTheme(this.mContext) ? this.mTutorialFragment.mRootView.mColorOnSurfaceOverview : this.mTutorialFragment.mRootView.mColorSecondaryOverview;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getDoneButtonTextAppearance() {
        return R.style.TextAppearance_GestureTutorial_ButtonLabel_Overview;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getFakeLauncherColor() {
        RootSandboxLayout rootSandboxLayout = this.mTutorialFragment.mRootView;
        return E.a.d(rootSandboxLayout.mColorSurfaceContainer, rootSandboxLayout.mColorOnSurfaceOverview, 0.4f);
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getFakeTaskViewColor() {
        return isGestureCompleted() ? getFakeTaskViewEndColor() : getFakeTaskViewStartColor();
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getGestureLottieAnimationId() {
        return this.mTutorialFragment.isLargeScreen() ? this.mTutorialFragment.isFoldable() ? R.raw.overview_gesture_tutorial_open_foldable_animation : R.raw.overview_gesture_tutorial_tablet_animation : R.raw.overview_gesture_tutorial_animation;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getHotseatIconColor() {
        return this.mTutorialFragment.mRootView.mColorOnSurfaceOverview;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getIntroductionSubtitle() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? R.string.overview_gesture_tutorial_subtitle : R.string.overview_gesture_intro_subtitle;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getIntroductionTitle() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? R.string.overview_gesture_tutorial_title : R.string.overview_gesture_intro_title;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getMockAppTaskLayoutResId() {
        return this.mTutorialFragment.isLargeScreen() ? R.layout.gesture_tutorial_tablet_mock_conversation_list : R.layout.gesture_tutorial_mock_conversation_list;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getMockPreviousAppTaskThumbnailColor() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? this.mTutorialFragment.mRootView.mColorSurfaceContainer : this.mContext.getResources().getColor(R.color.gesture_tutorial_fake_previous_task_view_color);
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getSpokenIntroductionSubtitle() {
        return R.string.overview_gesture_spoken_intro_subtitle;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getSuccessFeedbackSubtitle() {
        return (this.mTutorialFragment.getNumSteps() <= 1 || !this.mTutorialFragment.isAtFinalStep()) ? R.string.overview_gesture_feedback_complete_without_follow_up : R.string.overview_gesture_feedback_complete_with_follow_up;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getSuccessFeedbackTitle() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? R.string.overview_gesture_tutorial_success : R.string.gesture_tutorial_nice;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getSuccessTitleTextAppearance() {
        return R.style.TextAppearance_GestureTutorial_MainTitle_Success_Overview;
    }

    @Override // com.android.quickstep.interaction.TutorialController
    public int getTitleTextAppearance() {
        return R.style.TextAppearance_GestureTutorial_MainTitle_Overview;
    }

    @Override // com.android.quickstep.interaction.EdgeBackGestureHandler.BackGestureAttemptCallback
    public void onBackGestureAttempted(EdgeBackGestureHandler.BackGestureResult backGestureResult) {
        if (isGestureCompleted()) {
            return;
        }
        int i4 = AnonymousClass2.$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[this.mTutorialType.ordinal()];
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
        int i5 = AnonymousClass2.$SwitchMap$com$android$quickstep$interaction$EdgeBackGestureHandler$BackGestureResult[backGestureResult.ordinal()];
        if (i5 == 1 || i5 == 2 || i5 == 3 || i5 == 4 || i5 == 5) {
            resetTaskViews();
            showFeedback(R.string.overview_gesture_feedback_swipe_too_far_from_edge);
        }
    }

    @Override // com.android.quickstep.interaction.NavBarGestureHandler.NavBarGestureAttemptCallback
    public void onNavBarGestureAttempted(NavBarGestureHandler.NavBarGestureResult navBarGestureResult, PointF pointF) {
        if (isGestureCompleted()) {
            return;
        }
        int i4 = AnonymousClass2.$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType[this.mTutorialType.ordinal()];
        if (i4 != 1) {
            if (i4 == 2 && navBarGestureResult == NavBarGestureHandler.NavBarGestureResult.HOME_GESTURE_COMPLETED) {
                this.mTutorialFragment.close();
                return;
            }
            return;
        }
        switch (AnonymousClass2.$SwitchMap$com$android$quickstep$interaction$NavBarGestureHandler$NavBarGestureResult[navBarGestureResult.ordinal()]) {
            case 1:
                animateFakeTaskViewHome(pointF, new o(2, this));
                return;
            case 2:
            case 3:
                resetTaskViews();
                showFeedback(R.string.overview_gesture_feedback_swipe_too_far_from_edge);
                return;
            case 4:
                setGestureCompleted();
                this.mTutorialFragment.releaseFeedbackAnimation();
                FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL;
                animateTaskViewToOverview(booleanFlag.get());
                onMotionPaused(true);
                if (booleanFlag.get()) {
                    return;
                }
                showSuccessFeedback();
                return;
            case 5:
            case 6:
                fadeOutFakeTaskView(false, null);
                showFeedback(R.string.overview_gesture_feedback_wrong_swipe_direction);
                return;
            default:
                return;
        }
    }
}
