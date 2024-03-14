package kotlin.collections;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public class c implements Iterator {

    /* renamed from: d  reason: collision with root package name */
    public int f11230d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ f f11231e;

    public c(f fVar) {
        this.f11231e = fVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11230d < this.f11231e.h();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            f fVar = this.f11231e;
            int i4 = this.f11230d;
            this.f11230d = i4 + 1;
            return fVar.get(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
