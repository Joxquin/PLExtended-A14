package kotlin.collections.builders;

import com.android.launcher3.util.C0479l;
import f3.a;
import f3.b;
import java.io.NotSerializableException;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.collections.g;
import kotlin.collections.m;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class ListBuilder extends g implements RandomAccess, Serializable {
    private Object[] array;
    private final ListBuilder backing;
    private boolean isReadOnly;
    private int length;
    private int offset;
    private final ListBuilder root;

    public ListBuilder(Object[] objArr, int i4, int i5, boolean z4, ListBuilder listBuilder, ListBuilder listBuilder2) {
        this.array = objArr;
        this.offset = i4;
        this.length = i5;
        this.isReadOnly = z4;
        this.backing = listBuilder;
        this.root = listBuilder2;
    }

    private final Object writeReplace() {
        ListBuilder listBuilder;
        if (this.isReadOnly || ((listBuilder = this.root) != null && listBuilder.isReadOnly)) {
            return new SerializedCollection(0, this);
        }
        throw new NotSerializableException("The list cannot be serialized while it is being built.");
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        p();
        n(this.offset + this.length, obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection elements) {
        h.e(elements, "elements");
        p();
        int size = elements.size();
        m(this.offset + this.length, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        p();
        s(this.offset, this.length);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 1
            if (r8 == r7) goto L32
            boolean r1 = r8 instanceof java.util.List
            r2 = 0
            if (r1 == 0) goto L31
            java.util.List r8 = (java.util.List) r8
            java.lang.Object[] r1 = r7.array
            int r3 = r7.offset
            int r7 = r7.length
            int r4 = r8.size()
            if (r7 == r4) goto L17
            goto L28
        L17:
            r4 = r2
        L18:
            if (r4 >= r7) goto L2d
            int r5 = r3 + r4
            r5 = r1[r5]
            java.lang.Object r6 = r8.get(r4)
            boolean r5 = kotlin.jvm.internal.h.a(r5, r6)
            if (r5 != 0) goto L2a
        L28:
            r7 = r2
            goto L2e
        L2a:
            int r4 = r4 + 1
            goto L18
        L2d:
            r7 = r0
        L2e:
            if (r7 == 0) goto L31
            goto L32
        L31:
            r0 = r2
        L32:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.builders.ListBuilder.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i4) {
        int i5 = this.length;
        if (i4 < 0 || i4 >= i5) {
            throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", i5));
        }
        return this.array[this.offset + i4];
    }

    @Override // kotlin.collections.g
    public final int h() {
        return this.length;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        Object[] objArr = this.array;
        int i4 = this.offset;
        int i5 = this.length;
        int i6 = 1;
        for (int i7 = 0; i7 < i5; i7++) {
            Object obj = objArr[i4 + i7];
            i6 = (i6 * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return i6;
    }

    @Override // kotlin.collections.g
    public final Object i(int i4) {
        p();
        int i5 = this.length;
        if (i4 < 0 || i4 >= i5) {
            throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", i5));
        }
        return r(this.offset + i4);
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i4 = 0; i4 < this.length; i4++) {
            if (h.a(this.array[this.offset + i4], obj)) {
                return i4;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.length == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new a(this, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i4 = this.length - 1; i4 >= 0; i4--) {
            if (h.a(this.array[this.offset + i4], obj)) {
                return i4;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return new a(this, 0);
    }

    public final void m(int i4, Collection collection, int i5) {
        ListBuilder listBuilder = this.backing;
        if (listBuilder != null) {
            listBuilder.m(i4, collection, i5);
            this.array = this.backing.array;
            this.length += i5;
            return;
        }
        q(i4, i5);
        Iterator it = collection.iterator();
        for (int i6 = 0; i6 < i5; i6++) {
            this.array[i4 + i6] = it.next();
        }
    }

    public final void n(int i4, Object obj) {
        ListBuilder listBuilder = this.backing;
        if (listBuilder == null) {
            q(i4, 1);
            this.array[i4] = obj;
            return;
        }
        listBuilder.n(i4, obj);
        this.array = this.backing.array;
        this.length++;
    }

    public final void o() {
        if (this.backing != null) {
            throw new IllegalStateException();
        }
        p();
        this.isReadOnly = true;
    }

    public final void p() {
        ListBuilder listBuilder;
        if (this.isReadOnly || ((listBuilder = this.root) != null && listBuilder.isReadOnly)) {
            throw new UnsupportedOperationException();
        }
    }

    public final void q(int i4, int i5) {
        int i6 = this.length + i5;
        if (this.backing != null) {
            throw new IllegalStateException();
        }
        if (i6 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.array;
        if (i6 > objArr.length) {
            int length = objArr.length;
            int i7 = length + (length >> 1);
            if (i7 - i6 < 0) {
                i7 = i6;
            }
            if (i7 - 2147483639 > 0) {
                i7 = i6 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            Object[] copyOf = Arrays.copyOf(objArr, i7);
            h.d(copyOf, "copyOf(this, newSize)");
            this.array = copyOf;
        }
        Object[] objArr2 = this.array;
        m.c(i4 + i5, i4, this.offset + this.length, objArr2, objArr2);
        this.length += i5;
    }

    public final Object r(int i4) {
        ListBuilder listBuilder = this.backing;
        if (listBuilder != null) {
            this.length--;
            return listBuilder.r(i4);
        }
        Object[] objArr = this.array;
        Object obj = objArr[i4];
        m.c(i4, i4 + 1, this.offset + this.length, objArr, objArr);
        Object[] objArr2 = this.array;
        h.e(objArr2, "<this>");
        objArr2[(this.offset + this.length) - 1] = null;
        this.length--;
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        p();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            i(indexOf);
        }
        return indexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection elements) {
        h.e(elements, "elements");
        p();
        return t(this.offset, this.length, elements, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection elements) {
        h.e(elements, "elements");
        p();
        return t(this.offset, this.length, elements, true) > 0;
    }

    public final void s(int i4, int i5) {
        ListBuilder listBuilder = this.backing;
        if (listBuilder != null) {
            listBuilder.s(i4, i5);
        } else {
            Object[] objArr = this.array;
            m.c(i4, i4 + i5, this.length, objArr, objArr);
            Object[] objArr2 = this.array;
            int i6 = this.length;
            b.b(i6 - i5, i6, objArr2);
        }
        this.length -= i5;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i4, Object obj) {
        p();
        int i5 = this.length;
        if (i4 < 0 || i4 >= i5) {
            throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", i5));
        }
        Object[] objArr = this.array;
        int i6 = this.offset;
        Object obj2 = objArr[i6 + i4];
        objArr[i6 + i4] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i4, int i5) {
        kotlin.collections.b.a(i4, i5, this.length);
        Object[] objArr = this.array;
        int i6 = this.offset + i4;
        int i7 = i5 - i4;
        boolean z4 = this.isReadOnly;
        ListBuilder listBuilder = this.root;
        return new ListBuilder(objArr, i6, i7, z4, this, listBuilder == null ? this : listBuilder);
    }

    public final int t(int i4, int i5, Collection collection, boolean z4) {
        ListBuilder listBuilder = this.backing;
        if (listBuilder != null) {
            int t4 = listBuilder.t(i4, i5, collection, z4);
            this.length -= t4;
            return t4;
        }
        int i6 = 0;
        int i7 = 0;
        while (i6 < i5) {
            int i8 = i4 + i6;
            if (collection.contains(this.array[i8]) == z4) {
                Object[] objArr = this.array;
                i6++;
                objArr[i7 + i4] = objArr[i8];
                i7++;
            } else {
                i6++;
            }
        }
        int i9 = i5 - i7;
        Object[] objArr2 = this.array;
        m.c(i4 + i7, i5 + i4, this.length, objArr2, objArr2);
        Object[] objArr3 = this.array;
        int i10 = this.length;
        b.b(i10 - i9, i10, objArr3);
        this.length -= i9;
        return i9;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] destination) {
        h.e(destination, "destination");
        int length = destination.length;
        int i4 = this.length;
        if (length < i4) {
            Object[] objArr = this.array;
            int i5 = this.offset;
            Object[] copyOfRange = Arrays.copyOfRange(objArr, i5, i4 + i5, destination.getClass());
            h.d(copyOfRange, "copyOfRange(array, offse…h, destination.javaClass)");
            return copyOfRange;
        }
        Object[] objArr2 = this.array;
        int i6 = this.offset;
        m.c(0, i6, i4 + i6, objArr2, destination);
        int length2 = destination.length;
        int i7 = this.length;
        if (length2 > i7) {
            destination[i7] = null;
        }
        return destination;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        Object[] objArr = this.array;
        int i4 = this.offset;
        int i5 = this.length;
        StringBuilder sb = new StringBuilder((i5 * 3) + 2);
        sb.append("[");
        for (int i6 = 0; i6 < i5; i6++) {
            if (i6 > 0) {
                sb.append(", ");
            }
            sb.append(objArr[i4 + i6]);
        }
        sb.append("]");
        String sb2 = sb.toString();
        h.d(sb2, "sb.toString()");
        return sb2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i4) {
        int i5 = this.length;
        if (i4 >= 0 && i4 <= i5) {
            return new a(this, i4);
        }
        throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", i5));
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i4, Object obj) {
        p();
        int i5 = this.length;
        if (i4 >= 0 && i4 <= i5) {
            n(this.offset + i4, obj);
            return;
        }
        throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", i5));
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i4, Collection elements) {
        h.e(elements, "elements");
        p();
        int i5 = this.length;
        if (i4 >= 0 && i4 <= i5) {
            int size = elements.size();
            m(this.offset + i4, elements, size);
            return size > 0;
        }
        throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", i5));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        Object[] objArr = this.array;
        int i4 = this.offset;
        return m.f(i4, this.length + i4, objArr);
    }

    public ListBuilder() {
        this(10);
    }

    public ListBuilder(int i4) {
        this(b.a(i4), 0, 0, false, null, null);
    }
}
