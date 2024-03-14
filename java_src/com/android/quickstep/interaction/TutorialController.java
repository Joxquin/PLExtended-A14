package com.android.quickstep.interaction;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.views.ClipIconView;
import com.android.quickstep.interaction.EdgeBackGestureHandler;
import com.android.quickstep.interaction.NavBarGestureHandler;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import e.C0816h;
import e.C0820l;
import e.DialogInterfaceC0821m;
import f.C0832a;
import java.util.ArrayList;
import java.util.Objects;
import k0.C1198m;
import k0.InterfaceC1181F;
/* loaded from: classes.dex */
public abstract class TutorialController implements EdgeBackGestureHandler.BackGestureAttemptCallback, NavBarGestureHandler.NavBarGestureAttemptCallback {
    private static final int ADVANCE_TUTORIAL_TIMEOUT_MS = 2000;
    private static final CharSequence DEFAULT_PIXEL_TIPS_APP_NAME = "Pixel Tips";
    private static final int FEEDBACK_ANIMATION_MS = 133;
    private static final int FINGER_DOT_ANIMATION_DURATION_MILLIS = 500;
    private static final float FINGER_DOT_SMALL_SCALE = 0.7f;
    private static final float FINGER_DOT_VISIBLE_ALPHA = 0.7f;
    private static final int GESTURE_ANIMATION_DELAY_MS = 1500;
    private static final long GESTURE_ANIMATION_PAUSE_DURATION_MILLIS = 1000;
    private static final String LOG_TAG = "TutorialController";
    private static final String PIXEL_TIPS_APP_PACKAGE_NAME = "com.google.android.apps.tips";
    private static final int RIPPLE_VISIBLE_MS = 300;
    protected LottieAnimationView mAnimatedGestureDemonstration;
    protected LottieAnimationView mCheckmarkAnimation;
    final Context mContext;
    final Button mDoneButton;
    final ImageView mEdgeGestureVideoView;
    protected float mExitingAppEndingCornerRadius;
    protected float mExitingAppMargin;
    protected int mExitingAppRadius;
    protected float mExitingAppStartingCornerRadius;
    protected View mExitingAppView;
    final FrameLayout mFakeHotseatView;
    final ClipIconView mFakeIconView;
    final RelativeLayout mFakeLauncherView;
    final AnimatedTaskView mFakePreviousTaskView;
    final FrameLayout mFakeTaskView;
    private Runnable mFakeTaskViewCallback;
    final AnimatedTaskbarView mFakeTaskbarView;
    private Runnable mFakeTaskbarViewCallback;
    final TextView mFeedbackSubtitleView;
    final TextView mFeedbackTitleView;
    final ViewGroup mFeedbackView;
    private Runnable mFeedbackViewCallback;
    final ImageView mFingerDotView;
    private RelativeLayout mFullGestureDemonstration;
    View mHotseatIconView;
    final RippleDrawable mRippleDrawable;
    final View mRippleView;
    protected int mScreenHeight;
    protected float mScreenWidth;
    private final Runnable mShowFeedbackRunnable;
    final TextView mSkipButton;
    private final DialogInterfaceC0821m mSkipTutorialDialog;
    private final Runnable mTitleViewCallback;
    final TutorialFragment mTutorialFragment;
    final TutorialStepIndicator mTutorialStepView;
    TutorialType mTutorialType;
    private final Rect mExitingAppRect = new Rect();
    private boolean mGestureCompleted = false;

    /* loaded from: classes.dex */
    public enum TutorialType {
        BACK_NAVIGATION,
        BACK_NAVIGATION_COMPLETE,
        HOME_NAVIGATION,
        HOME_NAVIGATION_COMPLETE,
        OVERVIEW_NAVIGATION,
        OVERVIEW_NAVIGATION_COMPLETE
    }

