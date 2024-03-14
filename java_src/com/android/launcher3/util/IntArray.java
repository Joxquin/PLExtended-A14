package com.android.launcher3.util;

import java.util.Arrays;
import java.util.Iterator;
import java.util.StringTokenizer;
/* loaded from: classes.dex */
public final class IntArray implements Cloneable, Iterable {
    private static final int[] EMPTY_INT = new int[0];
    int mSize;
    int[] mValues;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class ValueIterator implements Iterator {
        private int mNextIndex = 0;

        public ValueIterator() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.mNextIndex < IntArray.this.mSize;
        }

        @Override // java.util.Iterator
        public final Object next() {
            IntArray intArray = IntArray.this;
            int i4 = this.mNextIndex;
            this.mNextIndex = i4 + 1;
            return Integer.valueOf(intArray.get(i4));
        }

        @Override // java.util.Iterator
        public final void remove() {
            IntArray intArray = IntArray.this;
            int i4 = this.mNextIndex - 1;
            this.mNextIndex = i4;
            intArray.removeIndex(i4);
        }
    }

    private IntArray(int[] iArr, int i4) {
        this.mValues = iArr;
        this.mSize = i4;
    }

    private static void checkBounds(int i4, int i5) {
        if (i5 < 0 || i4 <= i5) {
            throw new ArrayIndexOutOfBoundsException(C0479l.a("length=", i4, "; index=", i5));
        }
    }

    private void ensureCapacity(int i4) {
        int i5 = this.mSize;
        int i6 = i4 + i5;
        int[] iArr = this.mValues;
        if (i6 >= iArr.length) {
            int i7 = (i5 < 6 ? 12 : i5 >> 1) + i5;
            if (i7 > i6) {
                i6 = i7;
            }
            int[] iArr2 = new int[i6];
            System.arraycopy(iArr, 0, iArr2, 0, i5);
            this.mValues = iArr2;
        }
    }

    public static IntArray fromConcatString(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ",");
        int countTokens = stringTokenizer.countTokens();
        int[] iArr = new int[countTokens];
        int i4 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            iArr[i4] = Integer.parseInt(stringTokenizer.nextToken().trim());
            i4++;
        }
        return new IntArray(iArr, countTokens);
    }

    public static IntArray wrap(int... iArr) {
        return new IntArray(iArr, iArr.length);
    }

    public final void add(int i4) {
        add(this.mSize, i4);
    }

    public final void addAll(IntArray intArray) {
        int i4 = intArray.mSize;
        ensureCapacity(i4);
        System.arraycopy(intArray.mValues, 0, this.mValues, this.mSize, i4);
        this.mSize += i4;
    }

    public final void clear() {
        this.mSize = 0;
    }

    public final Object clone() {
        return wrap(toArray());
    }

    public final boolean contains(int i4) {
        return indexOf(i4) >= 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof IntArray) {
            IntArray intArray = (IntArray) obj;
            if (this.mSize == intArray.mSize) {
                for (int i4 = 0; i4 < this.mSize; i4++) {
                    if (intArray.mValues[i4] != this.mValues[i4]) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int get(int i4) {
        checkBounds(this.mSize, i4);
        return this.mValues[i4];
    }

    public final int indexOf(int i4) {
        int i5 = this.mSize;
        for (int i6 = 0; i6 < i5; i6++) {
            if (this.mValues[i6] == i4) {
                return i6;
            }
        }
        return -1;
    }

    public final boolean isEmpty() {
        return this.mSize == 0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new ValueIterator();
    }

    public final void removeAllValues(IntArray intArray) {
        for (int i4 = 0; i4 < intArray.mSize; i4++) {
            removeValue(intArray.mValues[i4]);
        }
    }

    public final void removeIndex(int i4) {
        checkBounds(this.mSize, i4);
        int[] iArr = this.mValues;
        System.arraycopy(iArr, i4 + 1, iArr, i4, (this.mSize - i4) - 1);
        this.mSize--;
    }

    public final void removeValue(int i4) {
        int indexOf = indexOf(i4);
        if (indexOf >= 0) {
            removeIndex(indexOf);
        }
    }

    public final int size() {
        return this.mSize;
    }

    public final int[] toArray() {
        int i4 = this.mSize;
        return i4 == 0 ? EMPTY_INT : Arrays.copyOf(this.mValues, i4);
    }

    public final String toConcatString() {
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < this.mSize; i4++) {
            if (i4 > 0) {
                sb.append(", ");
            }
            sb.append(this.mValues[i4]);
        }
        return sb.toString();
    }

    public final String toString() {
        return "IntArray [" + toConcatString() + "]";
    }

    public final void add(int i4, int i5) {
        ensureCapacity(1);
        int i6 = this.mSize;
        int i7 = i6 - i4;
        int i8 = i6 + 1;
        this.mSize = i8;
        checkBounds(i8, i4);
        if (i7 != 0) {
            int[] iArr = this.mValues;
            System.arraycopy(iArr, i4, iArr, i4 + 1, i7);
        }
        this.mValues[i4] = i5;
    }

    public IntArray() {
        this(10);
    }

    public IntArray(int i4) {
        if (i4 == 0) {
            this.mValues = EMPTY_INT;
        } else {
            this.mValues = new int[i4];
        }
        this.mSize = 0;
    }
}
