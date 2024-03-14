package com.android.quickstep.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.util.MultiValueUpdateListener;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public class AllAppsEduView extends AbstractFloatingView {
    private AnimatorSet mAnimation;
    private boolean mCanInterceptTouch;
    private GradientDrawable mCircle;
    private int mCircleSizePx;
    private GradientDrawable mGradient;
    private Launcher mLauncher;
    private int mMaxHeightPx;
    private int mPaddingPx;
    private AllAppsEduTouchController mTouchController;
    private int mWidthPx;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class AllAppsEduTouchController extends PortraitStatesTouchController {
        public /* synthetic */ AllAppsEduTouchController(Launcher launcher, int i4) {
            this(launcher);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public AnimatorPlaybackController initAllAppsAnimation() {
            this.mFromState = LauncherState.NORMAL;
            this.mToState = LauncherState.ALL_APPS;
            this.mProgressMultiplier = initCurrentAnimation();
            return this.mCurrentAnimation;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isDraggingOrSettling() {
            return this.mDetector.isDraggingOrSettling();
        }

        @Override // com.android.launcher3.uioverrides.touchcontrollers.PortraitStatesTouchController, com.android.launcher3.touch.AbstractStateChangeTouchController
        public boolean canInterceptTouch(MotionEvent motionEvent) {
            return true;
        }

        @Override // com.android.launcher3.util.TouchController
        public /* bridge */ /* synthetic */ void dump(String str, PrintWriter printWriter) {
        }

        @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
        public boolean onDrag(float f4, float f5, MotionEvent motionEvent) {
            return onDrag(f4, motionEvent);
        }

        private AllAppsEduTouchController(Launcher launcher) {
            super(launcher);
        }
    }

    public AllAppsEduView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCircle = (GradientDrawable) context.getDrawable(R.drawable.all_apps_edu_circle);
        this.mCircleSizePx = getResources().getDimensionPixelSize(R.dimen.swipe_edu_circle_size);
        this.mPaddingPx = getResources().getDimensionPixelSize(R.dimen.swipe_edu_padding);
        this.mWidthPx = getResources().getDimensionPixelSize(R.dimen.swipe_edu_width);
        this.mMaxHeightPx = getResources().getDimensionPixelSize(R.dimen.swipe_edu_max_height);
        setWillNotDraw(false);
    }

    private void init(Launcher launcher) {
        this.mLauncher = launcher;
        this.mTouchController = new AllAppsEduTouchController(launcher, 0);
        int attrColor = GraphicsUtils.getAttrColor(16843829, launcher);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, Themes.getAttrBoolean(R.attr.isMainColorDark, launcher) ? new int[]{-1275068417, 16777215} : new int[]{E.a.k(attrColor, 127), E.a.k(attrColor, 0)});
        this.mGradient = gradientDrawable;
        float f4 = this.mWidthPx / 2.0f;
        gradientDrawable.setCornerRadii(new float[]{f4, f4, f4, f4, 0.0f, 0.0f, 0.0f, 0.0f});
        int i4 = this.mMaxHeightPx;
        int i5 = this.mCircleSizePx;
        int i6 = this.mPaddingPx;
        int i7 = (i4 - i5) + i6;
        this.mCircle.setBounds(i6, i7, i6 + i5, i5 + i7);
        GradientDrawable gradientDrawable2 = this.mGradient;
        int i8 = this.mMaxHeightPx;
        gradientDrawable2.setBounds(0, i8 - this.mCircleSizePx, this.mWidthPx, i8);
        DeviceProfile deviceProfile = launcher.getDeviceProfile();
        BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(this.mWidthPx, this.mMaxHeightPx);
        layoutParams.ignoreInsets = true;
        ((FrameLayout.LayoutParams) layoutParams).leftMargin = (deviceProfile.widthPx - this.mWidthPx) / 2;
        ((FrameLayout.LayoutParams) layoutParams).topMargin = (deviceProfile.heightPx - deviceProfile.hotseatBarSizePx) - this.mMaxHeightPx;
        setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$playAnimation$0(AnimatorPlaybackController animatorPlaybackController, ValueAnimator valueAnimator) {
        animatorPlaybackController.setPlayFraction(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void playAnimation() {
        if (this.mAnimation != null) {
            return;
        }
        this.mAnimation = new AnimatorSet();
        Rect rect = new Rect(this.mCircle.getBounds());
        Rect rect2 = new Rect(this.mGradient.getBounds());
        Rect rect3 = new Rect();
        float f4 = (this.mMaxHeightPx - this.mCircleSizePx) - this.mPaddingPx;
        final AnimatorPlaybackController initAllAppsAnimation = this.mTouchController.initAllAppsAnimation();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setInterpolator(y0.e.f12949m);
        long j4 = 1800;
        ofFloat.setDuration(j4);
        ofFloat.addUpdateListener(new MultiValueUpdateListener(600, f4, 1200, rect3, rect, rect2, 0.75f, initAllAppsAnimation) { // from class: com.android.quickstep.views.AllAppsEduView.1
            MultiValueUpdateListener.FloatProp mCircleAlpha;
            MultiValueUpdateListener.FloatProp mCircleScale;
            MultiValueUpdateListener.FloatProp mDeltaY;
            MultiValueUpdateListener.FloatProp mGradientAlpha;
            final /* synthetic */ Rect val$circleBoundsOg;
            final /* synthetic */ int val$firstPart;
            final /* synthetic */ Rect val$gradientBoundsOg;
            final /* synthetic */ float val$maxAllAppsProgress;
            final /* synthetic */ int val$secondPart;
            final /* synthetic */ AnimatorPlaybackController val$stateAnimationController;
            final /* synthetic */ Rect val$temp;
            final /* synthetic */ float val$transY;

            {
                this.val$firstPart = r15;
                this.val$transY = f4;
                this.val$secondPart = r17;
                this.val$temp = rect3;
                this.val$circleBoundsOg = rect;
                this.val$gradientBoundsOg = rect2;
                this.val$maxAllAppsProgress = r21;
                this.val$stateAnimationController = initAllAppsAnimation;
                Interpolator interpolator = y0.e.f12949m;
                this.mCircleAlpha = new MultiValueUpdateListener.FloatProp(0.0f, 255.0f, 0.0f, r15, interpolator);
                this.mCircleScale = new MultiValueUpdateListener.FloatProp(2.0f, 1.0f, 0.0f, r15, y0.e.f12945i);
                this.mDeltaY = new MultiValueUpdateListener.FloatProp(0.0f, f4, r15, r17, y0.e.f12950n);
                this.mGradientAlpha = new MultiValueUpdateListener.FloatProp(0.0f, 255.0f, r15, r17 * 0.3f, interpolator);
            }

            @Override // com.android.quickstep.util.MultiValueUpdateListener
            public void onUpdate(float f5, boolean z4) {
                this.val$temp.set(this.val$circleBoundsOg);
                this.val$temp.offset(0, (int) (-this.mDeltaY.value));
                Utilities.scaleRectAboutCenter(this.val$temp, this.mCircleScale.value);
                AllAppsEduView.this.mCircle.setBounds(this.val$temp);
                AllAppsEduView.this.mCircle.setAlpha((int) this.mCircleAlpha.value);
                AllAppsEduView.this.mGradient.setAlpha((int) this.mGradientAlpha.value);
                this.val$temp.set(this.val$gradientBoundsOg);
                Rect rect4 = this.val$temp;
                rect4.top = (int) (rect4.top - this.mDeltaY.value);
                AllAppsEduView.this.mGradient.setBounds(this.val$temp);
                AllAppsEduView.this.invalidate();
                this.val$stateAnimationController.setPlayFraction(Utilities.mapToRange(this.mDeltaY.value, 0.0f, this.val$transY, 0.0f, this.val$maxAllAppsProgress, y0.e.f12949m));
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.views.AllAppsEduView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AllAppsEduView.this.mCircle.setAlpha(0);
                AllAppsEduView.this.mGradient.setAlpha(0);
            }
        });
        this.mLauncher.getAppsView().setVisibility(0);
        this.mAnimation.play(ofFloat);
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.75f, 0.0f);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.quickstep.views.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AllAppsEduView.lambda$playAnimation$0(AnimatorPlaybackController.this, valueAnimator);
            }
        });
        ofFloat2.setInterpolator(y0.e.f12950n);
        ofFloat2.setStartDelay(j4);
        ofFloat2.setDuration(250L);
        this.mAnimation.play(ofFloat2);
        this.mAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.views.AllAppsEduView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AllAppsEduView.this.mAnimation = null;
                AllAppsEduView.this.mLauncher.getStateManager().goToState(LauncherState.NORMAL, false);
                AllAppsEduView.this.handleClose(false);
            }
        });
        this.mAnimation.start();
    }

    private boolean shouldInterceptTouch(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mCanInterceptTouch = (motionEvent.getEdgeFlags() & 256) == 0;
        }
        return this.mCanInterceptTouch;
    }

    public static void show(Launcher launcher) {
        AllAppsEduView allAppsEduView = (AllAppsEduView) launcher.getLayoutInflater().inflate(R.layout.all_apps_edu_view, (ViewGroup) launcher.getDragLayer(), false);
        allAppsEduView.init(launcher);
        launcher.getDragLayer().addView(allAppsEduView);
        launcher.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_ALL_APPS_EDU_SHOWN);
        allAppsEduView.requestLayout();
        allAppsEduView.playAnimation();
    }

    private void updateAnimationOnTouchEvent(MotionEvent motionEvent) {
        if (this.mAnimation == null) {
            return;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mAnimation.pause();
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.mAnimation.resume();
        } else if (this.mTouchController.isDraggingOrSettling()) {
            this.mAnimation = null;
            handleClose(false);
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean canInterceptEventsInSystemGestureRegion() {
        return true;
    }

    @Override // com.android.launcher3.util.TouchController
    public /* bridge */ /* synthetic */ void dump(String str, PrintWriter printWriter) {
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z4) {
        this.mLauncher.getDragLayer().removeView(this);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i4) {
        return (i4 & 512) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mIsOpen = true;
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (shouldInterceptTouch(motionEvent)) {
            this.mTouchController.onControllerInterceptTouchEvent(motionEvent);
            updateAnimationOnTouchEvent(motionEvent);
            return true;
        }
        return true;
    }

    @Override // com.android.launcher3.AbstractFloatingView, com.android.launcher3.util.TouchController
    public boolean onControllerTouchEvent(MotionEvent motionEvent) {
        if (shouldInterceptTouch(motionEvent)) {
            this.mTouchController.onControllerTouchEvent(motionEvent);
            updateAnimationOnTouchEvent(motionEvent);
            return true;
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mIsOpen = false;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mGradient.draw(canvas);
        this.mCircle.draw(canvas);
    }
}
