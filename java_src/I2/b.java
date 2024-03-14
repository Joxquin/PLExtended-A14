package I2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.transformation.ExpandableTransformationBehavior;
/* loaded from: classes.dex */
public final class b extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ExpandableTransformationBehavior f563d;

    public b(ExpandableTransformationBehavior expandableTransformationBehavior) {
        this.f563d = expandableTransformationBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f563d.f8260b = null;
    }
}
