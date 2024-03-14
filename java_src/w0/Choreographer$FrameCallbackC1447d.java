package w0;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.PointF;
import android.view.Choreographer;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import k0.C1189d;
import k0.C1198m;
/* renamed from: w0.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class Choreographer$FrameCallbackC1447d extends ValueAnimator implements Choreographer.FrameCallback {

    /* renamed from: m  reason: collision with root package name */
    public C1198m f12730m;

    /* renamed from: d  reason: collision with root package name */
    public final Set f12721d = new CopyOnWriteArraySet();

    /* renamed from: e  reason: collision with root package name */
    public final Set f12722e = new CopyOnWriteArraySet();

    /* renamed from: f  reason: collision with root package name */
    public float f12723f = 1.0f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f12724g = false;

    /* renamed from: h  reason: collision with root package name */
    public long f12725h = 0;

    /* renamed from: i  reason: collision with root package name */
    public float f12726i = 0.0f;

    /* renamed from: j  reason: collision with root package name */
    public int f12727j = 0;

    /* renamed from: k  reason: collision with root package name */
    public float f12728k = -2.14748365E9f;

    /* renamed from: l  reason: collision with root package name */
    public float f12729l = 2.14748365E9f;

    /* renamed from: n  reason: collision with root package name */
    public boolean f12731n = false;

    @Override // android.animation.Animator
    /* renamed from: a */
    public final void addListener(Animator.AnimatorListener animatorListener) {
        ((CopyOnWriteArraySet) this.f12722e).add(animatorListener);
    }

    @Override // android.animation.ValueAnimator
    /* renamed from: b */
    public final void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ((CopyOnWriteArraySet) this.f12721d).add(animatorUpdateListener);
    }

    public final float c() {
        C1198m c1198m = this.f12730m;
        if (c1198m == null) {
            return 0.0f;
        }
        float f4 = this.f12729l;
        return f4 == 2.14748365E9f ? c1198m.f11132l : f4;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final void cancel() {
        Iterator it = ((CopyOnWriteArraySet) this.f12722e).iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationCancel(this);
        }
        g(f());
        k(true);
    }

    public final float d() {
        C1198m c1198m = this.f12730m;
        if (c1198m == null) {
            return 0.0f;
        }
        float f4 = this.f12728k;
        return f4 == -2.14748365E9f ? c1198m.f11131k : f4;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j4) {
        boolean z4 = false;
        if (this.f12731n) {
            k(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
        C1198m c1198m = this.f12730m;
        if (c1198m == null || !this.f12731n) {
            return;
        }
        long j5 = this.f12725h;
        float abs = ((float) (j5 != 0 ? j4 - j5 : 0L)) / ((1.0E9f / c1198m.f11133m) / Math.abs(this.f12723f));
        float f4 = this.f12726i;
        if (f()) {
            abs = -abs;
        }
        float f5 = f4 + abs;
        this.f12726i = f5;
        float d4 = d();
        float c4 = c();
        PointF pointF = f.f12733a;
        if (f5 >= d4 && f5 <= c4) {
            z4 = true;
        }
        boolean z5 = !z4;
        this.f12726i = f.b(this.f12726i, d(), c());
        this.f12725h = j4;
        h();
        if (z5) {
            if (getRepeatCount() == -1 || this.f12727j < getRepeatCount()) {
                Iterator it = ((CopyOnWriteArraySet) this.f12722e).iterator();
                while (it.hasNext()) {
                    ((Animator.AnimatorListener) it.next()).onAnimationRepeat(this);
                }
                this.f12727j++;
                if (getRepeatMode() == 2) {
                    this.f12724g = !this.f12724g;
                    this.f12723f = -this.f12723f;
                } else {
                    this.f12726i = f() ? c() : d();
                }
                this.f12725h = j4;
            } else {
                this.f12726i = this.f12723f < 0.0f ? d() : c();
                k(true);
                g(f());
            }
        }
        if (this.f12730m != null) {
            float f6 = this.f12726i;
            if (f6 < this.f12728k || f6 > this.f12729l) {
                throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f12728k), Float.valueOf(this.f12729l), Float.valueOf(this.f12726i)));
            }
        }
        C1189d.a();
    }

    public final long e() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    public final boolean f() {
        return this.f12723f < 0.0f;
    }

    public final void g(boolean z4) {
        Iterator it = ((CopyOnWriteArraySet) this.f12722e).iterator();
        while (it.hasNext()) {
            ((Animator.AnimatorListener) it.next()).onAnimationEnd(this, z4);
        }
    }

    @Override // android.animation.ValueAnimator
    public final float getAnimatedFraction() {
        float d4;
        float c4;
        float d5;
        if (this.f12730m == null) {
            return 0.0f;
        }
        if (f()) {
            d4 = c() - this.f12726i;
            c4 = c();
            d5 = d();
        } else {
            d4 = this.f12726i - d();
            c4 = c();
            d5 = d();
        }
        return d4 / (c4 - d5);
    }

    @Override // android.animation.ValueAnimator
    public final Object getAnimatedValue() {
        float f4;
        C1198m c1198m = this.f12730m;
        if (c1198m == null) {
            f4 = 0.0f;
        } else {
            float f5 = this.f12726i;
            float f6 = c1198m.f11131k;
            f4 = (f5 - f6) / (c1198m.f11132l - f6);
        }
        return Float.valueOf(f4);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final long getDuration() {
        C1198m c1198m = this.f12730m;
        if (c1198m == null) {
            return 0L;
        }
        return c1198m.b();
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final /* bridge */ /* synthetic */ long getStartDelay() {
        e();
        throw null;
    }

    public final void h() {
        Iterator it = ((CopyOnWriteArraySet) this.f12721d).iterator();
        while (it.hasNext()) {
            ((ValueAnimator.AnimatorUpdateListener) it.next()).onAnimationUpdate(this);
        }
    }

    @Override // android.animation.Animator
    /* renamed from: i */
    public final void removeAllListeners() {
        ((CopyOnWriteArraySet) this.f12722e).clear();
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final boolean isRunning() {
        return this.f12731n;
    }

    @Override // android.animation.ValueAnimator
    /* renamed from: j */
    public final void removeAllUpdateListeners() {
        ((CopyOnWriteArraySet) this.f12721d).clear();
    }

    public final void k(boolean z4) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z4) {
            this.f12731n = false;
        }
    }

    @Override // android.animation.Animator
    /* renamed from: l */
    public final void removeListener(Animator.AnimatorListener animatorListener) {
        ((CopyOnWriteArraySet) this.f12722e).remove(animatorListener);
    }

    @Override // android.animation.ValueAnimator
    /* renamed from: m */
    public final void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ((CopyOnWriteArraySet) this.f12721d).remove(animatorUpdateListener);
    }

    public final ValueAnimator n(long j4) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }

    public final void o(float f4) {
        if (this.f12726i == f4) {
            return;
        }
        this.f12726i = f.b(f4, d(), c());
        this.f12725h = 0L;
        h();
    }

    public final void p(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    public final void q(float f4, float f5) {
        if (f4 > f5) {
            throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f4), Float.valueOf(f5)));
        }
        C1198m c1198m = this.f12730m;
        float f6 = c1198m == null ? -3.4028235E38f : c1198m.f11131k;
        float f7 = c1198m == null ? Float.MAX_VALUE : c1198m.f11132l;
        float b4 = f.b(f4, f6, f7);
        float b5 = f.b(f5, f6, f7);
        if (b4 == this.f12728k && b5 == this.f12729l) {
            return;
        }
        this.f12728k = b4;
        this.f12729l = b5;
        o((int) f.b(this.f12726i, b4, b5));
    }

    public final void r(long j4) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final /* bridge */ /* synthetic */ Animator setDuration(long j4) {
        n(j4);
        throw null;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final /* bridge */ /* synthetic */ void setInterpolator(TimeInterpolator timeInterpolator) {
        p(timeInterpolator);
        throw null;
    }

    @Override // android.animation.ValueAnimator
    public final void setRepeatMode(int i4) {
        super.setRepeatMode(i4);
        if (i4 == 2 || !this.f12724g) {
            return;
        }
        this.f12724g = false;
        this.f12723f = -this.f12723f;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final /* bridge */ /* synthetic */ void setStartDelay(long j4) {
        r(j4);
        throw null;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public final /* bridge */ /* synthetic */ ValueAnimator setDuration(long j4) {
        n(j4);
        throw null;
    }
}
