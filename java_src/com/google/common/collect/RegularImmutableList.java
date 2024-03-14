package com.google.common.collect;

import O2.m;
import java.util.Objects;
/* loaded from: classes.dex */
class RegularImmutableList extends ImmutableList {

    /* renamed from: h  reason: collision with root package name */
    public static final ImmutableList f8436h = new RegularImmutableList(0, new Object[0]);

    /* renamed from: f  reason: collision with root package name */
    public final transient Object[] f8437f;

    /* renamed from: g  reason: collision with root package name */
    public final transient int f8438g;

    public RegularImmutableList(int i4, Object[] objArr) {
        this.f8437f = objArr;
        this.f8438g = i4;
    }

    @Override // java.util.List
    public final Object get(int i4) {
        m.g(i4, this.f8438g);
        Object obj = this.f8437f[i4];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    public final int h(Object[] objArr) {
        System.arraycopy(this.f8437f, 0, objArr, 0, this.f8438g);
        return 0 + this.f8438g;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] i() {
        return this.f8437f;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int j() {
        return this.f8438g;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int k() {
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8438g;
    }
}
