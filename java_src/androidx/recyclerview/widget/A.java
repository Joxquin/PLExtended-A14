package androidx.recyclerview.widget;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.view.C0187y;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class A extends AbstractC0274i0 implements InterfaceC0288p0 {

    /* renamed from: G  reason: collision with root package name */
    public static final int[] f3727G = {16842919};

    /* renamed from: H  reason: collision with root package name */
    public static final int[] f3728H = new int[0];

    /* renamed from: C  reason: collision with root package name */
    public final ValueAnimator f3731C;

    /* renamed from: D  reason: collision with root package name */
    public int f3732D;

    /* renamed from: E  reason: collision with root package name */
    public final RunnableC0300w f3733E;

    /* renamed from: F  reason: collision with root package name */
    public final C0302x f3734F;

    /* renamed from: d  reason: collision with root package name */
    public final int f3735d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3736e;

    /* renamed from: f  reason: collision with root package name */
    public final StateListDrawable f3737f;

    /* renamed from: g  reason: collision with root package name */
    public final Drawable f3738g;

    /* renamed from: h  reason: collision with root package name */
    public final int f3739h;

    /* renamed from: i  reason: collision with root package name */
    public final int f3740i;

    /* renamed from: j  reason: collision with root package name */
    public final StateListDrawable f3741j;

    /* renamed from: k  reason: collision with root package name */
    public final Drawable f3742k;

    /* renamed from: l  reason: collision with root package name */
    public final int f3743l;

    /* renamed from: m  reason: collision with root package name */
    public final int f3744m;

    /* renamed from: n  reason: collision with root package name */
    public int f3745n;

    /* renamed from: o  reason: collision with root package name */
    public int f3746o;

    /* renamed from: p  reason: collision with root package name */
    public float f3747p;

    /* renamed from: q  reason: collision with root package name */
    public int f3748q;

    /* renamed from: r  reason: collision with root package name */
    public int f3749r;

    /* renamed from: s  reason: collision with root package name */
    public float f3750s;

    /* renamed from: v  reason: collision with root package name */
    public RecyclerView f3753v;

    /* renamed from: t  reason: collision with root package name */
    public int f3751t = 0;

    /* renamed from: u  reason: collision with root package name */
    public int f3752u = 0;

    /* renamed from: w  reason: collision with root package name */
    public boolean f3754w = false;

    /* renamed from: x  reason: collision with root package name */
    public boolean f3755x = false;

    /* renamed from: y  reason: collision with root package name */
    public int f3756y = 0;

    /* renamed from: z  reason: collision with root package name */
    public int f3757z = 0;

    /* renamed from: A  reason: collision with root package name */
    public final int[] f3729A = new int[2];

    /* renamed from: B  reason: collision with root package name */
    public final int[] f3730B = new int[2];

    public A(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i4, int i5, int i6) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f3731C = ofFloat;
        this.f3732D = 0;
        RunnableC0300w runnableC0300w = new RunnableC0300w(this);
        this.f3733E = runnableC0300w;
        C0302x c0302x = new C0302x(this);
        this.f3734F = c0302x;
        this.f3737f = stateListDrawable;
        this.f3738g = drawable;
        this.f3741j = stateListDrawable2;
        this.f3742k = drawable2;
        this.f3739h = Math.max(i4, stateListDrawable.getIntrinsicWidth());
        this.f3740i = Math.max(i4, drawable.getIntrinsicWidth());
        this.f3743l = Math.max(i4, stateListDrawable2.getIntrinsicWidth());
        this.f3744m = Math.max(i4, drawable2.getIntrinsicWidth());
        this.f3735d = i5;
        this.f3736e = i6;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        ofFloat.addListener(new C0303y(this));
        ofFloat.addUpdateListener(new C0304z(this));
        RecyclerView recyclerView2 = this.f3753v;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            this.f3753v.removeOnItemTouchListener(this);
            this.f3753v.removeOnScrollListener(c0302x);
            this.f3753v.removeCallbacks(runnableC0300w);
        }
        this.f3753v = recyclerView;
        if (recyclerView != null) {
            recyclerView.addItemDecoration(this);
            this.f3753v.addOnItemTouchListener(this);
            this.f3753v.addOnScrollListener(c0302x);
        }
    }

    public final boolean a(float f4, float f5) {
        if (f5 >= this.f3752u - this.f3743l) {
            int i4 = this.f3749r;
            int i5 = this.f3748q;
            if (f4 >= i4 - (i5 / 2) && f4 <= (i5 / 2) + i4) {
                return true;
            }
        }
        return false;
    }

    public final boolean b(float f4, float f5) {
        RecyclerView recyclerView = this.f3753v;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        boolean z4 = C0187y.c(recyclerView) == 1;
        int i4 = this.f3739h;
        if (z4) {
            if (f4 > i4) {
                return false;
            }
        } else if (f4 < this.f3751t - i4) {
            return false;
        }
        int i5 = this.f3746o;
        int i6 = this.f3745n / 2;
        return f5 >= ((float) (i5 - i6)) && f5 <= ((float) (i6 + i5));
    }

    public final void c(int i4) {
        RunnableC0300w runnableC0300w = this.f3733E;
        StateListDrawable stateListDrawable = this.f3737f;
        if (i4 == 2 && this.f3756y != 2) {
            stateListDrawable.setState(f3727G);
            this.f3753v.removeCallbacks(runnableC0300w);
        }
        if (i4 == 0) {
            this.f3753v.invalidate();
        } else {
            d();
        }
        if (this.f3756y == 2 && i4 != 2) {
            stateListDrawable.setState(f3728H);
            this.f3753v.removeCallbacks(runnableC0300w);
            this.f3753v.postDelayed(runnableC0300w, 1200);
        } else if (i4 == 1) {
            this.f3753v.removeCallbacks(runnableC0300w);
            this.f3753v.postDelayed(runnableC0300w, 1500);
        }
        this.f3756y = i4;
    }

    public final void d() {
        int i4 = this.f3732D;
        ValueAnimator valueAnimator = this.f3731C;
        if (i4 != 0) {
            if (i4 != 3) {
                return;
            }
            valueAnimator.cancel();
        }
        this.f3732D = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }

    @Override // androidx.recyclerview.widget.AbstractC0274i0
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        if (this.f3751t != this.f3753v.getWidth() || this.f3752u != this.f3753v.getHeight()) {
            this.f3751t = this.f3753v.getWidth();
            this.f3752u = this.f3753v.getHeight();
            c(0);
        } else if (this.f3732D != 0) {
            if (this.f3754w) {
                int i4 = this.f3751t;
                int i5 = this.f3739h;
                int i6 = i4 - i5;
                int i7 = this.f3746o;
                int i8 = this.f3745n;
                int i9 = i7 - (i8 / 2);
                StateListDrawable stateListDrawable = this.f3737f;
                stateListDrawable.setBounds(0, 0, i5, i8);
                int i10 = this.f3752u;
                int i11 = this.f3740i;
                Drawable drawable = this.f3738g;
                drawable.setBounds(0, 0, i11, i10);
                RecyclerView recyclerView2 = this.f3753v;
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                if (C0187y.c(recyclerView2) == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i5, i9);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-i5, -i9);
                } else {
                    canvas.translate(i6, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i9);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i6, -i9);
                }
            }
            if (this.f3755x) {
                int i12 = this.f3752u;
                int i13 = this.f3743l;
                int i14 = i12 - i13;
                int i15 = this.f3749r;
                int i16 = this.f3748q;
                int i17 = i15 - (i16 / 2);
                StateListDrawable stateListDrawable2 = this.f3741j;
                stateListDrawable2.setBounds(0, 0, i16, i13);
                int i18 = this.f3751t;
                int i19 = this.f3744m;
                Drawable drawable2 = this.f3742k;
                drawable2.setBounds(0, 0, i18, i19);
                canvas.translate(0.0f, i14);
                drawable2.draw(canvas);
                canvas.translate(i17, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i17, -i14);
            }
        }
    }

    @Override // androidx.recyclerview.widget.InterfaceC0288p0
    public final boolean onInterceptTouchEvent$1(MotionEvent motionEvent) {
        int i4 = this.f3756y;
        if (i4 == 1) {
            boolean b4 = b(motionEvent.getX(), motionEvent.getY());
            boolean a4 = a(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() == 0 && (b4 || a4)) {
                if (a4) {
                    this.f3757z = 1;
                    this.f3750s = (int) motionEvent.getX();
                } else if (b4) {
                    this.f3757z = 2;
                    this.f3747p = (int) motionEvent.getY();
                }
                c(2);
                return true;
            }
        } else if (i4 == 2) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.InterfaceC0288p0
    public final void onRequestDisallowInterceptTouchEvent() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bb, code lost:
        if (r9 >= 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0112, code lost:
        if (r5 >= 0) goto L47;
     */
    @Override // androidx.recyclerview.widget.InterfaceC0288p0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.A.onTouchEvent(android.view.MotionEvent):void");
    }
}
