package androidx.dynamicanimation.animation;

import android.util.AndroidRuntimeException;
/* loaded from: classes.dex */
public final class s extends m {

    /* renamed from: x  reason: collision with root package name */
    public t f3211x;

    /* renamed from: y  reason: collision with root package name */
    public float f3212y;

    /* renamed from: z  reason: collision with root package name */
    public boolean f3213z;

    public s(q qVar, Object obj) {
        super(qVar, obj);
        this.f3211x = null;
        this.f3212y = Float.MAX_VALUE;
        this.f3213z = false;
    }

    @Override // androidx.dynamicanimation.animation.m
    public final void b() {
        super.b();
        float f4 = this.f3212y;
        if (f4 != Float.MAX_VALUE) {
            t tVar = this.f3211x;
            if (tVar == null) {
                this.f3211x = new t(f4);
            } else {
                tVar.f3222i = f4;
            }
            this.f3212y = Float.MAX_VALUE;
        }
    }

    @Override // androidx.dynamicanimation.animation.m
    public final void g(float f4) {
    }

    @Override // androidx.dynamicanimation.animation.m
    public final void h() {
        t tVar = this.f3211x;
        if (tVar == null) {
            throw new UnsupportedOperationException("Incomplete SpringAnimation: Either final position or a spring force needs to be set.");
        }
        double d4 = (float) tVar.f3222i;
        if (d4 > this.f3200g) {
            throw new UnsupportedOperationException("Final position of the spring cannot be greater than the max value.");
        }
        if (d4 < this.f3201h) {
            throw new UnsupportedOperationException("Final position of the spring cannot be less than the min value.");
        }
        tVar.getClass();
        double abs = Math.abs(this.f3203j * 0.75f);
        tVar.f3217d = abs;
        tVar.f3218e = abs * 62.5d;
        super.h();
    }

    @Override // androidx.dynamicanimation.animation.m
    public final boolean i(long j4) {
        if (this.f3213z) {
            float f4 = this.f3212y;
            if (f4 != Float.MAX_VALUE) {
                this.f3211x.f3222i = f4;
                this.f3212y = Float.MAX_VALUE;
            }
            this.f3195b = (float) this.f3211x.f3222i;
            this.f3194a = 0.0f;
            this.f3213z = false;
            return true;
        }
        if (this.f3212y != Float.MAX_VALUE) {
            long j5 = j4 / 2;
            i c4 = this.f3211x.c(this.f3195b, this.f3194a, j5);
            t tVar = this.f3211x;
            tVar.f3222i = this.f3212y;
            this.f3212y = Float.MAX_VALUE;
            i c5 = tVar.c(c4.f3181a, c4.f3182b, j5);
            this.f3195b = c5.f3181a;
            this.f3194a = c5.f3182b;
        } else {
            i c6 = this.f3211x.c(this.f3195b, this.f3194a, j4);
            this.f3195b = c6.f3181a;
            this.f3194a = c6.f3182b;
        }
        float max = Math.max(this.f3195b, this.f3201h);
        this.f3195b = max;
        float min = Math.min(max, this.f3200g);
        this.f3195b = min;
        float f5 = this.f3194a;
        t tVar2 = this.f3211x;
        tVar2.getClass();
        if (((double) Math.abs(f5)) < tVar2.f3218e && ((double) Math.abs(min - ((float) tVar2.f3222i))) < tVar2.f3217d) {
            this.f3195b = (float) this.f3211x.f3222i;
            this.f3194a = 0.0f;
            return true;
        }
        return false;
    }

    public final void j(float f4) {
        if (this.f3199f) {
            this.f3212y = f4;
            return;
        }
        if (this.f3211x == null) {
            this.f3211x = new t(f4);
        }
        this.f3211x.f3222i = f4;
        h();
    }

    public final void k() {
        if (!(this.f3211x.f3215b > 0.0d)) {
            throw new UnsupportedOperationException("Spring animations can only come to an end when there is damping");
        }
        if (!((e) m.d().f3176e).a()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        if (this.f3199f) {
            this.f3213z = true;
        }
    }

    public s(Object obj, q qVar) {
        super(qVar, obj);
        this.f3211x = null;
        this.f3212y = Float.MAX_VALUE;
        this.f3213z = false;
        this.f3211x = new t(0.0f);
    }
}
