package k0;

import android.animation.ValueAnimator;
import w0.Choreographer$FrameCallbackC1447d;
/* renamed from: k0.B  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1177B implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ com.airbnb.lottie.a f11043d;

    public C1177B(com.airbnb.lottie.a aVar) {
        this.f11043d = aVar;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float f4;
        com.airbnb.lottie.a aVar = this.f11043d;
        s0.c cVar = aVar.f4330r;
        if (cVar != null) {
            Choreographer$FrameCallbackC1447d choreographer$FrameCallbackC1447d = aVar.f4317e;
            C1198m c1198m = choreographer$FrameCallbackC1447d.f12730m;
            if (c1198m == null) {
                f4 = 0.0f;
            } else {
                float f5 = choreographer$FrameCallbackC1447d.f12726i;
                float f6 = c1198m.f11131k;
                f4 = (f5 - f6) / (c1198m.f11132l - f6);
            }
            cVar.t(f4);
        }
    }
}
