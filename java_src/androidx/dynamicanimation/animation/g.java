package androidx.dynamicanimation.animation;

import java.util.ArrayList;
/* loaded from: classes.dex */
public final class g {

    /* renamed from: i  reason: collision with root package name */
    public static final ThreadLocal f3171i = new ThreadLocal();

    /* renamed from: e  reason: collision with root package name */
    public final r f3176e;

    /* renamed from: h  reason: collision with root package name */
    public e f3179h;

    /* renamed from: a  reason: collision with root package name */
    public final q.m f3172a = new q.m();

    /* renamed from: b  reason: collision with root package name */
    public final ArrayList f3173b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public final b f3174c = new b(this);

    /* renamed from: d  reason: collision with root package name */
    public final a f3175d = new Runnable() { // from class: androidx.dynamicanimation.animation.a
        /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0045 A[SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                r10 = this;
                androidx.dynamicanimation.animation.g r10 = androidx.dynamicanimation.animation.g.this
                androidx.dynamicanimation.animation.b r10 = r10.f3174c
                r10.getClass()
                long r0 = android.os.SystemClock.uptimeMillis()
                androidx.dynamicanimation.animation.g r10 = r10.f3166a
                r10.getClass()
                long r2 = android.os.SystemClock.uptimeMillis()
                r4 = 0
                r5 = r4
            L16:
                java.util.ArrayList r6 = r10.f3173b
                int r7 = r6.size()
                if (r5 >= r7) goto L48
                java.lang.Object r6 = r6.get(r5)
                androidx.dynamicanimation.animation.c r6 = (androidx.dynamicanimation.animation.c) r6
                if (r6 != 0) goto L27
                goto L45
            L27:
                q.m r7 = r10.f3172a
                java.lang.Object r8 = r7.get(r6)
                java.lang.Long r8 = (java.lang.Long) r8
                if (r8 != 0) goto L32
                goto L3d
            L32:
                long r8 = r8.longValue()
                int r8 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
                if (r8 >= 0) goto L3f
                r7.remove(r6)
            L3d:
                r7 = 1
                goto L40
            L3f:
                r7 = r4
            L40:
                if (r7 == 0) goto L45
                r6.doAnimationFrame(r0)
            L45:
                int r5 = r5 + 1
                goto L16
            L48:
                boolean r0 = r10.f3177f
                if (r0 == 0) goto L72
                int r0 = r6.size()
            L50:
                int r0 = r0 + (-1)
                if (r0 < 0) goto L5e
                java.lang.Object r1 = r6.get(r0)
                if (r1 != 0) goto L50
                r6.remove(r0)
                goto L50
            L5e:
                int r0 = r6.size()
                if (r0 != 0) goto L70
                androidx.dynamicanimation.animation.e r0 = r10.f3179h
                java.lang.Object r1 = r0.f3168a
                android.animation.ValueAnimator$DurationScaleChangeListener r1 = (android.animation.ValueAnimator.DurationScaleChangeListener) r1
                android.animation.ValueAnimator.unregisterDurationScaleChangeListener(r1)
                r1 = 0
                r0.f3168a = r1
            L70:
                r10.f3177f = r4
            L72:
                int r0 = r6.size()
                if (r0 <= 0) goto L8a
                androidx.dynamicanimation.animation.r r0 = r10.f3176e
                androidx.dynamicanimation.animation.e r0 = (androidx.dynamicanimation.animation.e) r0
                java.lang.Object r0 = r0.f3168a
                android.view.Choreographer r0 = (android.view.Choreographer) r0
                androidx.dynamicanimation.animation.f r1 = new androidx.dynamicanimation.animation.f
                androidx.dynamicanimation.animation.a r10 = r10.f3175d
                r1.<init>(r10)
                r0.postFrameCallback(r1)
            L8a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.dynamicanimation.animation.a.run():void");
        }
    };

    /* renamed from: f  reason: collision with root package name */
    public boolean f3177f = false;

    /* renamed from: g  reason: collision with root package name */
    public float f3178g = 1.0f;

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.dynamicanimation.animation.a] */
    public g(e eVar) {
        this.f3176e = eVar;
    }
}
