package N;

import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.ListView;
/* loaded from: classes.dex */
public final class d implements View.OnTouchListener {

    /* renamed from: u  reason: collision with root package name */
    public static final int f1389u = ViewConfiguration.getTapTimeout();

    /* renamed from: d  reason: collision with root package name */
    public final a f1390d;

    /* renamed from: e  reason: collision with root package name */
    public final Interpolator f1391e;

    /* renamed from: f  reason: collision with root package name */
    public final View f1392f;

    /* renamed from: g  reason: collision with root package name */
    public b f1393g;

    /* renamed from: h  reason: collision with root package name */
    public final float[] f1394h;

    /* renamed from: i  reason: collision with root package name */
    public final float[] f1395i;

    /* renamed from: j  reason: collision with root package name */
    public int f1396j;

    /* renamed from: k  reason: collision with root package name */
    public int f1397k;

    /* renamed from: l  reason: collision with root package name */
    public final float[] f1398l;

    /* renamed from: m  reason: collision with root package name */
    public final float[] f1399m;

    /* renamed from: n  reason: collision with root package name */
    public final float[] f1400n;

    /* renamed from: o  reason: collision with root package name */
    public boolean f1401o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f1402p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f1403q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f1404r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f1405s;

    /* renamed from: t  reason: collision with root package name */
    public final ListView f1406t;

    public d(ListView listView) {
        a aVar = new a();
        this.f1390d = aVar;
        this.f1391e = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.f1394h = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f1395i = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.f1398l = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.f1399m = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f1400n = fArr5;
        this.f1392f = listView;
        float f4 = Resources.getSystem().getDisplayMetrics().density;
        fArr5[0] = ((int) ((1575.0f * f4) + 0.5f)) / 1000.0f;
        fArr4[0] = ((int) ((f4 * 315.0f) + 0.5f)) / 1000.0f;
        this.f1396j = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr3[0] = 0.001f;
        this.f1397k = f1389u;
        aVar.f1379a = 500;
        aVar.f1380b = 500;
        this.f1406t = listView;
    }

