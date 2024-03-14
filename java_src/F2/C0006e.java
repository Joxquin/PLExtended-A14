package F2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: F2.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0006e extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f443d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0007f f444e;

    public /* synthetic */ C0006e(C0007f c0007f, int i4) {
        this.f443d = i4;
        this.f444e = c0007f;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f443d) {
            case 1:
                this.f444e.f498b.h(false);
                return;
            default:
                super.onAnimationEnd(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f443d) {
            case 0:
                this.f444e.f498b.h(true);
                return;
            default:
                super.onAnimationStart(animator);
                return;
        }
    }
}
