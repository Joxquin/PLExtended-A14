package f3;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.builders.MapBuilder;
/* loaded from: classes.dex */
public final class i extends AbstractCollection implements Collection {

    /* renamed from: d  reason: collision with root package name */
    public final MapBuilder f9359d;

    public i(MapBuilder backing) {
        kotlin.jvm.internal.h.e(backing, "backing");
        this.f9359d = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f9359d.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f9359d.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    /* renamed from: h */
    public final int size() {
        return this.f9359d.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return this.f9359d.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        MapBuilder mapBuilder = this.f9359d;
        mapBuilder.getClass();
        return new d(mapBuilder, 2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        MapBuilder mapBuilder = this.f9359d;
        mapBuilder.i();
        int n4 = mapBuilder.n(obj);
        if (n4 < 0) {
            return false;
        }
        mapBuilder.s(n4);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        this.f9359d.i();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        this.f9359d.i();
        return super.retainAll(elements);
    }
}
