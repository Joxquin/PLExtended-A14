package com.google.android.material.transformation;

import I2.g;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import j2.C1114a;
import j2.h;
import j2.i;
import w.f;
@Deprecated
/* loaded from: classes.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* renamed from: c  reason: collision with root package name */
    public final Rect f8261c;

    /* renamed from: d  reason: collision with root package name */
    public final RectF f8262d;

    /* renamed from: e  reason: collision with root package name */
    public final RectF f8263e;

    /* renamed from: f  reason: collision with root package name */
    public final int[] f8264f;

    /* renamed from: g  reason: collision with root package name */
    public float f8265g;

    /* renamed from: h  reason: collision with root package name */
    public float f8266h;

    public FabTransformationBehavior() {
        this.f8261c = new Rect();
        this.f8262d = new RectF();
        this.f8263e = new RectF();
        this.f8264f = new int[2];
    }

    public static Pair u(float f4, float f5, boolean z4, g gVar) {
        h c4;
        h c5;
        int i4;
        if (f4 == 0.0f || f5 == 0.0f) {
            c4 = gVar.f571a.c("translationXLinear");
            c5 = gVar.f571a.c("translationYLinear");
        } else if ((!z4 || f5 >= 0.0f) && (z4 || i4 <= 0)) {
            c4 = gVar.f571a.c("translationXCurveDownwards");
            c5 = gVar.f571a.c("translationYCurveDownwards");
        } else {
            c4 = gVar.f571a.c("translationXCurveUpwards");
            c5 = gVar.f571a.c("translationYCurveUpwards");
        }
        return new Pair(c4, c5);
    }

    public static float x(g gVar, h hVar, float f4) {
        long j4 = hVar.f10711a;
        h c4 = gVar.f571a.c("expansion");
        float interpolation = hVar.b().getInterpolation(((float) (((c4.f10711a + c4.f10712b) + 17) - j4)) / ((float) hVar.f10712b));
        TimeInterpolator timeInterpolator = C1114a.f10700a;
        return f.a(0.0f, f4, interpolation, f4);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, z.c
    public final boolean b(View view, View view2) {
        if (view.getVisibility() != 8) {
            if (view2 instanceof w2.g) {
                ((w2.g) view2).getClass();
                throw null;
            }
            return false;
        }
        throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
    }

    @Override // z.c
    public final void c(z.f fVar) {
        if (fVar.f12974h == 0) {
            fVar.f12974h = 80;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03ce A[LOOP:0: B:116:0x03cc->B:117:0x03ce, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0364  */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.animation.AnimatorSet t(android.view.View r27, android.view.View r28, boolean r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 1001
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.FabTransformationBehavior.t(android.view.View, android.view.View, boolean, boolean):android.animation.AnimatorSet");
    }

    public final float v(View view, View view2, i iVar) {
        RectF rectF = this.f8262d;
        RectF rectF2 = this.f8263e;
        y(view, rectF);
        rectF.offset(this.f8265g, this.f8266h);
        y(view2, rectF2);
        iVar.getClass();
        return (rectF2.centerX() - rectF.centerX()) + 0.0f;
    }

    public final float w(View view, View view2, i iVar) {
        RectF rectF = this.f8262d;
        RectF rectF2 = this.f8263e;
        y(view, rectF);
        rectF.offset(this.f8265g, this.f8266h);
        y(view2, rectF2);
        iVar.getClass();
        return (rectF2.centerY() - rectF.centerY()) + 0.0f;
    }

    public final void y(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f8264f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    public abstract g z(Context context, boolean z4);

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8261c = new Rect();
        this.f8262d = new RectF();
        this.f8263e = new RectF();
        this.f8264f = new int[2];
    }
}
