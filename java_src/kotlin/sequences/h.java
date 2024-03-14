package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
/* loaded from: classes.dex */
public final class h extends i implements Iterator, kotlin.coroutines.c {

    /* renamed from: d  reason: collision with root package name */
    public int f11284d;

    /* renamed from: e  reason: collision with root package name */
    public Object f11285e;

    /* renamed from: f  reason: collision with root package name */
    public Iterator f11286f;

    /* renamed from: g  reason: collision with root package name */
    public kotlin.coroutines.c f11287g;

    @Override // kotlin.sequences.i
    public final void a(Object obj, kotlin.coroutines.c frame) {
        this.f11285e = obj;
        this.f11284d = 3;
        this.f11287g = frame;
        kotlin.jvm.internal.h.e(frame, "frame");
    }

    @Override // kotlin.sequences.i
    public final Object b(Iterator it, kotlin.coroutines.c frame) {
        if (it.hasNext()) {
            this.f11286f = it;
            this.f11284d = 2;
            this.f11287g = frame;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            kotlin.jvm.internal.h.e(frame, "frame");
            return coroutineSingletons;
        }
        return e3.f.f9037a;
    }

    public final Throwable c() {
        int i4 = this.f11284d;
        if (i4 != 4) {
            if (i4 != 5) {
                return new IllegalStateException("Unexpected state of the iterator: " + this.f11284d);
            }
            return new IllegalStateException("Iterator has failed.");
        }
        return new NoSuchElementException();
    }

    @Override // kotlin.coroutines.c
    public final kotlin.coroutines.i getContext() {
        return EmptyCoroutineContext.f11247d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i4 = this.f11284d;
            if (i4 != 0) {
                if (i4 != 1) {
                    if (i4 == 2 || i4 == 3) {
                        return true;
                    }
                    if (i4 == 4) {
                        return false;
                    }
                    throw c();
                }
                Iterator it = this.f11286f;
                kotlin.jvm.internal.h.b(it);
                if (it.hasNext()) {
                    this.f11284d = 2;
                    return true;
                }
                this.f11286f = null;
            }
            this.f11284d = 5;
            kotlin.coroutines.c cVar = this.f11287g;
            kotlin.jvm.internal.h.b(cVar);
            this.f11287g = null;
            cVar.resumeWith(e3.f.f9037a);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i4 = this.f11284d;
        if (i4 == 0 || i4 == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        } else if (i4 == 2) {
            this.f11284d = 1;
            Iterator it = this.f11286f;
            kotlin.jvm.internal.h.b(it);
            return it.next();
        } else if (i4 == 3) {
            this.f11284d = 0;
            Object obj = this.f11285e;
            this.f11285e = null;
            return obj;
        } else {
            throw c();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // kotlin.coroutines.c
    public final void resumeWith(Object obj) {
        e3.d.b(obj);
        this.f11284d = 4;
    }
}
