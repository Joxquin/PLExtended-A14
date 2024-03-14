package com.android.systemui.animation;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
/* loaded from: classes.dex */
public final class i extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    public final Drawable f6067a;

    /* renamed from: b  reason: collision with root package name */
    public int f6068b = 255;

    /* renamed from: c  reason: collision with root package name */
    public final Rect f6069c = new Rect();

    /* renamed from: d  reason: collision with root package name */
    public final float[] f6070d;

    /* renamed from: e  reason: collision with root package name */
    public final float[] f6071e;

    public i(Drawable drawable) {
        this.f6067a = drawable;
        float[] fArr = new float[8];
        for (int i4 = 0; i4 < 8; i4++) {
            fArr[i4] = -1.0f;
        }
        this.f6070d = fArr;
        this.f6071e = new float[8];
    }

    public static void a(Drawable drawable, float[] fArr) {
        if (drawable instanceof GradientDrawable) {
            ((GradientDrawable) drawable).setCornerRadii(fArr);
        } else if (drawable instanceof InsetDrawable) {
            Drawable drawable2 = ((InsetDrawable) drawable).getDrawable();
            if (drawable2 != null) {
                a(drawable2, fArr);
            }
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i4 = 0; i4 < numberOfLayers; i4++) {
                Drawable drawable3 = layerDrawable.getDrawable(i4);
                GradientDrawable gradientDrawable = drawable3 instanceof GradientDrawable ? (GradientDrawable) drawable3 : null;
                if (gradientDrawable != null) {
                    gradientDrawable.setCornerRadii(fArr);
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable;
        Drawable drawable2;
        kotlin.jvm.internal.h.e(canvas, "canvas");
        Drawable drawable3 = this.f6067a;
        if (drawable3 == null) {
            return;
        }
        drawable3.copyBounds(this.f6069c);
        drawable3.setAlpha(this.f6068b);
        drawable3.setBounds(getBounds());
        if (this.f6070d[0] >= 0.0f && (drawable2 = this.f6067a) != null) {
            GradientDrawable a4 = h.a(drawable2);
            if (a4 != null) {
                float[] cornerRadii = a4.getCornerRadii();
                if (cornerRadii != null) {
                    float[] destination = this.f6071e;
                    int length = cornerRadii.length;
                    kotlin.jvm.internal.h.e(destination, "destination");
                    System.arraycopy(cornerRadii, 0, destination, 0, length - 0);
                } else {
                    float cornerRadius = a4.getCornerRadius();
                    float[] fArr = this.f6071e;
                    fArr[0] = cornerRadius;
                    fArr[1] = cornerRadius;
                    fArr[2] = cornerRadius;
                    fArr[3] = cornerRadius;
                    fArr[4] = cornerRadius;
                    fArr[5] = cornerRadius;
                    fArr[6] = cornerRadius;
                    fArr[7] = cornerRadius;
                }
            }
            a(this.f6067a, this.f6070d);
        }
        drawable3.draw(canvas);
        drawable3.setAlpha(0);
        drawable3.setBounds(this.f6069c);
        if (this.f6070d[0] < 0.0f || (drawable = this.f6067a) == null) {
            return;
        }
        a(drawable, this.f6071e);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f6068b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f6067a;
        if (drawable == null) {
            return -2;
        }
        int alpha = drawable.getAlpha();
        drawable.setAlpha(this.f6068b);
        int opacity = drawable.getOpacity();
        drawable.setAlpha(alpha);
        return opacity;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
        if (i4 != this.f6068b) {
            this.f6068b = i4;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f6067a;
        if (drawable == null) {
            return;
        }
        drawable.setColorFilter(colorFilter);
    }
}
