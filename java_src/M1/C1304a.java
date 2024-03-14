package m1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Trace;
import com.android.systemui.navigationbar.buttons.KeyButtonRipple;
/* renamed from: m1.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1304a extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f11727d = 0;

    /* renamed from: e  reason: collision with root package name */
    public final Object f11728e;

    public C1304a(KeyButtonRipple keyButtonRipple) {
        this.f11728e = keyButtonRipple;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        switch (this.f11727d) {
            case 1:
                if (Trace.isEnabled()) {
                    Trace.instant(4096L, "KeyButtonRipple.cancel." + ((String) this.f11728e));
                    return;
                }
                return;
            default:
                super.onAnimationCancel(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f11727d) {
            case 0:
                ((KeyButtonRipple) this.f11728e).f6187u.remove(animator);
                if (((KeyButtonRipple) this.f11728e).f6187u.isEmpty()) {
                    KeyButtonRipple keyButtonRipple = (KeyButtonRipple) this.f11728e;
                    if (keyButtonRipple.f6178l) {
                        return;
                    }
                    keyButtonRipple.f6179m = false;
                    keyButtonRipple.invalidateSelf();
                    return;
                }
                return;
            default:
                if (Trace.isEnabled()) {
                    Trace.instant(4096L, "KeyButtonRipple.end." + ((String) this.f11728e));
                    return;
                }
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f11727d) {
            case 1:
                if (Trace.isEnabled()) {
                    Trace.instant(4096L, "KeyButtonRipple.start." + ((String) this.f11728e));
                    return;
                }
                return;
            default:
                super.onAnimationStart(animator);
                return;
        }
    }

    public C1304a(String str) {
        this.f11728e = str;
    }
}
