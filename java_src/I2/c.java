package I2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* loaded from: classes.dex */
public final class c extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ boolean f564d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ View f565e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ View f566f;

    public c(boolean z4, View view, View view2) {
        this.f564d = z4;
        this.f565e = view;
        this.f566f = view2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f564d) {
            return;
        }
        this.f565e.setVisibility(4);
        this.f566f.setAlpha(1.0f);
        this.f566f.setVisibility(0);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        if (this.f564d) {
            this.f565e.setVisibility(0);
            this.f566f.setAlpha(0.0f);
            this.f566f.setVisibility(4);
        }
    }
}
