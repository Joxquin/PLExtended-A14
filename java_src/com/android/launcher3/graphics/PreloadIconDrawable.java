package com.android.launcher3.graphics;

import D.p;
import K0.f;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.util.Property;
import com.android.launcher3.RunnableC0345j;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.ThemedIconDrawable;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.systemui.shared.R;
import y0.e;
/* loaded from: classes.dex */
public final class PreloadIconDrawable extends FastBitmapDrawable {
    private static final Property INTERNAL_STATE = new Property(Float.TYPE) { // from class: com.android.launcher3.graphics.PreloadIconDrawable.1
        @Override // android.util.Property
        public final Object get(Object obj) {
            return Float.valueOf(((PreloadIconDrawable) obj).mInternalStateProgress);
        }

        @Override // android.util.Property
        public final void set(Object obj, Object obj2) {
            ((PreloadIconDrawable) obj).setInternalProgress(((Float) obj2).floatValue());
        }
    };
    private static final float PROGRESS_STROKE_SCALE;
    private static final float SMALL_SCALE;
    private ObjectAnimator mCurrentAnim;
    private final AnimatedFloat mIconScaleMultiplier;
    private final int mIndicatorColor;
    private float mInternalStateProgress;
    private final f mInvalidateRunnable;
    private final boolean mIsDarkMode;
    private boolean mIsStartable;
    private final ItemInfoWithIcon mItem;
    private final PathMeasure mPathMeasure;
    private int mPlateColor;
    private int mProgressColor;
    private final Paint mProgressPaint;
    private boolean mRanFinishAnimation;
    private final Path mScaledProgressPath;
    private final Path mScaledTrackPath;
    private final Path mShapePath;
    private final int mSystemAccentColor;
    private final int mSystemBackgroundColor;
    private final Matrix mTmpMatrix;
    private int mTrackColor;
    private float mTrackLength;

    /* loaded from: classes.dex */
    public final class PreloadIconConstantState extends FastBitmapDrawable.FastBitmapConstantState {
        protected final int mIndicatorColor;
        protected final ItemInfoWithIcon mInfo;
        protected final boolean mIsDarkMode;
        protected final int[] mPreloadColors;
        private final Path mShapePath;

        public PreloadIconConstantState(Bitmap bitmap, int i4, ItemInfoWithIcon itemInfoWithIcon, int i5, int[] iArr, boolean z4, Path path) {
            super(bitmap, i4);
            this.mInfo = itemInfoWithIcon;
            this.mIndicatorColor = i5;
            this.mPreloadColors = iArr;
            this.mIsDarkMode = z4;
            itemInfoWithIcon.getClass();
            this.mShapePath = path;
        }

        @Override // com.android.launcher3.icons.FastBitmapDrawable.FastBitmapConstantState
        public final FastBitmapDrawable createDrawable() {
            return new PreloadIconDrawable(this.mInfo, this.mIndicatorColor, this.mPreloadColors, this.mIsDarkMode, this.mShapePath);
        }
    }

    static {
        SMALL_SCALE = FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V3.get() ? 0.8f : 0.7f;
        PROGRESS_STROKE_SCALE = FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V2.get() ? 0.055f : 0.075f;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Runnable, K0.f] */
    public PreloadIconDrawable(ItemInfoWithIcon itemInfoWithIcon, int i4, int[] iArr, boolean z4, Path path) {
        super(itemInfoWithIcon.bitmap);
        float f4;
        boolean isAppStartable;
        this.mTmpMatrix = new Matrix();
        this.mPathMeasure = new PathMeasure();
        ?? r02 = new Runnable() { // from class: K0.f
            @Override // java.lang.Runnable
            public final void run() {
                PreloadIconDrawable.this.invalidateSelf();
            }
        };
        this.mInvalidateRunnable = r02;
        AnimatedFloat animatedFloat = new AnimatedFloat(r02);
        this.mIconScaleMultiplier = animatedFloat;
        this.mItem = itemInfoWithIcon;
        this.mShapePath = path;
        this.mScaledTrackPath = new Path();
        this.mScaledProgressPath = new Path();
        Paint paint = new Paint(3);
        this.mProgressPaint = paint;
        paint.setStrokeCap(Paint.Cap.ROUND);
        if (FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V3.get()) {
            paint.setAlpha(255);
        }
        this.mIndicatorColor = i4;
        int i5 = itemInfoWithIcon.bitmap.color;
        ThreadLocal threadLocal = E.a.f327a;
        D.a.b(i5, p.f281k, null, r11);
        float b4 = D.b.b(i5);
        float[] fArr = {0.0f, 0.0f, b4};
        this.mProgressColor = D.a.d(fArr[0], fArr[1], z4 ? Math.max(b4, 55.0f) : Math.min(b4, 40.0f));
        this.mTrackColor = D.a.d(fArr[0], 16.0f, z4 ? 30.0f : 90.0f);
        float f5 = fArr[0];
        float f6 = z4 ? 36.0f : 24.0f;
        if (z4) {
            f4 = this instanceof ThemedIconDrawable ? 10 : 20;
        } else {
            f4 = 80.0f;
        }
        this.mPlateColor = D.a.d(f5, f6, f4);
        this.mSystemAccentColor = iArr[0];
        this.mSystemBackgroundColor = iArr[1];
        this.mIsDarkMode = z4;
        animatedFloat.updateValue(itemInfoWithIcon.getProgressLevel() == 0 ? 0.0f : 1.0f);
        setLevel(itemInfoWithIcon.getProgressLevel());
        if (FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V2.get() || this.mIsStartable == (isAppStartable = itemInfoWithIcon.isAppStartable())) {
            return;
        }
        this.mIsStartable = isAppStartable;
        setIsDisabled(!isAppStartable);
    }

