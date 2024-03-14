package androidx.recyclerview.widget;

import android.os.Trace;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class E implements Runnable {

    /* renamed from: h  reason: collision with root package name */
    public static final ThreadLocal f3789h = new ThreadLocal();

    /* renamed from: i  reason: collision with root package name */
    public static final B f3790i = new B();

    /* renamed from: e  reason: collision with root package name */
    public long f3792e;

    /* renamed from: f  reason: collision with root package name */
    public long f3793f;

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList f3791d = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    public final ArrayList f3794g = new ArrayList();

    public static E0 c(RecyclerView recyclerView, int i4, long j4) {
        boolean z4;
        int h4 = recyclerView.mChildHelper.h();
        int i5 = 0;
        while (true) {
            if (i5 >= h4) {
                z4 = false;
                break;
            }
            E0 childViewHolderInt = RecyclerView.getChildViewHolderInt(recyclerView.mChildHelper.g(i5));
            if (childViewHolderInt.mPosition == i4 && !childViewHolderInt.isInvalid()) {
                z4 = true;
                break;
            }
            i5++;
        }
        if (z4) {
            return null;
        }
        C0295t0 c0295t0 = recyclerView.mRecycler;
        try {
            recyclerView.onEnterLayoutOrScroll();
            E0 l4 = c0295t0.l(i4, j4);
            if (l4 != null) {
                if (!l4.isBound() || l4.isInvalid()) {
                    c0295t0.a(l4, false);
                } else {
                    c0295t0.i(l4.itemView);
                }
            }
            return l4;
        } finally {
            recyclerView.onExitLayoutOrScroll(false);
        }
    }

    public final void a(RecyclerView recyclerView, int i4, int i5) {
        if (recyclerView.isAttachedToWindow()) {
            if (RecyclerView.sDebugAssertionsEnabled && !this.f3791d.contains(recyclerView)) {
                throw new IllegalStateException("attempting to post unregistered view!");
            }
            if (this.f3792e == 0) {
                this.f3792e = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        C c4 = recyclerView.mPrefetchRegistry;
        c4.f3773a = i4;
        c4.f3774b = i5;
    }

    public final void b(long j4) {
        D d4;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        D d5;
        int size = this.f3791d.size();
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView3 = (RecyclerView) this.f3791d.get(i5);
            if (recyclerView3.getWindowVisibility() == 0) {
                recyclerView3.mPrefetchRegistry.b(recyclerView3, false);
                i4 += recyclerView3.mPrefetchRegistry.f3776d;
            }
        }
        this.f3794g.ensureCapacity(i4);
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            RecyclerView recyclerView4 = (RecyclerView) this.f3791d.get(i7);
            if (recyclerView4.getWindowVisibility() == 0) {
                C c4 = recyclerView4.mPrefetchRegistry;
                int abs = Math.abs(c4.f3774b) + Math.abs(c4.f3773a);
                for (int i8 = 0; i8 < c4.f3776d * 2; i8 += 2) {
                    if (i6 >= this.f3794g.size()) {
                        d5 = new D();
                        this.f3794g.add(d5);
                    } else {
                        d5 = (D) this.f3794g.get(i6);
                    }
                    int[] iArr = c4.f3775c;
                    int i9 = iArr[i8 + 1];
                    d5.f3777a = i9 <= abs;
                    d5.f3778b = abs;
                    d5.f3779c = i9;
                    d5.f3780d = recyclerView4;
                    d5.f3781e = iArr[i8];
                    i6++;
                }
            }
        }
        Collections.sort(this.f3794g, f3790i);
        for (int i10 = 0; i10 < this.f3794g.size() && (recyclerView = (d4 = (D) this.f3794g.get(i10)).f3780d) != null; i10++) {
            E0 c5 = c(recyclerView, d4.f3781e, d4.f3777a ? Long.MAX_VALUE : j4);
            if (c5 != null && c5.mNestedRecyclerView != null && c5.isBound() && !c5.isInvalid() && (recyclerView2 = (RecyclerView) c5.mNestedRecyclerView.get()) != null) {
                if (recyclerView2.mDataSetHasChangedAfterLayout && recyclerView2.mChildHelper.h() != 0) {
                    recyclerView2.removeAndRecycleViews();
                }
                C c6 = recyclerView2.mPrefetchRegistry;
                c6.b(recyclerView2, true);
                if (c6.f3776d != 0) {
                    try {
                        Trace.beginSection("RV Nested Prefetch");
                        A0 a02 = recyclerView2.mState;
                        Z z4 = recyclerView2.mAdapter;
                        a02.f3761d = 1;
                        a02.f3762e = z4.getItemCount();
                        a02.f3764g = false;
                        a02.f3765h = false;
                        a02.f3766i = false;
                        for (int i11 = 0; i11 < c6.f3776d * 2; i11 += 2) {
                            c(recyclerView2, c6.f3775c[i11], j4);
                        }
                    } finally {
                        Trace.endSection();
                    }
                } else {
                    continue;
                }
            }
            d4.f3777a = false;
            d4.f3778b = 0;
            d4.f3779c = 0;
            d4.f3780d = null;
            d4.f3781e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            Trace.beginSection("RV Prefetch");
            if (this.f3791d.isEmpty()) {
                return;
            }
            int size = this.f3791d.size();
            long j4 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                RecyclerView recyclerView = (RecyclerView) this.f3791d.get(i4);
                if (recyclerView.getWindowVisibility() == 0) {
                    j4 = Math.max(recyclerView.getDrawingTime(), j4);
                }
            }
            if (j4 == 0) {
                return;
            }
            b(TimeUnit.MILLISECONDS.toNanos(j4) + this.f3793f);
        } finally {
            this.f3792e = 0L;
            Trace.endSection();
        }
    }
}
