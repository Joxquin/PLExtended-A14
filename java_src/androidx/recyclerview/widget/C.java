package androidx.recyclerview.widget;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class C {

    /* renamed from: a  reason: collision with root package name */
    public int f3773a;

    /* renamed from: b  reason: collision with root package name */
    public int f3774b;

    /* renamed from: c  reason: collision with root package name */
    public int[] f3775c;

    /* renamed from: d  reason: collision with root package name */
    public int f3776d;

    public final void a(int i4, int i5) {
        if (i4 < 0) {
            throw new IllegalArgumentException("Layout positions must be non-negative");
        }
        if (i5 < 0) {
            throw new IllegalArgumentException("Pixel distance must be non-negative");
        }
        int i6 = this.f3776d * 2;
        int[] iArr = this.f3775c;
        if (iArr == null) {
            int[] iArr2 = new int[4];
            this.f3775c = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i6 >= iArr.length) {
            int[] iArr3 = new int[i6 * 2];
            this.f3775c = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        }
        int[] iArr4 = this.f3775c;
        iArr4[i6] = i4;
        iArr4[i6 + 1] = i5;
        this.f3776d++;
    }

    public final void b(RecyclerView recyclerView, boolean z4) {
        this.f3776d = 0;
        int[] iArr = this.f3775c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        AbstractC0280l0 abstractC0280l0 = recyclerView.mLayout;
        if (recyclerView.mAdapter == null || abstractC0280l0 == null || !abstractC0280l0.isItemPrefetchEnabled()) {
            return;
        }
        if (z4) {
            if (!recyclerView.mAdapterHelper.g()) {
                abstractC0280l0.collectInitialPrefetchPositions(recyclerView.mAdapter.getItemCount(), this);
            }
        } else if (!recyclerView.hasPendingAdapterUpdates()) {
            abstractC0280l0.collectAdjacentPrefetchPositions(this.f3773a, this.f3774b, recyclerView.mState, this);
        }
        int i4 = this.f3776d;
        if (i4 > abstractC0280l0.mPrefetchMaxCountObserved) {
            abstractC0280l0.mPrefetchMaxCountObserved = i4;
            abstractC0280l0.mPrefetchMaxObservedInInitialPrefetch = z4;
            recyclerView.mRecycler.n();
        }
    }
}
