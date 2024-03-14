package com.android.launcher3.util;

import com.android.launcher3.util.IntArray;
import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class IntSet implements Iterable {
    final IntArray mArray = new IntArray();

    public static IntSet wrap(IntArray intArray) {
        IntSet intSet = new IntSet();
        intSet.mArray.addAll(intArray);
        IntArray intArray2 = intSet.mArray;
        Arrays.sort(intArray2.mValues, 0, intArray2.mSize);
        return intSet;
    }

    public final void add(int i4) {
        IntArray intArray = this.mArray;
        int binarySearch = Arrays.binarySearch(intArray.mValues, 0, intArray.mSize, i4);
        if (binarySearch < 0) {
            this.mArray.add((-binarySearch) - 1, i4);
        }
    }

    public final void clear() {
        this.mArray.mSize = 0;
    }

    public final boolean contains(int i4) {
        IntArray intArray = this.mArray;
        return Arrays.binarySearch(intArray.mValues, 0, intArray.mSize, i4) >= 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof IntSet) && ((IntSet) obj).mArray.equals(this.mArray);
    }

    public final IntArray getArray() {
        return this.mArray;
    }

    public final boolean isEmpty() {
        return this.mArray.isEmpty();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        IntArray intArray = this.mArray;
        intArray.getClass();
        return new IntArray.ValueIterator();
    }

    public final void remove(int i4) {
        IntArray intArray = this.mArray;
        int binarySearch = Arrays.binarySearch(intArray.mValues, 0, intArray.mSize, i4);
        if (binarySearch >= 0) {
            this.mArray.removeIndex(binarySearch);
        }
    }

    public final int size() {
        return this.mArray.mSize;
    }

    public final String toString() {
        return "IntSet{" + this.mArray.toConcatString() + '}';
    }

    public static IntSet wrap(int... iArr) {
        return wrap(IntArray.wrap(iArr));
    }
}
