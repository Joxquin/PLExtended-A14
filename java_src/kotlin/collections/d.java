package kotlin.collections;

import com.android.launcher3.util.C0479l;
import java.util.ListIterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public final class d extends c implements ListIterator {

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ f f11232f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(f fVar, int i4) {
        super(fVar);
        this.f11232f = fVar;
        int h4 = fVar.h();
        if (i4 < 0 || i4 > h4) {
            throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", h4));
        }
        this.f11230d = i4;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f11230d > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f11230d;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            f fVar = this.f11232f;
            int i4 = this.f11230d - 1;
            this.f11230d = i4;
            return fVar.get(i4);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f11230d - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
