package com.android.systemui.animation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.GradientDrawable;
import android.view.ViewGroupOverlay;
import android.view.ViewOverlay;
/* loaded from: classes.dex */
public final class p extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ l f6103d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f6104e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ViewGroupOverlay f6105f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ GradientDrawable f6106g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ boolean f6107h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ ViewOverlay f6108i;

    public p(C0621b c0621b, boolean z4, ViewGroupOverlay viewGroupOverlay, GradientDrawable gradientDrawable, boolean z5, ViewOverlay viewOverlay) {
        this.f6103d = c0621b;
        this.f6104e = z4;
        this.f6105f = viewGroupOverlay;
        this.f6106g = gradientDrawable;
        this.f6107h = z5;
        this.f6108i = viewOverlay;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animation) {
        ViewOverlay viewOverlay;
        kotlin.jvm.internal.h.e(animation, "animation");
        this.f6103d.onLaunchAnimationEnd(this.f6104e);
        this.f6105f.remove(this.f6106g);
        if (!this.f6107h || (viewOverlay = this.f6108i) == null) {
            return;
        }
        viewOverlay.remove(this.f6106g);
    }

    @Override // android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animation, boolean z4) {
        kotlin.jvm.internal.h.e(animation, "animation");
        this.f6103d.onLaunchAnimationStart(this.f6104e);
        this.f6105f.add(this.f6106g);
    }
}
