package com.android.systemui.animation;

import android.animation.ValueAnimator;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.GradientDrawable;
import android.util.MathUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.view.ViewOverlay;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
/* loaded from: classes.dex */
public final class q implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: A  reason: collision with root package name */
    public final /* synthetic */ boolean f6109A;

    /* renamed from: B  reason: collision with root package name */
    public final /* synthetic */ boolean f6110B;

    /* renamed from: C  reason: collision with root package name */
    public final /* synthetic */ n f6111C;

    /* renamed from: D  reason: collision with root package name */
    public final /* synthetic */ Ref$IntRef f6112D;

    /* renamed from: E  reason: collision with root package name */
    public final /* synthetic */ Ref$IntRef f6113E;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Ref$BooleanRef f6114d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ s f6115e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ float f6116f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Ref$FloatRef f6117g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ int f6118h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Ref$IntRef f6119i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ n f6120j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ int f6121k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ Ref$IntRef f6122l;

    /* renamed from: m  reason: collision with root package name */
    public final /* synthetic */ int f6123m;

    /* renamed from: n  reason: collision with root package name */
    public final /* synthetic */ Ref$IntRef f6124n;

    /* renamed from: o  reason: collision with root package name */
    public final /* synthetic */ float f6125o;

    /* renamed from: p  reason: collision with root package name */
    public final /* synthetic */ float f6126p;

    /* renamed from: q  reason: collision with root package name */
    public final /* synthetic */ float f6127q;

    /* renamed from: r  reason: collision with root package name */
    public final /* synthetic */ float f6128r;

    /* renamed from: s  reason: collision with root package name */
    public final /* synthetic */ boolean f6129s;

    /* renamed from: t  reason: collision with root package name */
    public final /* synthetic */ Ref$BooleanRef f6130t;

    /* renamed from: u  reason: collision with root package name */
    public final /* synthetic */ ViewGroupOverlay f6131u;

    /* renamed from: v  reason: collision with root package name */
    public final /* synthetic */ GradientDrawable f6132v;

    /* renamed from: w  reason: collision with root package name */
    public final /* synthetic */ ViewOverlay f6133w;

    /* renamed from: x  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f6134x;

    /* renamed from: y  reason: collision with root package name */
    public final /* synthetic */ View f6135y;

    /* renamed from: z  reason: collision with root package name */
    public final /* synthetic */ l f6136z;

    public q(Ref$BooleanRef ref$BooleanRef, s sVar, float f4, Ref$FloatRef ref$FloatRef, int i4, Ref$IntRef ref$IntRef, n nVar, int i5, Ref$IntRef ref$IntRef2, int i6, Ref$IntRef ref$IntRef3, float f5, float f6, float f7, float f8, boolean z4, Ref$BooleanRef ref$BooleanRef2, ViewGroupOverlay viewGroupOverlay, GradientDrawable gradientDrawable, ViewOverlay viewOverlay, ViewGroup viewGroup, View view, C0621b c0621b, boolean z5, boolean z6, n nVar2, Ref$IntRef ref$IntRef4, Ref$IntRef ref$IntRef5) {
        this.f6114d = ref$BooleanRef;
        this.f6115e = sVar;
        this.f6116f = f4;
        this.f6117g = ref$FloatRef;
        this.f6118h = i4;
        this.f6119i = ref$IntRef;
        this.f6120j = nVar;
        this.f6121k = i5;
        this.f6122l = ref$IntRef2;
        this.f6123m = i6;
        this.f6124n = ref$IntRef3;
        this.f6125o = f5;
        this.f6126p = f6;
        this.f6127q = f7;
        this.f6128r = f8;
        this.f6129s = z4;
        this.f6130t = ref$BooleanRef2;
        this.f6131u = viewGroupOverlay;
        this.f6132v = gradientDrawable;
        this.f6133w = viewOverlay;
        this.f6134x = viewGroup;
        this.f6135y = view;
        this.f6136z = c0621b;
        this.f6109A = z5;
        this.f6110B = z6;
        this.f6111C = nVar2;
        this.f6112D = ref$IntRef4;
        this.f6113E = ref$IntRef5;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        View launchContainer;
        if (this.f6114d.element) {
            return;
        }
        Ref$IntRef ref$IntRef = this.f6122l;
        n nVar = this.f6111C;
        Ref$IntRef ref$IntRef2 = this.f6124n;
        Ref$IntRef ref$IntRef3 = this.f6112D;
        Ref$IntRef ref$IntRef4 = this.f6113E;
        Ref$FloatRef ref$FloatRef = this.f6117g;
        Ref$IntRef ref$IntRef5 = this.f6119i;
        int i4 = ref$IntRef.element;
        int i5 = nVar.f6091a;
        if (i4 != i5 || ref$IntRef2.element != nVar.f6092b || ref$IntRef3.element != nVar.f6093c || ref$IntRef4.element != nVar.f6094d) {
            ref$IntRef.element = i5;
            ref$IntRef2.element = nVar.f6092b;
            ref$IntRef3.element = nVar.f6093c;
            int i6 = nVar.f6094d;
            ref$IntRef4.element = i6;
            int i7 = ref$IntRef3.element;
            ref$FloatRef.element = (i7 + i6) / 2.0f;
            ref$IntRef5.element = i6 - i7;
        }
        float animatedFraction = valueAnimator.getAnimatedFraction();
        float interpolation = this.f6115e.f6141b.f6087a.getInterpolation(animatedFraction);
        float lerp = MathUtils.lerp(this.f6116f, this.f6117g.element, this.f6115e.f6141b.f6088b.getInterpolation(animatedFraction));
        float lerp2 = MathUtils.lerp(this.f6118h, this.f6119i.element, interpolation) / 2.0f;
        this.f6120j.f6091a = n3.a.a(MathUtils.lerp(this.f6121k, this.f6122l.element, interpolation));
        this.f6120j.f6092b = n3.a.a(MathUtils.lerp(this.f6123m, this.f6124n.element, interpolation));
        this.f6120j.f6093c = n3.a.a(lerp - lerp2);
        this.f6120j.f6094d = n3.a.a(lerp + lerp2);
        this.f6120j.f6095e = MathUtils.lerp(this.f6125o, this.f6126p, interpolation);
        this.f6120j.f6096f = MathUtils.lerp(this.f6127q, this.f6128r, interpolation);
        n nVar2 = this.f6120j;
        PorterDuffXfermode porterDuffXfermode = s.f6139e;
        o oVar = this.f6115e.f6140a;
        nVar2.f6097g = k.a(oVar, animatedFraction, oVar.f6099b, oVar.f6100c) < 1.0f;
        if (this.f6129s && !this.f6120j.f6097g) {
            Ref$BooleanRef ref$BooleanRef = this.f6130t;
            if (!ref$BooleanRef.element) {
                ref$BooleanRef.element = true;
                this.f6131u.remove(this.f6132v);
                ViewOverlay viewOverlay = this.f6133w;
                kotlin.jvm.internal.h.b(viewOverlay);
                viewOverlay.add(this.f6132v);
                C.a(this.f6134x, this.f6135y, new m3.a() { // from class: com.android.systemui.animation.LaunchAnimator$startAnimation$2$1
                    @Override // m3.a
                    public final /* bridge */ /* synthetic */ Object invoke() {
                        return e3.f.f9037a;
                    }
                });
            }
        }
        if (this.f6130t.element) {
            launchContainer = this.f6135y;
            kotlin.jvm.internal.h.b(launchContainer);
        } else {
            launchContainer = this.f6136z.getLaunchContainer();
        }
        s sVar = this.f6115e;
        GradientDrawable gradientDrawable = this.f6132v;
        n nVar3 = this.f6120j;
        boolean z4 = this.f6109A;
        boolean z5 = this.f6110B;
        int[] iArr = sVar.f6142c;
        launchContainer.getLocationOnScreen(iArr);
        int i8 = nVar3.f6093c;
        int i9 = iArr[0];
        int i10 = nVar3.f6091a;
        int i11 = iArr[1];
        gradientDrawable.setBounds(i8 - i9, i10 - i11, nVar3.f6094d - i9, nVar3.f6092b - i11);
        float f4 = nVar3.f6095e;
        float[] fArr = sVar.f6143d;
        fArr[0] = f4;
        fArr[1] = f4;
        fArr[2] = f4;
        fArr[3] = f4;
        float f5 = nVar3.f6096f;
        fArr[4] = f5;
        fArr[5] = f5;
        fArr[6] = f5;
        fArr[7] = f5;
        gradientDrawable.setCornerRadii(fArr);
        o oVar2 = sVar.f6140a;
        float a4 = k.a(oVar2, animatedFraction, oVar2.f6099b, oVar2.f6100c);
        int i12 = (a4 > 1.0f ? 1 : (a4 == 1.0f ? 0 : -1));
        m mVar = sVar.f6141b;
        if (i12 < 0) {
            gradientDrawable.setAlpha(n3.a.a(mVar.f6089c.getInterpolation(a4) * 255));
        } else if (z4) {
            gradientDrawable.setAlpha(n3.a.a((1 - mVar.f6090d.getInterpolation(k.a(oVar2, animatedFraction, oVar2.f6101d, oVar2.f6102e))) * 255));
            if (z5) {
                gradientDrawable.setXfermode(s.f6139e);
            }
        } else {
            gradientDrawable.setAlpha(255);
        }
        this.f6136z.onLaunchAnimationProgress(this.f6120j, interpolation, animatedFraction);
    }
}
