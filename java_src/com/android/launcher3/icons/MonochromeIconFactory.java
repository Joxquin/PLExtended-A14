package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import com.android.launcher3.icons.BaseIconFactory;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class MonochromeIconFactory extends Drawable {
    private final Bitmap mAlphaBitmap;
    private final Canvas mAlphaCanvas;
    private final int mBitmapSize;
    private final Paint mCopyPaint;
    private final Paint mDrawPaint;
    private final int mEdgePixelLength;
    private final Bitmap mFlatBitmap;
    private final Canvas mFlatCanvas;
    private final byte[] mPixels;
    private final Rect mSrcRect;

    public MonochromeIconFactory(int i4) {
        int round = Math.round(i4 * 2 * (1.0f / ((AdaptiveIconDrawable.getExtraInsetFraction() * 2.0f) + 1.0f)));
        this.mBitmapSize = round;
        this.mPixels = new byte[round * round];
        this.mEdgePixelLength = ((round - i4) * round) / 2;
        Bitmap createBitmap = Bitmap.createBitmap(round, round, Bitmap.Config.ARGB_8888);
        this.mFlatBitmap = createBitmap;
        this.mFlatCanvas = new Canvas(createBitmap);
        Bitmap createBitmap2 = Bitmap.createBitmap(round, round, Bitmap.Config.ALPHA_8);
        this.mAlphaBitmap = createBitmap2;
        this.mAlphaCanvas = new Canvas(createBitmap2);
        Paint paint = new Paint(2);
        this.mDrawPaint = paint;
        paint.setColor(-1);
        this.mSrcRect = new Rect(0, 0, round, round);
        Paint paint2 = new Paint(2);
        this.mCopyPaint = paint2;
        paint2.setBlendMode(BlendMode.SRC);
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        float[] array = colorMatrix.getArray();
        array[17] = 0.3333f;
        array[16] = 0.3333f;
        array[15] = 0.3333f;
        array[19] = 0.0f;
        array[18] = 0.0f;
        paint2.setColorFilter(new ColorMatrixColorFilter(array));
    }

    private void generateMono() {
        int i4;
        byte[] bArr;
        this.mAlphaCanvas.drawBitmap(this.mFlatBitmap, 0.0f, 0.0f, this.mCopyPaint);
        ByteBuffer wrap = ByteBuffer.wrap(this.mPixels);
        wrap.rewind();
        this.mAlphaBitmap.copyPixelsToBuffer(wrap);
        int i5 = 0;
        int i6 = 255;
        int i7 = 0;
        for (byte b4 : this.mPixels) {
            int i8 = b4 & 255;
            i6 = Math.min(i6, i8);
            i7 = Math.max(i7, i8);
        }
        if (i6 >= i7) {
            return;
        }
        float f4 = i7 - i6;
        int i9 = 0;
        int i10 = 0;
        while (true) {
            i4 = this.mEdgePixelLength;
            if (i9 >= i4) {
                break;
            }
            byte[] bArr2 = this.mPixels;
            i10 = i10 + (bArr2[i9] & 255) + (bArr2[(bArr2.length - 1) - i9] & 255);
            i9++;
        }
        boolean z4 = ((((float) i10) / (((float) i4) * 2.0f)) - ((float) i6)) / f4 > 0.5f;
        while (true) {
            if (i5 >= this.mPixels.length) {
                wrap.rewind();
                this.mAlphaBitmap.copyPixelsFromBuffer(wrap);
                return;
            }
            int round = Math.round((((bArr[i5] & 255) - i6) * 255) / f4);
            byte[] bArr3 = this.mPixels;
            if (z4) {
                round = 255 - round;
            }
            bArr3[i5] = (byte) round;
            i5++;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.drawBitmap(this.mAlphaBitmap, this.mSrcRect, getBounds(), this.mDrawPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
        this.mDrawPaint.setAlpha(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.mDrawPaint.setColorFilter(colorFilter);
    }

    public final Drawable wrap(Drawable drawable) {
        if (!(drawable instanceof AdaptiveIconDrawable)) {
            this.mFlatCanvas.drawColor(-1);
            if (drawable != null) {
                int i4 = this.mBitmapSize;
                drawable.setBounds(0, 0, i4, i4);
                drawable.draw(this.mFlatCanvas);
            }
            generateMono();
            return this;
        }
        AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) drawable;
        this.mFlatCanvas.drawColor(-16777216);
        Drawable background = adaptiveIconDrawable.getBackground();
        if (background != null) {
            int i5 = this.mBitmapSize;
            background.setBounds(0, 0, i5, i5);
            background.draw(this.mFlatCanvas);
        }
        Drawable foreground = adaptiveIconDrawable.getForeground();
        if (foreground != null) {
            int i6 = this.mBitmapSize;
            foreground.setBounds(0, 0, i6, i6);
            foreground.draw(this.mFlatCanvas);
        }
        generateMono();
        return new BaseIconFactory.ClippedMonoDrawable(this);
    }
}
