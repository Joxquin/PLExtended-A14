package com.android.systemui.shared.shadow;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.shadow.DoubleShadowTextHelper;
import e3.f;
import kotlin.jvm.internal.h;
import m3.a;
/* loaded from: classes.dex */
public class DoubleShadowTextView extends TextView {
    private final DoubleShadowTextHelper.ShadowInfo mAmbientShadowInfo;
    private final DoubleShadowTextHelper.ShadowInfo mKeyShadowInfo;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DoubleShadowTextView(Context context) {
        this(context, null, 0, 0, 14, null);
        h.e(context, "context");
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(final Canvas canvas) {
        h.e(canvas, "canvas");
        DoubleShadowTextHelper.INSTANCE.applyShadows(this.mKeyShadowInfo, this.mAmbientShadowInfo, this, canvas, new a() { // from class: com.android.systemui.shared.shadow.DoubleShadowTextView$onDraw$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // m3.a
            public /* bridge */ /* synthetic */ Object invoke() {
                m9invoke();
                return f.f9037a;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m9invoke() {
                super/*android.widget.TextView*/.onDraw(canvas);
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DoubleShadowTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        h.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DoubleShadowTextView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0, 8, null);
        h.e(context, "context");
    }

    public /* synthetic */ DoubleShadowTextView(Context context, AttributeSet attributeSet, int i4, int i5, int i6, kotlin.jvm.internal.f fVar) {
        this(context, (i6 & 2) != 0 ? null : attributeSet, (i6 & 4) != 0 ? 0 : i4, (i6 & 8) != 0 ? 0 : i5);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DoubleShadowTextView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        h.e(context, "context");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.DoubleShadowTextView, i4, i5);
        try {
            this.mKeyShadowInfo = new DoubleShadowTextHelper.ShadowInfo(obtainStyledAttributes.getDimension(R.styleable.DoubleShadowTextView_keyShadowBlur, 0.0f), obtainStyledAttributes.getDimension(R.styleable.DoubleShadowTextView_keyShadowOffsetX, 0.0f), obtainStyledAttributes.getDimension(R.styleable.DoubleShadowTextView_keyShadowOffsetY, 0.0f), obtainStyledAttributes.getFloat(R.styleable.DoubleShadowTextView_keyShadowAlpha, 0.0f));
            this.mAmbientShadowInfo = new DoubleShadowTextHelper.ShadowInfo(obtainStyledAttributes.getDimension(R.styleable.DoubleShadowTextView_ambientShadowBlur, 0.0f), obtainStyledAttributes.getDimension(R.styleable.DoubleShadowTextView_ambientShadowOffsetX, 0.0f), obtainStyledAttributes.getDimension(R.styleable.DoubleShadowTextView_ambientShadowOffsetY, 0.0f), obtainStyledAttributes.getFloat(R.styleable.DoubleShadowTextView_ambientShadowAlpha, 0.0f));
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.DoubleShadowTextView_drawableIconSize, 0);
            int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(R.styleable.DoubleShadowTextView_drawableIconInsetSize, 0);
            obtainStyledAttributes.recycle();
            Drawable[] drawableArr = {null, null, null, null};
            Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
            h.d(compoundDrawablesRelative, "compoundDrawablesRelative");
            int length = compoundDrawablesRelative.length;
            for (int i6 = 0; i6 < length; i6++) {
                Drawable drawable = compoundDrawablesRelative[i6];
                if (drawable != null) {
                    drawableArr[i6] = new DoubleShadowIconDrawable(this.mKeyShadowInfo, this.mAmbientShadowInfo, drawable, dimensionPixelSize, dimensionPixelSize2);
                }
            }
            setCompoundDrawablesRelative(drawableArr[0], drawableArr[1], drawableArr[2], drawableArr[3]);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }
}
