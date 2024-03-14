package kotlin.jvm.internal;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public final class b implements Iterator {

    /* renamed from: d  reason: collision with root package name */
    public final Object[] f11258d;

    /* renamed from: e  reason: collision with root package name */
    public int f11259e;

    public b(Object[] array) {
        h.e(array, "array");
        this.f11258d = array;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11259e < this.f11258d.length;
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            Object[] objArr = this.f11258d;
            int i4 = this.f11259e;
            this.f11259e = i4 + 1;
            return objArr[i4];
        } catch (ArrayIndexOutOfBoundsException e4) {
            this.f11259e--;
            throw new NoSuchElementException(e4.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
