package com.android.quickstep.interaction;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.android.launcher3.testing.shared.ResourceUtils;
import com.android.launcher3.util.VibratorWrapper;
import com.android.systemui.shared.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class EdgeBackGesturePanel extends View {
    private static final int ARROW_ANGLE_ADDED_PER_1000_SPEED = 4;
    private static final int ARROW_ANGLE_WHEN_EXTENDED_DEGREES = 56;
    private static final int ARROW_LENGTH_DP = 18;
    private static final int ARROW_MAX_ANGLE_SPEED_OFFSET_DEGREES = 4;
    private static final float ARROW_THICKNESS_DP = 2.5f;
    private static final int BASE_TRANSLATION_DP = 32;
    private static final long DISAPPEAR_ARROW_ANIMATION_DURATION_MS = 100;
    private static final long DISAPPEAR_FADE_ANIMATION_DURATION_MS = 80;
    private static final int GESTURE_DURATION_FOR_CLICK_MS = 400;
    private static final String LOG_TAG = "EdgeBackGesturePanel";
    private static final int RUBBER_BAND_AMOUNT = 15;
    private static final int RUBBER_BAND_AMOUNT_APPEAR = 4;
    private final androidx.dynamicanimation.animation.s mAngleAnimation;
    private final androidx.dynamicanimation.animation.t mAngleAppearForce;
    private final androidx.dynamicanimation.animation.t mAngleDisappearForce;
    private float mAngleOffset;
    private final ValueAnimator mArrowDisappearAnimation;
    private final float mArrowLength;
    private int mArrowPaddingEnd;
    private final Path mArrowPath;
    private final float mArrowThickness;
    private boolean mArrowsPointLeft;
    private BackCallback mBackCallback;
    private final float mBaseTranslation;
    private float mCurrentAngle;
    private float mCurrentTranslation;
    private final float mDensity;
    private float mDesiredAngle;
    private float mDesiredTranslation;
    private float mDesiredVerticalTranslation;
    private float mDisappearAmount;
    private final Point mDisplaySize;
    private boolean mDragSlopPassed;
    private int mFingerOffset;
    private boolean mIsLeftPanel;
    private float mMaxTranslation;
    private int mMinArrowPosition;
    private final float mMinDeltaForSwitch;
    private final Paint mPaint;
    private float mPreviousTouchTranslation;
    private final androidx.dynamicanimation.animation.t mRegularTranslationSpring;
    private int mScreenSize;
    private final androidx.dynamicanimation.animation.j mSetGoneEndListener;
    private float mStartX;
    private float mStartY;
    private final float mSwipeThreshold;
    private float mTotalTouchDelta;
    private final androidx.dynamicanimation.animation.s mTranslationAnimation;
    private boolean mTriggerBack;
    private final androidx.dynamicanimation.animation.t mTriggerBackSpring;
    private VelocityTracker mVelocityTracker;
    private float mVerticalTranslation;
    private final androidx.dynamicanimation.animation.s mVerticalTranslationAnimation;
    private long mVibrationTime;
    private static final Interpolator RUBBER_BAND_INTERPOLATOR = new PathInterpolator(0.2f, 1.0f, 1.0f, 1.0f);
    private static final Interpolator RUBBER_BAND_INTERPOLATOR_APPEAR = new PathInterpolator(0.25f, 1.0f, 1.0f, 1.0f);
    private static final androidx.dynamicanimation.animation.q CURRENT_ANGLE = new androidx.dynamicanimation.animation.q("currentAngle") { // from class: com.android.quickstep.interaction.EdgeBackGesturePanel.2
        @Override // androidx.dynamicanimation.animation.q
        public float getValue(EdgeBackGesturePanel edgeBackGesturePanel) {
            return edgeBackGesturePanel.getCurrentAngle();
        }

        @Override // androidx.dynamicanimation.animation.q
        public void setValue(EdgeBackGesturePanel edgeBackGesturePanel, float f4) {
            edgeBackGesturePanel.setCurrentAngle(f4);
        }
    };
    private static final androidx.dynamicanimation.animation.q CURRENT_TRANSLATION = new androidx.dynamicanimation.animation.q("currentTranslation") { // from class: com.android.quickstep.interaction.EdgeBackGesturePanel.3
        @Override // androidx.dynamicanimation.animation.q
        public float getValue(EdgeBackGesturePanel edgeBackGesturePanel) {
            return edgeBackGesturePanel.getCurrentTranslation();
        }

        @Override // androidx.dynamicanimation.animation.q
        public void setValue(EdgeBackGesturePanel edgeBackGesturePanel, float f4) {
            edgeBackGesturePanel.setCurrentTranslation(f4);
        }
    };
    private static final androidx.dynamicanimation.animation.q CURRENT_VERTICAL_TRANSLATION = new androidx.dynamicanimation.animation.q("verticalTranslation") { // from class: com.android.quickstep.interaction.EdgeBackGesturePanel.4
        @Override // androidx.dynamicanimation.animation.q
        public float getValue(EdgeBackGesturePanel edgeBackGesturePanel) {
            return edgeBackGesturePanel.getVerticalTranslation();
        }

        @Override // androidx.dynamicanimation.animation.q
        public void setValue(EdgeBackGesturePanel edgeBackGesturePanel, float f4) {
            edgeBackGesturePanel.setVerticalTranslation(f4);
        }
    };

    /* loaded from: classes.dex */
    public interface BackCallback {
        void cancelBack();

        void triggerBack();
    }

    public EdgeBackGesturePanel(Context context, ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams) {
        super(context);
        Paint paint = new Paint();
        this.mPaint = paint;
        this.mArrowPath = new Path();
        this.mDisplaySize = new Point();
        this.mSetGoneEndListener = new androidx.dynamicanimation.animation.j() { // from class: com.android.quickstep.interaction.EdgeBackGesturePanel.1
            {
                EdgeBackGesturePanel.this = this;
            }

            @Override // androidx.dynamicanimation.animation.j
            public void onAnimationEnd(androidx.dynamicanimation.animation.m mVar, boolean z4, float f4, float f5) {
                ArrayList arrayList = mVar.f3204k;
                int indexOf = arrayList.indexOf(this);
                if (indexOf >= 0) {
                    arrayList.set(indexOf, null);
                }
                if (z4) {
                    return;
                }
                EdgeBackGesturePanel.this.setVisibility(8);
            }
        };
        this.mDensity = context.getResources().getDisplayMetrics().density;
        this.mBaseTranslation = dp(32.0f);
        this.mArrowLength = dp(18.0f);
        float dp = dp(ARROW_THICKNESS_DP);
        this.mArrowThickness = dp;
        this.mMinDeltaForSwitch = dp(32.0f);
        paint.setStrokeWidth(dp);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeJoin(Paint.Join.ROUND);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mArrowDisappearAnimation = ofFloat;
        ofFloat.setDuration(DISAPPEAR_ARROW_ANIMATION_DURATION_MS);
        ofFloat.setInterpolator(y0.e.f12950n);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.quickstep.interaction.i
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                EdgeBackGesturePanel.this.lambda$new$0(valueAnimator);
            }
        });
        androidx.dynamicanimation.animation.s sVar = new androidx.dynamicanimation.animation.s(CURRENT_ANGLE, this);
        this.mAngleAnimation = sVar;
        androidx.dynamicanimation.animation.t tVar = new androidx.dynamicanimation.animation.t();
        tVar.b(500.0f);
        tVar.a(0.5f);
        this.mAngleAppearForce = tVar;
        androidx.dynamicanimation.animation.t tVar2 = new androidx.dynamicanimation.animation.t();
        tVar2.b(1500.0f);
        tVar2.a(0.5f);
        tVar2.f3222i = 90.0f;
        this.mAngleDisappearForce = tVar2;
        sVar.f3211x = tVar;
        sVar.f3200g = 90.0f;
        androidx.dynamicanimation.animation.s sVar2 = new androidx.dynamicanimation.animation.s(CURRENT_TRANSLATION, this);
        this.mTranslationAnimation = sVar2;
        androidx.dynamicanimation.animation.t tVar3 = new androidx.dynamicanimation.animation.t();
        tVar3.b(1500.0f);
        tVar3.a(0.75f);
        this.mRegularTranslationSpring = tVar3;
        androidx.dynamicanimation.animation.t tVar4 = new androidx.dynamicanimation.animation.t();
        tVar4.b(450.0f);
        tVar4.a(0.75f);
        this.mTriggerBackSpring = tVar4;
        sVar2.f3211x = tVar3;
        androidx.dynamicanimation.animation.s sVar3 = new androidx.dynamicanimation.animation.s(CURRENT_VERTICAL_TRANSLATION, this);
        this.mVerticalTranslationAnimation = sVar3;
        androidx.dynamicanimation.animation.t tVar5 = new androidx.dynamicanimation.animation.t();
        tVar5.b(1500.0f);
        tVar5.a(0.75f);
        sVar3.f3211x = tVar5;
        int i4 = context.getResources().getConfiguration().uiMode;
        paint.setColor(context.getColor(R.color.gesture_tutorial_back_arrow_color));
        loadDimens();
        updateArrowDirection();
        this.mSwipeThreshold = ResourceUtils.getDimenByName(16, context.getResources(), "navigation_edge_action_drag_threshold");
        viewGroup.addView(this, layoutParams);
        setVisibility(8);
    }

    private Path calculatePath(float f4, float f5) {
        if (!this.mArrowsPointLeft) {
            f4 = -f4;
        }
        float lerp = lerp(1.0f, 0.75f, this.mDisappearAmount);
        float f6 = f4 * lerp;
        float f7 = f5 * lerp;
        this.mArrowPath.reset();
        this.mArrowPath.moveTo(f6, f7);
        this.mArrowPath.lineTo(0.0f, 0.0f);
        this.mArrowPath.lineTo(f6, -f7);
        return this.mArrowPath;
    }

    private void cancelBack() {
        BackCallback backCallback = this.mBackCallback;
        if (backCallback != null) {
            backCallback.cancelBack();
        }
        androidx.dynamicanimation.animation.s sVar = this.mTranslationAnimation;
        if (sVar.f3199f) {
            sVar.a(this.mSetGoneEndListener);
        } else {
            setVisibility(8);
        }
    }

    private float dp(float f4) {
        return this.mDensity * f4;
    }

    public float getCurrentAngle() {
        return this.mCurrentAngle;
    }

    public float getCurrentTranslation() {
        return this.mCurrentTranslation;
    }

    private float getStaticArrowWidth() {
        return polarToCartX(56.0f) * this.mArrowLength;
    }

    public float getVerticalTranslation() {
        return this.mVerticalTranslation;
    }

    private void handleMoveEvent(MotionEvent motionEvent) {
        float f4;
        float x4 = motionEvent.getX();
        float y4 = motionEvent.getY();
        float abs = Math.abs(x4 - this.mStartX);
        float f5 = y4 - this.mStartY;
        float f6 = abs - this.mPreviousTouchTranslation;
        float f7 = 0.0f;
        if (Math.abs(f6) > 0.0f) {
            if (Math.signum(f6) == Math.signum(this.mTotalTouchDelta)) {
                this.mTotalTouchDelta += f6;
            } else {
                this.mTotalTouchDelta = f6;
            }
        }
        this.mPreviousTouchTranslation = abs;
        if (!this.mDragSlopPassed && abs > this.mSwipeThreshold) {
            this.mDragSlopPassed = true;
            ((VibratorWrapper) VibratorWrapper.INSTANCE.get(getContext())).vibrate(VibratorWrapper.EFFECT_CLICK);
            this.mVibrationTime = SystemClock.uptimeMillis();
            this.mDisappearAmount = 0.0f;
            setAlpha(1.0f);
            setTriggerBack(true, true);
        }
        float f8 = this.mBaseTranslation;
        if (abs > f8) {
            float interpolation = RUBBER_BAND_INTERPOLATOR.getInterpolation(H.a.a((abs - f8) / (this.mScreenSize - f8)));
            float f9 = this.mMaxTranslation;
            float f10 = this.mBaseTranslation;
            f4 = w.f.a(f9, f10, interpolation, f10);
        } else {
            float interpolation2 = RUBBER_BAND_INTERPOLATOR_APPEAR.getInterpolation(H.a.a((f8 - abs) / f8));
            float f11 = this.mBaseTranslation;
            f4 = f11 - ((f11 / 4.0f) * interpolation2);
        }
        boolean z4 = this.mTriggerBack;
        if (Math.abs(this.mTotalTouchDelta) > this.mMinDeltaForSwitch) {
            z4 = this.mTotalTouchDelta > 0.0f;
        }
        this.mVelocityTracker.computeCurrentVelocity(1000);
        float xVelocity = this.mVelocityTracker.getXVelocity();
        float signum = Math.signum(xVelocity) * Math.min((((float) Math.hypot(xVelocity, this.mVelocityTracker.getYVelocity())) / 1000.0f) * 4.0f, 4.0f);
        this.mAngleOffset = signum;
        boolean z5 = this.mIsLeftPanel;
        if ((z5 && this.mArrowsPointLeft) || (!z5 && !this.mArrowsPointLeft)) {
            this.mAngleOffset = signum * (-1.0f);
        }
        setTriggerBack(Math.abs(f5) <= Math.abs(x4 - this.mStartX) * 2.0f ? z4 : false, true);
        if (this.mTriggerBack) {
            boolean z6 = this.mIsLeftPanel;
            f7 = (!(z6 && this.mArrowsPointLeft) && (z6 || this.mArrowsPointLeft)) ? f4 : f4 - getStaticArrowWidth();
        }
        setDesiredTranslation(f7, true);
        updateAngle(true);
        float height = (getHeight() / 2.0f) - this.mArrowLength;
        setDesiredVerticalTransition(Math.signum(f5) * RUBBER_BAND_INTERPOLATOR.getInterpolation(H.a.a(Math.abs(f5) / (15.0f * height))) * height, true);
    }

    public /* synthetic */ void lambda$new$0(ValueAnimator valueAnimator) {
        this.mDisappearAmount = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    public /* synthetic */ void lambda$triggerBack$1() {
        setVisibility(8);
    }

    public void lambda$triggerBack$2() {
        this.mAngleOffset = Math.max(0.0f, this.mAngleOffset + 8.0f);
        updateAngle(true);
        this.mTranslationAnimation.f3211x = this.mTriggerBackSpring;
        setDesiredTranslation(this.mDesiredTranslation - dp(32.0f), true);
        animate().alpha(0.0f).setDuration(DISAPPEAR_FADE_ANIMATION_DURATION_MS).withEndAction(new h(this, 0));
        this.mArrowDisappearAnimation.start();
    }

    private static float lerp(float f4, float f5, float f6) {
        return w.f.a(f5, f4, f6, f4);
    }

    private void loadDimens() {
        Resources resources = getResources();
        this.mArrowPaddingEnd = ResourceUtils.getDimenByName(8, resources, "navigation_edge_panel_padding");
        this.mMinArrowPosition = ResourceUtils.getDimenByName(64, resources, "navigation_edge_arrow_min_y");
        this.mFingerOffset = ResourceUtils.getDimenByName(48, resources, "navigation_edge_finger_offset");
    }

    private float polarToCartX(float f4) {
        return (float) Math.cos(Math.toRadians(f4));
    }

    private float polarToCartY(float f4) {
        return (float) Math.sin(Math.toRadians(f4));
    }

    private void resetOnDown() {
        animate().cancel();
        this.mAngleAnimation.b();
        this.mTranslationAnimation.b();
        this.mVerticalTranslationAnimation.b();
        this.mArrowDisappearAnimation.cancel();
        this.mAngleOffset = 0.0f;
        this.mTranslationAnimation.f3211x = this.mRegularTranslationSpring;
        setTriggerBack(false, false);
        setDesiredTranslation(0.0f, false);
        setCurrentTranslation(0.0f);
        updateAngle(false);
        this.mPreviousTouchTranslation = 0.0f;
        this.mTotalTouchDelta = 0.0f;
        this.mVibrationTime = 0L;
        setDesiredVerticalTransition(0.0f, false);
    }

    public void setCurrentAngle(float f4) {
        this.mCurrentAngle = f4;
        invalidate();
    }

    public void setCurrentTranslation(float f4) {
        this.mCurrentTranslation = f4;
        invalidate();
    }

    private void setDesiredTranslation(float f4, boolean z4) {
        if (this.mDesiredTranslation != f4) {
            this.mDesiredTranslation = f4;
            if (z4) {
                this.mTranslationAnimation.j(f4);
            } else {
                setCurrentTranslation(f4);
            }
        }
    }

    private void setDesiredVerticalTransition(float f4, boolean z4) {
        if (this.mDesiredVerticalTranslation != f4) {
            this.mDesiredVerticalTranslation = f4;
            if (z4) {
                this.mVerticalTranslationAnimation.j(f4);
            } else {
                setVerticalTranslation(f4);
            }
            invalidate();
        }
    }

    private void setTriggerBack(boolean z4, boolean z5) {
        if (this.mTriggerBack != z4) {
            this.mTriggerBack = z4;
            this.mAngleAnimation.b();
            updateAngle(z5);
            this.mTranslationAnimation.b();
        }
    }

    public void setVerticalTranslation(float f4) {
        this.mVerticalTranslation = f4;
        invalidate();
    }

    private void triggerBack() {
        BackCallback backCallback = this.mBackCallback;
        if (backCallback != null) {
            backCallback.triggerBack();
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.computeCurrentVelocity(1000);
        if ((Math.abs(this.mVelocityTracker.getXVelocity()) < 500.0f) || SystemClock.uptimeMillis() - this.mVibrationTime >= 400) {
            ((VibratorWrapper) VibratorWrapper.INSTANCE.get(getContext())).vibrate(VibratorWrapper.EFFECT_CLICK);
        }
        float f4 = this.mAngleOffset;
        if (f4 > -4.0f) {
            this.mAngleOffset = Math.max(-8.0f, f4 - 8.0f);
            updateAngle(true);
        }
        final h hVar = new h(this, 1);
        androidx.dynamicanimation.animation.s sVar = this.mTranslationAnimation;
        if (sVar.f3199f) {
            sVar.a(new androidx.dynamicanimation.animation.j() { // from class: com.android.quickstep.interaction.EdgeBackGesturePanel.5
                {
                    EdgeBackGesturePanel.this = this;
                }

                @Override // androidx.dynamicanimation.animation.j
                public void onAnimationEnd(androidx.dynamicanimation.animation.m mVar, boolean z4, float f5, float f6) {
                    ArrayList arrayList = mVar.f3204k;
                    int indexOf = arrayList.indexOf(this);
                    if (indexOf >= 0) {
                        arrayList.set(indexOf, null);
                    }
                    if (z4) {
                        return;
                    }
                    hVar.run();
                }
            });
        } else {
            hVar.run();
        }
    }

    private void updateAngle(boolean z4) {
        boolean z5 = this.mTriggerBack;
        float f4 = z5 ? this.mAngleOffset + 56.0f : 90.0f;
        if (f4 != this.mDesiredAngle) {
            if (z4) {
                androidx.dynamicanimation.animation.s sVar = this.mAngleAnimation;
                sVar.f3211x = z5 ? this.mAngleAppearForce : this.mAngleDisappearForce;
                sVar.j(f4);
            } else {
                setCurrentAngle(f4);
            }
            this.mDesiredAngle = f4;
        }
    }

    private void updateArrowDirection() {
        this.mArrowsPointLeft = getLayoutDirection() == 0;
        invalidate();
    }

    private void updatePosition(float f4) {
        float max = Math.max(f4 - this.mFingerOffset, this.mMinArrowPosition) - (getLayoutParams().height / 2.0f);
        setX(this.mIsLeftPanel ? 0.0f : this.mDisplaySize.x - getLayoutParams().width);
        setY(H.a.b((int) max, 0, this.mDisplaySize.y));
    }

    public boolean getIsLeftPanel() {
        return this.mIsLeftPanel;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateArrowDirection();
        loadDimens();
    }

    public void onDestroy() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        float f4 = this.mCurrentTranslation - (this.mArrowThickness / 2.0f);
        canvas.save();
        if (!this.mIsLeftPanel) {
            f4 = getWidth() - f4;
        }
        canvas.translate(f4, (getHeight() * 0.5f) + this.mVerticalTranslation);
        canvas.drawPath(calculatePath(polarToCartX(this.mCurrentAngle) * this.mArrowLength, polarToCartY(this.mCurrentAngle) * this.mArrowLength), this.mPaint);
        canvas.restore();
    }

    @Override // android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        this.mMaxTranslation = getWidth() - this.mArrowPaddingEnd;
    }

    public void onMotionEvent(MotionEvent motionEvent) {
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.mDragSlopPassed = false;
            resetOnDown();
            this.mStartX = motionEvent.getX();
            this.mStartY = motionEvent.getY();
            setVisibility(0);
            updatePosition(motionEvent.getY());
        } else if (actionMasked == 1) {
            if (this.mTriggerBack) {
                triggerBack();
            } else {
                cancelBack();
            }
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        } else if (actionMasked == 2) {
            handleMoveEvent(motionEvent);
        } else if (actionMasked != 3) {
        } else {
            cancelBack();
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    public void setBackCallback(BackCallback backCallback) {
        this.mBackCallback = backCallback;
    }

    public void setDisplaySize(Point point) {
        this.mDisplaySize.set(point.x, point.y);
        Point point2 = this.mDisplaySize;
        this.mScreenSize = Math.min(point2.x, point2.y);
    }

    public void setIsLeftPanel(boolean z4) {
        this.mIsLeftPanel = z4;
    }
}
