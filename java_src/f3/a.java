package f3;

import java.util.ListIterator;
import java.util.NoSuchElementException;
import kotlin.collections.builders.ListBuilder;
/* loaded from: classes.dex */
public final class a implements ListIterator {

    /* renamed from: d  reason: collision with root package name */
    public final ListBuilder f9348d;

    /* renamed from: e  reason: collision with root package name */
    public int f9349e;

    /* renamed from: f  reason: collision with root package name */
    public int f9350f;

    public a(ListBuilder list, int i4) {
        kotlin.jvm.internal.h.e(list, "list");
        this.f9348d = list;
        this.f9349e = i4;
        this.f9350f = -1;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        ListBuilder listBuilder = this.f9348d;
        int i4 = this.f9349e;
        this.f9349e = i4 + 1;
        listBuilder.add(i4, obj);
        this.f9350f = -1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        int i4;
        int i5 = this.f9349e;
        i4 = this.f9348d.length;
        return i5 < i4;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f9349e > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        int i4;
        Object[] objArr;
        int i5;
        int i6 = this.f9349e;
        i4 = this.f9348d.length;
        if (i6 < i4) {
            int i7 = this.f9349e;
            this.f9349e = i7 + 1;
            this.f9350f = i7;
            objArr = this.f9348d.array;
            i5 = this.f9348d.offset;
            return objArr[i5 + this.f9350f];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f9349e;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        Object[] objArr;
        int i4;
        int i5 = this.f9349e;
        if (i5 > 0) {
            int i6 = i5 - 1;
            this.f9349e = i6;
            this.f9350f = i6;
            objArr = this.f9348d.array;
            i4 = this.f9348d.offset;
            return objArr[i4 + this.f9350f];
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f9349e - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        int i4 = this.f9350f;
        if (!(i4 != -1)) {
            throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
        }
        this.f9348d.i(i4);
        this.f9349e = this.f9350f;
        this.f9350f = -1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        int i4 = this.f9350f;
        if (!(i4 != -1)) {
            throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
        }
        this.f9348d.set(i4, obj);
    }
}
