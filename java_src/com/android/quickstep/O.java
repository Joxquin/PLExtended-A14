package com.android.quickstep;

import android.animation.ValueAnimator;
/* loaded from: classes.dex */
public final /* synthetic */ class O implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5501d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ LauncherBackAnimationController f5502e;

    public /* synthetic */ O(LauncherBackAnimationController launcherBackAnimationController, int i4) {
        this.f5501d = i4;
        this.f5502e = launcherBackAnimationController;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f5501d) {
            case 0:
                LauncherBackAnimationController.a(this.f5502e, valueAnimator);
                return;
            default:
                LauncherBackAnimationController.b(this.f5502e, valueAnimator);
                return;
        }
    }
}
