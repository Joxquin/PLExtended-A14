package K2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.systemui.smartspace.BcSmartspaceView;
/* loaded from: classes.dex */
public final class x extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1011d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ View f1012e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ BcSmartspaceView f1013f;

    public x(BcSmartspaceView bcSmartspaceView, ViewGroup viewGroup, ConstraintLayout constraintLayout) {
        this.f1013f = bcSmartspaceView;
        this.f1011d = viewGroup;
        this.f1012e = constraintLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f1012e.setTranslationY(0.0f);
        this.f1012e.setAlpha(1.0f);
        this.f1011d.getOverlay().remove(this.f1012e);
        BcSmartspaceView bcSmartspaceView = this.f1013f;
        bcSmartspaceView.f8335l = null;
        bcSmartspaceView.f8336m = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f1011d.getOverlay().add(this.f1012e);
    }
}
