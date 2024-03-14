package kotlin.collections;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
/* loaded from: classes.dex */
public final class i implements Collection {

    /* renamed from: d  reason: collision with root package name */
    public final Object[] f11236d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f11237e;

    public i(Object[] objArr, boolean z4) {
        this.f11236d = objArr;
        this.f11237e = z4;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        int i4;
        Object[] objArr = this.f11236d;
        kotlin.jvm.internal.h.e(objArr, "<this>");
        if (obj == null) {
            int length = objArr.length;
            i4 = 0;
            while (i4 < length) {
                if (objArr[i4] == null) {
                    break;
                }
                i4++;
            }
            i4 = -1;
        } else {
            int length2 = objArr.length;
            for (int i5 = 0; i5 < length2; i5++) {
                if (kotlin.jvm.internal.h.a(obj, objArr[i5])) {
                    i4 = i5;
                    break;
                }
            }
            i4 = -1;
        }
        return i4 >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        if (elements.isEmpty()) {
            return true;
        }
        for (Object obj : elements) {
            if (!contains(obj)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f11236d.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        Object[] array = this.f11236d;
        kotlin.jvm.internal.h.e(array, "array");
        return new kotlin.jvm.internal.b(array);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f11236d.length;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] array) {
        kotlin.jvm.internal.h.e(array, "array");
        return kotlin.jvm.internal.e.b(this, array);
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        Object[] objArr = this.f11236d;
        boolean z4 = this.f11237e;
        kotlin.jvm.internal.h.e(objArr, "<this>");
        if (z4 && kotlin.jvm.internal.h.a(objArr.getClass(), Object[].class)) {
            return objArr;
        }
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length, Object[].class);
        kotlin.jvm.internal.h.d(copyOf, "copyOf(this, this.size, Array<Any?>::class.java)");
        return copyOf;
    }
}
