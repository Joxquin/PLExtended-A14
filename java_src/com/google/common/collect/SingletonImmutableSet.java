package com.google.common.collect;
/* loaded from: classes.dex */
final class SingletonImmutableSet extends ImmutableSet {

    /* renamed from: g  reason: collision with root package name */
    public final transient Object f8459g;

    public SingletonImmutableSet(Object obj) {
        obj.getClass();
        this.f8459g = obj;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f8459g.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int h(Object[] objArr) {
        objArr[0] = this.f8459g;
        return 1;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f8459g.hashCode();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean l() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: m */
    public final h iterator() {
        return new f(this.f8459g);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.f8459g.toString() + ']';
    }
}
