package I2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* loaded from: classes.dex */
public final class h extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ boolean f573d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ View f574e;

    public h(boolean z4, View view) {
        this.f573d = z4;
        this.f574e = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f573d) {
            return;
        }
        this.f574e.setVisibility(4);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        if (this.f573d) {
            this.f574e.setVisibility(0);
        }
    }
}
