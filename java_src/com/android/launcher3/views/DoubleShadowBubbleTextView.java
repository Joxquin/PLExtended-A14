package com.android.launcher3.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.text.TextPaint;
import android.util.AttributeSet;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.R$styleable;
import com.android.launcher3.icons.GraphicsUtils;
/* loaded from: classes.dex */
public class DoubleShadowBubbleTextView extends BubbleTextView {
    private final ShadowInfo mShadowInfo;

    /* loaded from: classes.dex */
    public final class ShadowInfo {
        public final float ambientShadowBlur;
        public final int ambientShadowColor;
        public final float keyShadowBlur;
        public final int keyShadowColor;
        public final float keyShadowOffsetX;
        public final float keyShadowOffsetY;

        public ShadowInfo(Context context, AttributeSet attributeSet, int i4) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.ShadowInfo, i4, 0);
            this.ambientShadowBlur = obtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.ambientShadowColor = obtainStyledAttributes.getColor(1, 0);
            this.keyShadowBlur = obtainStyledAttributes.getDimensionPixelSize(2, 0);
            this.keyShadowOffsetX = obtainStyledAttributes.getDimensionPixelSize(4, 0);
            this.keyShadowOffsetY = obtainStyledAttributes.getDimensionPixelSize(5, 0);
            this.keyShadowColor = obtainStyledAttributes.getColor(3, 0);
            obtainStyledAttributes.recycle();
        }
    }

    public DoubleShadowBubbleTextView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getTextShadowColor(int i4, int i5) {
        return GraphicsUtils.setColorAlphaBound(i4, Math.round((Color.alpha(i4) * i5) / 255.0f));
    }

    @Override // com.android.launcher3.BubbleTextView, android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        ShadowInfo shadowInfo = this.mShadowInfo;
        shadowInfo.getClass();
        int alpha = Color.alpha(getCurrentTextColor());
        int i4 = shadowInfo.keyShadowColor;
        int alpha2 = Color.alpha(i4);
        int i5 = shadowInfo.ambientShadowColor;
        int alpha3 = Color.alpha(i5);
        boolean z4 = true;
        if (alpha == 0 || (alpha2 == 0 && alpha3 == 0)) {
            getPaint().clearShadowLayer();
        } else if (alpha3 > 0 && alpha2 == 0) {
            getPaint().setShadowLayer(shadowInfo.ambientShadowBlur, 0.0f, 0.0f, getTextShadowColor(i5, alpha));
        } else if (alpha2 <= 0 || alpha3 != 0) {
            z4 = false;
        } else {
            getPaint().setShadowLayer(shadowInfo.keyShadowBlur, shadowInfo.keyShadowOffsetX, shadowInfo.keyShadowOffsetY, getTextShadowColor(i4, alpha));
        }
        if (z4) {
            super.onDraw(canvas);
            return;
        }
        int alpha4 = Color.alpha(getCurrentTextColor());
        TextPaint paint = getPaint();
        ShadowInfo shadowInfo2 = this.mShadowInfo;
        paint.setShadowLayer(shadowInfo2.ambientShadowBlur, 0.0f, 0.0f, getTextShadowColor(shadowInfo2.ambientShadowColor, alpha4));
        drawWithoutDot(canvas);
        canvas.save();
        canvas.clipRect(getScrollX(), getExtendedPaddingTop() + getScrollY(), getWidth() + getScrollX(), getHeight() + getScrollY());
        TextPaint paint2 = getPaint();
        ShadowInfo shadowInfo3 = this.mShadowInfo;
        paint2.setShadowLayer(shadowInfo3.keyShadowBlur, shadowInfo3.keyShadowOffsetX, shadowInfo3.keyShadowOffsetY, getTextShadowColor(shadowInfo3.keyShadowColor, alpha4));
        drawWithoutDot(canvas);
        canvas.restore();
        drawDotIfNecessary(canvas);
    }

    public DoubleShadowBubbleTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DoubleShadowBubbleTextView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        ShadowInfo shadowInfo = new ShadowInfo(context, attributeSet, i4);
        this.mShadowInfo = shadowInfo;
        setShadowLayer(shadowInfo.ambientShadowBlur, 0.0f, 0.0f, shadowInfo.ambientShadowColor);
    }
}
