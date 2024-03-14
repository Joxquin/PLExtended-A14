package com.android.launcher3.util;

import android.util.SparseArray;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class IntSparseArrayMap extends SparseArray implements Iterable {

    /* loaded from: classes.dex */
    final class ValueIterator implements Iterator {
        private int mNextIndex = 0;

        public ValueIterator() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.mNextIndex < IntSparseArrayMap.this.size();
        }

        @Override // java.util.Iterator
        public final Object next() {
            IntSparseArrayMap intSparseArrayMap = IntSparseArrayMap.this;
            int i4 = this.mNextIndex;
            this.mNextIndex = i4 + 1;
            return intSparseArrayMap.valueAt(i4);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public final boolean containsKey(int i4) {
        return indexOfKey(i4) >= 0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new ValueIterator();
    }

    @Override // android.util.SparseArray
    public final IntSparseArrayMap clone() {
        return (IntSparseArrayMap) super.clone();
    }
}
