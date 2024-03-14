package r2;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewAnimationUtils;
/* renamed from: r2.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1385b {
    public static Animator a(InterfaceC1390g interfaceC1390g, float f4, float f5, float f6) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(interfaceC1390g, C1387d.f12159a, C1386c.f12157b, new C1389f(f4, f5, f6));
        C1389f c4 = interfaceC1390g.c();
        if (c4 != null) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) interfaceC1390g, (int) f4, (int) f5, c4.f12163c, f6);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject, createCircularReveal);
            return animatorSet;
        }
        throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
    }
}
