package com.android.systemui.shared.shadow;

import android.graphics.Canvas;
import android.graphics.Color;
import android.widget.TextView;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.h;
import m3.a;
/* loaded from: classes.dex */
public final class DoubleShadowTextHelper {
    public static final DoubleShadowTextHelper INSTANCE = new DoubleShadowTextHelper();

    private DoubleShadowTextHelper() {
    }

    public final void applyShadows(ShadowInfo keyShadowInfo, ShadowInfo ambientShadowInfo, TextView view, Canvas canvas, a onDrawCallback) {
        h.e(keyShadowInfo, "keyShadowInfo");
        h.e(ambientShadowInfo, "ambientShadowInfo");
        h.e(view, "view");
        h.e(canvas, "canvas");
        h.e(onDrawCallback, "onDrawCallback");
        view.getPaint().setShadowLayer(ambientShadowInfo.getBlur(), ambientShadowInfo.getOffsetX(), ambientShadowInfo.getOffsetY(), Color.argb(ambientShadowInfo.getAlpha(), 0.0f, 0.0f, 0.0f));
        onDrawCallback.invoke();
        canvas.save();
        canvas.clipRect(view.getScrollX(), view.getExtendedPaddingTop() + view.getScrollY(), view.getWidth() + view.getScrollX(), view.getHeight() + view.getScrollY());
        view.getPaint().setShadowLayer(keyShadowInfo.getBlur(), keyShadowInfo.getOffsetX(), keyShadowInfo.getOffsetY(), Color.argb(keyShadowInfo.getAlpha(), 0.0f, 0.0f, 0.0f));
        onDrawCallback.invoke();
        canvas.restore();
    }

    /* loaded from: classes.dex */
    public final class ShadowInfo {
        private final float alpha;
        private final float blur;
        private final float offsetX;
        private final float offsetY;

        public ShadowInfo(float f4, float f5, float f6, float f7) {
            this.blur = f4;
            this.offsetX = f5;
            this.offsetY = f6;
            this.alpha = f7;
        }

        public static /* synthetic */ ShadowInfo copy$default(ShadowInfo shadowInfo, float f4, float f5, float f6, float f7, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                f4 = shadowInfo.blur;
            }
            if ((i4 & 2) != 0) {
                f5 = shadowInfo.offsetX;
            }
            if ((i4 & 4) != 0) {
                f6 = shadowInfo.offsetY;
            }
            if ((i4 & 8) != 0) {
                f7 = shadowInfo.alpha;
            }
            return shadowInfo.copy(f4, f5, f6, f7);
        }

        public final float component1() {
            return this.blur;
        }

        public final float component2() {
            return this.offsetX;
        }

        public final float component3() {
            return this.offsetY;
        }

        public final float component4() {
            return this.alpha;
        }

        public final ShadowInfo copy(float f4, float f5, float f6, float f7) {
            return new ShadowInfo(f4, f5, f6, f7);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof ShadowInfo) {
                ShadowInfo shadowInfo = (ShadowInfo) obj;
                return Float.compare(this.blur, shadowInfo.blur) == 0 && Float.compare(this.offsetX, shadowInfo.offsetX) == 0 && Float.compare(this.offsetY, shadowInfo.offsetY) == 0 && Float.compare(this.alpha, shadowInfo.alpha) == 0;
            }
            return false;
        }

        public final float getAlpha() {
            return this.alpha;
        }

        public final float getBlur() {
            return this.blur;
        }

        public final float getOffsetX() {
            return this.offsetX;
        }

        public final float getOffsetY() {
            return this.offsetY;
        }

        public int hashCode() {
            int hashCode = Float.hashCode(this.offsetX);
            int hashCode2 = Float.hashCode(this.offsetY);
            return Float.hashCode(this.alpha) + ((hashCode2 + ((hashCode + (Float.hashCode(this.blur) * 31)) * 31)) * 31);
        }

        public String toString() {
            float f4 = this.blur;
            float f5 = this.offsetX;
            float f6 = this.offsetY;
            float f7 = this.alpha;
            return "ShadowInfo(blur=" + f4 + ", offsetX=" + f5 + ", offsetY=" + f6 + ", alpha=" + f7 + ")";
        }

        public /* synthetic */ ShadowInfo(float f4, float f5, float f6, float f7, int i4, f fVar) {
            this(f4, (i4 & 2) != 0 ? 0.0f : f5, (i4 & 4) != 0 ? 0.0f : f6, f7);
        }
    }
}
