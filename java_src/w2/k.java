package w2;

import android.animation.ValueAnimator;
import android.graphics.Matrix;
import j2.C1114a;
/* loaded from: classes.dex */
public final class k implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ float f12765d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ float f12766e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ float f12767f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ float f12768g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ float f12769h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ float f12770i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ float f12771j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ Matrix f12772k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ p f12773l;

    public k(p pVar, float f4, float f5, float f6, float f7, float f8, float f9, float f10, Matrix matrix) {
        this.f12773l = pVar;
        this.f12765d = f4;
        this.f12766e = f5;
        this.f12767f = f6;
        this.f12768g = f7;
        this.f12769h = f8;
        this.f12770i = f9;
        this.f12771j = f10;
        this.f12772k = matrix;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.f12773l.f12801l.setAlpha(C1114a.a(this.f12765d, this.f12766e, 0.0f, 0.2f, floatValue));
        g gVar = this.f12773l.f12801l;
        float f4 = this.f12767f;
        gVar.setScaleX(((this.f12768g - f4) * floatValue) + f4);
        g gVar2 = this.f12773l.f12801l;
        float f5 = this.f12769h;
        gVar2.setScaleY(((this.f12768g - f5) * floatValue) + f5);
        p pVar = this.f12773l;
        float f6 = this.f12770i;
        pVar.f12796g = w.f.a(this.f12771j, f6, floatValue, f6);
        Matrix matrix = this.f12772k;
        pVar.getClass();
        matrix.reset();
        pVar.f12801l.getDrawable();
        this.f12773l.f12801l.setImageMatrix(this.f12772k);
    }
}
