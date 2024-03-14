package q;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
/* renamed from: q.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1354e implements Collection {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1355f f11943d;

    public C1354e(C1355f c1355f) {
        this.f11943d = c1355f;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.f11943d.clear();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.f11943d.b(obj) >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        for (Object obj : collection) {
            if (!contains(obj)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f11943d.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new C1351b(this.f11943d, 1);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        int b4 = this.f11943d.b(obj);
        if (b4 >= 0) {
            this.f11943d.h(b4);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        int i4 = this.f11943d.f11967f;
        int i5 = 0;
        boolean z4 = false;
        while (i5 < i4) {
            if (collection.contains(this.f11943d.j(i5))) {
                this.f11943d.h(i5);
                i5--;
                i4--;
                z4 = true;
            }
            i5++;
        }
        return z4;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        int i4 = this.f11943d.f11967f;
        int i5 = 0;
        boolean z4 = false;
        while (i5 < i4) {
            if (!collection.contains(this.f11943d.j(i5))) {
                this.f11943d.h(i5);
                i5--;
                i4--;
                z4 = true;
            }
            i5++;
        }
        return z4;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f11943d.f11967f;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        int i4 = this.f11943d.f11967f;
        if (objArr.length < i4) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i4);
        }
        for (int i5 = 0; i5 < i4; i5++) {
            objArr[i5] = this.f11943d.j(i5);
        }
        if (objArr.length > i4) {
            objArr[i4] = null;
        }
        return objArr;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        int i4 = this.f11943d.f11967f;
        Object[] objArr = new Object[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            objArr[i5] = this.f11943d.j(i5);
        }
        return objArr;
    }
}
