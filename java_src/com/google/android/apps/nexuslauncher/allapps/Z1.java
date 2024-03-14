package com.google.android.apps.nexuslauncher.allapps;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* loaded from: classes.dex */
public final class Z1 extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final Runnable f6983d;

    public Z1(T1 t12) {
        this.f6983d = t12;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        super.onAnimationCancel(animator);
        this.f6983d.run();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.f6983d.run();
    }
}
