package V1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.apps.nexuslauncher.overview.NexusOverviewActionsView;
/* loaded from: classes.dex */
public final class d extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ NexusOverviewActionsView f1814d;

    public d(NexusOverviewActionsView nexusOverviewActionsView) {
        this.f1814d = nexusOverviewActionsView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f1814d.f7492e.setVisibility(8);
    }
}
