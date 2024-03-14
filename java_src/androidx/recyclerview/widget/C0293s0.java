package androidx.recyclerview.widget;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Set;
/* renamed from: androidx.recyclerview.widget.s0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0293s0 {
    SparseArray mScrap = new SparseArray();
    int mAttachCountForClearing = 0;
    Set mAttachedAdaptersForPoolingContainer = Collections.newSetFromMap(new IdentityHashMap());

    private C0291r0 getScrapDataForType(int i4) {
        C0291r0 c0291r0 = (C0291r0) this.mScrap.get(i4);
        if (c0291r0 == null) {
            C0291r0 c0291r02 = new C0291r0();
            this.mScrap.put(i4, c0291r02);
            return c0291r02;
        }
        return c0291r0;
    }

    public final void clear() {
        for (int i4 = 0; i4 < this.mScrap.size(); i4++) {
            C0291r0 c0291r0 = (C0291r0) this.mScrap.valueAt(i4);
            Iterator it = c0291r0.f4010a.iterator();
            while (it.hasNext()) {
                O.a.a(((E0) it.next()).itemView);
            }
            c0291r0.f4010a.clear();
        }
    }

    public final void factorInBindTime(int i4, long j4) {
        C0291r0 scrapDataForType = getScrapDataForType(i4);
        long j5 = scrapDataForType.f4013d;
        if (j5 != 0) {
            j4 = (j4 / 4) + ((j5 / 4) * 3);
        }
        scrapDataForType.f4013d = j4;
    }

    public final void factorInCreateTime(int i4, long j4) {
        C0291r0 scrapDataForType = getScrapDataForType(i4);
        long j5 = scrapDataForType.f4012c;
        if (j5 != 0) {
            j4 = (j4 / 4) + ((j5 / 4) * 3);
        }
        scrapDataForType.f4012c = j4;
    }

    public final int getRecycledViewCount() {
        return getScrapDataForType(2).f4010a.size();
    }

    public final void putRecycledView(E0 e02) {
        int i4 = e02.mItemViewType;
        ArrayList arrayList = getScrapDataForType(i4).f4010a;
        if (((C0291r0) this.mScrap.get(i4)).f4011b <= arrayList.size()) {
            O.a.a(e02.itemView);
        } else if (RecyclerView.sDebugAssertionsEnabled && arrayList.contains(e02)) {
            throw new IllegalArgumentException("this scrap item already exists");
        } else {
            e02.resetInternal();
            arrayList.add(e02);
        }
    }

    public final void setMaxRecycledViews(int i4, int i5) {
        C0291r0 scrapDataForType = getScrapDataForType(i4);
        scrapDataForType.f4011b = i5;
        ArrayList arrayList = scrapDataForType.f4010a;
        while (arrayList.size() > i5) {
            arrayList.remove(arrayList.size() - 1);
        }
    }

    public final boolean willBindInTime(int i4, long j4, long j5) {
        long j6 = getScrapDataForType(i4).f4013d;
        return j6 == 0 || j4 + j6 < j5;
    }

    public final boolean willCreateInTime(int i4, long j4, long j5) {
        long j6 = getScrapDataForType(i4).f4012c;
        return j6 == 0 || j4 + j6 < j5;
    }
}
