package P1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Log;
/* loaded from: classes.dex */
public final class e extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public boolean f1540d = true;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f1541e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ ObjectAnimator f1542f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ f f1543g;

    public e(f fVar, boolean z4, ObjectAnimator objectAnimator) {
        this.f1543g = fVar;
        this.f1541e = z4;
        this.f1542f = objectAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
        if (this.f1543g.f1548f.h()) {
            boolean z4 = this.f1540d;
            if (!z4) {
                this.f1543g.f1550h++;
            }
            this.f1540d = !z4;
        } else {
            this.f1543g.f1550h++;
        }
        f fVar = this.f1543g;
        if (fVar.f1565w && fVar.f1550h < this.f1542f.getRepeatCount()) {
            if (f.f1544y) {
                StringBuilder sb = new StringBuilder("Pausing doodle on loop=");
                sb.append(this.f1543g.f1550h - 1);
                Log.d("DoodleView", sb.toString());
            }
            this.f1543g.f1555m.pause();
            this.f1543g.f1565w = false;
        }
        if (f.f1544y) {
            Log.d("DoodleView", "mCurrentLoop=" + this.f1543g.f1550h);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        if (this.f1541e) {
            return;
        }
        f fVar = this.f1543g;
        fVar.f1550h = 1;
        this.f1542f.setCurrentPlayTime(fVar.f1548f.g() / 2);
    }
}
