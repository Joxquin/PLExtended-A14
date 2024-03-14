package com.google.protobuf;

import androidx.fragment.app.C0196d0;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0778t extends AbstractC0745c implements RandomAccess, InterfaceC0789y0 {

    /* renamed from: e  reason: collision with root package name */
    public double[] f8711e;

    /* renamed from: f  reason: collision with root package name */
    public int f8712f;

    static {
        new C0778t(0, new double[0]).f8626d = false;
    }

    public C0778t() {
        this(0, new double[10]);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i4, Object obj) {
        int i5;
        double doubleValue = ((Double) obj).doubleValue();
        h();
        if (i4 >= 0 && i4 <= (i5 = this.f8712f)) {
            double[] dArr = this.f8711e;
            if (i5 < dArr.length) {
                System.arraycopy(dArr, i4, dArr, i4 + 1, i5 - i4);
            } else {
                double[] dArr2 = new double[((i5 * 3) / 2) + 1];
                System.arraycopy(dArr, 0, dArr2, 0, i4);
                System.arraycopy(this.f8711e, i4, dArr2, i4 + 1, this.f8712f - i4);
                this.f8711e = dArr2;
            }
            this.f8711e[i4] = doubleValue;
            this.f8712f++;
            ((AbstractList) this).modCount++;
            return;
        }
        StringBuilder a4 = C0196d0.a("Index:", i4, ", Size:");
        a4.append(this.f8712f);
        throw new IndexOutOfBoundsException(a4.toString());
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        h();
        Charset charset = T.f8577a;
        collection.getClass();
        if (collection instanceof C0778t) {
            C0778t c0778t = (C0778t) collection;
            int i4 = c0778t.f8712f;
            if (i4 == 0) {
                return false;
            }
            int i5 = this.f8712f;
            if (Integer.MAX_VALUE - i5 >= i4) {
                int i6 = i5 + i4;
                double[] dArr = this.f8711e;
                if (i6 > dArr.length) {
                    this.f8711e = Arrays.copyOf(dArr, i6);
                }
                System.arraycopy(c0778t.f8711e, 0, this.f8711e, this.f8712f, c0778t.f8712f);
                this.f8712f = i6;
                ((AbstractList) this).modCount++;
                return true;
            }
            throw new OutOfMemoryError();
        }
        return super.addAll(collection);
    }

    @Override // com.google.protobuf.S
    public final S b(int i4) {
        if (i4 >= this.f8712f) {
            return new C0778t(this.f8712f, Arrays.copyOf(this.f8711e, i4));
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
        if (obj instanceof C0778t) {
            C0778t c0778t = (C0778t) obj;
            if (this.f8712f != c0778t.f8712f) {
                return false;
            }
            double[] dArr = c0778t.f8711e;
            for (int i4 = 0; i4 < this.f8712f; i4++) {
                if (Double.doubleToLongBits(this.f8711e[i4]) != Double.doubleToLongBits(dArr[i4])) {
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
        return Double.valueOf(this.f8711e[i4]);
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i4 = 1;
        for (int i5 = 0; i5 < this.f8712f; i5++) {
            i4 = (i4 * 31) + T.a(Double.doubleToLongBits(this.f8711e[i5]));
        }
        return i4;
    }

    public final void i(double d4) {
        h();
        int i4 = this.f8712f;
        double[] dArr = this.f8711e;
        if (i4 == dArr.length) {
            double[] dArr2 = new double[((i4 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i4);
            this.f8711e = dArr2;
        }
        double[] dArr3 = this.f8711e;
        int i5 = this.f8712f;
        this.f8712f = i5 + 1;
        dArr3[i5] = d4;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            int i4 = this.f8712f;
            for (int i5 = 0; i5 < i4; i5++) {
                if (this.f8711e[i5] == doubleValue) {
                    return i5;
                }
            }
            return -1;
        }
        return -1;
    }

    public final void j(int i4) {
        if (i4 < 0 || i4 >= this.f8712f) {
            StringBuilder a4 = C0196d0.a("Index:", i4, ", Size:");
            a4.append(this.f8712f);
            throw new IndexOutOfBoundsException(a4.toString());
        }
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.List
    public final Object remove(int i4) {
        int i5;
        h();
        j(i4);
        double[] dArr = this.f8711e;
        double d4 = dArr[i4];
        if (i4 < this.f8712f - 1) {
            System.arraycopy(dArr, i4 + 1, dArr, i4, (i5 - i4) - 1);
        }
        this.f8712f--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d4);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i4, int i5) {
        h();
        if (i5 < i4) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f8711e;
        System.arraycopy(dArr, i5, dArr, i4, this.f8712f - i5);
        this.f8712f -= i5 - i4;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i4, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        h();
        j(i4);
        double[] dArr = this.f8711e;
        double d4 = dArr[i4];
        dArr[i4] = doubleValue;
        return Double.valueOf(d4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8712f;
    }

    public C0778t(int i4, double[] dArr) {
        this.f8711e = dArr;
        this.f8712f = i4;
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i(((Double) obj).doubleValue());
        return true;
    }
}
