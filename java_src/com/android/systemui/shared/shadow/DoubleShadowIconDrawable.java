package com.android.systemui.shared.shadow;

import android.content.res.ColorStateList;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import com.android.systemui.shared.shadow.DoubleShadowTextHelper;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class DoubleShadowIconDrawable extends Drawable {
    private final int iconInsetSize;
    private final DoubleShadowTextHelper.ShadowInfo mAmbientShadowInfo;
    private final int mCanvasSize;
    private final RenderNode mDoubleShadowNode;
    private final InsetDrawable mIconDrawable;
    private final DoubleShadowTextHelper.ShadowInfo mKeyShadowInfo;

    public DoubleShadowIconDrawable(DoubleShadowTextHelper.ShadowInfo keyShadowInfo, DoubleShadowTextHelper.ShadowInfo ambientShadowInfo, Drawable iconDrawable, int i4, int i5) {
        h.e(keyShadowInfo, "keyShadowInfo");
        h.e(ambientShadowInfo, "ambientShadowInfo");
        h.e(iconDrawable, "iconDrawable");
        this.iconInsetSize = i5;
        int i6 = (i5 * 2) + i4;
        this.mCanvasSize = i6;
        this.mKeyShadowInfo = keyShadowInfo;
        this.mAmbientShadowInfo = ambientShadowInfo;
        setBounds(0, 0, i6, i6);
        InsetDrawable insetDrawable = new InsetDrawable(iconDrawable, i5);
        this.mIconDrawable = insetDrawable;
        insetDrawable.setBounds(0, 0, i6, i6);
        this.mDoubleShadowNode = createShadowRenderNode();
    }

    private final RenderEffect createShadowRenderEffect(float f4, float f5, float f6, float f7) {
        RenderEffect createColorFilterEffect = RenderEffect.createColorFilterEffect(new PorterDuffColorFilter(Color.argb(f7, 0.0f, 0.0f, 0.0f), PorterDuff.Mode.MULTIPLY), RenderEffect.createOffsetEffect(f5, f6, RenderEffect.createBlurEffect(f4, f4, Shader.TileMode.CLAMP)));
        h.d(createColorFilterEffect, "createColorFilterEffect(…)\n            )\n        )");
        return createColorFilterEffect;
    }

    private final RenderNode createShadowRenderNode() {
        RenderNode renderNode = new RenderNode("DoubleShadowNode");
        int i4 = this.mCanvasSize;
        renderNode.setPosition(0, 0, i4, i4);
        renderNode.setRenderEffect(RenderEffect.createBlendModeEffect(createShadowRenderEffect(this.mAmbientShadowInfo.getBlur(), this.mAmbientShadowInfo.getOffsetX(), this.mAmbientShadowInfo.getOffsetY(), this.mAmbientShadowInfo.getAlpha()), createShadowRenderEffect(this.mKeyShadowInfo.getBlur(), this.mKeyShadowInfo.getOffsetX(), this.mKeyShadowInfo.getOffsetY(), this.mKeyShadowInfo.getAlpha()), BlendMode.DST_ATOP));
        return renderNode;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        h.e(canvas, "canvas");
        if (canvas.isHardwareAccelerated()) {
            if (!this.mDoubleShadowNode.hasDisplayList()) {
                this.mIconDrawable.draw(this.mDoubleShadowNode.beginRecording());
                this.mDoubleShadowNode.endRecording();
            }
            canvas.drawRenderNode(this.mDoubleShadowNode);
        }
        this.mIconDrawable.draw(canvas);
    }

    public final int getIconInsetSize() {
        return this.iconInsetSize;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.mCanvasSize;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.mCanvasSize;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
        this.mIconDrawable.setAlpha(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mIconDrawable.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i4) {
        this.mIconDrawable.setTint(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.mIconDrawable.setTintList(colorStateList);
    }
}
