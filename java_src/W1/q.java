package W1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.apps.nexuslauncher.qsb.QsbTransitionManager;
/* loaded from: classes.dex */
public final class q extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ QsbTransitionManager f1917d;

    public q(QsbTransitionManager qsbTransitionManager) {
        this.f1917d = qsbTransitionManager;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        QsbTransitionManager qsbTransitionManager = this.f1917d;
        if (animator == qsbTransitionManager.f7529e) {
            qsbTransitionManager.f7529e = null;
        }
    }
}
