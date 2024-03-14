package kotlin.sequences;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class o implements Iterator {

    /* renamed from: d  reason: collision with root package name */
    public final Iterator f11290d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ p f11291e;

    public o(p pVar) {
        this.f11291e = pVar;
        this.f11290d = pVar.f11292a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11290d.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.f11291e.f11293b.invoke(this.f11290d.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
