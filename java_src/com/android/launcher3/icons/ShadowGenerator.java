package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
/* loaded from: classes.dex */
public final class ShadowGenerator {
    private final BlurMaskFilter mDefaultBlurMaskFilter;
    private final int mIconSize;
    private final Paint mBlurPaint = new Paint(3);
    private final Paint mDrawPaint = new Paint(3);

    /* loaded from: classes.dex */
    public final class Builder {
        public final int color;
        public float keyShadowDistance;
        public float radius;
        public float shadowBlur;
        public final RectF bounds = new RectF();
        public int ambientShadowAlpha = 25;
        public int keyShadowAlpha = 7;

        public Builder(int i4) {
            this.color = i4;
        }

        public final void drawShadow(Canvas canvas) {
            Paint paint = new Paint(3);
            int i4 = this.color;
            paint.setColor(i4);
            paint.setShadowLayer(this.shadowBlur, 0.0f, this.keyShadowDistance, GraphicsUtils.setColorAlphaBound(-16777216, this.keyShadowAlpha));
            RectF rectF = this.bounds;
            float f4 = this.radius;
            canvas.drawRoundRect(rectF, f4, f4, paint);
            paint.setShadowLayer(this.shadowBlur, 0.0f, 0.0f, GraphicsUtils.setColorAlphaBound(-16777216, this.ambientShadowAlpha));
            float f5 = this.radius;
            canvas.drawRoundRect(rectF, f5, f5, paint);
            if (Color.alpha(i4) < 255) {
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                paint.clearShadowLayer();
                paint.setColor(-16777216);
                float f6 = this.radius;
                canvas.drawRoundRect(rectF, f6, f6, paint);
                paint.setXfermode(null);
                paint.setColor(i4);
                float f7 = this.radius;
                canvas.drawRoundRect(rectF, f7, f7, paint);
            }
        }
    }

    public ShadowGenerator(int i4) {
        this.mIconSize = i4;
        this.mDefaultBlurMaskFilter = new BlurMaskFilter(i4 * 0.035f, BlurMaskFilter.Blur.NORMAL);
    }

    public final void addPathShadow(Path path, Canvas canvas) {
        Paint paint = this.mDrawPaint;
        paint.setMaskFilter(this.mDefaultBlurMaskFilter);
        paint.setAlpha(25);
        canvas.drawPath(path, paint);
        int save = canvas.save();
        paint.setAlpha(7);
        canvas.translate(0.0f, this.mIconSize * 0.020833334f);
        canvas.drawPath(path, paint);
        canvas.restoreToCount(save);
        paint.setMaskFilter(null);
    }

    public final synchronized void drawShadow(Bitmap bitmap, Canvas canvas) {
        int[] iArr = new int[2];
        this.mBlurPaint.setMaskFilter(this.mDefaultBlurMaskFilter);
        Bitmap extractAlpha = bitmap.extractAlpha(this.mBlurPaint, iArr);
        this.mDrawPaint.setAlpha(25);
        canvas.drawBitmap(extractAlpha, iArr[0], iArr[1], this.mDrawPaint);
        this.mDrawPaint.setAlpha(7);
        canvas.drawBitmap(extractAlpha, iArr[0], (this.mIconSize * 0.020833334f) + iArr[1], this.mDrawPaint);
    }
}
