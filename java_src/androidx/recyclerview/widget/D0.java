package androidx.recyclerview.widget;

import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.view.C0186x;
import java.util.Arrays;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class D0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public int f3782d;

    /* renamed from: e  reason: collision with root package name */
    public int f3783e;

    /* renamed from: f  reason: collision with root package name */
    public OverScroller f3784f;

    /* renamed from: g  reason: collision with root package name */
    public Interpolator f3785g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f3786h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f3787i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ RecyclerView f3788j;

    public D0(RecyclerView recyclerView) {
        this.f3788j = recyclerView;
        Interpolator interpolator = RecyclerView.sQuinticInterpolator;
        this.f3785g = interpolator;
        this.f3786h = false;
        this.f3787i = false;
        this.f3784f = new OverScroller(recyclerView.getContext(), interpolator);
    }

    public final void a(int i4, int i5) {
        this.f3788j.setScrollState(2);
        this.f3783e = 0;
        this.f3782d = 0;
        Interpolator interpolator = this.f3785g;
        Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
        if (interpolator != interpolator2) {
            this.f3785g = interpolator2;
            this.f3784f = new OverScroller(this.f3788j.getContext(), interpolator2);
        }
        this.f3784f.fling(0, 0, i4, i5, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
        b();
    }

    public final void b() {
        if (this.f3786h) {
            this.f3787i = true;
            return;
        }
        this.f3788j.removeCallbacks(this);
        RecyclerView recyclerView = this.f3788j;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        C0186x.j(recyclerView, this);
    }

    public final void c(int i4, int i5, Interpolator interpolator, int i6) {
        if (i6 == Integer.MIN_VALUE) {
            int abs = Math.abs(i4);
            int abs2 = Math.abs(i5);
            boolean z4 = abs > abs2;
            RecyclerView recyclerView = this.f3788j;
            int width = z4 ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z4) {
                abs = abs2;
            }
            i6 = Math.min((int) (((abs / width) + 1.0f) * 300.0f), 2000);
        }
        int i7 = i6;
        if (interpolator == null) {
            interpolator = RecyclerView.sQuinticInterpolator;
        }
        if (this.f3785g != interpolator) {
            this.f3785g = interpolator;
            this.f3784f = new OverScroller(this.f3788j.getContext(), interpolator);
        }
        this.f3783e = 0;
        this.f3782d = 0;
        this.f3788j.setScrollState(2);
        this.f3784f.startScroll(0, 0, i4, i5, i7);
        b();
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i4;
        int i5;
        boolean awakenScrollBars;
        RecyclerView recyclerView = this.f3788j;
        if (recyclerView.mLayout == null) {
            recyclerView.removeCallbacks(this);
            this.f3784f.abortAnimation();
            return;
        }
        this.f3787i = false;
        this.f3786h = true;
        recyclerView.consumePendingUpdateOperations();
        OverScroller overScroller = this.f3784f;
        if (overScroller.computeScrollOffset()) {
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int i6 = currX - this.f3782d;
            int i7 = currY - this.f3783e;
            this.f3782d = currX;
            this.f3783e = currY;
            int consumeFlingInHorizontalStretch = this.f3788j.consumeFlingInHorizontalStretch(i6);
            int consumeFlingInVerticalStretch = this.f3788j.consumeFlingInVerticalStretch(i7);
            RecyclerView recyclerView2 = this.f3788j;
            int[] iArr = recyclerView2.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            if (recyclerView2.dispatchNestedPreScroll(consumeFlingInHorizontalStretch, consumeFlingInVerticalStretch, iArr, null, 1)) {
                int[] iArr2 = this.f3788j.mReusableIntPair;
                consumeFlingInHorizontalStretch -= iArr2[0];
                consumeFlingInVerticalStretch -= iArr2[1];
            }
            if (this.f3788j.getOverScrollMode() != 2) {
                this.f3788j.considerReleasingGlowsOnScroll(consumeFlingInHorizontalStretch, consumeFlingInVerticalStretch);
            }
            RecyclerView recyclerView3 = this.f3788j;
            if (recyclerView3.mAdapter != null) {
                int[] iArr3 = recyclerView3.mReusableIntPair;
                iArr3[0] = 0;
                iArr3[1] = 0;
                recyclerView3.scrollStep(consumeFlingInHorizontalStretch, consumeFlingInVerticalStretch, iArr3);
                RecyclerView recyclerView4 = this.f3788j;
                int[] iArr4 = recyclerView4.mReusableIntPair;
                i5 = iArr4[0];
                i4 = iArr4[1];
                consumeFlingInHorizontalStretch -= i5;
                consumeFlingInVerticalStretch -= i4;
                O o4 = recyclerView4.mLayout.mSmoothScroller;
                if (o4 != null && !o4.c() && o4.d()) {
                    int b4 = this.f3788j.mState.b();
                    if (b4 == 0) {
                        o4.i();
                    } else if (o4.b() >= b4) {
                        o4.g(b4 - 1);
                        o4.e(i5, i4);
                    } else {
                        o4.e(i5, i4);
                    }
                }
            } else {
                i4 = 0;
                i5 = 0;
            }
            if (!this.f3788j.mItemDecorations.isEmpty()) {
                this.f3788j.invalidate();
            }
            RecyclerView recyclerView5 = this.f3788j;
            int[] iArr5 = recyclerView5.mReusableIntPair;
            iArr5[0] = 0;
            iArr5[1] = 0;
            recyclerView5.dispatchNestedScroll(i5, i4, consumeFlingInHorizontalStretch, consumeFlingInVerticalStretch, null, 1, iArr5);
            RecyclerView recyclerView6 = this.f3788j;
            int[] iArr6 = recyclerView6.mReusableIntPair;
            int i8 = consumeFlingInHorizontalStretch - iArr6[0];
            int i9 = consumeFlingInVerticalStretch - iArr6[1];
            if (i5 != 0 || i4 != 0) {
                recyclerView6.dispatchOnScrolled(i5, i4);
            }
            awakenScrollBars = this.f3788j.awakenScrollBars();
            if (!awakenScrollBars) {
                this.f3788j.invalidate();
            }
            boolean z4 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i8 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i9 != 0));
            O o5 = this.f3788j.mLayout.mSmoothScroller;
            if ((o5 != null && o5.c()) || !z4) {
                b();
                RecyclerView recyclerView7 = this.f3788j;
                E e4 = recyclerView7.mGapWorker;
                if (e4 != null) {
                    e4.a(recyclerView7, i5, i4);
                }
            } else {
                if (this.f3788j.getOverScrollMode() != 2) {
                    int currVelocity = (int) overScroller.getCurrVelocity();
                    int i10 = i8 < 0 ? -currVelocity : i8 > 0 ? currVelocity : 0;
                    if (i9 < 0) {
                        currVelocity = -currVelocity;
                    } else if (i9 <= 0) {
                        currVelocity = 0;
                    }
                    this.f3788j.absorbGlows(i10, currVelocity);
                }
                if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                    C c4 = this.f3788j.mPrefetchRegistry;
                    int[] iArr7 = c4.f3775c;
                    if (iArr7 != null) {
                        Arrays.fill(iArr7, -1);
                    }
                    c4.f3776d = 0;
                }
            }
        }
        O o6 = this.f3788j.mLayout.mSmoothScroller;
        if (o6 != null && o6.c()) {
            o6.e(0, 0);
        }
        this.f3786h = false;
        if (!this.f3787i) {
            this.f3788j.setScrollState(0);
            this.f3788j.stopNestedScroll(1);
            return;
        }
        this.f3788j.removeCallbacks(this);
        RecyclerView recyclerView8 = this.f3788j;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        C0186x.j(recyclerView8, this);
    }
}
