package com.android.quickstep.util;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.quickstep.util.BorderAnimator;
/* loaded from: classes.dex */
public final class BorderAnimator {
    private static final long DEFAULT_APPEARANCE_ANIMATION_DURATION_MS = 300;
    public static final int DEFAULT_BORDER_COLOR = -1;
    private static final long DEFAULT_DISAPPEARANCE_ANIMATION_DURATION_MS = 133;
    private static final Interpolator DEFAULT_INTERPOLATOR = y0.e.f12939c;
    private final long mAppearanceDurationMs;
    private final BorderAnimationParams mBorderAnimationParams;
    private final AnimatedFloat mBorderAnimationProgress;
    private final Paint mBorderPaint;
    private final int mBorderRadiusPx;
    private final long mDisappearanceDurationMs;
    private final Interpolator mInterpolator;
    private Animator mRunningBorderAnimation;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public abstract class BorderAnimationParams {
        private float mAnimationProgress;
        private final Rect mBorderBounds;
        final int mBorderWidthPx;
        private final BorderBoundsBuilder mBoundsBuilder;
        private View.OnLayoutChangeListener mLayoutChangeListener;
        final View mTargetView;

        public /* synthetic */ BorderAnimationParams(int i4, BorderBoundsBuilder borderBoundsBuilder, View view, int i5) {
            this(i4, borderBoundsBuilder, view);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getBorderWidth() {
            return this.mBorderWidthPx * this.mAnimationProgress;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onShowBorder$0(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
            onShowBorder();
            this.mTargetView.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setProgress(float f4) {
            this.mAnimationProgress = f4;
        }

        public float getAlignmentAdjustment() {
            return ((-getBorderWidth()) / 2.0f) + getAlignmentAdjustmentInset();
        }

        public abstract int getAlignmentAdjustmentInset();

        public abstract float getRadiusAdjustment();

        public void onHideBorder() {
            View.OnLayoutChangeListener onLayoutChangeListener = this.mLayoutChangeListener;
            if (onLayoutChangeListener != null) {
                this.mTargetView.removeOnLayoutChangeListener(onLayoutChangeListener);
                this.mLayoutChangeListener = null;
            }
        }

        public void onShowBorder() {
            if (this.mLayoutChangeListener == null) {
                View.OnLayoutChangeListener onLayoutChangeListener = new View.OnLayoutChangeListener() { // from class: com.android.quickstep.util.o
                    @Override // android.view.View.OnLayoutChangeListener
                    public final void onLayoutChange(View view, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                        BorderAnimator.BorderAnimationParams.this.lambda$onShowBorder$0(view, i4, i5, i6, i7, i8, i9, i10, i11);
                    }
                };
                this.mLayoutChangeListener = onLayoutChangeListener;
                this.mTargetView.addOnLayoutChangeListener(onLayoutChangeListener);
            }
            this.mBoundsBuilder.updateBorderBounds(this.mBorderBounds);
        }

        private BorderAnimationParams(int i4, BorderBoundsBuilder borderBoundsBuilder, View view) {
            this.mBorderBounds = new Rect();
            this.mAnimationProgress = 0.0f;
            this.mBorderWidthPx = i4;
            this.mBoundsBuilder = borderBoundsBuilder;
            this.mTargetView = view;
        }
    }

    /* loaded from: classes.dex */
    public interface BorderBoundsBuilder {
        void updateBorderBounds(Rect rect);
    }

    /* loaded from: classes.dex */
    public final class ScalingParams extends BorderAnimationParams {
        private final View mContentView;

        public ScalingParams(int i4, BorderBoundsBuilder borderBoundsBuilder, View view, View view2) {
            super(i4, borderBoundsBuilder, view, 0);
            this.mContentView = view2;
        }

        @Override // com.android.quickstep.util.BorderAnimator.BorderAnimationParams
        public int getAlignmentAdjustmentInset() {
            return this.mBorderWidthPx;
        }

        @Override // com.android.quickstep.util.BorderAnimator.BorderAnimationParams
        public float getRadiusAdjustment() {
            return getAlignmentAdjustment();
        }

        @Override // com.android.quickstep.util.BorderAnimator.BorderAnimationParams
        public void onHideBorder() {
            super.onHideBorder();
            View view = this.mTargetView;
            view.setPivotX(view.getWidth());
            View view2 = this.mTargetView;
            view2.setPivotY(view2.getHeight());
            this.mTargetView.setScaleX(1.0f);
            this.mTargetView.setScaleY(1.0f);
            View view3 = this.mContentView;
            view3.setPivotX(view3.getWidth() / 2.0f);
            View view4 = this.mContentView;
            view4.setPivotY(view4.getHeight() / 2.0f);
            this.mContentView.setScaleX(1.0f);
            this.mContentView.setScaleY(1.0f);
        }

        @Override // com.android.quickstep.util.BorderAnimator.BorderAnimationParams
        public void onShowBorder() {
            View view;
            View view2;
            super.onShowBorder();
            float width = this.mTargetView.getWidth();
            float height = this.mTargetView.getHeight();
            float f4 = width == 0.0f ? 1.0f : ((this.mBorderWidthPx * 2) / width) + 1.0f;
            float f5 = height == 0.0f ? 1.0f : ((this.mBorderWidthPx * 2) / height) + 1.0f;
            this.mTargetView.setPivotX(width / 2.0f);
            this.mTargetView.setPivotY(height / 2.0f);
            this.mTargetView.setScaleX(f4);
            this.mTargetView.setScaleY(f5);
            this.mContentView.setPivotX(view.getWidth() / 2.0f);
            this.mContentView.setPivotY(view2.getHeight() / 2.0f);
            this.mContentView.setScaleX(1.0f / f4);
            this.mContentView.setScaleY(1.0f / f5);
        }
    }

    /* loaded from: classes.dex */
    public final class SimpleParams extends BorderAnimationParams {
        public SimpleParams(int i4, BorderBoundsBuilder borderBoundsBuilder, View view) {
            super(i4, borderBoundsBuilder, view, 0);
        }

        @Override // com.android.quickstep.util.BorderAnimator.BorderAnimationParams
        public int getAlignmentAdjustmentInset() {
            return 0;
        }

        @Override // com.android.quickstep.util.BorderAnimator.BorderAnimationParams
        public float getRadiusAdjustment() {
            return -getAlignmentAdjustment();
        }
    }

    public BorderAnimator(int i4, int i5, BorderAnimationParams borderAnimationParams) {
        this(i4, i5, borderAnimationParams, 300L, DEFAULT_DISAPPEARANCE_ANIMATION_DURATION_MS, DEFAULT_INTERPOLATOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$buildAnimator$0(boolean z4) {
        this.mRunningBorderAnimation = null;
        if (z4) {
            return;
        }
        this.mBorderAnimationParams.onHideBorder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateOutline() {
        float interpolation = this.mInterpolator.getInterpolation(this.mBorderAnimationProgress.value);
        this.mBorderAnimationParams.setProgress(interpolation);
        this.mBorderPaint.setAlpha(Math.round(interpolation * 255.0f));
        this.mBorderPaint.setStrokeWidth(this.mBorderAnimationParams.getBorderWidth());
        this.mBorderAnimationParams.mTargetView.invalidate();
    }

    public Animator buildAnimator(final boolean z4) {
        ObjectAnimator animateToValue = this.mBorderAnimationProgress.animateToValue(z4 ? 1.0f : 0.0f);
        this.mRunningBorderAnimation = animateToValue;
        animateToValue.setDuration(z4 ? this.mAppearanceDurationMs : this.mDisappearanceDurationMs);
        this.mRunningBorderAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.util.BorderAnimator.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                BorderAnimator.this.mBorderAnimationParams.onShowBorder();
            }
        });
        this.mRunningBorderAnimation.addListener(AnimatorListeners.forEndCallback(new Runnable() { // from class: com.android.quickstep.util.n
            @Override // java.lang.Runnable
            public final void run() {
                BorderAnimator.this.lambda$buildAnimator$0(z4);
            }
        }));
        return this.mRunningBorderAnimation;
    }

    public void drawBorder(Canvas canvas) {
        float alignmentAdjustment = this.mBorderAnimationParams.getAlignmentAdjustment();
        canvas.drawRoundRect(this.mBorderAnimationParams.mBorderBounds.left + alignmentAdjustment, this.mBorderAnimationParams.mBorderBounds.top + alignmentAdjustment, this.mBorderAnimationParams.mBorderBounds.right - alignmentAdjustment, this.mBorderAnimationParams.mBorderBounds.bottom - alignmentAdjustment, this.mBorderRadiusPx + this.mBorderAnimationParams.getRadiusAdjustment(), this.mBorderRadiusPx + this.mBorderAnimationParams.getRadiusAdjustment(), this.mBorderPaint);
    }

    public void setBorderVisible(boolean z4) {
        Animator animator = this.mRunningBorderAnimation;
        if (animator != null) {
            animator.end();
        }
        if (z4) {
            this.mBorderAnimationParams.onShowBorder();
        }
        this.mBorderAnimationProgress.updateValue(z4 ? 1.0f : 0.0f);
        if (z4) {
            return;
        }
        this.mBorderAnimationParams.onHideBorder();
    }

    public BorderAnimator(int i4, int i5, BorderAnimationParams borderAnimationParams, long j4, long j5, Interpolator interpolator) {
        this.mBorderAnimationProgress = new AnimatedFloat(new Runnable() { // from class: com.android.quickstep.util.m
            @Override // java.lang.Runnable
            public final void run() {
                BorderAnimator.this.updateOutline();
            }
        });
        Paint paint = new Paint(1);
        this.mBorderPaint = paint;
        this.mBorderRadiusPx = i4;
        this.mBorderAnimationParams = borderAnimationParams;
        this.mAppearanceDurationMs = j4;
        this.mDisappearanceDurationMs = j5;
        this.mInterpolator = interpolator;
        paint.setColor(i5);
        paint.setStyle(Paint.Style.STROKE);
        paint.setAlpha(0);
    }
}