    public TutorialController(TutorialFragment tutorialFragment, TutorialType tutorialType) {
        this.mTutorialFragment = tutorialFragment;
        this.mTutorialType = tutorialType;
        Context context = tutorialFragment.getContext();
        this.mContext = context;
        RootSandboxLayout rootView = tutorialFragment.getRootView();
        TextView textView = (TextView) rootView.findViewById(R.id.gesture_tutorial_fragment_close_button);
        this.mSkipButton = textView;
        textView.setOnClickListener(new v(1, this));
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.gesture_tutorial_fragment_feedback_view);
        this.mFeedbackView = viewGroup;
        TextView textView2 = (TextView) viewGroup.findViewById(R.id.gesture_tutorial_fragment_feedback_title);
        this.mFeedbackTitleView = textView2;
        TextView textView3 = (TextView) viewGroup.findViewById(R.id.gesture_tutorial_fragment_feedback_subtitle);
        this.mFeedbackSubtitleView = textView3;
        this.mEdgeGestureVideoView = (ImageView) rootView.findViewById(R.id.gesture_tutorial_edge_gesture_video);
        this.mFakeLauncherView = (RelativeLayout) rootView.findViewById(R.id.gesture_tutorial_fake_launcher_view);
        this.mFakeHotseatView = (FrameLayout) rootView.findViewById(R.id.gesture_tutorial_fake_hotseat_view);
        this.mFakeIconView = (ClipIconView) rootView.findViewById(R.id.gesture_tutorial_fake_icon_view);
        this.mFakeTaskView = (FrameLayout) rootView.findViewById(R.id.gesture_tutorial_fake_task_view);
        FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL;
        this.mFakeTaskbarView = booleanFlag.get() ? null : (AnimatedTaskbarView) rootView.findViewById(R.id.gesture_tutorial_fake_taskbar_view);
        this.mFakePreviousTaskView = (AnimatedTaskView) rootView.findViewById(R.id.gesture_tutorial_fake_previous_task_view);
        View findViewById = rootView.findViewById(R.id.gesture_tutorial_ripple_view);
        this.mRippleView = findViewById;
        this.mRippleDrawable = (RippleDrawable) findViewById.getBackground();
        this.mDoneButton = (Button) rootView.findViewById(R.id.gesture_tutorial_fragment_action_button);
        this.mTutorialStepView = (TutorialStepIndicator) rootView.findViewById(R.id.gesture_tutorial_fragment_feedback_tutorial_step);
        this.mFingerDotView = (ImageView) rootView.findViewById(R.id.gesture_tutorial_finger_dot);
        this.mSkipTutorialDialog = createSkipTutorialDialog();
        if (booleanFlag.get()) {
            this.mFullGestureDemonstration = (RelativeLayout) rootView.findViewById(R.id.full_gesture_demonstration);
            this.mCheckmarkAnimation = (LottieAnimationView) rootView.findViewById(R.id.checkmark_animation);
            this.mAnimatedGestureDemonstration = (LottieAnimationView) rootView.findViewById(R.id.gesture_demonstration_animations);
            this.mExitingAppView = rootView.findViewById(R.id.exiting_app_back);
            this.mScreenWidth = tutorialFragment.getDeviceProfile().widthPx;
            this.mScreenHeight = tutorialFragment.getDeviceProfile().heightPx;
            this.mExitingAppMargin = context.getResources().getDimensionPixelSize(R.dimen.gesture_tutorial_back_gesture_exiting_app_margin);
            this.mExitingAppStartingCornerRadius = QuickStepContract.getWindowCornerRadius(context);
            this.mExitingAppEndingCornerRadius = context.getResources().getDimensionPixelSize(R.dimen.gesture_tutorial_back_gesture_end_corner_radius);
            this.mAnimatedGestureDemonstration.addLottieOnCompositionLoadedListener(new InterfaceC1181F() { // from class: com.android.quickstep.interaction.x
                @Override // k0.InterfaceC1181F
                public final void a(C1198m c1198m) {
                    TutorialController.this.createScalingMatrix(c1198m);
                }
            });
            textView2.setText(getIntroductionTitle());
            textView3.setText(getIntroductionSubtitle());
            this.mExitingAppView.setClipToOutline(true);
            this.mExitingAppView.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.quickstep.interaction.TutorialController.1
                {
                    TutorialController.this = this;
                }

                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(TutorialController.this.mExitingAppRect, TutorialController.this.mExitingAppRadius);
                }
            });
        }
        this.mTitleViewCallback = new s(this, 4);
        this.mShowFeedbackRunnable = new s(this, 5);
    }

    public void createScalingMatrix(C1198m c1198m) {
        Rect rect = c1198m.f11130j;
        if (rect == null) {
            this.mAnimatedGestureDemonstration.setScaleType(ImageView.ScaleType.CENTER_CROP);
            return;
        }
        Matrix matrix = new Matrix();
        float width = this.mScreenWidth / rect.width();
        matrix.postScale(width, width);
        matrix.postTranslate(0.0f, this.mScreenHeight - (rect.height() * width));
        this.mAnimatedGestureDemonstration.setImageMatrix(matrix);
    }

    private DialogInterfaceC0821m createSkipTutorialDialog() {
        Context context = this.mContext;
        if (context instanceof GestureSandboxActivity) {
            GestureSandboxActivity gestureSandboxActivity = (GestureSandboxActivity) context;
            View inflate = View.inflate(gestureSandboxActivity, R.layout.gesture_tutorial_dialog, null);
            C0820l c0820l = new C0820l(R.style.Theme_AppCompat_Dialog_Alert, gestureSandboxActivity);
            C0816h c0816h = c0820l.f8976a;
            c0816h.f8930q = inflate;
            c0816h.f8929p = 0;
            final DialogInterfaceC0821m a4 = c0820l.a();
            PackageManager packageManager = this.mContext.getPackageManager();
            CharSequence charSequence = DEFAULT_PIXEL_TIPS_APP_NAME;
            try {
                charSequence = packageManager.getApplicationLabel(packageManager.getApplicationInfo(PIXEL_TIPS_APP_PACKAGE_NAME, 128));
            } catch (PackageManager.NameNotFoundException e4) {
                Log.e(LOG_TAG, "Could not find app label for package name: com.google.android.apps.tips. Defaulting to 'Pixel Tips.'", e4);
            }
            TextView textView = (TextView) inflate.findViewById(R.id.gesture_tutorial_dialog_subtitle);
            if (textView != null) {
                textView.setText(this.mContext.getString(R.string.skip_tutorial_dialog_subtitle, charSequence));
            } else {
                Log.w(LOG_TAG, "No subtitle view in the skip tutorial dialog to update.");
            }
            Button button = (Button) inflate.findViewById(R.id.gesture_tutorial_dialog_cancel_button);
            if (button != null) {
                button.setOnClickListener(new v(2, a4));
            } else {
                Log.w(LOG_TAG, "No cancel button in the skip tutorial dialog to update.");
            }
            Button button2 = (Button) inflate.findViewById(R.id.gesture_tutorial_dialog_confirm_button);
            if (button2 != null) {
                button2.setOnClickListener(new View.OnClickListener() { // from class: com.android.quickstep.interaction.t
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        TutorialController.this.lambda$createSkipTutorialDialog$9(a4, view);
                    }
                });
            } else {
                Log.w(LOG_TAG, "No confirm button in the skip tutorial dialog to update.");
            }
            a4.getWindow().setBackgroundDrawable(new ColorDrawable(gestureSandboxActivity.getColor(17170445)));
            return a4;
        }
        return null;
    }

    public /* synthetic */ void lambda$createSkipTutorialDialog$9(DialogInterfaceC0821m dialogInterfaceC0821m, View view) {
        this.mTutorialFragment.closeTutorialStep(true);
        dialogInterfaceC0821m.dismiss();
    }

    public /* synthetic */ void lambda$hideFakeTaskbar$5() {
        this.mFakeTaskbarView.animateDisappearanceToHotseat(this.mFakeHotseatView);
    }

    public /* synthetic */ void lambda$new$0(View view) {
        showSkipTutorialDialog();
    }

    public /* synthetic */ void lambda$new$1() {
        this.mFeedbackTitleView.sendAccessibilityEvent(8);
    }

    public /* synthetic */ void lambda$new$2() {
        if (!this.mGestureCompleted || this.mTutorialFragment.isAtFinalStep()) {
            return;
        }
        Runnable runnable = this.mFeedbackViewCallback;
        if (runnable != null) {
            this.mFeedbackView.removeCallbacks(runnable);
        }
        TutorialFragment tutorialFragment = this.mTutorialFragment;
        Objects.requireNonNull(tutorialFragment);
        w wVar = new w(0, tutorialFragment);
        this.mFeedbackViewCallback = wVar;
        this.mFeedbackView.postDelayed(wVar, 2000L);
    }

    public /* synthetic */ void lambda$new$3() {
        this.mFeedbackView.setAlpha(0.0f);
        this.mFeedbackView.setScaleX(0.95f);
        this.mFeedbackView.setScaleY(0.95f);
        this.mFeedbackView.setVisibility(0);
        this.mFeedbackView.animate().setDuration(133L).alpha(1.0f).scaleX(1.0f).scaleY(1.0f).withEndAction(new s(this, 3)).start();
        this.mFeedbackTitleView.postDelayed(this.mTitleViewCallback, 133L);
    }

    public /* synthetic */ void lambda$showFakeTaskbar$6() {
        this.mFakeTaskbarView.animateAppearanceFromHotseat(this.mFakeHotseatView);
    }

    public /* synthetic */ void lambda$showRippleEffect$4(Runnable runnable) {
        this.mRippleDrawable.setState(new int[0]);
        if (runnable != null) {
            runnable.run();
        }
    }

    public /* synthetic */ void lambda$updateDrawables$7() {
        this.mFakeTaskView.animate().cancel();
    }

    private void playFeedbackAnimation(final Animator animator, final AnimatedVectorDrawable animatedVectorDrawable, final Runnable runnable, final boolean z4) {
        if (FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get()) {
            this.mFeedbackView.setVisibility(0);
            this.mAnimatedGestureDemonstration.setVisibility(0);
            this.mFullGestureDemonstration.setVisibility(0);
            this.mAnimatedGestureDemonstration.playAnimation();
            return;
        }
        if (animator.isRunning()) {
            animator.cancel();
        }
        if (animatedVectorDrawable.isRunning()) {
            animatedVectorDrawable.reset();
        }
        animator.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.TutorialController.2
            {
                TutorialController.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                super.onAnimationEnd(animator2);
                TutorialController.this.mEdgeGestureVideoView.setVisibility(0);
                animatedVectorDrawable.start();
                animator.removeListener(this);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
                super.onAnimationStart(animator2);
                TutorialController.this.mEdgeGestureVideoView.setVisibility(8);
                if (animatedVectorDrawable.isRunning()) {
                    animatedVectorDrawable.stop();
                }
                if (z4) {
                    return;
                }
                runnable.run();
            }
        });
        cancelQueuedGestureAnimation();
        if (!z4) {
            animator.start();
            return;
        }
        this.mFeedbackViewCallback = runnable;
        this.mFakeTaskViewCallback = new w(1, animator);
        this.mFeedbackView.post(runnable);
        this.mFakeTaskView.postDelayed(this.mFakeTaskViewCallback, 1500L);
    }

    private void showSkipTutorialDialog() {
        DialogInterfaceC0821m dialogInterfaceC0821m = this.mSkipTutorialDialog;
        if (dialogInterfaceC0821m != null) {
            dialogInterfaceC0821m.show();
        }
    }

    private void showSuccessPage() {
        pauseAndHideLottieAnimation();
        this.mCheckmarkAnimation.setVisibility(0);
        this.mCheckmarkAnimation.playAnimation();
        this.mFeedbackTitleView.setTextAppearance(this.mContext, getSuccessTitleTextAppearance());
    }

    private void startGestureAnimation() {
        this.mAnimatedGestureDemonstration.setAnimation(getGestureLottieAnimationId());
        this.mAnimatedGestureDemonstration.playAnimation();
    }

    private void updateDrawables() {
        if (this.mContext != null) {
            this.mTutorialFragment.getRootView().setBackground(C0832a.a(getMockWallpaperResId(), this.mContext));
            this.mTutorialFragment.updateFeedbackAnimation();
            RelativeLayout relativeLayout = this.mFakeLauncherView;
            FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL;
            relativeLayout.setBackgroundColor(booleanFlag.get() ? getFakeLauncherColor() : this.mContext.getColor(R.color.gesture_tutorial_fake_wallpaper_color));
            updateFakeViewLayout(this.mFakeHotseatView, getMockHotseatResId());
            this.mHotseatIconView = this.mFakeHotseatView.findViewById(R.id.hotseat_icon_1);
            this.mFakeTaskView.animate().alpha(1.0f).setListener(AnimatorListeners.forSuccessCallback(new s(this, 0)));
            this.mFakePreviousTaskView.setFakeTaskViewFillColor(getMockPreviousAppTaskThumbnailColor());
            this.mFakeIconView.setBackground(C0832a.a(getMockAppIconResId(), this.mContext));
            if (!booleanFlag.get()) {
                updateFakeViewLayout(this.mFakeTaskView, getMockAppTaskLayoutResId());
                return;
            }
            this.mExitingAppView.setBackgroundColor(getExitingAppColor());
            this.mFakeTaskView.setBackgroundColor(getFakeTaskViewColor());
            updateHotseatChildViewColor(this.mHotseatIconView);
            updateHotseatChildViewColor(this.mFakeHotseatView.findViewById(R.id.hotseat_icon_2));
            updateHotseatChildViewColor(this.mFakeHotseatView.findViewById(R.id.hotseat_icon_3));
            updateHotseatChildViewColor(this.mFakeHotseatView.findViewById(R.id.hotseat_icon_4));
            updateHotseatChildViewColor(this.mFakeHotseatView.findViewById(R.id.hotseat_icon_5));
            updateHotseatChildViewColor(this.mFakeHotseatView.findViewById(R.id.hotseat_icon_6));
            updateHotseatChildViewColor(this.mFakeHotseatView.findViewById(R.id.hotseat_search_bar));
        }
    }

    private void updateHotseatChildViewColor(View view) {
        if (view == null) {
            return;
        }
        view.getBackground().setTint(getHotseatIconColor());
    }

    private void updateLayout() {
        if (this.mContext == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mFeedbackView.getLayoutParams();
        Resources resources = this.mContext.getResources();
        boolean isLargeScreen = this.mTutorialFragment.isLargeScreen();
        int i4 = R.dimen.gesture_tutorial_tablet_feedback_margin_start_end;
        layoutParams.setMarginStart(resources.getDimensionPixelSize(isLargeScreen ? R.dimen.gesture_tutorial_tablet_feedback_margin_start_end : R.dimen.gesture_tutorial_feedback_margin_start_end));
        Resources resources2 = this.mContext.getResources();
        if (!this.mTutorialFragment.isLargeScreen()) {
            i4 = R.dimen.gesture_tutorial_feedback_margin_start_end;
        }
        layoutParams.setMarginEnd(resources2.getDimensionPixelSize(i4));
        layoutParams.topMargin = this.mContext.getResources().getDimensionPixelSize(this.mTutorialFragment.isLargeScreen() ? R.dimen.gesture_tutorial_tablet_feedback_margin_top : R.dimen.gesture_tutorial_feedback_margin_top);
        AnimatedTaskbarView animatedTaskbarView = this.mFakeTaskbarView;
        if (animatedTaskbarView != null) {
            animatedTaskbarView.setVisibility(this.mTutorialFragment.isLargeScreen() ? 0 : 8);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.mFakeHotseatView.getLayoutParams();
        int i5 = 21;
        if (this.mTutorialFragment.isLargeScreen()) {
            layoutParams2.width = -1;
            layoutParams2.height = -2;
            layoutParams2.addRule(12);
            layoutParams2.removeRule(20);
            layoutParams2.removeRule(21);
        } else {
            DeviceProfile deviceProfile = this.mTutorialFragment.getDeviceProfile();
            deviceProfile.updateIsSeascape(this.mContext);
            if (!deviceProfile.isLandscape) {
                i5 = 12;
            } else if (deviceProfile.isSeascape()) {
                i5 = 20;
            }
            layoutParams2.addRule(i5);
        }
        this.mFakeHotseatView.setLayoutParams(layoutParams2);
    }

    private void updateSubtext() {
        if (FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get()) {
            return;
        }
        this.mTutorialStepView.setTutorialProgress(this.mTutorialFragment.getCurrentStep(), this.mTutorialFragment.getNumSteps());
    }

    public void cancelQueuedGestureAnimation() {
        AnimatedTaskbarView animatedTaskbarView;
        Runnable runnable = this.mFeedbackViewCallback;
        if (runnable != null) {
            this.mFeedbackView.removeCallbacks(runnable);
            this.mFeedbackViewCallback = null;
        }
        Runnable runnable2 = this.mFakeTaskViewCallback;
        if (runnable2 != null) {
            this.mFakeTaskView.removeCallbacks(runnable2);
            this.mFakeTaskViewCallback = null;
        }
        Runnable runnable3 = this.mFakeTaskbarViewCallback;
        if (runnable3 != null && (animatedTaskbarView = this.mFakeTaskbarView) != null) {
            animatedTaskbarView.removeCallbacks(runnable3);
            this.mFakeTaskbarViewCallback = null;
        }
        this.mFeedbackTitleView.removeCallbacks(this.mTitleViewCallback);
    }

    public Animator createAnimationPause() {
        return ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(GESTURE_ANIMATION_PAUSE_DURATION_MILLIS);
    }

    public AnimatorSet createFingerDotAppearanceAnimatorSet() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mFingerDotView, View.ALPHA, 0.0f, 0.7f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mFingerDotView, View.SCALE_Y, 0.7f, 1.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.mFingerDotView, View.SCALE_X, 0.7f, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(ofFloat);
        arrayList.add(ofFloat3);
        arrayList.add(ofFloat2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.setDuration(500L);
        return animatorSet;
    }

    public AnimatorSet createFingerDotDisappearanceAnimatorSet() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mFingerDotView, View.ALPHA, 0.7f, 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mFingerDotView, View.SCALE_Y, 1.0f, 0.7f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.mFingerDotView, View.SCALE_X, 1.0f, 0.7f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(ofFloat);
        arrayList.add(ofFloat3);
        arrayList.add(ofFloat2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.setDuration(500L);
        return animatorSet;
    }

    public void fadeTaskViewAndRun(Runnable runnable) {
        this.mFakeTaskView.animate().alpha(0.0f).setListener(AnimatorListeners.forSuccessCallback(runnable));
    }

    public abstract int getDoneButtonColor();

    public int getDoneButtonTextAppearance() {
        return -1;
    }

    public int getExitingAppColor() {
        return 0;
    }

    public abstract int getFakeLauncherColor();

    public int getFakeTaskViewColor() {
        return 0;
    }

    public int getGestureLottieAnimationId() {
        return -1;
    }

    public int getHotseatIconColor() {
        return 0;
    }

    public int getHotseatIconLeft() {
        if (this.mHotseatIconView == null) {
            return 0;
        }
        return this.mHotseatIconView.getLeft() + this.mFakeHotseatView.getLeft();
    }

    public int getHotseatIconTop() {
        if (this.mHotseatIconView == null) {
            return 0;
        }
        return this.mHotseatIconView.getTop() + this.mFakeHotseatView.getTop();
    }

    public int getIntroductionSubtitle() {
        return -1;
    }

    public int getIntroductionTitle() {
        return -1;
    }

    public int getMockAppIconResId() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? R.drawable.redesigned_hotseat_icon : R.drawable.default_sandbox_app_icon;
    }

    public int getMockAppTaskLayoutResId() {
        return -1;
    }

    public int getMockHotseatResId() {
        return FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get() ? this.mTutorialFragment.isLargeScreen() ? this.mTutorialFragment.isFoldable() ? R.layout.redesigned_gesture_tutorial_foldable_mock_hotseat : R.layout.redesigned_gesture_tutorial_tablet_mock_hotseat : R.layout.redesigned_gesture_tutorial_mock_hotseat : this.mTutorialFragment.isLargeScreen() ? this.mTutorialFragment.isFoldable() ? R.layout.gesture_tutorial_foldable_mock_hotseat : R.layout.gesture_tutorial_tablet_mock_hotseat : R.layout.gesture_tutorial_mock_hotseat;
    }

    public int getMockPreviousAppTaskThumbnailColor() {
        return this.mContext.getResources().getColor(R.color.gesture_tutorial_fake_previous_task_view_color);
    }

    public int getMockWallpaperResId() {
        return R.drawable.default_sandbox_wallpaper;
    }

    public int getSpokenIntroductionSubtitle() {
        return -1;
    }

    public int getSuccessFeedbackSubtitle() {
        return -1;
    }

    public int getSuccessFeedbackTitle() {
        return -1;
    }

    public int getSuccessTitleTextAppearance() {
        return -1;
    }

    public int getTitleTextAppearance() {
        return -1;
    }

    public void hideActionButton() {
        this.mSkipButton.setVisibility(0);
        this.mDoneButton.setVisibility(4);
        this.mDoneButton.setOnClickListener(null);
    }

    public void hideFakeTaskbar(boolean z4) {
        AnimatedTaskbarView animatedTaskbarView;
        if (!this.mTutorialFragment.isLargeScreen() || (animatedTaskbarView = this.mFakeTaskbarView) == null) {
            return;
        }
        Runnable runnable = this.mFakeTaskbarViewCallback;
        if (runnable != null) {
            animatedTaskbarView.removeCallbacks(runnable);
        }
        if (z4) {
            this.mFakeTaskbarViewCallback = new s(this, 1);
        }
        this.mFakeTaskbarView.post(this.mFakeTaskbarViewCallback);
    }

    public void hideFeedback() {
        if (this.mFeedbackView.getVisibility() != 0) {
            return;
        }
        cancelQueuedGestureAnimation();
        this.mFeedbackView.clearAnimation();
        this.mFeedbackView.setVisibility(4);
    }

    public boolean isGestureCompleted() {
        return this.mGestureCompleted;
    }

    public void onActionButtonClicked(View view) {
        this.mTutorialFragment.continueTutorial();
    }

    public void pauseAndHideLottieAnimation() {
        this.mAnimatedGestureDemonstration.pauseAnimation();
        this.mAnimatedGestureDemonstration.setVisibility(4);
        this.mFullGestureDemonstration.setVisibility(4);
    }

    public void resetViewsForBackGesture() {
        this.mFakeTaskView.setVisibility(0);
        this.mFakeTaskView.setBackgroundColor(getFakeTaskViewColor());
        this.mExitingAppView.setVisibility(0);
        this.mExitingAppRect.set(0, 0, (int) this.mScreenWidth, this.mScreenHeight);
        this.mExitingAppRadius = 0;
        this.mExitingAppView.resetPivot();
        this.mExitingAppView.setScaleX(1.0f);
        this.mExitingAppView.setScaleY(1.0f);
        this.mExitingAppView.setTranslationX(0.0f);
        this.mExitingAppView.setTranslationY(0.0f);
        this.mExitingAppView.invalidateOutline();
    }

    public void setGestureCompleted() {
        this.mGestureCompleted = true;
    }

    public void setRippleHotspot(float f4, float f5) {
        this.mRippleDrawable.setHotspot(f4, f5);
    }

    public void setTutorialType(TutorialType tutorialType) {
        this.mTutorialType = tutorialType;
    }

    public void showActionButton() {
        this.mSkipButton.setVisibility(8);
        this.mDoneButton.setVisibility(0);
        this.mDoneButton.setOnClickListener(new v(0, this));
    }

    public void showFakeTaskbar(boolean z4) {
        AnimatedTaskbarView animatedTaskbarView;
        if (!this.mTutorialFragment.isLargeScreen() || (animatedTaskbarView = this.mFakeTaskbarView) == null) {
            return;
        }
        Runnable runnable = this.mFakeTaskbarViewCallback;
        if (runnable != null) {
            animatedTaskbarView.removeCallbacks(runnable);
        }
        if (z4) {
            this.mFakeTaskbarViewCallback = new s(this, 2);
        }
        this.mFakeTaskbarView.post(this.mFakeTaskbarViewCallback);
    }

    public void showFeedback() {
        if (this.mGestureCompleted) {
            this.mFeedbackView.setTranslationY(0.0f);
            return;
        }
        Animator gestureAnimation = this.mTutorialFragment.getGestureAnimation();
        AnimatedVectorDrawable edgeAnimation = this.mTutorialFragment.getEdgeAnimation();
        if (gestureAnimation == null || edgeAnimation == null) {
            return;
        }
        playFeedbackAnimation(gestureAnimation, edgeAnimation, this.mShowFeedbackRunnable, true);
    }

    public void showRippleEffect(final Runnable runnable) {
        this.mRippleDrawable.setState(new int[]{16842919, 16842910});
        this.mRippleView.postDelayed(new Runnable() { // from class: com.android.quickstep.interaction.u
            @Override // java.lang.Runnable
            public final void run() {
                TutorialController.this.lambda$showRippleEffect$4(runnable);
            }
        }, 300L);
    }

    public void showSuccessFeedback() {
        int successFeedbackSubtitle = getSuccessFeedbackSubtitle();
        if (successFeedbackSubtitle == -1) {
            Log.e(LOG_TAG, "Cannot show success feedback for tutorial step: " + this.mTutorialType + ", no success feedback subtitle", new IllegalStateException());
        }
        showFeedback(successFeedbackSubtitle, true);
    }

    public void transitToController() {
        updateCloseButton();
        updateSubtext();
        updateDrawables();
        updateLayout();
        if (FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get()) {
            this.mFeedbackTitleView.setTextAppearance(this.mContext, getTitleTextAppearance());
            this.mDoneButton.setTextAppearance(this.mContext, getDoneButtonTextAppearance());
            this.mDoneButton.getBackground().setTint(getDoneButtonColor());
            this.mCheckmarkAnimation.setAnimation(this.mTutorialFragment.isAtFinalStep() ? R.raw.checkmark_animation_end : R.raw.checkmark_animation_in_progress);
            if (!isGestureCompleted()) {
                this.mCheckmarkAnimation.setVisibility(8);
                startGestureAnimation();
                if (this.mTutorialType == TutorialType.BACK_NAVIGATION) {
                    resetViewsForBackGesture();
                }
            }
        } else {
            hideFeedback();
            hideActionButton();
        }
        this.mGestureCompleted = false;
        FrameLayout frameLayout = this.mFakeHotseatView;
        if (frameLayout != null) {
            frameLayout.setVisibility(4);
        }
    }

    public void updateCloseButton() {
        this.mSkipButton.setTextAppearance(Utilities.isDarkTheme(this.mContext) ? R.style.TextAppearance_GestureTutorial_Feedback_Subtext : R.style.TextAppearance_GestureTutorial_Feedback_Subtext_Dark);
    }

    public void updateFakeAppTaskViewLayout(int i4) {
        updateFakeViewLayout(this.mFakeTaskView, i4);
    }

    public void updateFakeViewLayout(ViewGroup viewGroup, int i4) {
        viewGroup.removeAllViews();
        if (i4 != -1) {
            viewGroup.addView(View.inflate(this.mContext, i4, null), new FrameLayout.LayoutParams(-1, -1));
        }
    }

    public void showFeedback(int i4) {
        showFeedback(i4, false);
    }

    public void showFeedback(int i4, boolean z4) {
        showFeedback(z4 ? getSuccessFeedbackTitle() : R.string.gesture_tutorial_try_again, i4, -1, z4, false);
    }

    public void showFeedback(int i4, int i5, int i6, boolean z4, boolean z5) {
        CharSequence text;
        this.mFeedbackTitleView.removeCallbacks(this.mTitleViewCallback);
        Runnable runnable = this.mFeedbackViewCallback;
        if (runnable != null) {
            this.mFeedbackView.removeCallbacks(runnable);
            this.mFeedbackViewCallback = null;
        }
        this.mFeedbackTitleView.setText(i4);
        TextView textView = this.mFeedbackSubtitleView;
        FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL;
        if (!booleanFlag.get() && i6 != -1) {
            text = Utilities.wrapForTts(this.mContext.getText(i5), this.mContext.getString(i6));
        } else {
            text = this.mContext.getText(i5);
        }
        textView.setText(text);
        if (z4) {
            if (this.mTutorialFragment.isAtFinalStep()) {
                showActionButton();
            }
            Runnable runnable2 = this.mFakeTaskViewCallback;
            if (runnable2 != null) {
                this.mFakeTaskView.removeCallbacks(runnable2);
                this.mFakeTaskViewCallback = null;
            }
            if (booleanFlag.get()) {
                showSuccessPage();
            }
        }
        this.mGestureCompleted = z4;
        Animator gestureAnimation = this.mTutorialFragment.getGestureAnimation();
        AnimatedVectorDrawable edgeAnimation = this.mTutorialFragment.getEdgeAnimation();
        if (!z4 && gestureAnimation != null && edgeAnimation != null) {
            playFeedbackAnimation(gestureAnimation, edgeAnimation, this.mShowFeedbackRunnable, z5);
            return;
        }
        this.mTutorialFragment.releaseFeedbackAnimation();
        Runnable runnable3 = this.mShowFeedbackRunnable;
        this.mFeedbackViewCallback = runnable3;
        this.mFeedbackView.post(runnable3);
    }
}
