package com.android.systemui.shared.shadow;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.TextClock;
import com.android.systemui.shared.R;
import com.android.systemui.shared.shadow.DoubleShadowTextHelper;
import kotlin.jvm.internal.f;
import kotlin.jvm.internal.h;
import m3.a;
/* loaded from: classes.dex */
public final class DoubleShadowTextClock extends TextClock {
    public static final Companion Companion = new Companion(null);
    private static final int paddingDividedOffset = 2;
    private TypedArray attributesInput;
    private DoubleShadowTextHelper.ShadowInfo mAmbientShadowInfo;
    private DoubleShadowTextHelper.ShadowInfo mKeyShadowInfo;
    private Resources resources;

    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(f fVar) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DoubleShadowTextClock(Context context) {
        this(context, (AttributeSet) null, 0, 0, 14, (f) null);
        h.e(context, "context");
    }

    private final void initializeAttributes(AttributeSet attributeSet, int i4, int i5) {
        TypedArray typedArray = this.attributesInput;
        if (typedArray == null) {
            typedArray = getContext().obtainStyledAttributes(attributeSet, R.styleable.DoubleShadowTextClock, i4, i5);
            h.d(typedArray, "context.obtainStyledAttr…tyleRes\n                )");
        }
        Resources resources = this.resources;
        if (resources == null) {
            resources = getContext().getResources();
            h.d(resources, "context.resources");
        }
        try {
            this.mKeyShadowInfo = new DoubleShadowTextHelper.ShadowInfo(typedArray.getDimensionPixelSize(R.styleable.DoubleShadowTextClock_keyShadowBlur, 0), typedArray.getDimensionPixelSize(R.styleable.DoubleShadowTextClock_keyShadowOffsetX, 0), typedArray.getDimensionPixelSize(R.styleable.DoubleShadowTextClock_keyShadowOffsetY, 0), typedArray.getFloat(R.styleable.DoubleShadowTextClock_keyShadowAlpha, 0.0f));
            this.mAmbientShadowInfo = new DoubleShadowTextHelper.ShadowInfo(typedArray.getDimensionPixelSize(R.styleable.DoubleShadowTextClock_ambientShadowBlur, 0), typedArray.getDimensionPixelSize(R.styleable.DoubleShadowTextClock_ambientShadowOffsetX, 0), typedArray.getDimensionPixelSize(R.styleable.DoubleShadowTextClock_ambientShadowOffsetY, 0), typedArray.getFloat(R.styleable.DoubleShadowTextClock_ambientShadowAlpha, 0.0f));
            boolean z4 = typedArray.getBoolean(R.styleable.DoubleShadowTextClock_removeTextDescent, false);
            int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.DoubleShadowTextClock_textDescentExtraPadding, 0);
            if (z4) {
                boolean z5 = resources.getBoolean(R.bool.dream_overlay_complication_clock_bottom_padding);
                Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
                setPaddingRelative(0, 0, 0, z5 ? dimensionPixelSize + (((int) Math.floor(fontMetrics.descent)) / paddingDividedOffset) : dimensionPixelSize - ((int) Math.floor(fontMetrics.descent)));
            }
        } finally {
            typedArray.recycle();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(final Canvas canvas) {
        h.e(canvas, "canvas");
        DoubleShadowTextHelper doubleShadowTextHelper = DoubleShadowTextHelper.INSTANCE;
        DoubleShadowTextHelper.ShadowInfo shadowInfo = this.mKeyShadowInfo;
        if (shadowInfo == null) {
            h.g("mKeyShadowInfo");
            throw null;
        }
        DoubleShadowTextHelper.ShadowInfo shadowInfo2 = this.mAmbientShadowInfo;
        if (shadowInfo2 != null) {
            doubleShadowTextHelper.applyShadows(shadowInfo, shadowInfo2, this, canvas, new a() { // from class: com.android.systemui.shared.shadow.DoubleShadowTextClock$onDraw$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // m3.a
                public /* bridge */ /* synthetic */ Object invoke() {
                    m7invoke();
                    return e3.f.f9037a;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m7invoke() {
                    super/*android.widget.TextClock*/.onDraw(canvas);
                }
            });
        } else {
            h.g("mAmbientShadowInfo");
            throw null;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DoubleShadowTextClock(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, (f) null);
        h.e(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DoubleShadowTextClock(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0, 8, (f) null);
        h.e(context, "context");
    }

    public /* synthetic */ DoubleShadowTextClock(Context context, AttributeSet attributeSet, int i4, int i5, int i6, f fVar) {
        this(context, (i6 & 2) != 0 ? null : attributeSet, (i6 & 4) != 0 ? 0 : i4, (i6 & 8) != 0 ? 0 : i5);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DoubleShadowTextClock(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        h.e(context, "context");
        initializeAttributes(attributeSet, i4, i5);
    }

    public /* synthetic */ DoubleShadowTextClock(Resources resources, Context context, AttributeSet attributeSet, int i4, int i5, TypedArray typedArray, int i6, f fVar) {
        this(resources, context, (i6 & 4) != 0 ? null : attributeSet, (i6 & 8) != 0 ? 0 : i4, (i6 & 16) != 0 ? 0 : i5, (i6 & 32) != 0 ? null : typedArray);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DoubleShadowTextClock(Resources resources, Context context, AttributeSet attributeSet, int i4, int i5, TypedArray typedArray) {
        this(context, attributeSet, i4, i5);
        h.e(resources, "resources");
        h.e(context, "context");
        this.attributesInput = typedArray;
        this.resources = resources;
        initializeAttributes(attributeSet, i4, i5);
    }
}
