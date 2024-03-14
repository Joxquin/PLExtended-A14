package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public final class c implements Iterator {

    /* renamed from: d  reason: collision with root package name */
    public final Iterator f11272d;

    /* renamed from: e  reason: collision with root package name */
    public int f11273e = -1;

    /* renamed from: f  reason: collision with root package name */
    public Object f11274f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ d f11275g;

    public c(d dVar) {
        this.f11275g = dVar;
        this.f11272d = dVar.f11276a.iterator();
    }

    public final void a() {
        while (this.f11272d.hasNext()) {
            Object next = this.f11272d.next();
            if (((Boolean) this.f11275g.f11278c.invoke(next)).booleanValue() == this.f11275g.f11277b) {
                this.f11274f = next;
                this.f11273e = 1;
                return;
            }
        }
        this.f11273e = 0;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f11273e == -1) {
            a();
        }
        return this.f11273e == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f11273e == -1) {
            a();
        }
        if (this.f11273e != 0) {
            Object obj = this.f11274f;
            this.f11274f = null;
            this.f11273e = -1;
            return obj;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
