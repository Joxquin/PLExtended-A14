package com.google.common.collect;

import O2.k;
import O2.m;
import j.C1080K;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public abstract class ImmutableList extends ImmutableCollection implements List, RandomAccess {

    /* renamed from: e  reason: collision with root package name */
    public static final c f8428e = new c(RegularImmutableList.f8436h, 0);

    /* loaded from: classes.dex */
    class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final Object[] elements;

        public SerializedForm(Object[] objArr) {
            this.elements = objArr;
        }

        public Object readResolve() {
            Object[] objArr = this.elements;
            c cVar = ImmutableList.f8428e;
            if (objArr.length == 0) {
                return RegularImmutableList.f8436h;
            }
            Object[] objArr2 = (Object[]) objArr.clone();
            int length = objArr2.length;
            for (int i4 = 0; i4 < length; i4++) {
                if (objArr2[i4] == null) {
                    throw new NullPointerException(C1080K.a("at index ", i4));
                }
            }
            int length2 = objArr2.length;
            return length2 == 0 ? RegularImmutableList.f8436h : new RegularImmutableList(length2, objArr2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class SubList extends ImmutableList {

        /* renamed from: f  reason: collision with root package name */
        public final transient int f8429f;

        /* renamed from: g  reason: collision with root package name */
        public final transient int f8430g;

        public SubList(int i4, int i5) {
            this.f8429f = i4;
            this.f8430g = i5;
        }

        @Override // java.util.List
        public final Object get(int i4) {
            m.g(i4, this.f8430g);
            return ImmutableList.this.get(i4 + this.f8429f);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final Object[] i() {
            return ImmutableList.this.i();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int j() {
            return ImmutableList.this.k() + this.f8429f + this.f8430g;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int k() {
            return ImmutableList.this.k() + this.f8429f;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        /* renamed from: p */
        public final ImmutableList subList(int i4, int i5) {
            m.j(i4, i5, this.f8430g);
            ImmutableList immutableList = ImmutableList.this;
            int i6 = this.f8429f;
            return immutableList.subList(i4 + i6, i5 + i6);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f8430g;
        }
    }

    public static ImmutableList n(Object... objArr) {
        int length = objArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (objArr[i4] == null) {
                throw new NullPointerException(C1080K.a("at index ", i4));
            }
        }
        int length2 = objArr.length;
        return length2 == 0 ? RegularImmutableList.f8436h : new RegularImmutableList(length2, objArr);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i4, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i4, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i4 = 0; i4 < size; i4++) {
                        if (k.a(get(i4), list.get(i4))) {
                        }
                    }
                    return true;
                }
                Iterator it = list.iterator();
                for (Object obj2 : this) {
                    if (it.hasNext()) {
                        if (!k.a(obj2, it.next())) {
                        }
                    }
                }
                return !it.hasNext();
            }
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int h(Object[] objArr) {
        int size = size();
        for (int i4 = 0; i4 < size; i4++) {
            objArr[0 + i4] = get(i4);
        }
        return 0 + size;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i4 = 1;
        for (int i5 = 0; i5 < size; i5++) {
            i4 = ~(~(get(i5).hashCode() + (i4 * 31)));
        }
        return i4;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i4 = 0; i4 < size; i4++) {
            if (obj.equals(get(i4))) {
                return i4;
            }
        }
        return -1;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final h m() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: o */
    public final c listIterator(int i4) {
        m.i(i4, size());
        return isEmpty() ? f8428e : new c(this, i4);
    }

    @Override // java.util.List
    /* renamed from: p */
    public ImmutableList subList(int i4, int i5) {
        m.j(i4, i5, size());
        int i6 = i5 - i4;
        return i6 == size() ? this : i6 == 0 ? RegularImmutableList.f8436h : new SubList(i4, i6);
    }

    @Override // java.util.List
    @Deprecated
    public final Object remove(int i4) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i4, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public Object writeReplace() {
        return new SerializedForm(toArray());
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }
}
