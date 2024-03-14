package kotlin.sequences;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public final class e implements Iterator {

    /* renamed from: d  reason: collision with root package name */
    public Object f11279d;

    /* renamed from: e  reason: collision with root package name */
    public int f11280e = -2;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ f f11281f;

    public e(f fVar) {
        this.f11281f = fVar;
    }

    public final void a() {
        Object invoke;
        if (this.f11280e == -2) {
            invoke = this.f11281f.f11282a.invoke();
        } else {
            m3.l lVar = this.f11281f.f11283b;
            Object obj = this.f11279d;
            kotlin.jvm.internal.h.b(obj);
            invoke = lVar.invoke(obj);
        }
        this.f11279d = invoke;
        this.f11280e = invoke == null ? 0 : 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f11280e < 0) {
            a();
        }
        return this.f11280e == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f11280e < 0) {
            a();
        }
        if (this.f11280e != 0) {
            Object obj = this.f11279d;
            kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
            this.f11280e = -1;
            return obj;
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
