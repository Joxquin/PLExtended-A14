package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes.dex */
public abstract class f extends a implements List {
    @Override // java.util.List
    public final void add(int i4, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final boolean addAll(int i4, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            Collection other = (Collection) obj;
            kotlin.jvm.internal.h.e(other, "other");
            if (size() != other.size()) {
                return false;
            }
            Iterator it = other.iterator();
            for (Object obj2 : this) {
                if (!kotlin.jvm.internal.h.a(obj2, it.next())) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        Iterator<E> it = iterator();
        int i4 = 1;
        while (it.hasNext()) {
            Object next = it.next();
            i4 = (i4 * 31) + (next != null ? next.hashCode() : 0);
        }
        return i4;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        int i4 = 0;
        for (Object obj2 : this) {
            if (kotlin.jvm.internal.h.a(obj2, obj)) {
                return i4;
            }
            i4++;
        }
        return -1;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new c(this);
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        ListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (kotlin.jvm.internal.h.a(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return new d(this, 0);
    }

    @Override // java.util.List
    public final Object remove(int i4) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final Object set(int i4, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final List subList(int i4, int i5) {
        return new e(this, i4, i5);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i4) {
        return new d(this, i4);
    }
}
