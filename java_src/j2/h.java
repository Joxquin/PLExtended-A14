package j2;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import v.C1429e;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final long f10711a;

    /* renamed from: b  reason: collision with root package name */
    public final long f10712b;

    /* renamed from: c  reason: collision with root package name */
    public final TimeInterpolator f10713c;

    /* renamed from: d  reason: collision with root package name */
    public int f10714d;

    /* renamed from: e  reason: collision with root package name */
    public int f10715e;

    public h(long j4) {
        this.f10711a = 0L;
        this.f10712b = 300L;
        this.f10713c = null;
        this.f10714d = 0;
        this.f10715e = 1;
        this.f10711a = j4;
        this.f10712b = 150L;
    }

    public final void a(Animator animator) {
        animator.setStartDelay(this.f10711a);
        animator.setDuration(this.f10712b);
        animator.setInterpolator(b());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.f10714d);
            valueAnimator.setRepeatMode(this.f10715e);
        }
    }

    public final TimeInterpolator b() {
        TimeInterpolator timeInterpolator = this.f10713c;
        return timeInterpolator != null ? timeInterpolator : C1114a.f10701b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (this.f10711a == hVar.f10711a && this.f10712b == hVar.f10712b && this.f10714d == hVar.f10714d && this.f10715e == hVar.f10715e) {
                return b().getClass().equals(hVar.b().getClass());
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        long j4 = this.f10711a;
        long j5 = this.f10712b;
        return ((((b().getClass().hashCode() + (((((int) (j4 ^ (j4 >>> 32))) * 31) + ((int) ((j5 >>> 32) ^ j5))) * 31)) * 31) + this.f10714d) * 31) + this.f10715e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n");
        sb.append(h.class.getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" delay: ");
        sb.append(this.f10711a);
        sb.append(" duration: ");
        sb.append(this.f10712b);
        sb.append(" interpolator: ");
        sb.append(b().getClass());
        sb.append(" repeatCount: ");
        sb.append(this.f10714d);
        sb.append(" repeatMode: ");
        return C1429e.a(sb, this.f10715e, "}\n");
    }

    public h(long j4, long j5, TimeInterpolator timeInterpolator) {
        this.f10711a = 0L;
        this.f10712b = 300L;
        this.f10713c = null;
        this.f10714d = 0;
        this.f10715e = 1;
        this.f10711a = j4;
        this.f10712b = j5;
        this.f10713c = timeInterpolator;
    }
}