    public static float b(float f4, float f5, float f6) {
        return f4 > f6 ? f6 : f4 < f5 ? f5 : f4;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float a(int r4, float r5, float r6, float r7) {
        /*
            r3 = this;
            float[] r0 = r3.f1394h
            r0 = r0[r4]
            float[] r1 = r3.f1395i
            r1 = r1[r4]
            float r0 = r0 * r6
            r2 = 0
            float r0 = b(r0, r2, r1)
            float r1 = r3.c(r5, r0)
            float r6 = r6 - r5
            float r5 = r3.c(r6, r0)
            float r5 = r5 - r1
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 >= 0) goto L27
            android.view.animation.Interpolator r6 = r3.f1391e
            float r5 = -r5
            android.view.animation.AccelerateInterpolator r6 = (android.view.animation.AccelerateInterpolator) r6
            float r5 = r6.getInterpolation(r5)
            float r5 = -r5
            goto L33
        L27:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 <= 0) goto L3c
            android.view.animation.Interpolator r6 = r3.f1391e
            android.view.animation.AccelerateInterpolator r6 = (android.view.animation.AccelerateInterpolator) r6
            float r5 = r6.getInterpolation(r5)
        L33:
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r5 = b(r5, r6, r0)
            goto L3d
        L3c:
            r5 = r2
        L3d:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 != 0) goto L42
            goto L5e
        L42:
            float[] r0 = r3.f1398l
            r0 = r0[r4]
            float[] r1 = r3.f1399m
            r1 = r1[r4]
            float[] r3 = r3.f1400n
            r3 = r3[r4]
            float r0 = r0 * r7
            if (r6 <= 0) goto L57
            float r5 = r5 * r0
            float r2 = b(r5, r1, r3)
            goto L5e
        L57:
            float r4 = -r5
            float r4 = r4 * r0
            float r3 = b(r4, r1, r3)
            float r2 = -r3
        L5e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: N.d.a(int, float, float, float):float");
    }

    public final float c(float f4, float f5) {
        if (f5 == 0.0f) {
            return 0.0f;
        }
        int i4 = this.f1396j;
        if (i4 == 0 || i4 == 1) {
            if (f4 < f5) {
                return f4 >= 0.0f ? 1.0f - (f4 / f5) : (this.f1404r && i4 == 1) ? 1.0f : 0.0f;
            }
            return 0.0f;
        } else if (i4 == 2 && f4 < 0.0f) {
            return f4 / (-f5);
        } else {
            return 0.0f;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
        if (r0 != 3) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.f1405s
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L7f
        L16:
            r5.e()
            goto L7f
        L1a:
            r5.f1403q = r2
            r5.f1401o = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.f1392f
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.a(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.f1392f
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.a(r2, r7, r6, r3)
            N.a r7 = r5.f1390d
            r7.f1381c = r0
            r7.f1382d = r6
            boolean r6 = r5.f1404r
            if (r6 != 0) goto L7f
            boolean r6 = r5.f()
            if (r6 == 0) goto L7f
            N.b r6 = r5.f1393g
            if (r6 != 0) goto L61
            N.b r6 = new N.b
            r6.<init>(r5)
            r5.f1393g = r6
        L61:
            r5.f1404r = r2
            r5.f1402p = r2
            boolean r6 = r5.f1401o
            if (r6 != 0) goto L78
            int r6 = r5.f1397k
            if (r6 <= 0) goto L78
            android.view.View r7 = r5.f1392f
            N.b r0 = r5.f1393g
            long r3 = (long) r6
            java.util.WeakHashMap r6 = androidx.core.view.J.f3079a
            androidx.core.view.C0186x.k(r7, r0, r3)
            goto L7d
        L78:
            N.b r6 = r5.f1393g
            r6.run()
        L7d:
            r5.f1401o = r2
        L7f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: N.d.d(android.view.View, android.view.MotionEvent):boolean");
    }

    public final void e() {
        int i4 = 0;
        if (this.f1402p) {
            this.f1404r = false;
            return;
        }
        a aVar = this.f1390d;
        aVar.getClass();
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i5 = (int) (currentAnimationTimeMillis - aVar.f1383e);
        int i6 = aVar.f1380b;
        if (i5 > i6) {
            i4 = i6;
        } else if (i5 >= 0) {
            i4 = i5;
        }
        aVar.f1387i = i4;
        aVar.f1386h = aVar.a(currentAnimationTimeMillis);
        aVar.f1385g = currentAnimationTimeMillis;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f() {
        /*
            r7 = this;
            N.a r0 = r7.f1390d
            float r1 = r0.f1382d
            float r2 = java.lang.Math.abs(r1)
            float r1 = r1 / r2
            int r1 = (int) r1
            float r0 = r0.f1381c
            java.lang.Math.abs(r0)
            r0 = 0
            if (r1 == 0) goto L50
            android.widget.ListView r7 = r7.f1406t
            int r2 = r7.getCount()
            r3 = 1
            if (r2 != 0) goto L1c
            goto L4b
        L1c:
            int r4 = r7.getChildCount()
            int r5 = r7.getFirstVisiblePosition()
            int r6 = r5 + r4
            if (r1 <= 0) goto L3a
            if (r6 < r2) goto L49
            int r4 = r4 - r3
            android.view.View r1 = r7.getChildAt(r4)
            int r1 = r1.getBottom()
            int r7 = r7.getHeight()
            if (r1 > r7) goto L49
            goto L4b
        L3a:
            if (r1 >= 0) goto L4b
            if (r5 > 0) goto L49
            android.view.View r7 = r7.getChildAt(r0)
            int r7 = r7.getTop()
            if (r7 < 0) goto L49
            goto L4b
        L49:
            r7 = r3
            goto L4c
        L4b:
            r7 = r0
        L4c:
            if (r7 != 0) goto L4f
            goto L50
        L4f:
            r0 = r3
        L50:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: N.d.f():boolean");
    }

    @Override // android.view.View.OnTouchListener
    public final /* bridge */ /* synthetic */ boolean onTouch(View view, MotionEvent motionEvent) {
        d(view, motionEvent);
        return false;
    }
}
