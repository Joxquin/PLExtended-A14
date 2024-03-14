package com.google.protobuf;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public final class V implements Iterator {

    /* renamed from: d  reason: collision with root package name */
    public final Iterator f8581d;

    public V(Iterator it) {
        this.f8581d = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8581d.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f8581d.next();
        return entry.getValue() instanceof W ? new U(entry) : entry;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f8581d.remove();
    }
}
