package com.android.quickstep.views;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes.dex */
public class FloatingTaskThumbnailView extends View {
    private Bitmap mBitmap;
    private BitmapShader mBitmapShader;
    private final Matrix mMatrix;
    private final Paint mPaint;

    public FloatingTaskThumbnailView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.mBitmap == null) {
            return;
        }
        float measuredWidth = (getMeasuredWidth() * 1.0f) / this.mBitmap.getWidth();
        this.mMatrix.reset();
        this.mMatrix.postScale(measuredWidth, measuredWidth);
        this.mBitmapShader.setLocalMatrix(this.mMatrix);
        ((FloatingTaskView) getParent()).drawRoundedRect(canvas, this.mPaint);
    }

    public void setThumbnail(Bitmap bitmap) {
        this.mBitmap = bitmap;
        if (bitmap != null) {
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
            this.mBitmapShader = bitmapShader;
            this.mPaint.setShader(bitmapShader);
        }
    }

    public FloatingTaskThumbnailView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FloatingTaskThumbnailView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mPaint = new Paint(1);
        this.mMatrix = new Matrix();
    }
}
