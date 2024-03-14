package com.google.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class T0 extends AbstractList implements Z, RandomAccess {

    /* renamed from: d  reason: collision with root package name */
    public final Z f8579d;

    public T0(Z z4) {
        this.f8579d = z4;
    }

    @Override // com.google.protobuf.Z
    public final void c(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.protobuf.Z
    public final Z d() {
        return this;
    }

    @Override // com.google.protobuf.Z
    public final Object e(int i4) {
        return this.f8579d.e(i4);
    }

    @Override // com.google.protobuf.Z
    public final List f() {
        return this.f8579d.f();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i4) {
        return (String) this.f8579d.get(i4);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new S0(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i4) {
        return new R0(this, i4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8579d.size();
    }
}
