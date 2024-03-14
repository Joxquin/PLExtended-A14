package V1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.apps.nexuslauncher.overview.ShareTargetsView;
/* loaded from: classes.dex */
public final class s extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ShareTargetsView f1858d;

    public s(ShareTargetsView shareTargetsView) {
        this.f1858d = shareTargetsView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f1858d.setVisibility(8);
    }
}
