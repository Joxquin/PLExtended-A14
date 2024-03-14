package com.android.launcher3.graphics;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.style.DynamicDrawableSpan;
/* loaded from: classes.dex */
public final class TintedDrawableSpan extends DynamicDrawableSpan {
    private final Drawable mDrawable;
    private int mOldTint;

    public TintedDrawableSpan(int i4, Context context) {
        super(0);
        Drawable mutate = context.getDrawable(i4).mutate();
        this.mDrawable = mutate;
        this.mOldTint = 0;
        mutate.setTint(0);
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i4, int i5, float f4, int i6, int i7, int i8, Paint paint) {
        int color = paint.getColor();
        if (this.mOldTint != color) {
            this.mOldTint = color;
            this.mDrawable.setTint(color);
        }
        super.draw(canvas, charSequence, i4, i5, f4, i6, i7, i8, paint);
    }

    @Override // android.text.style.DynamicDrawableSpan
    public final Drawable getDrawable() {
        return this.mDrawable;
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i4, int i5, Paint.FontMetricsInt fontMetricsInt) {
        if (fontMetricsInt == null) {
            fontMetricsInt = paint.getFontMetricsInt();
        }
        Paint.FontMetricsInt fontMetricsInt2 = fontMetricsInt;
        int i6 = fontMetricsInt2.bottom - fontMetricsInt2.top;
        this.mDrawable.setBounds(0, 0, i6, i6);
        return super.getSize(paint, charSequence, i4, i5, fontMetricsInt2);
    }
}
