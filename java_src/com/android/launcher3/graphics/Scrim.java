package com.android.launcher3.graphics;

import android.graphics.Canvas;
import android.util.FloatProperty;
import android.view.View;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class Scrim {
    public static final FloatProperty SCRIM_PROGRESS = new FloatProperty() { // from class: com.android.launcher3.graphics.Scrim.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((Scrim) obj).mScrimProgress);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            Scrim scrim = (Scrim) obj;
            if (scrim.mScrimProgress != f4) {
                scrim.mScrimProgress = f4;
                scrim.mScrimAlpha = Math.round(f4 * 255.0f);
                scrim.mRoot.invalidate();
            }
        }
    };
    protected final View mRoot;
    protected int mScrimAlpha = 0;
    protected int mScrimColor;
    protected float mScrimProgress;

    public Scrim(DragLayer dragLayer) {
        this.mRoot = dragLayer;
        this.mScrimColor = dragLayer.getContext().getColor(R.color.wallpaper_popup_scrim);
    }

    public final void draw(Canvas canvas) {
        canvas.drawColor(GraphicsUtils.setColorAlphaBound(this.mScrimColor, this.mScrimAlpha));
    }
}
