package f3;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.collections.builders.MapBuilder;
/* loaded from: classes.dex */
public final class g extends kotlin.collections.h {

    /* renamed from: d  reason: collision with root package name */
    public final MapBuilder f9357d;

    public g(MapBuilder backing) {
        kotlin.jvm.internal.h.e(backing, "backing");
        this.f9357d = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        Map.Entry element = (Map.Entry) obj;
        kotlin.jvm.internal.h.e(element, "element");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f9357d.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        return this.f9357d.j(elements);
    }

    @Override // kotlin.collections.h
    public final int h() {
        return this.f9357d.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* renamed from: i */
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry element = (Map.Entry) obj;
            kotlin.jvm.internal.h.e(element, "element");
            return this.f9357d.k(element);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f9357d.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        MapBuilder mapBuilder = this.f9357d;
        mapBuilder.getClass();
        return new d(mapBuilder, 0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* renamed from: j */
    public final boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry element = (Map.Entry) obj;
            kotlin.jvm.internal.h.e(element, "element");
            return this.f9357d.r(element);
        }
        return false;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        this.f9357d.i();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        this.f9357d.i();
        return super.retainAll(elements);
    }
}
