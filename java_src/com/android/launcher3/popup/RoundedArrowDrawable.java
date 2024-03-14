package com.android.launcher3.popup;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public final class RoundedArrowDrawable extends Drawable {
    private final Paint mPaint;
    private final Path mPath;

    public RoundedArrowDrawable(float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, boolean z4, boolean z5, int i4) {
        Path path = new Path();
        this.mPath = path;
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setColor(i4);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        addDownPointingRoundedTriangleToPath(f4, f5, f6, path);
        Path path2 = new Path();
        path2.addRoundRect(0.0f, 0.0f, f8, f9, f7, f7, Path.Direction.CW);
        path2.offset(-f10, ((-f9) + f11) - 0.5f);
        path.op(path2, Path.Op.DIFFERENCE);
        Matrix matrix = new Matrix();
        matrix.setScale(z5 ? 1.0f : -1.0f, z4 ? -1.0f : 1.0f, f4 * 0.5f, f5 * 0.5f);
        path.transform(matrix);
    }

    private static void addDownPointingRoundedTriangleToPath(float f4, float f5, float f6, Path path) {
        float f7 = f4 / (f5 * 2.0f);
        double d4 = f5;
        double atan = (float) Math.atan(f7);
        float sin = (float) (d4 - (f6 / Math.sin(atan)));
        double d5 = f6 / f7;
        float cos = (float) (d4 - (Math.cos(atan) * d5));
        float f8 = f4 / 2.0f;
        float degrees = (float) Math.toDegrees(atan);
        path.reset();
        path.moveTo(0.0f, 0.0f);
        path.lineTo(f4, 0.0f);
        path.lineTo(((float) (Math.sin(atan) * d5)) + f8, cos);
        path.arcTo(f8 - f6, sin - f6, f8 + f6, sin + f6, degrees, 180.0f - (2.0f * degrees), false);
        path.lineTo(0.0f, 0.0f);
        path.close();
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
        outline.setPath(this.mPath);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
        this.mPaint.setAlpha(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public RoundedArrowDrawable(float f4, float f5, float f6, boolean z4, int i4) {
        Path path = new Path();
        this.mPath = path;
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setColor(i4);
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        addDownPointingRoundedTriangleToPath(f4, f5, f6, path);
        Matrix matrix = new Matrix();
        matrix.setRotate(z4 ? 90.0f : -90.0f, f4 * 0.5f, f5 * 0.5f);
        path.transform(matrix);
    }
}
