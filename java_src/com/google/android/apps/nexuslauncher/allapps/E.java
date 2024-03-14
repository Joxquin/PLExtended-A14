package com.google.android.apps.nexuslauncher.allapps;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Log;
import android.view.WindowInsetsAnimationController;
import com.android.launcher3.util.Executors;
/* loaded from: classes.dex */
public final class E extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6540d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ F f6541e;

    public /* synthetic */ E(F f4, int i4) {
        this.f6540d = i4;
        this.f6541e = f4;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        Boolean bool;
        switch (this.f6540d) {
            case 0:
                F f4 = this.f6541e;
                boolean z4 = f4.f6549b.value == 1.0f;
                if (f4.f6550c) {
                    f4.f6555h = Boolean.valueOf(z4);
                } else {
                    f4.f6555h = Boolean.valueOf(!z4);
                }
                f4.b();
                L l4 = (L) f4.f6548a.get();
                if (l4 != null) {
                    if (!z4) {
                        l4.a(3);
                        return;
                    }
                    l4.a(2);
                    Executors.MAIN_EXECUTOR.getHandler().postDelayed(new D(2, l4), 1500L);
                    return;
                }
                return;
            default:
                Log.i("KeyboardInsetAnimation", "applyFinish fallback listener, mShowKeyboardOnEnd=" + this.f6541e.f6555h + " mController=" + this.f6541e.f6553f);
                F f5 = this.f6541e;
                f5.f6554g = null;
                WindowInsetsAnimationController windowInsetsAnimationController = f5.f6553f;
                if (windowInsetsAnimationController == null || (bool = f5.f6555h) == null) {
                    return;
                }
                windowInsetsAnimationController.finish(bool.booleanValue());
                return;
        }
    }
}
