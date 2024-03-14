package n2;

import android.animation.ValueAnimator;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* loaded from: classes.dex */
public final class b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f11805d;

    public b(BottomSheetBehavior bottomSheetBehavior) {
        this.f11805d = bottomSheetBehavior;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        C2.i iVar = this.f11805d.f7785h;
        if (iVar != null) {
            C2.h hVar = iVar.f160d;
            if (hVar.f146j != floatValue) {
                hVar.f146j = floatValue;
                iVar.f164h = true;
                iVar.invalidateSelf();
            }
        }
    }
}
