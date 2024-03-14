package androidx.recyclerview.widget;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.C0165b;
import androidx.fragment.app.C0196d0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
/* renamed from: androidx.recyclerview.widget.t0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0295t0 {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f4021a;

    /* renamed from: b  reason: collision with root package name */
    public ArrayList f4022b;

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList f4023c;

    /* renamed from: d  reason: collision with root package name */
    public final List f4024d;

    /* renamed from: e  reason: collision with root package name */
    public int f4025e;

    /* renamed from: f  reason: collision with root package name */
    public int f4026f;

    /* renamed from: g  reason: collision with root package name */
    public C0293s0 f4027g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ RecyclerView f4028h;

    public C0295t0(RecyclerView recyclerView) {
        this.f4028h = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.f4021a = arrayList;
        this.f4022b = null;
        this.f4023c = new ArrayList();
        this.f4024d = Collections.unmodifiableList(arrayList);
        this.f4025e = 2;
        this.f4026f = 2;
    }

    public static void d(ViewGroup viewGroup, boolean z4) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                d((ViewGroup) childAt, true);
            }
        }
        if (z4) {
            if (viewGroup.getVisibility() == 4) {
                viewGroup.setVisibility(0);
                viewGroup.setVisibility(4);
                return;
            }
            int visibility = viewGroup.getVisibility();
            viewGroup.setVisibility(4);
            viewGroup.setVisibility(visibility);
        }
    }

    public final void a(E0 e02, boolean z4) {
        RecyclerView.clearNestedRecyclerViewIfNotNested(e02);
        View view = e02.itemView;
        RecyclerView recyclerView = this.f4028h;
        G0 g02 = recyclerView.mAccessibilityDelegate;
        if (g02 != null) {
            C0165b a4 = g02.a();
            androidx.core.view.J.h(view, a4 instanceof F0 ? (C0165b) ((WeakHashMap) ((F0) a4).f3796e).remove(view) : null);
        }
        if (z4) {
            InterfaceC0297u0 interfaceC0297u0 = recyclerView.mRecyclerListener;
            if (interfaceC0297u0 != null) {
                interfaceC0297u0.a();
            }
            int size = recyclerView.mRecyclerListeners.size();
            for (int i4 = 0; i4 < size; i4++) {
                ((InterfaceC0297u0) recyclerView.mRecyclerListeners.get(i4)).a();
            }
            Z z5 = recyclerView.mAdapter;
            if (z5 != null) {
                z5.onViewRecycled(e02);
            }
            if (recyclerView.mState != null) {
                recyclerView.mViewInfoStore.d(e02);
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "dispatchViewRecycled: " + e02);
            }
        }
        e02.mBindingAdapter = null;
        e02.mOwnerRecyclerView = null;
        c().putRecycledView(e02);
    }

    public final int b(int i4) {
        RecyclerView recyclerView = this.f4028h;
        if (i4 >= 0 && i4 < recyclerView.mState.b()) {
            return !recyclerView.mState.f3764g ? i4 : recyclerView.mAdapterHelper.f(i4, 0);
        }
        StringBuilder a4 = C0196d0.a("invalid position ", i4, ". State item count is ");
        a4.append(recyclerView.mState.b());
        a4.append(recyclerView.exceptionLabel());
        throw new IndexOutOfBoundsException(a4.toString());
    }

    public final C0293s0 c() {
        if (this.f4027g == null) {
            this.f4027g = new C0293s0();
            e();
        }
        return this.f4027g;
    }

    public final void e() {
        if (this.f4027g != null) {
            RecyclerView recyclerView = this.f4028h;
            if (recyclerView.mAdapter == null || !recyclerView.isAttachedToWindow()) {
                return;
            }
            C0293s0 c0293s0 = this.f4027g;
            c0293s0.mAttachedAdaptersForPoolingContainer.add(recyclerView.mAdapter);
        }
    }

    public final void f(Z z4, boolean z5) {
        C0293s0 c0293s0 = this.f4027g;
        if (c0293s0 != null) {
            c0293s0.mAttachedAdaptersForPoolingContainer.remove(z4);
            if (c0293s0.mAttachedAdaptersForPoolingContainer.size() != 0 || z5) {
                return;
            }
            for (int i4 = 0; i4 < c0293s0.mScrap.size(); i4++) {
                SparseArray sparseArray = c0293s0.mScrap;
                ArrayList arrayList = ((C0291r0) sparseArray.get(sparseArray.keyAt(i4))).f4010a;
                for (int i5 = 0; i5 < arrayList.size(); i5++) {
                    O.a.a(((E0) arrayList.get(i5)).itemView);
                }
            }
        }
    }

    public final void g() {
        ArrayList arrayList = this.f4023c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            h(size);
        }
        arrayList.clear();
        if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            C c4 = this.f4028h.mPrefetchRegistry;
            int[] iArr = c4.f3775c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            c4.f3776d = 0;
        }
    }

    public final void h(int i4) {
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "Recycling cached view at index " + i4);
        }
        ArrayList arrayList = this.f4023c;
        E0 e02 = (E0) arrayList.get(i4);
        if (RecyclerView.sVerboseLoggingEnabled) {
            Log.d("RecyclerView", "CachedViewHolder to be recycled: " + e02);
        }
        a(e02, true);
        arrayList.remove(i4);
    }

    public final void i(View view) {
        E0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        boolean isTmpDetached = childViewHolderInt.isTmpDetached();
        RecyclerView recyclerView = this.f4028h;
        if (isTmpDetached) {
            recyclerView.removeDetachedView(view, false);
        }
        if (childViewHolderInt.isScrap()) {
            childViewHolderInt.mScrapContainer.m(childViewHolderInt);
        } else if (childViewHolderInt.wasReturnedFromScrap()) {
            childViewHolderInt.mFlags &= -33;
        }
        j(childViewHolderInt);
        if (recyclerView.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
            return;
        }
        recyclerView.mItemAnimator.d(childViewHolderInt);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(androidx.recyclerview.widget.E0 r13) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0295t0.j(androidx.recyclerview.widget.E0):void");
    }

    public final void k(View view) {
        E0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        int i4 = childViewHolderInt.mFlags;
        boolean z4 = (i4 & 12) != 0;
        RecyclerView recyclerView = this.f4028h;
        if (!z4) {
            if (((i4 & 2) != 0) && !recyclerView.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.f4022b == null) {
                    this.f4022b = new ArrayList();
                }
                childViewHolderInt.mScrapContainer = this;
                childViewHolderInt.mInChangeScrap = true;
                this.f4022b.add(childViewHolderInt);
                return;
            }
        }
        if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !recyclerView.mAdapter.hasStableIds()) {
            throw new IllegalArgumentException(C0265e.a(recyclerView, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
        childViewHolderInt.mScrapContainer = this;
        childViewHolderInt.mInChangeScrap = false;
        this.f4021a.add(childViewHolderInt);
    }

    /* JADX WARN: Code restructure failed: missing block: B:244:0x044b, code lost:
        if (r10.isInvalid() == false) goto L238;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x03f3  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:259:0x049e  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x04ab  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x050d  */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0514  */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0521  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x052b  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x0541 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0145  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final androidx.recyclerview.widget.E0 l(int r17, long r18) {
        /*
            Method dump skipped, instructions count: 1400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.C0295t0.l(int, long):androidx.recyclerview.widget.E0");
    }

    public final void m(E0 e02) {
        if (e02.mInChangeScrap) {
            this.f4022b.remove(e02);
        } else {
            this.f4021a.remove(e02);
        }
        e02.mScrapContainer = null;
        e02.mInChangeScrap = false;
        e02.mFlags &= -33;
    }

    public final void n() {
        AbstractC0280l0 abstractC0280l0 = this.f4028h.mLayout;
        this.f4026f = this.f4025e + (abstractC0280l0 != null ? abstractC0280l0.mPrefetchMaxCountObserved : 0);
        ArrayList arrayList = this.f4023c;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f4026f; size--) {
            h(size);
        }
    }
}
