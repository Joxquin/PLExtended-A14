package q;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.s;
import r.C1367a;
/* renamed from: q.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1357h implements Collection, Set {

    /* renamed from: d  reason: collision with root package name */
    public int[] f11948d;

    /* renamed from: e  reason: collision with root package name */
    public Object[] f11949e;

    /* renamed from: f  reason: collision with root package name */
    public int f11950f;

    public C1357h(int i4) {
        this.f11948d = C1367a.f12064a;
        this.f11949e = C1367a.f12066c;
        if (i4 > 0) {
            this.f11948d = new int[i4];
            this.f11949e = new Object[i4];
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i4;
        int h4;
        int i5 = this.f11950f;
        if (obj == null) {
            h4 = h(0, null);
            i4 = 0;
        } else {
            int hashCode = obj.hashCode();
            i4 = hashCode;
            h4 = h(hashCode, obj);
        }
        if (h4 >= 0) {
            return false;
        }
        int i6 = ~h4;
        int[] iArr = this.f11948d;
        if (i5 >= iArr.length) {
            int i7 = 8;
            if (i5 >= 8) {
                i7 = (i5 >> 1) + i5;
            } else if (i5 < 4) {
                i7 = 4;
            }
            Object[] objArr = this.f11949e;
            int[] iArr2 = new int[i7];
            this.f11948d = iArr2;
            this.f11949e = new Object[i7];
            if (i5 != this.f11950f) {
                throw new ConcurrentModificationException();
            }
            if (!(iArr2.length == 0)) {
                kotlin.collections.m.d(0, 0, iArr, iArr2, iArr.length);
                kotlin.collections.m.e(objArr, this.f11949e, 0, objArr.length, 6);
            }
        }
        if (i6 < i5) {
            int[] iArr3 = this.f11948d;
            int i8 = i6 + 1;
            kotlin.collections.m.d(i8, i6, iArr3, iArr3, i5);
            Object[] objArr2 = this.f11949e;
            kotlin.collections.m.c(i8, i6, i5, objArr2, objArr2);
        }
        int i9 = this.f11950f;
        if (i5 == i9) {
            int[] iArr4 = this.f11948d;
            if (i6 < iArr4.length) {
                iArr4[i6] = i4;
                this.f11949e[i6] = obj;
                this.f11950f = i9 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        int size = elements.size() + this.f11950f;
        int i4 = this.f11950f;
        int[] iArr = this.f11948d;
        boolean z4 = false;
        if (iArr.length < size) {
            Object[] objArr = this.f11949e;
            int[] iArr2 = new int[size];
            this.f11948d = iArr2;
            this.f11949e = new Object[size];
            if (i4 > 0) {
                kotlin.collections.m.d(0, 0, iArr, iArr2, i4);
                kotlin.collections.m.e(objArr, this.f11949e, 0, this.f11950f, 6);
            }
        }
        if (this.f11950f == i4) {
            for (Object obj : elements) {
                z4 |= add(obj);
            }
            return z4;
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.f11950f != 0) {
            this.f11948d = C1367a.f12064a;
            this.f11949e = C1367a.f12066c;
            this.f11950f = 0;
        }
        if (this.f11950f != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return (obj == null ? h(0, null) : h(obj.hashCode(), obj)) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        for (Object obj : elements) {
            if (!contains(obj)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Set) && this.f11950f == ((Set) obj).size()) {
            try {
                int i4 = this.f11950f;
                for (int i5 = 0; i5 < i4; i5++) {
                    if (!((Set) obj).contains(this.f11949e[i5])) {
                        return false;
                    }
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }
        return false;
    }

    public final int h(int i4, Object obj) {
        int i5 = this.f11950f;
        if (i5 == 0) {
            return -1;
        }
        try {
            int a4 = C1367a.a(i5, i4, this.f11948d);
            if (a4 >= 0 && !kotlin.jvm.internal.h.a(obj, this.f11949e[a4])) {
                int i6 = a4 + 1;
                while (i6 < i5 && this.f11948d[i6] == i4) {
                    if (kotlin.jvm.internal.h.a(obj, this.f11949e[i6])) {
                        return i6;
                    }
                    i6++;
                }
                for (int i7 = a4 - 1; i7 >= 0 && this.f11948d[i7] == i4; i7--) {
                    if (kotlin.jvm.internal.h.a(obj, this.f11949e[i7])) {
                        return i7;
                    }
                }
                return ~i6;
            }
            return a4;
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f11948d;
        int i4 = this.f11950f;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            i5 += iArr[i6];
        }
        return i5;
    }

    public final Object i(int i4) {
        int i5 = this.f11950f;
        Object[] objArr = this.f11949e;
        Object obj = objArr[i4];
        if (i5 <= 1) {
            clear();
        } else {
            int i6 = i5 - 1;
            int[] iArr = this.f11948d;
            if (iArr.length <= 8 || i5 >= iArr.length / 3) {
                if (i4 < i6) {
                    int i7 = i4 + 1;
                    int i8 = i6 + 1;
                    kotlin.collections.m.d(i4, i7, iArr, iArr, i8);
                    Object[] objArr2 = this.f11949e;
                    kotlin.collections.m.c(i4, i7, i8, objArr2, objArr2);
                }
                this.f11949e[i6] = null;
            } else {
                int i9 = i5 > 8 ? i5 + (i5 >> 1) : 8;
                int[] iArr2 = new int[i9];
                this.f11948d = iArr2;
                this.f11949e = new Object[i9];
                if (i4 > 0) {
                    kotlin.collections.m.d(0, 0, iArr, iArr2, i4);
                    kotlin.collections.m.e(objArr, this.f11949e, 0, i4, 6);
                }
                if (i4 < i6) {
                    int i10 = i4 + 1;
                    int i11 = i6 + 1;
                    kotlin.collections.m.d(i4, i10, iArr, this.f11948d, i11);
                    kotlin.collections.m.c(i4, i10, i11, objArr, this.f11949e);
                }
            }
            if (i5 != this.f11950f) {
                throw new ConcurrentModificationException();
            }
            this.f11950f = i6;
        }
        return obj;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f11950f <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new C1356g(this);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int h4 = obj == null ? h(0, null) : h(obj.hashCode(), obj);
        if (h4 >= 0) {
            i(h4);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        boolean z4 = false;
        for (Object obj : elements) {
            z4 |= remove(obj);
        }
        return z4;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        boolean z4 = false;
        for (int i4 = this.f11950f - 1; -1 < i4; i4--) {
            if (!s.f(elements, this.f11949e[i4])) {
                i(i4);
                z4 = true;
            }
        }
        return z4;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f11950f;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return kotlin.collections.m.f(0, this.f11950f, this.f11949e);
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f11950f * 14);
        sb.append('{');
        int i4 = this.f11950f;
        for (int i5 = 0; i5 < i4; i5++) {
            if (i5 > 0) {
                sb.append(", ");
            }
            Object obj = this.f11949e[i5];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        String sb2 = sb.toString();
        kotlin.jvm.internal.h.d(sb2, "StringBuilder(capacity).…builderAction).toString()");
        return sb2;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] array) {
        kotlin.jvm.internal.h.e(array, "array");
        int length = array.length;
        int i4 = this.f11950f;
        if (length < i4) {
            return kotlin.collections.m.f(0, i4, this.f11949e);
        }
        kotlin.collections.m.c(0, 0, i4, this.f11949e, array);
        int length2 = array.length;
        int i5 = this.f11950f;
        if (length2 > i5) {
            array[i5] = null;
            return array;
        }
        return array;
    }
}
