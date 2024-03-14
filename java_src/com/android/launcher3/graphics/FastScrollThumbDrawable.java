package com.android.launcher3.graphics;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public final class FastScrollThumbDrawable extends Drawable {
    private static final Matrix sMatrix = new Matrix();
    private final boolean mIsRtl;
    private final Paint mPaint;
    private final Path mPath = new Path();

    public FastScrollThumbDrawable(Paint paint, boolean z4) {
        this.mPaint = paint;
        this.mIsRtl = z4;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.drawPath(this.mPath, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.mPath.isConvex()) {
            outline.setConvexPath(this.mPath);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.mPath.reset();
        float height = rect.height() * 0.5f;
        float f4 = 2.0f * height;
        float f5 = height / 5.0f;
        Path path = this.mPath;
        int i4 = rect.left;
        int i5 = rect.top;
        path.addRoundRect(i4, i5, i4 + f4, f4 + i5, new float[]{height, height, height, height, f5, f5, height, height}, Path.Direction.CCW);
        Matrix matrix = sMatrix;
        matrix.setRotate(-45.0f, rect.left + height, rect.top + height);
        if (this.mIsRtl) {
            matrix.postTranslate(rect.width(), 0.0f);
            matrix.postScale(-1.0f, 1.0f, rect.width(), 0.0f);
        }
        this.mPath.transform(matrix);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
