package k;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionBarOverlayLayout;
/* renamed from: k.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1133e extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f10884d;

    public C1133e(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f10884d = actionBarOverlayLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f10884d;
        actionBarOverlayLayout.f2564z = null;
        actionBarOverlayLayout.f2552n = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f10884d;
        actionBarOverlayLayout.f2564z = null;
        actionBarOverlayLayout.f2552n = false;
    }
}
