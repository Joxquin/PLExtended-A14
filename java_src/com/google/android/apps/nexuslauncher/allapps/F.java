package com.google.android.apps.nexuslauncher.allapps;

import android.animation.ObjectAnimator;
import android.util.Log;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.animation.Interpolator;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.logging.StatsLogManager;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public final class F implements WindowInsetsAnimationControlListener {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f6548a;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f6550c;

    /* renamed from: d  reason: collision with root package name */
    public final Interpolator f6551d;

    /* renamed from: e  reason: collision with root package name */
    public final com.google.android.apps.nexuslauncher.logging.b f6552e;

    /* renamed from: f  reason: collision with root package name */
    public WindowInsetsAnimationController f6553f;

    /* renamed from: g  reason: collision with root package name */
    public AnimatedFloat f6554g;

    /* renamed from: b  reason: collision with root package name */
    public final AnimatedFloat f6549b = new AnimatedFloat(new D(0, this));

    /* renamed from: h  reason: collision with root package name */
    public Boolean f6555h = null;

    public F(boolean z4, Interpolator interpolator, L l4, com.google.android.apps.nexuslauncher.logging.b bVar) {
        Log.i("KeyboardInsetAnimation", "KeyboardInsetAnimation, toAllApps=" + z4);
        this.f6550c = z4;
        this.f6551d = interpolator;
        this.f6548a = new WeakReference(l4);
        this.f6552e = bVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0026, code lost:
        if (r4.f6550c != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(com.google.android.apps.nexuslauncher.allapps.F r4) {
        /*
            android.view.WindowInsetsAnimationController r0 = r4.f6553f
            if (r0 != 0) goto L5
            goto L61
        L5:
            boolean r0 = r0.isCancelled()
            if (r0 != 0) goto L61
            android.view.WindowInsetsAnimationController r0 = r4.f6553f
            boolean r0 = r0.isFinished()
            if (r0 == 0) goto L14
            goto L61
        L14:
            com.android.launcher3.anim.AnimatedFloat r0 = r4.f6554g
            r1 = 1065353216(0x3f800000, float:1.0)
            if (r0 == 0) goto L29
            float r0 = r0.value
            com.android.launcher3.anim.AnimatedFloat r2 = r4.f6549b
            float r2 = r2.value
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 >= 0) goto L29
            boolean r2 = r4.f6550c
            if (r2 == 0) goto L36
            goto L38
        L29:
            boolean r0 = r4.f6550c
            if (r0 == 0) goto L32
            com.android.launcher3.anim.AnimatedFloat r0 = r4.f6549b
            float r0 = r0.value
            goto L38
        L32:
            com.android.launcher3.anim.AnimatedFloat r0 = r4.f6549b
            float r0 = r0.value
        L36:
            float r0 = r1 - r0
        L38:
            android.view.WindowInsetsAnimationController r1 = r4.f6553f
            android.graphics.Insets r1 = r1.getHiddenStateInsets()
            int r1 = r1.bottom
            android.view.WindowInsetsAnimationController r2 = r4.f6553f
            android.graphics.Insets r2 = r2.getShownStateInsets()
            int r2 = r2.bottom
            int r2 = r2 - r1
            float r1 = (float) r1
            float r2 = (float) r2
            float r2 = r2 * r0
            float r2 = r2 + r1
            int r1 = java.lang.Math.round(r2)
            android.view.animation.Interpolator r2 = r4.f6551d
            float r2 = r2.getInterpolation(r0)
            android.view.WindowInsetsAnimationController r4 = r4.f6553f
            r3 = 0
            android.graphics.Insets r1 = android.graphics.Insets.of(r3, r3, r3, r1)
            r4.setInsetsAndAlpha(r1, r2, r0)
        L61:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.allapps.F.a(com.google.android.apps.nexuslauncher.allapps.F):void");
    }

    public final void b() {
        Log.i("KeyboardInsetAnimation", "applyFinish, mShowKeyboardOnEnd=" + this.f6555h + " mController=" + this.f6553f);
        WindowInsetsAnimationController windowInsetsAnimationController = this.f6553f;
        if (windowInsetsAnimationController == null) {
            return;
        }
        int i4 = windowInsetsAnimationController.getHiddenStateInsets().bottom;
        int i5 = this.f6553f.getShownStateInsets().bottom;
        int i6 = this.f6553f.getCurrentInsets().bottom;
        Boolean bool = this.f6555h;
        if (bool == null) {
            if (this.f6549b.value > 0.5f) {
                Log.i("KeyboardInsetAnimation", "Performing fallback animation for applyFinish in onReady");
                c(this.f6550c, i4, i5, i6);
            }
        } else if (!(bool.booleanValue() && i6 == i5) && (this.f6555h.booleanValue() || i6 != i4)) {
            c(this.f6550c, i4, i5, i6);
        } else {
            this.f6553f.finish(this.f6555h.booleanValue());
        }
    }

    public final void c(boolean z4, float f4, float f5, float f6) {
        Log.i("KeyboardInsetAnimation", "performFallbackAnimation, shouldShow=" + z4 + " hiddenY=" + f4 + " shownY=" + f5 + " currentY=" + f6);
        AnimatedFloat animatedFloat = new AnimatedFloat(new D(1, this));
        this.f6554g = animatedFloat;
        animatedFloat.value = z4 ? (f6 - f4) / (f5 - f4) : (f5 - f6) / (f5 - f4);
        ObjectAnimator duration = animatedFloat.animateToValue(1.0f).setDuration(300L);
        duration.setInterpolator(y0.e.f12939c);
        duration.addListener(new E(this, 1));
        duration.start();
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public final void onCancelled(WindowInsetsAnimationController windowInsetsAnimationController) {
        Log.e("KeyboardInsetAnimation", "onCancelled, mController=" + this.f6553f + " controller=" + windowInsetsAnimationController, new Exception());
        this.f6553f = null;
        L l4 = (L) this.f6548a.get();
        if (l4 != null) {
            l4.a(3);
        }
        this.f6552e.a(windowInsetsAnimationController, StatsLogManager.StatsLatencyLogger.LatencyType.CONTROLLED);
        AnimatedFloat animatedFloat = this.f6554g;
        if (animatedFloat != null) {
            animatedFloat.cancelAnimation();
            this.f6554g = null;
        }
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public final void onFinished(WindowInsetsAnimationController windowInsetsAnimationController) {
        Log.i("KeyboardInsetAnimation", "onFinished, controller=" + this.f6553f + " controller=" + windowInsetsAnimationController);
        this.f6553f = null;
        this.f6552e.b(windowInsetsAnimationController, StatsLogManager.StatsLatencyLogger.LatencyType.CONTROLLED);
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public final void onReady(WindowInsetsAnimationController windowInsetsAnimationController, int i4) {
        Log.i("KeyboardInsetAnimation", "onReady, controller=" + windowInsetsAnimationController);
        this.f6553f = windowInsetsAnimationController;
        L l4 = (L) this.f6548a.get();
        if (l4 != null) {
            l4.f6615a = windowInsetsAnimationController.getShownStateInsets().bottom;
            l4.a(1);
        }
        this.f6552e.c(windowInsetsAnimationController, StatsLogManager.StatsLatencyLogger.LatencyType.CONTROLLED);
        b();
    }
}