    public static PreloadIconDrawable newPendingIcon(Context context, ItemInfoWithIcon itemInfoWithIcon) {
        int HSVToColor;
        float[] fArr = new float[3];
        Color.colorToHSV(itemInfoWithIcon.bitmap.color, fArr);
        if (fArr[1] < 0.2f) {
            HSVToColor = GraphicsUtils.getAttrColor(16843829, context);
        } else {
            fArr[2] = Math.max(0.6f, fArr[2]);
            HSVToColor = Color.HSVToColor(fArr);
        }
        return new PreloadIconDrawable(itemInfoWithIcon, HSVToColor, new int[]{GraphicsUtils.getAttrColor(R.attr.preloadIconAccentColor, context), GraphicsUtils.getAttrColor(R.attr.preloadIconBackgroundColor, context)}, Utilities.isDarkTheme(context), GraphicsUtils.getShapePath(100, context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInternalProgress(float f4) {
        FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V2;
        if (booleanFlag.get() && f4 > 0.0f && this.mInternalStateProgress == 0.0f) {
            ObjectAnimator animateToValue = this.mIconScaleMultiplier.animateToValue(1.0f);
            animateToValue.setDuration(500L);
            animateToValue.setInterpolator(e.f12937a);
            animateToValue.start();
        }
        this.mInternalStateProgress = f4;
        if (f4 <= 0.0f) {
            if (!booleanFlag.get()) {
                this.mScaledTrackPath.reset();
            }
            this.mIconScaleMultiplier.updateValue(0.0f);
        } else {
            this.mPathMeasure.getSegment(0.0f, Math.min(f4, 1.0f) * this.mTrackLength, this.mScaledProgressPath, true);
            if (f4 > 1.0f && booleanFlag.get()) {
                this.mIconScaleMultiplier.updateValue(Utilities.mapBoundToRange(f4 - 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, e.f12937a));
            }
        }
        invalidateSelf();
    }

    private void updateInternalState(float f4, boolean z4, RunnableC0345j runnableC0345j) {
        ObjectAnimator objectAnimator = this.mCurrentAnim;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.mCurrentAnim = null;
        }
        if (!(f4 >= this.mInternalStateProgress && getBounds().width() > 0) || this.mRanFinishAnimation) {
            setInternalProgress(f4);
            if (!z4 || runnableC0345j == null) {
                return;
            }
            runnableC0345j.run();
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, INTERNAL_STATE, f4);
        this.mCurrentAnim = ofFloat;
        ofFloat.setDuration((f4 - this.mInternalStateProgress) * 500.0f);
        this.mCurrentAnim.setInterpolator(e.f12949m);
        if (z4) {
            if (runnableC0345j != null) {
                this.mCurrentAnim.addListener(AnimatorListeners.forEndCallback(runnableC0345j));
            }
            this.mCurrentAnim.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.graphics.PreloadIconDrawable.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    PreloadIconDrawable.this.mRanFinishAnimation = true;
                }
            });
        }
        this.mCurrentAnim.start();
    }

    @Override // com.android.launcher3.icons.FastBitmapDrawable
    public final void drawInternal(Canvas canvas, Rect rect) {
        if (this.mRanFinishAnimation) {
            super.drawInternal(canvas, rect);
            return;
        }
        if (this.mInternalStateProgress > 0.0f) {
            FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V3;
            if (booleanFlag.get() || !FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V2.get()) {
                this.mProgressPaint.setStyle(booleanFlag.get() ? Paint.Style.FILL : Paint.Style.FILL_AND_STROKE);
                this.mProgressPaint.setColor(booleanFlag.get() ? this.mPlateColor : this.mSystemBackgroundColor);
                canvas.drawPath(this.mScaledTrackPath, this.mProgressPaint);
            }
        }
        FeatureFlags.BooleanFlag booleanFlag2 = FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V2;
        if (!booleanFlag2.get() || this.mInternalStateProgress > 0.0f) {
            this.mProgressPaint.setStyle(Paint.Style.STROKE);
            Paint paint = this.mProgressPaint;
            FeatureFlags.BooleanFlag booleanFlag3 = FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V3;
            paint.setColor(booleanFlag3.get() ? this.mTrackColor : this.mSystemAccentColor);
            if (!booleanFlag3.get()) {
                this.mProgressPaint.setAlpha(68);
            }
            canvas.drawPath(this.mScaledTrackPath, this.mProgressPaint);
            this.mProgressPaint.setAlpha(255);
            if (booleanFlag3.get()) {
                this.mProgressPaint.setColor(this.mProgressColor);
            }
            canvas.drawPath(this.mScaledProgressPath, this.mProgressPaint);
        }
        int save = canvas.save();
        float f4 = booleanFlag2.get() ? 1.0f - ((1.0f - SMALL_SCALE) * this.mIconScaleMultiplier.value) : SMALL_SCALE;
        canvas.scale(f4, f4, rect.exactCenterX(), rect.exactCenterY());
        super.drawInternal(canvas, rect);
        canvas.restoreToCount(save);
    }

    public final boolean hasNotCompleted() {
        return !this.mRanFinishAnimation;
    }

    public final void maybePerformFinishedAnimation(PreloadIconDrawable preloadIconDrawable, RunnableC0345j runnableC0345j) {
        this.mProgressColor = preloadIconDrawable.mProgressColor;
        this.mTrackColor = preloadIconDrawable.mTrackColor;
        this.mPlateColor = preloadIconDrawable.mPlateColor;
        float f4 = preloadIconDrawable.mInternalStateProgress;
        if (f4 >= 1.0f) {
            this.mInternalStateProgress = f4;
        }
        if (this.mInternalStateProgress == 0.0f) {
            this.mInternalStateProgress = 1.0f;
        }
        updateInternalState(2.0f, true, runnableC0345j);
    }

    @Override // com.android.launcher3.icons.FastBitmapDrawable
    public final FastBitmapDrawable.FastBitmapConstantState newConstantState() {
        return new PreloadIconConstantState(this.mBitmap, this.mIconColor, this.mItem, this.mIndicatorColor, new int[]{this.mSystemAccentColor, this.mSystemBackgroundColor}, this.mIsDarkMode, this.mShapePath);
    }

    @Override // com.android.launcher3.icons.FastBitmapDrawable, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        float width = rect.width() * 0.075f;
        float f4 = 2.0f * width;
        this.mTmpMatrix.setScale((rect.width() - f4) / 100.0f, (rect.height() - f4) / 100.0f);
        this.mTmpMatrix.postTranslate(rect.left + width, rect.top + width);
        this.mShapePath.transform(this.mTmpMatrix, this.mScaledTrackPath);
        this.mProgressPaint.setStrokeWidth(PROGRESS_STROKE_SCALE * rect.width());
        this.mPathMeasure.setPath(this.mScaledTrackPath, true);
        this.mTrackLength = this.mPathMeasure.getLength();
        setInternalProgress(this.mInternalStateProgress);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i4) {
        updateInternalState(i4 * 0.01f, false, null);
        return true;
    }

    @Override // com.android.launcher3.icons.FastBitmapDrawable
    public final void updateFilter() {
        if (FeatureFlags.ENABLE_DOWNLOAD_APP_UX_V2.get()) {
            super.updateFilter();
        } else {
            setAlpha(this.mIsDisabled ? 153 : 255);
        }
    }
}
