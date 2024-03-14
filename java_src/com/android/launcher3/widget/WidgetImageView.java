package com.android.launcher3.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.icons.RoundDrawableWrapper;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class WidgetImageView extends View {
    private Drawable mDrawable;
    private final RectF mDstRectF;

    public WidgetImageView(Context context) {
        this(context, null);
    }

    private void updateDstRectF() {
        float width = getWidth();
        float height = getHeight();
        float intrinsicWidth = this.mDrawable.getIntrinsicWidth();
        float f4 = intrinsicWidth > width ? width / intrinsicWidth : 1.0f;
        float f5 = intrinsicWidth * f4;
        float intrinsicHeight = this.mDrawable.getIntrinsicHeight() * f4;
        RectF rectF = this.mDstRectF;
        rectF.left = (width - f5) / 2.0f;
        rectF.right = (width + f5) / 2.0f;
        if (intrinsicHeight > height) {
            rectF.top = 0.0f;
            rectF.bottom = intrinsicHeight;
            return;
        }
        rectF.top = (height - intrinsicHeight) / 2.0f;
        rectF.bottom = (height + intrinsicHeight) / 2.0f;
    }

    public final Rect getBitmapBounds() {
        updateDstRectF();
        Rect rect = new Rect();
        this.mDstRectF.round(rect);
        return rect;
    }

    public final Drawable getDrawable() {
        return this.mDrawable;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.mDrawable != null) {
            updateDstRectF();
            this.mDrawable.setBounds(getBitmapBounds());
            this.mDrawable.draw(canvas);
        }
    }

    public final void setDrawable(RoundDrawableWrapper roundDrawableWrapper) {
        this.mDrawable = roundDrawableWrapper;
        invalidate();
    }

    public WidgetImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WidgetImageView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mDstRectF = new RectF();
        context.getResources().getDimensionPixelSize(R.dimen.profile_badge_margin);
    }
}
