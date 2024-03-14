package com.android.launcher3.icons;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.DrawableWrapper;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes.dex */
public class FixedScaleDrawable extends DrawableWrapper {
    private float mScaleX;
    private float mScaleY;

    public FixedScaleDrawable() {
        super(new ColorDrawable());
        this.mScaleX = 0.46669f;
        this.mScaleY = 0.46669f;
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int save = canvas.save();
        canvas.scale(this.mScaleX, this.mScaleY, getBounds().exactCenterX(), getBounds().exactCenterY());
        super.draw(canvas);
        canvas.restoreToCount(save);
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) {
    }

    public final void setScale(float f4) {
        float intrinsicHeight = getIntrinsicHeight();
        float intrinsicWidth = getIntrinsicWidth();
        float f5 = f4 * 0.46669f;
        this.mScaleX = f5;
        this.mScaleY = f5;
        if (intrinsicHeight > intrinsicWidth && intrinsicWidth > 0.0f) {
            this.mScaleX = (intrinsicWidth / intrinsicHeight) * f5;
        } else if (intrinsicWidth <= intrinsicHeight || intrinsicHeight <= 0.0f) {
        } else {
            this.mScaleY = (intrinsicHeight / intrinsicWidth) * f5;
        }
    }

    @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
    }
}
