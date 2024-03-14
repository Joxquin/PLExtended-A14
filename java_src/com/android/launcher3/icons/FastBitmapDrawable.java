package com.android.launcher3.icons;

import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.FloatProperty;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
/* loaded from: classes.dex */
public class FastBitmapDrawable extends Drawable implements Drawable.Callback {
    protected static final float HOVERED_SCALE = 1.1f;
    protected static final float PRESSED_SCALE = 1.1f;
    private int mAlpha;
    private Drawable mBadge;
    protected final Bitmap mBitmap;
    private ColorFilter mColorFilter;
    float mDisabledAlpha;
    protected final int mIconColor;
    protected boolean mIsDisabled;
    protected boolean mIsHovered;
    protected boolean mIsPressed;
    protected final Paint mPaint;
    private float mScale;
    protected ObjectAnimator mScaleAnimation;
    private static final Interpolator ACCEL = new AccelerateInterpolator();
    private static final Interpolator DEACCEL = new DecelerateInterpolator();
    private static final Interpolator HOVER_EMPHASIZED_DECELERATE_INTERPOLATOR = new PathInterpolator(0.05f, 0.7f, 0.1f, 1.0f);
    private static boolean sFlagHoverEnabled = false;
    protected static final FloatProperty SCALE = new FloatProperty() { // from class: com.android.launcher3.icons.FastBitmapDrawable.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((FastBitmapDrawable) obj).mScale);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            FastBitmapDrawable fastBitmapDrawable = (FastBitmapDrawable) obj;
            fastBitmapDrawable.mScale = f4;
            fastBitmapDrawable.invalidateSelf();
        }
    };

    /* loaded from: classes.dex */
    public class FastBitmapConstantState extends Drawable.ConstantState {
        private Drawable.ConstantState mBadgeConstantState;
        protected final Bitmap mBitmap;
        protected final int mIconColor;
        protected boolean mIsDisabled;

        public FastBitmapConstantState(Bitmap bitmap, int i4) {
            this.mBitmap = bitmap;
            this.mIconColor = i4;
        }

        public FastBitmapDrawable createDrawable() {
            return new FastBitmapDrawable(this.mBitmap, this.mIconColor);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final FastBitmapDrawable newDrawable() {
            FastBitmapDrawable createDrawable = createDrawable();
            createDrawable.setIsDisabled(this.mIsDisabled);
            Drawable.ConstantState constantState = this.mBadgeConstantState;
            if (constantState != null) {
                createDrawable.setBadge(constantState.newDrawable());
            }
            return createDrawable;
        }
    }

    public FastBitmapDrawable() {
        throw null;
    }

    public FastBitmapDrawable(BitmapInfo bitmapInfo) {
        this(bitmapInfo.icon, bitmapInfo.color);
    }

    public static final int getDisabledColor(int i4) {
        int red = Color.red(i4);
        int min = Math.min(Math.round((((Color.blue(i4) + (Color.green(i4) + red)) / 3) * 0.5f) + 127), 255);
        return Color.rgb(min, min, min);
    }

    public static ColorFilter getDisabledColorFilter() {
        return getDisabledColorFilter(1.0f);
    }

    public static void setBadgeBounds(Drawable drawable, Rect rect) {
        int width = rect.width();
        int i4 = BaseIconFactory.f4655d;
        int i5 = (int) (width * 0.444f);
        int i6 = rect.right;
        int i7 = rect.bottom;
        drawable.setBounds(i6 - i5, i7 - i5, i6, i7);
    }

    public static void setFlagHoverEnabled(boolean z4) {
        sFlagHoverEnabled = z4;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.mScale == 1.0f) {
            drawInternal(canvas, getBounds());
            Drawable drawable = this.mBadge;
            if (drawable != null) {
                drawable.draw(canvas);
                return;
            }
            return;
        }
        int save = canvas.save();
        Rect bounds = getBounds();
        float f4 = this.mScale;
        canvas.scale(f4, f4, bounds.exactCenterX(), bounds.exactCenterY());
        drawInternal(canvas, bounds);
        Drawable drawable2 = this.mBadge;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        canvas.restoreToCount(save);
    }

    public void drawInternal(Canvas canvas, Rect rect) {
        canvas.drawBitmap(this.mBitmap, (Rect) null, rect, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.mAlpha;
    }

    public final float getAnimatedScale() {
        if (this.mScaleAnimation == null) {
            return 1.0f;
        }
        return this.mScale;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.mPaint.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        FastBitmapConstantState newConstantState = newConstantState();
        newConstantState.mIsDisabled = this.mIsDisabled;
        Drawable drawable = this.mBadge;
        if (drawable != null) {
            newConstantState.mBadgeConstantState = drawable.getConstantState();
        }
        return newConstantState;
    }

    public int getIconColor() {
        return E.a.h(GraphicsUtils.setColorAlphaBound(-1, 138), this.mIconColor);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.mBitmap.getHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.mBitmap.getWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumHeight() {
        return getBounds().height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getMinimumWidth() {
        return getBounds().width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        if (drawable == this.mBadge) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    public boolean isThemed() {
        return this instanceof ThemedIconDrawable;
    }

    public FastBitmapConstantState newConstantState() {
        return new FastBitmapConstantState(this.mBitmap, this.mIconColor);
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        Drawable drawable = this.mBadge;
        if (drawable != null) {
            setBadgeBounds(drawable, rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z4;
        int length = iArr.length;
        int i4 = 0;
        boolean z5 = false;
        while (true) {
            if (i4 >= length) {
                z4 = false;
                break;
            }
            int i5 = iArr[i4];
            if (i5 == 16842919) {
                z4 = true;
                break;
            }
            if (sFlagHoverEnabled && i5 == 16843623) {
                z5 = true;
            }
            i4++;
        }
        if (this.mIsPressed == z4 && this.mIsHovered == z5) {
            return false;
        }
        ObjectAnimator objectAnimator = this.mScaleAnimation;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        float f4 = 1.1f;
        if (!z4 && !z5) {
            f4 = 1.0f;
        }
        if (this.mScale != f4) {
            if (isVisible()) {
                boolean z6 = this.mIsPressed;
                Interpolator interpolator = z4 != z6 ? z4 ? ACCEL : DEACCEL : HOVER_EMPHASIZED_DECELERATE_INTERPOLATOR;
                int i6 = z4 != z6 ? 200 : 300;
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, SCALE, f4);
                this.mScaleAnimation = ofFloat;
                ofFloat.setDuration(i6);
                this.mScaleAnimation.setInterpolator(interpolator);
                this.mScaleAnimation.start();
            } else {
                this.mScale = f4;
                invalidateSelf();
            }
        }
        this.mIsPressed = z4;
        this.mIsHovered = z5;
        return true;
    }

    public final void resetScale() {
        ObjectAnimator objectAnimator = this.mScaleAnimation;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.mScaleAnimation = null;
        }
        this.mScale = 1.0f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j4) {
        if (drawable == this.mBadge) {
            scheduleSelf(runnable, j4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
        if (this.mAlpha != i4) {
            this.mAlpha = i4;
            this.mPaint.setAlpha(i4);
            invalidateSelf();
            Drawable drawable = this.mBadge;
            if (drawable != null) {
                drawable.setAlpha(i4);
            }
        }
    }

    public final void setBadge(Drawable drawable) {
        Drawable drawable2 = this.mBadge;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.mBadge = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        Rect bounds = getBounds();
        Drawable drawable3 = this.mBadge;
        if (drawable3 != null) {
            setBadgeBounds(drawable3, bounds);
        }
        updateFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.mColorFilter = colorFilter;
        updateFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z4) {
        this.mPaint.setFilterBitmap(z4);
        this.mPaint.setAntiAlias(z4);
    }

    public final void setIsDisabled(boolean z4) {
        if (this.mIsDisabled != z4) {
            this.mIsDisabled = z4;
            updateFilter();
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public void updateFilter() {
        this.mPaint.setColorFilter(this.mIsDisabled ? getDisabledColorFilter(this.mDisabledAlpha) : this.mColorFilter);
        Drawable drawable = this.mBadge;
        if (drawable != null) {
            drawable.setColorFilter(getColorFilter());
        }
        invalidateSelf();
    }

    public FastBitmapDrawable(Bitmap bitmap, int i4) {
        this.mPaint = new Paint(3);
        this.mDisabledAlpha = 1.0f;
        this.mScale = 1.0f;
        this.mAlpha = 255;
        this.mBitmap = bitmap;
        this.mIconColor = i4;
        setFilterBitmap(true);
    }

    private static ColorFilter getDisabledColorFilter(float f4) {
        ColorMatrix colorMatrix = new ColorMatrix();
        ColorMatrix colorMatrix2 = new ColorMatrix();
        colorMatrix2.setSaturation(0.0f);
        float[] array = colorMatrix.getArray();
        array[0] = 0.5f;
        array[6] = 0.5f;
        array[12] = 0.5f;
        float f5 = 127;
        array[4] = f5;
        array[9] = f5;
        array[14] = f5;
        array[18] = f4;
        colorMatrix2.preConcat(colorMatrix);
        return new ColorMatrixColorFilter(colorMatrix2);
    }
}
