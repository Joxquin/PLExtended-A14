package com.google.protobuf;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class S0 implements Iterator {

    /* renamed from: d  reason: collision with root package name */
    public final Iterator f8576d;

    public S0(T0 t02) {
        this.f8576d = t02.f8579d.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8576d.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return (String) this.f8576d.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
