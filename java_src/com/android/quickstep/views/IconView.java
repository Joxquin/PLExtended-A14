package com.android.quickstep.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import com.android.launcher3.Utilities;
/* loaded from: classes.dex */
public class IconView extends View {
    private Drawable mDrawable;
    private int mDrawableHeight;
    private int mDrawableWidth;

    public IconView(Context context) {
        super(context);
    }

    private void setDrawableSizeInternal(int i4, int i5) {
        Rect rect = new Rect(0, 0, i4, i5);
        Rect rect2 = new Rect();
        Gravity.apply(17, this.mDrawableWidth, this.mDrawableHeight, rect, rect2);
        this.mDrawable.setBounds(rect2);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mDrawable;
        if (drawable != null && drawable.isStateful() && drawable.setState(getDrawableState())) {
            invalidateDrawable(drawable);
        }
    }

    public Drawable getDrawable() {
        return this.mDrawable;
    }

    public int getDrawableHeight() {
        return this.mDrawableHeight;
    }

    public int getDrawableWidth() {
        return this.mDrawableWidth;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i4, int i5, int i6, int i7) {
        super.onSizeChanged(i4, i5, i6, i7);
        if (this.mDrawable != null) {
            setDrawableSizeInternal(i4, i5);
        }
    }

    @Override // android.view.View
    public void setAlpha(float f4) {
        super.setAlpha(f4);
        if (f4 > 0.0f) {
            setVisibility(0);
        } else {
            setVisibility(4);
        }
    }

    public void setDrawable(Drawable drawable) {
        Drawable drawable2 = this.mDrawable;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.mDrawable = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setDrawableSizeInternal(getWidth(), getHeight());
        }
        invalidate();
    }

    public void setDrawableSize(int i4, int i5) {
        this.mDrawableWidth = i4;
        this.mDrawableHeight = i5;
        if (this.mDrawable != null) {
            setDrawableSizeInternal(getWidth(), getHeight());
        }
    }

    public void setIconColorTint(int i4, float f4) {
        Drawable drawable = this.mDrawable;
        if (drawable != null) {
            drawable.setColorFilter(Utilities.makeColorTintingColorFilter(f4, i4));
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.mDrawable;
    }

    public IconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public IconView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
