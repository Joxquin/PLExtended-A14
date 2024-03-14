package q;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* renamed from: q.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1358i implements Iterator {

    /* renamed from: d  reason: collision with root package name */
    public int f11951d;

    /* renamed from: e  reason: collision with root package name */
    public int f11952e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f11953f;

    public AbstractC1358i(int i4) {
        this.f11951d = i4;
    }

    public abstract Object a(int i4);

    public abstract void b(int i4);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f11952e < this.f11951d;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            Object a4 = a(this.f11952e);
            this.f11952e++;
            this.f11953f = true;
            return a4;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f11953f) {
            throw new IllegalStateException("Call next() before removing an element.".toString());
        }
        int i4 = this.f11952e - 1;
        this.f11952e = i4;
        b(i4);
        this.f11951d--;
        this.f11953f = false;
    }
}
