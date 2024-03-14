package com.google.protobuf;

import androidx.fragment.app.C0196d0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class A0 extends AbstractC0745c implements RandomAccess {

    /* renamed from: g  reason: collision with root package name */
    public static final A0 f8494g;

    /* renamed from: e  reason: collision with root package name */
    public Object[] f8495e;

    /* renamed from: f  reason: collision with root package name */
    public int f8496f;

    static {
        A0 a02 = new A0(0, new Object[0]);
        f8494g = a02;
        a02.f8626d = false;
    }

    public A0(int i4, Object[] objArr) {
        this.f8495e = objArr;
        this.f8496f = i4;
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        h();
        int i4 = this.f8496f;
        Object[] objArr = this.f8495e;
        if (i4 == objArr.length) {
            this.f8495e = Arrays.copyOf(objArr, ((i4 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f8495e;
        int i5 = this.f8496f;
        this.f8496f = i5 + 1;
        objArr2[i5] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.S
    public final S b(int i4) {
        if (i4 >= this.f8496f) {
            return new A0(this.f8496f, Arrays.copyOf(this.f8495e, i4));
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i4) {
        i(i4);
        return this.f8495e[i4];
    }

    public final void i(int i4) {
        if (i4 < 0 || i4 >= this.f8496f) {
            StringBuilder a4 = C0196d0.a("Index:", i4, ", Size:");
            a4.append(this.f8496f);
            throw new IndexOutOfBoundsException(a4.toString());
        }
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.List
    public final Object remove(int i4) {
        int i5;
        h();
        i(i4);
        Object[] objArr = this.f8495e;
        Object obj = objArr[i4];
        if (i4 < this.f8496f - 1) {
            System.arraycopy(objArr, i4 + 1, objArr, i4, (i5 - i4) - 1);
        }
        this.f8496f--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i4, Object obj) {
        h();
        i(i4);
        Object[] objArr = this.f8495e;
        Object obj2 = objArr[i4];
        objArr[i4] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8496f;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i4, Object obj) {
        int i5;
        h();
        if (i4 >= 0 && i4 <= (i5 = this.f8496f)) {
            Object[] objArr = this.f8495e;
            if (i5 < objArr.length) {
                System.arraycopy(objArr, i4, objArr, i4 + 1, i5 - i4);
            } else {
                Object[] objArr2 = new Object[((i5 * 3) / 2) + 1];
                System.arraycopy(objArr, 0, objArr2, 0, i4);
                System.arraycopy(this.f8495e, i4, objArr2, i4 + 1, this.f8496f - i4);
                this.f8495e = objArr2;
            }
            this.f8495e[i4] = obj;
            this.f8496f++;
            ((AbstractList) this).modCount++;
            return;
        }
        StringBuilder a4 = C0196d0.a("Index:", i4, ", Size:");
        a4.append(this.f8496f);
        throw new IndexOutOfBoundsException(a4.toString());
    }
}
