package com.google.protobuf;

import androidx.fragment.app.C0196d0;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class K extends AbstractC0745c implements N, RandomAccess, InterfaceC0789y0 {

    /* renamed from: g  reason: collision with root package name */
    public static final K f8552g;

    /* renamed from: e  reason: collision with root package name */
    public int[] f8553e;

    /* renamed from: f  reason: collision with root package name */
    public int f8554f;

    static {
        K k4 = new K(new int[0], 0);
        f8552g = k4;
        k4.f8626d = false;
    }

    public K() {
        this(new int[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i4, Object obj) {
        int i5;
        int intValue = ((Integer) obj).intValue();
        h();
        if (i4 >= 0 && i4 <= (i5 = this.f8554f)) {
            int[] iArr = this.f8553e;
            if (i5 < iArr.length) {
                System.arraycopy(iArr, i4, iArr, i4 + 1, i5 - i4);
            } else {
                int[] iArr2 = new int[((i5 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i4);
                System.arraycopy(this.f8553e, i4, iArr2, i4 + 1, this.f8554f - i4);
                this.f8553e = iArr2;
            }
            this.f8553e[i4] = intValue;
            this.f8554f++;
            ((AbstractList) this).modCount++;
            return;
        }
        StringBuilder a4 = C0196d0.a("Index:", i4, ", Size:");
        a4.append(this.f8554f);
        throw new IndexOutOfBoundsException(a4.toString());
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        h();
        Charset charset = T.f8577a;
        collection.getClass();
        if (collection instanceof K) {
            K k4 = (K) collection;
            int i4 = k4.f8554f;
            if (i4 == 0) {
                return false;
            }
            int i5 = this.f8554f;
            if (Integer.MAX_VALUE - i5 >= i4) {
                int i6 = i5 + i4;
                int[] iArr = this.f8553e;
                if (i6 > iArr.length) {
                    this.f8553e = Arrays.copyOf(iArr, i6);
                }
                System.arraycopy(k4.f8553e, 0, this.f8553e, this.f8554f, k4.f8554f);
                this.f8554f = i6;
                ((AbstractList) this).modCount++;
                return true;
            }
            throw new OutOfMemoryError();
        }
        return super.addAll(collection);
    }

    @Override // com.google.protobuf.S
    public final S b(int i4) {
        if (i4 >= this.f8554f) {
            return new K(Arrays.copyOf(this.f8553e, i4), this.f8554f);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof K) {
            K k4 = (K) obj;
            if (this.f8554f != k4.f8554f) {
                return false;
            }
            int[] iArr = k4.f8553e;
            for (int i4 = 0; i4 < this.f8554f; i4++) {
                if (this.f8553e[i4] != iArr[i4]) {
                    return false;
                }
            }
            return true;
        }
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i4) {
        j(i4);
        return Integer.valueOf(this.f8553e[i4]);
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i4 = 1;
        for (int i5 = 0; i5 < this.f8554f; i5++) {
            i4 = (i4 * 31) + this.f8553e[i5];
        }
        return i4;
    }

    public final void i(int i4) {
        h();
        int i5 = this.f8554f;
        int[] iArr = this.f8553e;
        if (i5 == iArr.length) {
            int[] iArr2 = new int[((i5 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i5);
            this.f8553e = iArr2;
        }
        int[] iArr3 = this.f8553e;
        int i6 = this.f8554f;
        this.f8554f = i6 + 1;
        iArr3[i6] = i4;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Integer) {
            int intValue = ((Integer) obj).intValue();
            int i4 = this.f8554f;
            for (int i5 = 0; i5 < i4; i5++) {
                if (this.f8553e[i5] == intValue) {
                    return i5;
                }
            }
            return -1;
        }
        return -1;
    }

    public final void j(int i4) {
        if (i4 < 0 || i4 >= this.f8554f) {
            StringBuilder a4 = C0196d0.a("Index:", i4, ", Size:");
            a4.append(this.f8554f);
            throw new IndexOutOfBoundsException(a4.toString());
        }
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.List
    public final Object remove(int i4) {
        int i5;
        h();
        j(i4);
        int[] iArr = this.f8553e;
        int i6 = iArr[i4];
        if (i4 < this.f8554f - 1) {
            System.arraycopy(iArr, i4 + 1, iArr, i4, (i5 - i4) - 1);
        }
        this.f8554f--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i6);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i4, int i5) {
        h();
        if (i5 < i4) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f8553e;
        System.arraycopy(iArr, i5, iArr, i4, this.f8554f - i5);
        this.f8554f -= i5 - i4;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i4, Object obj) {
        int intValue = ((Integer) obj).intValue();
        h();
        j(i4);
        int[] iArr = this.f8553e;
        int i5 = iArr[i4];
        iArr[i4] = intValue;
        return Integer.valueOf(i5);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8554f;
    }

    public K(int[] iArr, int i4) {
        this.f8553e = iArr;
        this.f8554f = i4;
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i(((Integer) obj).intValue());
        return true;
    }
}
