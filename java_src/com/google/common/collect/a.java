package com.google.common.collect;

import O2.m;
import java.util.ListIterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public abstract class a extends h implements ListIterator {

    /* renamed from: d  reason: collision with root package name */
    public final int f8460d;

    /* renamed from: e  reason: collision with root package name */
    public int f8461e;

    public a(int i4, int i5) {
        m.i(i5, i4);
        this.f8460d = i4;
        this.f8461e = i5;
    }

    @Deprecated
    public final void a(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(Object obj) {
        a(obj);
        throw null;
    }

    @Deprecated
    public final void b(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f8461e < this.f8460d;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f8461e > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (hasNext()) {
            int i4 = this.f8461e;
            this.f8461e = i4 + 1;
            return ((c) this).f8462f.get(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f8461e;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i4 = this.f8461e - 1;
            this.f8461e = i4;
            return ((c) this).f8462f.get(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f8461e - 1;
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(Object obj) {
        b(obj);
        throw null;
    }
}
