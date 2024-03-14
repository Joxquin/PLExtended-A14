package q;

import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
/* renamed from: q.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1353d implements Iterator, Map.Entry {

    /* renamed from: d  reason: collision with root package name */
    public int f11939d;

    /* renamed from: e  reason: collision with root package name */
    public int f11940e = -1;

    /* renamed from: f  reason: collision with root package name */
    public boolean f11941f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C1355f f11942g;

    public C1353d(C1355f c1355f) {
        this.f11942g = c1355f;
        this.f11939d = c1355f.f11967f - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (this.f11941f) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                return kotlin.jvm.internal.h.a(entry.getKey(), this.f11942g.g(this.f11940e)) && kotlin.jvm.internal.h.a(entry.getValue(), this.f11942g.j(this.f11940e));
            }
            return false;
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (this.f11941f) {
            return this.f11942g.g(this.f11940e);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f11941f) {
            return this.f11942g.j(this.f11940e);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11940e < this.f11939d;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (this.f11941f) {
            Object g4 = this.f11942g.g(this.f11940e);
            Object j4 = this.f11942g.j(this.f11940e);
            return (g4 == null ? 0 : g4.hashCode()) ^ (j4 != null ? j4.hashCode() : 0);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.f11940e++;
            this.f11941f = true;
            return this;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f11941f) {
            throw new IllegalStateException();
        }
        this.f11942g.h(this.f11940e);
        this.f11940e--;
        this.f11939d--;
        this.f11941f = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (this.f11941f) {
            return this.f11942g.i(this.f11940e, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
