package com.android.launcher3.taskbar.bubbles;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.systemui.shared.R;
import kotlin.jvm.internal.h;
import y0.e;
/* loaded from: classes.dex */
public final class BubbleBarBackground extends Drawable {
    private ShapeDrawable arrowDrawable;
    private float arrowPositionX;
    private final float backgroundHeight;
    private float keyShadowDistance;
    private final Paint paint;
    private final float pointerSize;
    private final float shadowAlpha;
    private float shadowBlur;
    private boolean showingArrow;
    private float width;

    public BubbleBarBackground(TaskbarActivityContext taskbarActivityContext, float f4) {
        this.backgroundHeight = f4;
        Paint paint = new Paint();
        this.paint = paint;
        paint.setColor(taskbarActivityContext.getColor(R.color.taskbar_background));
        paint.setFlags(1);
        paint.setStyle(Paint.Style.FILL);
        Resources resources = taskbarActivityContext.getResources();
        this.shadowBlur = resources.getDimension(R.dimen.transient_taskbar_shadow_blur);
        this.keyShadowDistance = resources.getDimension(R.dimen.transient_taskbar_key_shadow_distance);
        float dimension = resources.getDimension(R.dimen.bubblebar_pointer_size);
        this.pointerSize = dimension;
        this.shadowAlpha = Utilities.isDarkTheme(taskbarActivityContext) ? 51.0f : 25.0f;
        int i4 = A1.b.f79e;
        Path path = new Path();
        path.moveTo(0.0f, dimension);
        path.lineTo(dimension, dimension);
        path.lineTo(dimension / 2.0f, 0.0f);
        path.close();
        ShapeDrawable shapeDrawable = new ShapeDrawable(new A1.b(path, dimension, dimension));
        this.arrowDrawable = shapeDrawable;
        int i5 = (int) dimension;
        shapeDrawable.setBounds(0, 0, i5, i5);
        this.arrowDrawable.getPaint().setFlags(1);
        this.arrowDrawable.getPaint().setStyle(Paint.Style.FILL);
        this.arrowDrawable.getPaint().setColor(taskbarActivityContext.getColor(R.color.taskbar_background));
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        h.e(canvas, "canvas");
        canvas.save();
        float mapToRange = Utilities.mapToRange(this.paint.getAlpha(), 0.0f, 255.0f, 0.0f, this.shadowAlpha, e.f12949m);
        this.paint.setShadowLayer(this.shadowBlur, 0.0f, this.keyShadowDistance, GraphicsUtils.setColorAlphaBound(-16777216, Math.round(mapToRange)));
        this.arrowDrawable.getPaint().setShadowLayer(this.shadowBlur, 0.0f, this.keyShadowDistance, GraphicsUtils.setColorAlphaBound(-16777216, Math.round(mapToRange)));
        float f4 = this.backgroundHeight / 2.0f;
        canvas.drawRoundRect(canvas.getWidth() - this.width, 0.0f, canvas.getWidth(), canvas.getHeight(), f4, f4, this.paint);
        if (this.showingArrow) {
            float f5 = this.arrowPositionX;
            float f6 = this.pointerSize;
            canvas.translate(f5 - (f6 / 2.0f), -f6);
            this.arrowDrawable.draw(canvas);
        }
        canvas.restore();
    }

    public final float getArrowPositionX() {
        return this.arrowPositionX;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.paint.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
        this.paint.setAlpha(i4);
    }

    public final void setArrowAlpha(int i4) {
        this.arrowDrawable.getPaint().setAlpha(i4);
    }

    public final void setArrowPosition(float f4) {
        this.arrowPositionX = f4;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
    }

    public final void setWidth(float f4) {
        this.width = f4;
    }

    public final void showArrow(boolean z4) {
        this.showingArrow = z4;
    }
}
