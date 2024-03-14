package com.android.launcher3.util;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import com.android.launcher3.ButtonDropTarget;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragView;
/* loaded from: classes.dex */
public final class FlingAnimation implements ValueAnimator.AnimatorUpdateListener, Runnable {
    protected float mAX;
    protected float mAY;
    protected final TimeInterpolator mAlphaInterpolator = new DecelerateInterpolator(0.75f);
    protected float mAnimationTimeFraction;
    protected final DragLayer mDragLayer;
    protected final DropTarget.DragObject mDragObject;
    protected final DragOptions mDragOptions;
    private final ButtonDropTarget mDropTarget;
    protected int mDuration;
    protected RectF mFrom;
    protected Rect mIconRect;
    private final Launcher mLauncher;
    protected final float mUX;
    protected final float mUY;

    public FlingAnimation(DropTarget.DragObject dragObject, PointF pointF, ButtonDropTarget buttonDropTarget, Launcher launcher, DragOptions dragOptions) {
        this.mDropTarget = buttonDropTarget;
        this.mLauncher = launcher;
        this.mDragObject = dragObject;
        this.mUX = pointF.x / 1000.0f;
        this.mUY = pointF.y / 1000.0f;
        this.mDragLayer = launcher.getDragLayer();
        this.mDragOptions = dragOptions;
    }

    public static /* synthetic */ void a(FlingAnimation flingAnimation) {
        flingAnimation.mLauncher.getStateManager().goToState(LauncherState.NORMAL);
        flingAnimation.mDropTarget.completeDrop(flingAnimation.mDragObject);
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        float f4 = this.mAnimationTimeFraction;
        float f5 = animatedFraction > f4 ? 1.0f : animatedFraction / f4;
        DragView animatedView = this.mDragLayer.getAnimatedView();
        float f6 = this.mDuration * f5;
        animatedView.setTranslationX((((this.mAX * f6) * f6) / 2.0f) + (this.mUX * f6) + this.mFrom.left);
        animatedView.setTranslationY((((this.mAY * f6) * f6) / 2.0f) + (this.mUY * f6) + this.mFrom.top);
        animatedView.setAlpha(1.0f - ((DecelerateInterpolator) this.mAlphaInterpolator).getInterpolation(f5));
    }

    @Override // java.lang.Runnable
    public final void run() {
        long round;
        this.mIconRect = this.mDropTarget.getIconRect(this.mDragObject);
        this.mDragObject.dragView.cancelAnimation();
        this.mDragObject.dragView.requestLayout();
        Rect rect = new Rect();
        this.mDragLayer.getViewRectRelativeToSelf(this.mDragObject.dragView, rect);
        RectF rectF = new RectF(rect);
        this.mFrom = rectF;
        rectF.inset(((1.0f - this.mDragObject.dragView.getScaleX()) * rect.width()) / 2.0f, ((1.0f - this.mDragObject.dragView.getScaleY()) * rect.height()) / 2.0f);
        float f4 = 0.0f;
        if (Math.abs(this.mUY) > Math.abs(this.mUX)) {
            float f5 = -this.mFrom.bottom;
            float f6 = this.mUY;
            float f7 = f6 * f6;
            float f8 = (f5 * 2.0f * 0.5f) + f7;
            if (f8 >= 0.0f) {
                this.mAY = 0.5f;
                f4 = f8;
            } else {
                this.mAY = f7 / ((-f5) * 2.0f);
            }
            double sqrt = ((-f6) - Math.sqrt(f4)) / this.mAY;
            this.mAX = (float) ((((this.mIconRect.exactCenterX() + (-this.mFrom.centerX())) - (this.mUX * sqrt)) * 2.0d) / (sqrt * sqrt));
            round = Math.round(sqrt);
        } else {
            float f9 = -this.mFrom.right;
            float f10 = this.mUX;
            float f11 = f10 * f10;
            float f12 = (f9 * 2.0f * 0.5f) + f11;
            if (f12 >= 0.0f) {
                this.mAX = 0.5f;
                f4 = f12;
            } else {
                this.mAX = f11 / ((-f9) * 2.0f);
            }
            double sqrt2 = ((-f10) - Math.sqrt(f4)) / this.mAX;
            this.mAY = (float) ((((this.mIconRect.exactCenterY() + (-this.mFrom.centerY())) - (this.mUY * sqrt2)) * 2.0d) / (sqrt2 * sqrt2));
            round = Math.round(sqrt2);
        }
        int i4 = (int) round;
        this.mDuration = i4;
        float f13 = i4;
        final int i5 = i4 + 300;
        this.mAnimationTimeFraction = f13 / i5;
        final long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        TimeInterpolator timeInterpolator = new TimeInterpolator() { // from class: com.android.launcher3.util.FlingAnimation.1
            private int mCount = -1;
            private float mOffset = 0.0f;

            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f14) {
                int i6 = this.mCount;
                if (i6 < 0) {
                    this.mCount = i6 + 1;
                } else if (i6 == 0) {
                    this.mOffset = Math.min(0.5f, ((float) (AnimationUtils.currentAnimationTimeMillis() - currentAnimationTimeMillis)) / i5);
                    this.mCount++;
                }
                return Math.min(1.0f, this.mOffset + f14);
            }
        };
        this.mDropTarget.onDrop(this.mDragObject, this.mDragOptions);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setDuration(i5).setInterpolator(timeInterpolator);
        ofFloat.addUpdateListener(this);
        ofFloat.addListener(AnimatorListeners.forEndCallback(new Runnable() { // from class: com.android.launcher3.util.k
            @Override // java.lang.Runnable
            public final void run() {
                FlingAnimation.a(FlingAnimation.this);
            }
        }));
        this.mDragLayer.playDropAnimation(this.mDragObject.dragView, ofFloat, 0);
    }
}
