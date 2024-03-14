package com.android.systemui.animation;
/* loaded from: classes.dex */
public final class ActivityLaunchAnimator$DelegatingAnimationCompletionListener implements e {

    /* renamed from: a  reason: collision with root package name */
    public boolean f6027a;

    public ActivityLaunchAnimator$DelegatingAnimationCompletionListener() {
        throw null;
    }

    @Override // com.android.systemui.animation.e
    public final void a() {
    }

    @Override // com.android.systemui.animation.e
    public final void b() {
        this.f6027a = true;
        throw null;
    }

    @Override // com.android.systemui.animation.e
    public final void c(float f4) {
    }

    @Override // com.android.systemui.animation.e
    public final void onLaunchAnimationEnd() {
        if (!this.f6027a) {
            throw null;
        }
    }
}
