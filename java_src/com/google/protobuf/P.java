package com.google.protobuf;

import java.util.AbstractList;
import java.util.List;
/* loaded from: classes.dex */
public final class P extends AbstractList {

    /* renamed from: d  reason: collision with root package name */
    public final List f8564d;

    /* renamed from: e  reason: collision with root package name */
    public final O f8565e;

    public P(N n4, O o4) {
        this.f8564d = n4;
        this.f8565e = o4;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i4) {
        return this.f8565e.convert(this.f8564d.get(i4));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8564d.size();
    }
}
