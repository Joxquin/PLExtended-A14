package com.android.systemui.animation;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
/* loaded from: classes.dex */
public final class h {
    public static GradientDrawable a(Drawable drawable) {
        kotlin.jvm.internal.h.e(drawable, "drawable");
        if (drawable instanceof GradientDrawable) {
            return (GradientDrawable) drawable;
        }
        if (drawable instanceof InsetDrawable) {
            Drawable drawable2 = ((InsetDrawable) drawable).getDrawable();
            if (drawable2 != null) {
                return a(drawable2);
            }
            return null;
        }
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i4 = 0; i4 < numberOfLayers; i4++) {
                Drawable drawable3 = layerDrawable.getDrawable(i4);
                if (drawable3 instanceof GradientDrawable) {
                    return (GradientDrawable) drawable3;
                }
            }
        }
        if (drawable instanceof StateListDrawable) {
            Drawable current = ((StateListDrawable) drawable).getCurrent();
            kotlin.jvm.internal.h.d(current, "drawable.current");
            return a(current);
        }
        return null;
    }
}
