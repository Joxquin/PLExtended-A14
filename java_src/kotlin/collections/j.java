package kotlin.collections;

import com.android.launcher3.util.C0479l;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public final class j extends g {

    /* renamed from: g  reason: collision with root package name */
    public static final Object[] f11238g = new Object[0];

    /* renamed from: d  reason: collision with root package name */
    public int f11239d;

    /* renamed from: e  reason: collision with root package name */
    public Object[] f11240e = f11238g;

    /* renamed from: f  reason: collision with root package name */
    public int f11241f;

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i4, Object obj) {
        int i5;
        int i6 = this.f11241f;
        if (i4 < 0 || i4 > i6) {
            throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", i6));
        }
        if (i4 == i6) {
            addLast(obj);
        } else if (i4 == 0) {
            k(i6 + 1);
            int i7 = this.f11239d;
            if (i7 == 0) {
                Object[] objArr = this.f11240e;
                kotlin.jvm.internal.h.e(objArr, "<this>");
                i7 = objArr.length;
            }
            int i8 = i7 - 1;
            this.f11239d = i8;
            this.f11240e[i8] = obj;
            this.f11241f++;
        } else {
            k(i6 + 1);
            int m4 = m(this.f11239d + i4);
            int i9 = this.f11241f;
            if (i4 < ((i9 + 1) >> 1)) {
                if (m4 == 0) {
                    Object[] objArr2 = this.f11240e;
                    kotlin.jvm.internal.h.e(objArr2, "<this>");
                    i5 = objArr2.length - 1;
                } else {
                    i5 = m4 - 1;
                }
                int i10 = this.f11239d;
                if (i10 == 0) {
                    Object[] objArr3 = this.f11240e;
                    kotlin.jvm.internal.h.e(objArr3, "<this>");
                    i10 = objArr3.length;
                }
                int i11 = i10 - 1;
                int i12 = this.f11239d;
                if (i5 >= i12) {
                    Object[] objArr4 = this.f11240e;
                    objArr4[i11] = objArr4[i12];
                    m.c(i12, i12 + 1, i5 + 1, objArr4, objArr4);
                } else {
                    Object[] objArr5 = this.f11240e;
                    m.c(i12 - 1, i12, objArr5.length, objArr5, objArr5);
                    Object[] objArr6 = this.f11240e;
                    objArr6[objArr6.length - 1] = objArr6[0];
                    m.c(0, 1, i5 + 1, objArr6, objArr6);
                }
                this.f11240e[i5] = obj;
                this.f11239d = i11;
            } else {
                int m5 = m(i9 + this.f11239d);
                if (m4 < m5) {
                    Object[] objArr7 = this.f11240e;
                    m.c(m4 + 1, m4, m5, objArr7, objArr7);
                } else {
                    Object[] objArr8 = this.f11240e;
                    m.c(1, 0, m5, objArr8, objArr8);
                    Object[] objArr9 = this.f11240e;
                    objArr9[0] = objArr9[objArr9.length - 1];
                    m.c(m4 + 1, m4, objArr9.length - 1, objArr9, objArr9);
                }
                this.f11240e[m4] = obj;
            }
            this.f11241f++;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i4, Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        int i5 = this.f11241f;
        if (i4 >= 0 && i4 <= i5) {
            if (elements.isEmpty()) {
                return false;
            }
            int i6 = this.f11241f;
            if (i4 == i6) {
                return addAll(elements);
            }
            k(elements.size() + i6);
            int m4 = m(this.f11241f + this.f11239d);
            int m5 = m(this.f11239d + i4);
            int size = elements.size();
            if (i4 < ((this.f11241f + 1) >> 1)) {
                int i7 = this.f11239d;
                int i8 = i7 - size;
                if (m5 < i7) {
                    Object[] objArr = this.f11240e;
                    m.c(i8, i7, objArr.length, objArr, objArr);
                    if (size >= m5) {
                        Object[] objArr2 = this.f11240e;
                        m.c(objArr2.length - size, 0, m5, objArr2, objArr2);
                    } else {
                        Object[] objArr3 = this.f11240e;
                        m.c(objArr3.length - size, 0, size, objArr3, objArr3);
                        Object[] objArr4 = this.f11240e;
                        m.c(0, size, m5, objArr4, objArr4);
                    }
                } else if (i8 >= 0) {
                    Object[] objArr5 = this.f11240e;
                    m.c(i8, i7, m5, objArr5, objArr5);
                } else {
                    Object[] objArr6 = this.f11240e;
                    i8 += objArr6.length;
                    int i9 = m5 - i7;
                    int length = objArr6.length - i8;
                    if (length >= i9) {
                        m.c(i8, i7, m5, objArr6, objArr6);
                    } else {
                        m.c(i8, i7, i7 + length, objArr6, objArr6);
                        Object[] objArr7 = this.f11240e;
                        m.c(0, this.f11239d + length, m5, objArr7, objArr7);
                    }
                }
                this.f11239d = i8;
                int i10 = m5 - size;
                if (i10 < 0) {
                    i10 += this.f11240e.length;
                }
                j(i10, elements);
            } else {
                int i11 = m5 + size;
                if (m5 < m4) {
                    int i12 = size + m4;
                    Object[] objArr8 = this.f11240e;
                    if (i12 <= objArr8.length) {
                        m.c(i11, m5, m4, objArr8, objArr8);
                    } else if (i11 >= objArr8.length) {
                        m.c(i11 - objArr8.length, m5, m4, objArr8, objArr8);
                    } else {
                        int length2 = m4 - (i12 - objArr8.length);
                        m.c(0, length2, m4, objArr8, objArr8);
                        Object[] objArr9 = this.f11240e;
                        m.c(i11, m5, length2, objArr9, objArr9);
                    }
                } else {
                    Object[] objArr10 = this.f11240e;
                    m.c(size, 0, m4, objArr10, objArr10);
                    Object[] objArr11 = this.f11240e;
                    if (i11 >= objArr11.length) {
                        m.c(i11 - objArr11.length, m5, objArr11.length, objArr11, objArr11);
                    } else {
                        m.c(0, objArr11.length - size, objArr11.length, objArr11, objArr11);
                        Object[] objArr12 = this.f11240e;
                        m.c(i11, m5, objArr12.length - size, objArr12, objArr12);
                    }
                }
                j(m5, elements);
            }
            return true;
        }
        throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", i5));
    }

    public final void addLast(Object obj) {
        k(h() + 1);
        this.f11240e[m(h() + this.f11239d)] = obj;
        this.f11241f = h() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        int m4 = m(this.f11241f + this.f11239d);
        int i4 = this.f11239d;
        if (i4 < m4) {
            Object[] objArr = this.f11240e;
            kotlin.jvm.internal.h.e(objArr, "<this>");
            Arrays.fill(objArr, i4, m4, (Object) null);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.f11240e;
            Arrays.fill(objArr2, this.f11239d, objArr2.length, (Object) null);
            Object[] objArr3 = this.f11240e;
            kotlin.jvm.internal.h.e(objArr3, "<this>");
            Arrays.fill(objArr3, 0, m4, (Object) null);
        }
        this.f11239d = 0;
        this.f11241f = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i4) {
        int h4 = h();
        if (i4 < 0 || i4 >= h4) {
            throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", h4));
        }
        return this.f11240e[m(this.f11239d + i4)];
    }

    @Override // kotlin.collections.g
    public final int h() {
        return this.f11241f;
    }

    @Override // kotlin.collections.g
    public final Object i(int i4) {
        int i5 = this.f11241f;
        if (i4 < 0 || i4 >= i5) {
            throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", i5));
        }
        if (i4 == n.a(this)) {
            if (isEmpty()) {
                throw new NoSuchElementException("ArrayDeque is empty.");
            }
            int m4 = m(n.a(this) + this.f11239d);
            Object[] objArr = this.f11240e;
            Object obj = objArr[m4];
            objArr[m4] = null;
            this.f11241f--;
            return obj;
        } else if (i4 == 0) {
            return removeFirst();
        } else {
            int m5 = m(this.f11239d + i4);
            Object[] objArr2 = this.f11240e;
            Object obj2 = objArr2[m5];
            if (i4 < (this.f11241f >> 1)) {
                int i6 = this.f11239d;
                if (m5 >= i6) {
                    m.c(i6 + 1, i6, m5, objArr2, objArr2);
                } else {
                    m.c(1, 0, m5, objArr2, objArr2);
                    Object[] objArr3 = this.f11240e;
                    objArr3[0] = objArr3[objArr3.length - 1];
                    int i7 = this.f11239d;
                    m.c(i7 + 1, i7, objArr3.length - 1, objArr3, objArr3);
                }
                Object[] objArr4 = this.f11240e;
                int i8 = this.f11239d;
                objArr4[i8] = null;
                this.f11239d = l(i8);
            } else {
                int m6 = m(n.a(this) + this.f11239d);
                if (m5 <= m6) {
                    Object[] objArr5 = this.f11240e;
                    m.c(m5, m5 + 1, m6 + 1, objArr5, objArr5);
                } else {
                    Object[] objArr6 = this.f11240e;
                    m.c(m5, m5 + 1, objArr6.length, objArr6, objArr6);
                    Object[] objArr7 = this.f11240e;
                    objArr7[objArr7.length - 1] = objArr7[0];
                    m.c(0, 1, m6 + 1, objArr7, objArr7);
                }
                this.f11240e[m6] = null;
            }
            this.f11241f--;
            return obj2;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i4;
        int m4 = m(h() + this.f11239d);
        int i5 = this.f11239d;
        if (i5 < m4) {
            while (i5 < m4) {
                if (kotlin.jvm.internal.h.a(obj, this.f11240e[i5])) {
                    i4 = this.f11239d;
                } else {
                    i5++;
                }
            }
            return -1;
        } else if (i5 < m4) {
            return -1;
        } else {
            int length = this.f11240e.length;
            while (true) {
                if (i5 >= length) {
                    for (int i6 = 0; i6 < m4; i6++) {
                        if (kotlin.jvm.internal.h.a(obj, this.f11240e[i6])) {
                            i5 = i6 + this.f11240e.length;
                            i4 = this.f11239d;
                        }
                    }
                    return -1;
                } else if (kotlin.jvm.internal.h.a(obj, this.f11240e[i5])) {
                    i4 = this.f11239d;
                    break;
                } else {
                    i5++;
                }
            }
        }
        return i5 - i4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return h() == 0;
    }

    public final void j(int i4, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.f11240e.length;
        while (i4 < length && it.hasNext()) {
            this.f11240e[i4] = it.next();
            i4++;
        }
        int i5 = this.f11239d;
        for (int i6 = 0; i6 < i5 && it.hasNext(); i6++) {
            this.f11240e[i6] = it.next();
        }
        this.f11241f = collection.size() + h();
    }

    public final void k(int i4) {
        if (i4 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f11240e;
        if (i4 <= objArr.length) {
            return;
        }
        if (objArr == f11238g) {
            if (i4 < 10) {
                i4 = 10;
            }
            this.f11240e = new Object[i4];
            return;
        }
        int length = objArr.length;
        int i5 = length + (length >> 1);
        if (i5 - i4 < 0) {
            i5 = i4;
        }
        if (i5 - 2147483639 > 0) {
            i5 = i4 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
        }
        Object[] objArr2 = new Object[i5];
        m.c(0, this.f11239d, objArr.length, objArr, objArr2);
        Object[] objArr3 = this.f11240e;
        int length2 = objArr3.length;
        int i6 = this.f11239d;
        m.c(length2 - i6, 0, i6, objArr3, objArr2);
        this.f11239d = 0;
        this.f11240e = objArr2;
    }

    public final int l(int i4) {
        Object[] objArr = this.f11240e;
        kotlin.jvm.internal.h.e(objArr, "<this>");
        if (i4 == objArr.length - 1) {
            return 0;
        }
        return i4 + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i4;
        int m4 = m(this.f11241f + this.f11239d);
        int i5 = this.f11239d;
        if (i5 < m4) {
            length = m4 - 1;
            if (i5 <= length) {
                while (!kotlin.jvm.internal.h.a(obj, this.f11240e[length])) {
                    if (length != i5) {
                        length--;
                    }
                }
                i4 = this.f11239d;
                return length - i4;
            }
            return -1;
        }
        if (i5 > m4) {
            int i6 = m4 - 1;
            while (true) {
                if (-1 >= i6) {
                    Object[] objArr = this.f11240e;
                    kotlin.jvm.internal.h.e(objArr, "<this>");
                    length = objArr.length - 1;
                    int i7 = this.f11239d;
                    if (i7 <= length) {
                        while (!kotlin.jvm.internal.h.a(obj, this.f11240e[length])) {
                            if (length != i7) {
                                length--;
                            }
                        }
                        i4 = this.f11239d;
                    }
                } else if (kotlin.jvm.internal.h.a(obj, this.f11240e[i6])) {
                    length = i6 + this.f11240e.length;
                    i4 = this.f11239d;
                    break;
                } else {
                    i6--;
                }
            }
        }
        return -1;
    }

    public final int m(int i4) {
        Object[] objArr = this.f11240e;
        return i4 >= objArr.length ? i4 - objArr.length : i4;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        i(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection elements) {
        int m4;
        kotlin.jvm.internal.h.e(elements, "elements");
        boolean z4 = false;
        z4 = false;
        z4 = false;
        if (!isEmpty()) {
            if ((this.f11240e.length == 0 ? 1 : null) == null) {
                int m5 = m(this.f11241f + this.f11239d);
                int i4 = this.f11239d;
                if (i4 < m5) {
                    m4 = i4;
                    while (i4 < m5) {
                        Object obj = this.f11240e[i4];
                        if (!elements.contains(obj)) {
                            this.f11240e[m4] = obj;
                            m4++;
                        } else {
                            z4 = true;
                        }
                        i4++;
                    }
                    Object[] objArr = this.f11240e;
                    kotlin.jvm.internal.h.e(objArr, "<this>");
                    Arrays.fill(objArr, m4, m5, (Object) null);
                } else {
                    int length = this.f11240e.length;
                    boolean z5 = false;
                    int i5 = i4;
                    while (i4 < length) {
                        Object[] objArr2 = this.f11240e;
                        Object obj2 = objArr2[i4];
                        objArr2[i4] = null;
                        if (!elements.contains(obj2)) {
                            this.f11240e[i5] = obj2;
                            i5++;
                        } else {
                            z5 = true;
                        }
                        i4++;
                    }
                    m4 = m(i5);
                    for (int i6 = 0; i6 < m5; i6++) {
                        Object[] objArr3 = this.f11240e;
                        Object obj3 = objArr3[i6];
                        objArr3[i6] = null;
                        if (!elements.contains(obj3)) {
                            this.f11240e[m4] = obj3;
                            m4 = l(m4);
                        } else {
                            z5 = true;
                        }
                    }
                    z4 = z5;
                }
                if (z4) {
                    int i7 = m4 - this.f11239d;
                    if (i7 < 0) {
                        i7 += this.f11240e.length;
                    }
                    this.f11241f = i7;
                }
            }
        }
        return z4;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        Object[] objArr = this.f11240e;
        int i4 = this.f11239d;
        Object obj = objArr[i4];
        objArr[i4] = null;
        this.f11239d = l(i4);
        this.f11241f = h() - 1;
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection elements) {
        int m4;
        kotlin.jvm.internal.h.e(elements, "elements");
        boolean z4 = false;
        z4 = false;
        z4 = false;
        if (!isEmpty()) {
            if ((this.f11240e.length == 0 ? 1 : null) == null) {
                int m5 = m(this.f11241f + this.f11239d);
                int i4 = this.f11239d;
                if (i4 < m5) {
                    m4 = i4;
                    while (i4 < m5) {
                        Object obj = this.f11240e[i4];
                        if (elements.contains(obj)) {
                            this.f11240e[m4] = obj;
                            m4++;
                        } else {
                            z4 = true;
                        }
                        i4++;
                    }
                    Object[] objArr = this.f11240e;
                    kotlin.jvm.internal.h.e(objArr, "<this>");
                    Arrays.fill(objArr, m4, m5, (Object) null);
                } else {
                    int length = this.f11240e.length;
                    boolean z5 = false;
                    int i5 = i4;
                    while (i4 < length) {
                        Object[] objArr2 = this.f11240e;
                        Object obj2 = objArr2[i4];
                        objArr2[i4] = null;
                        if (elements.contains(obj2)) {
                            this.f11240e[i5] = obj2;
                            i5++;
                        } else {
                            z5 = true;
                        }
                        i4++;
                    }
                    m4 = m(i5);
                    for (int i6 = 0; i6 < m5; i6++) {
                        Object[] objArr3 = this.f11240e;
                        Object obj3 = objArr3[i6];
                        objArr3[i6] = null;
                        if (elements.contains(obj3)) {
                            this.f11240e[m4] = obj3;
                            m4 = l(m4);
                        } else {
                            z5 = true;
                        }
                    }
                    z4 = z5;
                }
                if (z4) {
                    int i7 = m4 - this.f11239d;
                    if (i7 < 0) {
                        i7 += this.f11240e.length;
                    }
                    this.f11241f = i7;
                }
            }
        }
        return z4;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i4, Object obj) {
        int h4 = h();
        if (i4 < 0 || i4 >= h4) {
            throw new IndexOutOfBoundsException(C0479l.a("index: ", i4, ", size: ", h4));
        }
        int m4 = m(this.f11239d + i4);
        Object[] objArr = this.f11240e;
        Object obj2 = objArr[m4];
        objArr[m4] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[h()]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] array) {
        kotlin.jvm.internal.h.e(array, "array");
        int length = array.length;
        int i4 = this.f11241f;
        if (length < i4) {
            Object newInstance = Array.newInstance(array.getClass().getComponentType(), i4);
            kotlin.jvm.internal.h.c(newInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
            array = (Object[]) newInstance;
        }
        int m4 = m(this.f11241f + this.f11239d);
        int i5 = this.f11239d;
        if (i5 < m4) {
            m.e(this.f11240e, array, i5, m4, 2);
        } else if (!isEmpty()) {
            Object[] objArr = this.f11240e;
            m.c(0, this.f11239d, objArr.length, objArr, array);
            Object[] objArr2 = this.f11240e;
            m.c(objArr2.length - this.f11239d, 0, m4, objArr2, array);
        }
        int length2 = array.length;
        int i6 = this.f11241f;
        if (length2 > i6) {
            array[i6] = null;
        }
        return array;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection elements) {
        kotlin.jvm.internal.h.e(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        k(elements.size() + h());
        j(m(h() + this.f11239d), elements);
        return true;
    }
}
