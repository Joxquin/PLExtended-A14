package com.google.protobuf;

import java.util.ListIterator;
/* loaded from: classes.dex */
public final class R0 implements ListIterator {

    /* renamed from: d  reason: collision with root package name */
    public final ListIterator f8575d;

    public R0(T0 t02, int i4) {
        this.f8575d = t02.f8579d.listIterator(i4);
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        String str = (String) obj;
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f8575d.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f8575d.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        return (String) this.f8575d.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f8575d.nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return (String) this.f8575d.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f8575d.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        String str = (String) obj;
        throw new UnsupportedOperationException();
    }
}
