package com.android.launcher3.icons;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
/* loaded from: classes.dex */
public class RoundDrawableWrapper extends DrawableWrapper {
    private final Path mClipPath;
    private final float mRoundedCornersRadius;
    private final RectF mTempRect;

    public RoundDrawableWrapper(Drawable drawable, float f4) {
        super(drawable);
        this.mTempRect = new RectF();
        this.mClipPath = new Path();
        this.mRoundedCornersRadius = f4;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int save = canvas.save();
        canvas.clipPath(this.mClipPath);
        super.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.mTempRect.set(getBounds());
        this.mClipPath.reset();
        Path path = this.mClipPath;
        RectF rectF = this.mTempRect;
        float f4 = this.mRoundedCornersRadius;
        path.addRoundRect(rectF, f4, f4, Path.Direction.CCW);
        super.onBoundsChange(rect);
    }
}
