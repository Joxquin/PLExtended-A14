package f3;

import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.builders.MapBuilder;
/* loaded from: classes.dex */
public final class h extends kotlin.collections.h {

    /* renamed from: d  reason: collision with root package name */
    public final MapBuilder f9358d;

    public h(MapBuilder backing) {
        kotlin.jvm.internal.h.e(backing, "backing");
        this.f9358d = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f9358d.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f9358d.containsKey(obj);
    }

    @Override // kotlin.collections.h
    public final int h() {
        return this.f9358d.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f9358d.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        MapBuilder mapBuilder = this.f9358d;
        mapBuilder.getClass();
        return new d(mapBuilder, 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        MapBuilder mapBuilder = this.f9358d;
        mapBuilder.i();
        int m4 = mapBuilder.m(obj);
        if (m4 < 0) {
            m4 = -1;
        } else {
            mapBuilder.s(m4);
        }
        return m4 >= 0;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        this.f9358d.i();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        this.f9358d.i();
        return super.retainAll(elements);
    }
}
