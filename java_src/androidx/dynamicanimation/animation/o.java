package androidx.dynamicanimation.animation;
/* loaded from: classes.dex */
public final class o extends m {

    /* renamed from: x  reason: collision with root package name */
    public final n f3209x;

    public o(q qVar, Object obj) {
        super(qVar, obj);
        n nVar = new n();
        this.f3209x = nVar;
        nVar.f3207b = this.f3203j * 0.75f * 62.5f;
    }

    @Override // androidx.dynamicanimation.animation.m
    public final void g(float f4) {
        this.f3209x.f3207b = f4 * 62.5f;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0069 A[RETURN] */
    @Override // androidx.dynamicanimation.animation.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i(long r7) {
        /*
            r6 = this;
            float r0 = r6.f3195b
            float r1 = r6.f3194a
            double r2 = (double) r1
            float r7 = (float) r7
            r8 = 1148846080(0x447a0000, float:1000.0)
            float r7 = r7 / r8
            androidx.dynamicanimation.animation.n r8 = r6.f3209x
            float r4 = r8.f3206a
            float r7 = r7 * r4
            double r4 = (double) r7
            double r4 = java.lang.Math.exp(r4)
            double r4 = r4 * r2
            float r7 = (float) r4
            androidx.dynamicanimation.animation.i r2 = r8.f3208c
            r2.f3182b = r7
            float r1 = r7 - r1
            float r3 = r8.f3206a
            float r1 = r1 / r3
            float r1 = r1 + r0
            r2.f3181a = r1
            float r7 = java.lang.Math.abs(r7)
            float r0 = r8.f3207b
            int r7 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            r0 = 1
            r1 = 0
            if (r7 >= 0) goto L2f
            r7 = r0
            goto L30
        L2f:
            r7 = r1
        L30:
            if (r7 == 0) goto L35
            r7 = 0
            r2.f3182b = r7
        L35:
            float r7 = r2.f3181a
            r6.f3195b = r7
            float r2 = r2.f3182b
            r6.f3194a = r2
            float r3 = r6.f3201h
            int r4 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r4 >= 0) goto L46
            r6.f3195b = r3
            return r0
        L46:
            float r3 = r6.f3200g
            int r7 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r7 <= 0) goto L4f
            r6.f3195b = r3
            return r0
        L4f:
            if (r7 >= 0) goto L65
            if (r4 <= 0) goto L65
            float r6 = java.lang.Math.abs(r2)
            float r7 = r8.f3207b
            int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            if (r6 >= 0) goto L5f
            r6 = r0
            goto L60
        L5f:
            r6 = r1
        L60:
            if (r6 == 0) goto L63
            goto L65
        L63:
            r6 = r1
            goto L66
        L65:
            r6 = r0
        L66:
            if (r6 == 0) goto L69
            return r0
        L69:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.dynamicanimation.animation.o.i(long):boolean");
    }
}
