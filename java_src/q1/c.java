package Q1;

import android.animation.Animator;
import com.android.launcher3.anim.AnimatorPlaybackController;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class c implements Animator.AnimatorListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ d f1611d;

    public c(d dVar) {
        this.f1611d = dVar;
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        h.e(animator, "animator");
        AnimatorPlaybackController playbackController = this.f1611d.f1612a.getAnimationCoordinator().getPlaybackController(this.f1611d);
        if (playbackController != null) {
            playbackController.dispatchOnCancel();
            playbackController.dispatchOnEnd();
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        h.e(animator, "animator");
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        h.e(animator, "animator");
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        h.e(animator, "animator");
    }
}
