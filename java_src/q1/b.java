package Q1;

import android.animation.ValueAnimator;
import android.view.RemoteAnimationTarget;
import com.android.quickstep.util.SurfaceTransaction;
import com.android.quickstep.util.SurfaceTransactionApplier;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ SurfaceTransactionApplier f1609d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RemoteAnimationTarget f1610e;

    public b(SurfaceTransactionApplier surfaceTransactionApplier, RemoteAnimationTarget remoteAnimationTarget) {
        this.f1609d = surfaceTransactionApplier;
        this.f1610e = remoteAnimationTarget;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        SurfaceTransactionApplier surfaceTransactionApplier = this.f1609d;
        SurfaceTransaction surfaceTransaction = new SurfaceTransaction();
        SurfaceTransaction.SurfaceProperties forSurface = surfaceTransaction.forSurface(this.f1610e.leash);
        Object animatedValue = valueAnimator.getAnimatedValue();
        h.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        forSurface.setAlpha(((Float) animatedValue).floatValue());
        surfaceTransactionApplier.scheduleApply(surfaceTransaction);
    }
}
