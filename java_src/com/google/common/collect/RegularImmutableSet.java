package com.google.common.collect;
/* loaded from: classes.dex */
final class RegularImmutableSet extends ImmutableSet {

    /* renamed from: l  reason: collision with root package name */
    public static final Object[] f8452l;

    /* renamed from: m  reason: collision with root package name */
    public static final RegularImmutableSet f8453m;

    /* renamed from: g  reason: collision with root package name */
    public final transient Object[] f8454g;

    /* renamed from: h  reason: collision with root package name */
    public final transient int f8455h;

    /* renamed from: i  reason: collision with root package name */
    public final transient Object[] f8456i;

    /* renamed from: j  reason: collision with root package name */
    public final transient int f8457j;

    /* renamed from: k  reason: collision with root package name */
    public final transient int f8458k;

    static {
        Object[] objArr = new Object[0];
        f8452l = objArr;
        f8453m = new RegularImmutableSet(0, 0, 0, objArr, objArr);
    }

    public RegularImmutableSet(int i4, int i5, int i6, Object[] objArr, Object[] objArr2) {
        this.f8454g = objArr;
        this.f8455h = i4;
        this.f8456i = objArr2;
        this.f8457j = i5;
        this.f8458k = i6;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        Object[] objArr = this.f8456i;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int a4 = b.a(obj.hashCode());
        while (true) {
            int i4 = a4 & this.f8457j;
            Object obj2 = objArr[i4];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            a4 = i4 + 1;
        }
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int h(Object[] objArr) {
        System.arraycopy(this.f8454g, 0, objArr, 0, this.f8458k);
        return 0 + this.f8458k;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f8455h;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] i() {
        return this.f8454g;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int j() {
        return this.f8458k;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int k() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean l() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* renamed from: m */
    public final h iterator() {
        return n().listIterator(0);
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList q() {
        Object[] objArr = this.f8454g;
        int i4 = this.f8458k;
        c cVar = ImmutableList.f8428e;
        return i4 == 0 ? RegularImmutableList.f8436h : new RegularImmutableList(i4, objArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8458k;
    }
}
