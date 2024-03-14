package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import android.view.ViewDebug;
import com.android.launcher3.icons.ShadowGenerator;
/* loaded from: classes.dex */
public final class DotRenderer {
    private final Bitmap mBackgroundWithShadow;
    private final float mBitmapOffset;
    private final Paint mCirclePaint = new Paint(3);
    private final float mCircleRadius;
    private final float[] mLeftDotPosition;
    private final float[] mRightDotPosition;

    /* loaded from: classes.dex */
    public final class DrawParams {
        @ViewDebug.ExportedProperty(category = "notification dot", formatToHexString = true)
        public int appColor;
        @ViewDebug.ExportedProperty(category = "notification dot", formatToHexString = true)
        public int dotColor;
        @ViewDebug.ExportedProperty(category = "notification dot")
        public Rect iconBounds = new Rect();
        @ViewDebug.ExportedProperty(category = "notification dot")
        public float scale;
    }

    public DotRenderer(int i4, Path path) {
        Bitmap createBitmap;
        int round = Math.round(i4 * 0.228f);
        round = round <= 0 ? 1 : round;
        ShadowGenerator.Builder builder = new ShadowGenerator.Builder(0);
        builder.ambientShadowAlpha = 88;
        float f4 = round;
        float f5 = f4 * 1.0f;
        float f6 = f5 / 24.0f;
        builder.shadowBlur = f6;
        builder.keyShadowDistance = f5 / 16.0f;
        float f7 = f4 / 2.0f;
        builder.radius = f7;
        int max = Math.max(Math.round(f6 + f7), Math.round(builder.radius + builder.shadowBlur + builder.keyShadowDistance));
        RectF rectF = builder.bounds;
        rectF.set(0.0f, 0.0f, f4, f4);
        float f8 = max - f7;
        rectF.offsetTo(f8, f8);
        int i5 = max * 2;
        d dVar = GraphicsUtils.sOnNewBitmapRunnable;
        Picture picture = new Picture();
        builder.drawShadow(picture.beginRecording(i5, i5));
        picture.endRecording();
        this.mBackgroundWithShadow = Bitmap.createBitmap(picture);
        this.mCircleRadius = builder.radius;
        this.mBitmapOffset = (-createBitmap.getHeight()) * 0.5f;
        float f9 = 100;
        this.mLeftDotPosition = getPathPoint(path, f9, -1.0f);
        this.mRightDotPosition = getPathPoint(path, f9, 1.0f);
    }

    private static float[] getPathPoint(Path path, float f4, float f5) {
        float f6 = f4 / 2.0f;
        float f7 = (f5 * f6) + f6;
        Path path2 = new Path();
        path2.moveTo(f6, f6);
        path2.lineTo((f5 * 1.0f) + f7, 0.0f);
        path2.lineTo(f7, -1.0f);
        path2.close();
        path2.op(path, Path.Op.INTERSECT);
        new PathMeasure(path2, false).getPosTan(0.0f, r3, null);
        float[] fArr = {fArr[0] / f4, fArr[1] / f4};
        return fArr;
    }

    public final void draw(Canvas canvas, DrawParams drawParams) {
        if (drawParams == null) {
            Log.e("DotRenderer", "Invalid null argument(s) passed in call to draw.");
            return;
        }
        canvas.save();
        Rect rect = drawParams.iconBounds;
        float[] fArr = this.mRightDotPosition;
        float width = (rect.width() * fArr[0]) + rect.left;
        float height = (rect.height() * fArr[1]) + rect.top;
        Rect clipBounds = canvas.getClipBounds();
        float f4 = this.mBitmapOffset;
        canvas.translate(width + Math.min(0.0f, clipBounds.right - (width - f4)), height + Math.max(0.0f, clipBounds.top - (height + f4)));
        float f5 = drawParams.scale;
        canvas.scale(f5, f5);
        Paint paint = this.mCirclePaint;
        paint.setColor(-16777216);
        canvas.drawBitmap(this.mBackgroundWithShadow, f4, f4, paint);
        paint.setColor(drawParams.dotColor);
        canvas.drawCircle(0.0f, 0.0f, this.mCircleRadius, paint);
        canvas.restore();
    }
}
