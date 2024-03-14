package com.android.launcher3.pageindicators;

import Q0.a;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.util.IntProperty;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewOutlineProvider;
import android.view.animation.OvershootInterpolator;
import com.android.launcher3.Insettable;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.pageindicators.PageIndicatorDots;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class PageIndicatorDots extends View implements Insettable, PageIndicator {
    private static final FloatProperty CURRENT_POSITION;
    private static final int DOT_GAP_FACTOR;
    private static final IntProperty PAGINATION_ALPHA;
    private static final int PAGINATION_FADE_DELAY = ViewConfiguration.getScrollDefaultDelay();
    private static final RectF sTempRect;
    private int mActivePage;
    private ObjectAnimator mAlphaAnimator;
    private ObjectAnimator mAnimator;
    private boolean mAreScreensBinding;
    private final float mCircleGap;
    private float mCurrentPosition;
    private final Handler mDelayedPaginationFadeHandler;
    private final float mDotRadius;
    private float[] mEntryAnimationRadiusFactors;
    private float mFinalPosition;
    private final a mHidePaginationRunnable;
    private final boolean mIsRtl;
    private int mNumPages;
    private Paint mPaginationPaint;
    private boolean mShouldAutoHide;
    private int mToAlpha;
    private int mTotalScroll;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.pageindicators.PageIndicatorDots$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends AnimatorListenerAdapter {

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f4919d;
        final /* synthetic */ PageIndicatorDots this$0;

        public /* synthetic */ AnonymousClass3(PageIndicatorDots pageIndicatorDots, int i4) {
            this.f4919d = i4;
            this.this$0 = pageIndicatorDots;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            switch (this.f4919d) {
                case 0:
                    this.this$0.mAlphaAnimator = null;
                    return;
                default:
                    this.this$0.mEntryAnimationRadiusFactors = null;
                    this.this$0.invalidateOutline();
                    this.this$0.invalidate();
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class AnimationCycleListener extends AnimatorListenerAdapter {
        private boolean mCancelled = false;

        public AnimationCycleListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.mCancelled = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.mCancelled) {
                return;
            }
            if (PageIndicatorDots.this.mShouldAutoHide && FeatureFlags.SHOW_DOT_PAGINATION.get()) {
                PageIndicatorDots.this.hideAfterDelay();
            }
            PageIndicatorDots.this.mAnimator = null;
            PageIndicatorDots pageIndicatorDots = PageIndicatorDots.this;
            pageIndicatorDots.animateToPosition(pageIndicatorDots.mFinalPosition);
        }
    }

    /* loaded from: classes.dex */
    final class MyOutlineProver extends ViewOutlineProvider {
        public MyOutlineProver() {
        }

        @Override // android.view.ViewOutlineProvider
        public final void getOutline(View view, Outline outline) {
            if (PageIndicatorDots.this.mEntryAnimationRadiusFactors == null) {
                RectF activeRect = PageIndicatorDots.this.getActiveRect();
                outline.setRoundRect((int) activeRect.left, (int) activeRect.top, (int) activeRect.right, (int) activeRect.bottom, PageIndicatorDots.this.mDotRadius);
            }
        }
    }

    static {
        DOT_GAP_FACTOR = FeatureFlags.SHOW_DOT_PAGINATION.get() ? 4 : 3;
        sTempRect = new RectF();
        CURRENT_POSITION = new FloatProperty() { // from class: com.android.launcher3.pageindicators.PageIndicatorDots.1
            @Override // android.util.Property
            public final Float get(Object obj) {
                return Float.valueOf(((PageIndicatorDots) obj).mCurrentPosition);
            }

            @Override // android.util.FloatProperty
            public final void setValue(Object obj, float f4) {
                PageIndicatorDots pageIndicatorDots = (PageIndicatorDots) obj;
                pageIndicatorDots.mCurrentPosition = f4;
                pageIndicatorDots.invalidate();
                pageIndicatorDots.invalidateOutline();
            }
        };
        PAGINATION_ALPHA = new IntProperty() { // from class: com.android.launcher3.pageindicators.PageIndicatorDots.2
            @Override // android.util.Property
            public final Integer get(Object obj) {
                return Integer.valueOf(((PageIndicatorDots) obj).mPaginationPaint.getAlpha());
            }

            @Override // android.util.IntProperty
            public final void setValue(Object obj, int i4) {
                PageIndicatorDots pageIndicatorDots = (PageIndicatorDots) obj;
                pageIndicatorDots.mPaginationPaint.setAlpha(i4);
                pageIndicatorDots.invalidate();
            }
        };
    }

    public PageIndicatorDots(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animatePaginationToAlpha(int i4) {
        if (i4 == this.mToAlpha) {
            return;
        }
        ObjectAnimator objectAnimator = this.mAlphaAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this, PAGINATION_ALPHA, i4);
        this.mAlphaAnimator = ofInt;
        ofInt.setDuration(i4 < this.mToAlpha ? 167L : 83L);
        this.mAlphaAnimator.addListener(new AnonymousClass3(this, 0));
        this.mAlphaAnimator.start();
        this.mToAlpha = i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateToPosition(float f4) {
        this.mFinalPosition = f4;
        if (Math.abs(this.mCurrentPosition - f4) < 0.1f) {
            this.mCurrentPosition = this.mFinalPosition;
        }
        if (this.mAnimator != null || Float.compare(this.mCurrentPosition, this.mFinalPosition) == 0) {
            return;
        }
        float f5 = this.mCurrentPosition;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, CURRENT_POSITION, f5 > this.mFinalPosition ? f5 - 0.5f : f5 + 0.5f);
        this.mAnimator = ofFloat;
        ofFloat.addListener(new AnimationCycleListener());
        this.mAnimator.setDuration(150L);
        this.mAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getActiveRect() {
        float f4 = this.mCurrentPosition;
        float f5 = (int) f4;
        float f6 = f4 - f5;
        float width = ((getWidth() / 2.0f) - (((this.mNumPages - 1.0f) / 2.0f) * this.mCircleGap)) - this.mDotRadius;
        RectF rectF = sTempRect;
        rectF.top = (getHeight() * 0.5f) - this.mDotRadius;
        rectF.bottom = (getHeight() * 0.5f) + this.mDotRadius;
        float f7 = this.mCircleGap;
        float f8 = (f5 * f7) + width;
        rectF.left = f8;
        float f9 = (this.mDotRadius * 2.0f) + f8;
        rectF.right = f9;
        if (f6 < 0.5f) {
            rectF.right = (f6 * f7 * 2.0f) + f9;
        } else {
            rectF.right = f9 + f7;
            rectF.left = ((f6 - 0.5f) * f7 * 2.0f) + f8;
        }
        if (this.mIsRtl) {
            float width2 = rectF.width();
            float width3 = getWidth() - rectF.left;
            rectF.right = width3;
            rectF.left = width3 - width2;
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideAfterDelay() {
        this.mDelayedPaginationFadeHandler.removeCallbacksAndMessages(null);
        this.mDelayedPaginationFadeHandler.postDelayed(this.mHidePaginationRunnable, PAGINATION_FADE_DELAY);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.mNumPages < 2) {
            return;
        }
        int i4 = 0;
        if (this.mShouldAutoHide && this.mTotalScroll == 0) {
            this.mPaginationPaint.setAlpha(0);
            return;
        }
        float f4 = this.mCircleGap;
        float f5 = this.mCircleGap;
        float f6 = this.mDotRadius;
        float width = (((getWidth() / 2.0f) - (((this.mNumPages - 1.0f) / 2.0f) * f5)) - f6) + f6;
        float height = getHeight() / 2;
        if (this.mEntryAnimationRadiusFactors != null) {
            if (this.mIsRtl) {
                width = getWidth() - width;
                f4 = -f4;
            }
            while (i4 < this.mEntryAnimationRadiusFactors.length) {
                this.mPaginationPaint.setAlpha(i4 == this.mActivePage ? 255 : 128);
                canvas.drawCircle(width, height, this.mDotRadius * this.mEntryAnimationRadiusFactors[i4], this.mPaginationPaint);
                width += f4;
                i4++;
            }
            return;
        }
        int alpha = this.mPaginationPaint.getAlpha();
        this.mPaginationPaint.setAlpha(FeatureFlags.SHOW_DOT_PAGINATION.get() ? (int) (alpha * 0.5f) : 128);
        while (i4 < this.mNumPages) {
            canvas.drawCircle(width, height, this.mDotRadius, this.mPaginationPaint);
            width += f4;
            i4++;
        }
        this.mPaginationPaint.setAlpha(FeatureFlags.SHOW_DOT_PAGINATION.get() ? alpha : 255);
        RectF activeRect = getActiveRect();
        float f7 = this.mDotRadius;
        canvas.drawRoundRect(activeRect, f7, f7, this.mPaginationPaint);
    }

    @Override // android.view.View
    public final void onMeasure(int i4, int i5) {
        setMeasuredDimension(View.MeasureSpec.getMode(i4) == 1073741824 ? View.MeasureSpec.getSize(i4) : (int) (((this.mNumPages * 3) + 2) * this.mDotRadius), View.MeasureSpec.getMode(i5) == 1073741824 ? View.MeasureSpec.getSize(i5) : (int) (this.mDotRadius * 4.0f));
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void pauseAnimations() {
        ObjectAnimator objectAnimator = this.mAlphaAnimator;
        if (objectAnimator != null) {
            objectAnimator.pause();
        }
    }

    public final void playEntryAnimation() {
        int length = this.mEntryAnimationRadiusFactors.length;
        if (length == 0) {
            this.mEntryAnimationRadiusFactors = null;
            invalidate();
            return;
        }
        OvershootInterpolator overshootInterpolator = new OvershootInterpolator(4.9f);
        AnimatorSet animatorSet = new AnimatorSet();
        for (final int i4 = 0; i4 < length; i4++) {
            ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(400L);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.pageindicators.PageIndicatorDots.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PageIndicatorDots.this.mEntryAnimationRadiusFactors[i4] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    PageIndicatorDots.this.invalidate();
                }
            });
            duration.setInterpolator(overshootInterpolator);
            duration.setStartDelay((i4 * 150) + 300);
            animatorSet.play(duration);
        }
        animatorSet.addListener(new AnonymousClass3(this, 1));
        animatorSet.start();
    }

    public final void prepareEntryAnimation() {
        this.mEntryAnimationRadiusFactors = new float[this.mNumPages];
        invalidate();
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setActiveMarker(int i4) {
        if (this.mActivePage != i4) {
            this.mActivePage = i4;
        }
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setAreScreensBinding(boolean z4) {
        if (this.mAreScreensBinding && !z4) {
            CURRENT_POSITION.set((FloatProperty) this, Float.valueOf(this.mActivePage));
        }
        this.mAreScreensBinding = z4;
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setMarkersCount(int i4) {
        this.mNumPages = i4;
        requestLayout();
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setPaintColor(int i4) {
        this.mPaginationPaint.setColor(i4);
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setScroll(int i4, int i5) {
        if (FeatureFlags.SHOW_DOT_PAGINATION.get() && i4 == 0 && i5 == 0) {
            CURRENT_POSITION.set((FloatProperty) this, Float.valueOf(this.mActivePage));
        } else if (this.mNumPages > 1 && !this.mAreScreensBinding) {
            if (this.mShouldAutoHide) {
                animatePaginationToAlpha(255);
            }
            if (this.mIsRtl) {
                i4 = i5 - i4;
            }
            this.mTotalScroll = i5;
            int i6 = i5 / (this.mNumPages - 1);
            int i7 = i6 == 0 ? 0 : i4 / i6;
            int i8 = i7 * i6;
            int i9 = i8 + i6;
            float f4 = i6 * 0.1f;
            float f5 = i4;
            if (f5 < i8 + f4) {
                animateToPosition(i7);
                if (this.mShouldAutoHide) {
                    hideAfterDelay();
                }
            } else if (f5 > i9 - f4) {
                animateToPosition(i7 + 1);
                if (this.mShouldAutoHide) {
                    hideAfterDelay();
                }
            } else {
                animateToPosition(i7 + 0.5f);
                if (this.mShouldAutoHide) {
                    this.mDelayedPaginationFadeHandler.removeCallbacksAndMessages(null);
                }
            }
        }
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setShouldAutoHide(boolean z4) {
        this.mShouldAutoHide = z4 && FeatureFlags.SHOW_DOT_PAGINATION.get();
        if (z4 && this.mPaginationPaint.getAlpha() > 0) {
            hideAfterDelay();
        } else if (z4) {
        } else {
            this.mDelayedPaginationFadeHandler.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void skipAnimationsToEnd() {
        ObjectAnimator objectAnimator = this.mAlphaAnimator;
        if (objectAnimator != null) {
            objectAnimator.end();
        }
    }

    public final void stopAllAnimations() {
        ObjectAnimator objectAnimator = this.mAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.mAnimator = null;
        }
        float f4 = this.mActivePage;
        this.mFinalPosition = f4;
        CURRENT_POSITION.set((FloatProperty) this, Float.valueOf(f4));
    }

    public PageIndicatorDots(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [Q0.a] */
    public PageIndicatorDots(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        float dimension;
        this.mDelayedPaginationFadeHandler = new Handler(Looper.getMainLooper());
        this.mHidePaginationRunnable = new Runnable() { // from class: Q0.a
            @Override // java.lang.Runnable
            public final void run() {
                PageIndicatorDots.this.animatePaginationToAlpha(0);
            }
        };
        Paint paint = new Paint(1);
        this.mPaginationPaint = paint;
        paint.setStyle(Paint.Style.FILL);
        this.mPaginationPaint.setColor(GraphicsUtils.getAttrColor(R.attr.folderPaginationColor, context));
        if (FeatureFlags.SHOW_DOT_PAGINATION.get()) {
            dimension = getResources().getDimension(R.dimen.page_indicator_dot_size_v2);
        } else {
            dimension = getResources().getDimension(R.dimen.page_indicator_dot_size);
        }
        float f4 = dimension / 2.0f;
        this.mDotRadius = f4;
        this.mCircleGap = DOT_GAP_FACTOR * f4;
        setOutlineProvider(new MyOutlineProver());
        this.mIsRtl = Utilities.isRtl(getResources());
    }
}
