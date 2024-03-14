package com.android.launcher3.util;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class ViewCache {
    protected final SparseArray mCache = new SparseArray();

    /* loaded from: classes.dex */
    final class CacheEntry {
        int mCurrentSize = 0;
        final int mMaxSize;
        final View[] mViews;

        public CacheEntry(int i4) {
            this.mMaxSize = i4;
            this.mViews = new View[i4];
        }
    }

    public final View getView(int i4, Context context, ViewGroup viewGroup) {
        SparseArray sparseArray = this.mCache;
        CacheEntry cacheEntry = (CacheEntry) sparseArray.get(i4);
        if (cacheEntry == null) {
            cacheEntry = new CacheEntry(1);
            sparseArray.put(i4, cacheEntry);
        }
        int i5 = cacheEntry.mCurrentSize;
        if (i5 <= 0) {
            View inflate = LayoutInflater.from(context).inflate(i4, viewGroup, false);
            inflate.setTag(R.id.cache_entry_tag_id, cacheEntry);
            return inflate;
        }
        int i6 = i5 - 1;
        cacheEntry.mCurrentSize = i6;
        View[] viewArr = cacheEntry.mViews;
        View view = viewArr[i6];
        viewArr[i6] = null;
        return view;
    }

    public final void recycleView(View view, int i4) {
        int i5;
        CacheEntry cacheEntry = (CacheEntry) this.mCache.get(i4);
        if (cacheEntry == view.getTag(R.id.cache_entry_tag_id) && cacheEntry != null && (i5 = cacheEntry.mCurrentSize) < cacheEntry.mMaxSize) {
            cacheEntry.mViews[i5] = view;
            cacheEntry.mCurrentSize = i5 + 1;
        }
    }

    public final void setCacheSize(int i4, int i5) {
        this.mCache.put(i4, new CacheEntry(i5));
    }
}
