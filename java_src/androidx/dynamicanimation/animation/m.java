package androidx.dynamicanimation.animation;

import android.animation.ValueAnimator;
import android.util.AndroidRuntimeException;
import android.view.Choreographer;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class m implements c {

    /* renamed from: m  reason: collision with root package name */
    public static final h f3183m = new h("translationX", 5);

    /* renamed from: n  reason: collision with root package name */
    public static final h f3184n = new h("translationY", 6);

    /* renamed from: o  reason: collision with root package name */
    public static final h f3185o = new h("translationZ", 7);

    /* renamed from: p  reason: collision with root package name */
    public static final h f3186p = new h("scaleX", 8);

    /* renamed from: q  reason: collision with root package name */
    public static final h f3187q = new h("scaleY", 9);

    /* renamed from: r  reason: collision with root package name */
    public static final h f3188r = new h("rotation", 10);

    /* renamed from: s  reason: collision with root package name */
    public static final h f3189s = new h("rotationX", 11);

    /* renamed from: t  reason: collision with root package name */
    public static final h f3190t = new h("rotationY", 12);

    /* renamed from: u  reason: collision with root package name */
    public static final h f3191u;

    /* renamed from: v  reason: collision with root package name */
    public static final h f3192v;

    /* renamed from: w  reason: collision with root package name */
    public static final h f3193w;

    /* renamed from: d  reason: collision with root package name */
    public final Object f3197d;

    /* renamed from: e  reason: collision with root package name */
    public final q f3198e;

    /* renamed from: j  reason: collision with root package name */
    public float f3203j;

    /* renamed from: a  reason: collision with root package name */
    public float f3194a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    public float f3195b = Float.MAX_VALUE;

    /* renamed from: c  reason: collision with root package name */
    public boolean f3196c = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f3199f = false;

    /* renamed from: g  reason: collision with root package name */
    public float f3200g = Float.MAX_VALUE;

    /* renamed from: h  reason: collision with root package name */
    public float f3201h = -3.4028235E38f;

    /* renamed from: i  reason: collision with root package name */
    public long f3202i = 0;

    /* renamed from: k  reason: collision with root package name */
    public final ArrayList f3204k = new ArrayList();

    /* renamed from: l  reason: collision with root package name */
    public final ArrayList f3205l = new ArrayList();

    static {
        new h("x", 13);
        new h("y", 0);
        new h("z", 1);
        f3191u = new h("alpha", 2);
        f3192v = new h("scrollX", 3);
        f3193w = new h("scrollY", 4);
    }

    public m(q qVar, Object obj) {
        this.f3197d = obj;
        this.f3198e = qVar;
        if (qVar == f3188r || qVar == f3189s || qVar == f3190t) {
            this.f3203j = 0.1f;
        } else if (qVar == f3191u) {
            this.f3203j = 0.00390625f;
        } else if (qVar == f3186p || qVar == f3187q) {
            this.f3203j = 0.002f;
        } else {
            this.f3203j = 1.0f;
        }
    }

    public static g d() {
        ThreadLocal threadLocal = g.f3171i;
        if (threadLocal.get() == null) {
            threadLocal.set(new g(new e()));
        }
        return (g) threadLocal.get();
    }

    public final void a(j jVar) {
        ArrayList arrayList = this.f3204k;
        if (arrayList.contains(jVar)) {
            return;
        }
        arrayList.add(jVar);
    }

    public void b() {
        if (!((e) d().f3176e).a()) {
            throw new AndroidRuntimeException("Animations may only be canceled from the same thread as the animation handler");
        }
        if (this.f3199f) {
            c(true);
        }
    }

    public final void c(boolean z4) {
        ArrayList arrayList;
        int i4 = 0;
        this.f3199f = false;
        g d4 = d();
        d4.f3172a.remove(this);
        ArrayList arrayList2 = d4.f3173b;
        int indexOf = arrayList2.indexOf(this);
        if (indexOf >= 0) {
            arrayList2.set(indexOf, null);
            d4.f3177f = true;
        }
        this.f3202i = 0L;
        this.f3196c = false;
        while (true) {
            arrayList = this.f3204k;
            if (i4 >= arrayList.size()) {
                break;
            }
            if (arrayList.get(i4) != null) {
                ((j) arrayList.get(i4)).onAnimationEnd(this, z4, this.f3195b, this.f3194a);
            }
            i4++;
        }
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    @Override // androidx.dynamicanimation.animation.c
    public final boolean doAnimationFrame(long j4) {
        long j5 = this.f3202i;
        if (j5 == 0) {
            this.f3202i = j4;
            f(this.f3195b);
            return false;
        }
        long j6 = j4 - j5;
        this.f3202i = j4;
        float f4 = d().f3178g;
        boolean i4 = i(f4 == 0.0f ? 2147483647L : ((float) j6) / f4);
        float min = Math.min(this.f3195b, this.f3200g);
        this.f3195b = min;
        float max = Math.max(min, this.f3201h);
        this.f3195b = max;
        f(max);
        if (i4) {
            c(false);
        }
        return i4;
    }

    public final void e(float f4) {
        if (f4 <= 0.0f) {
            throw new IllegalArgumentException("Minimum visible change must be positive.");
        }
        this.f3203j = f4;
        g(f4 * 0.75f);
    }

    public final void f(float f4) {
        ArrayList arrayList;
        this.f3198e.setValue(this.f3197d, f4);
        int i4 = 0;
        while (true) {
            arrayList = this.f3205l;
            if (i4 >= arrayList.size()) {
                break;
            }
            if (arrayList.get(i4) != null) {
                ((k) arrayList.get(i4)).a(this.f3195b, this.f3194a);
            }
            i4++;
        }
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }

    public abstract void g(float f4);

    public void h() {
        if (!((e) d().f3176e).a()) {
            throw new AndroidRuntimeException("Animations may only be started on the same thread as the animation handler");
        }
        boolean z4 = this.f3199f;
        if (z4 || z4) {
            return;
        }
        this.f3199f = true;
        if (!this.f3196c) {
            this.f3195b = this.f3198e.getValue(this.f3197d);
        }
        float f4 = this.f3195b;
        if (f4 > this.f3200g || f4 < this.f3201h) {
            throw new IllegalArgumentException("Starting value need to be in between min value and max value");
        }
        g d4 = d();
        ArrayList arrayList = d4.f3173b;
        if (arrayList.size() == 0) {
            ((Choreographer) ((e) d4.f3176e).f3168a).postFrameCallback(new f(d4.f3175d));
            d4.f3178g = ValueAnimator.getDurationScale();
            if (d4.f3179h == null) {
                d4.f3179h = new e(d4);
            }
            final e eVar = d4.f3179h;
            if (((ValueAnimator.DurationScaleChangeListener) eVar.f3168a) == null) {
                ValueAnimator.DurationScaleChangeListener durationScaleChangeListener = new ValueAnimator.DurationScaleChangeListener() { // from class: androidx.dynamicanimation.animation.d
                    public final void onChanged(float f5) {
                        ((g) e.this.f3169b).f3178g = f5;
                    }
                };
                eVar.f3168a = durationScaleChangeListener;
                ValueAnimator.registerDurationScaleChangeListener(durationScaleChangeListener);
            }
        }
        if (arrayList.contains(this)) {
            return;
        }
        arrayList.add(this);
    }

    public abstract boolean i(long j4);
}
