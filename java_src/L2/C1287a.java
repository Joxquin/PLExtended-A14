package l2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
/* renamed from: l2.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1287a extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ HideBottomViewOnScrollBehavior f11559d;

    public C1287a(HideBottomViewOnScrollBehavior hideBottomViewOnScrollBehavior) {
        this.f11559d = hideBottomViewOnScrollBehavior;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f11559d.f7739e = null;
    }
}
