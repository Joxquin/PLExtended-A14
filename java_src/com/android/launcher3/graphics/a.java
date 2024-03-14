package com.android.launcher3.graphics;

import android.animation.FloatArrayEvaluator;
import android.animation.ValueAnimator;
import android.graphics.Path;
import com.android.launcher3.graphics.IconShape;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4635d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ FloatArrayEvaluator f4636e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ float[] f4637f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ float[] f4638g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Path f4639h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ IconShape.PathShape f4640i;

    public /* synthetic */ a(IconShape.PathShape pathShape, FloatArrayEvaluator floatArrayEvaluator, float[] fArr, float[] fArr2, Path path, int i4) {
        this.f4635d = i4;
        this.f4640i = pathShape;
        this.f4636e = floatArrayEvaluator;
        this.f4637f = fArr;
        this.f4638g = fArr2;
        this.f4639h = path;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f4635d) {
            case 0:
                IconShape.Circle.a((IconShape.Circle) this.f4640i, this.f4636e, this.f4637f, this.f4638g, this.f4639h, valueAnimator);
                return;
            default:
                IconShape.TearDrop.a((IconShape.TearDrop) this.f4640i, this.f4636e, this.f4637f, this.f4638g, this.f4639h, valueAnimator);
                return;
        }
    }
}
