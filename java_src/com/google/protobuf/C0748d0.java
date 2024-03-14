package com.google.protobuf;

import androidx.fragment.app.C0196d0;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.d0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0748d0 extends AbstractC0745c implements Q, RandomAccess, InterfaceC0789y0 {

    /* renamed from: g  reason: collision with root package name */
    public static final C0748d0 f8631g;

    /* renamed from: e  reason: collision with root package name */
    public long[] f8632e;

    /* renamed from: f  reason: collision with root package name */
    public int f8633f;

    static {
        C0748d0 c0748d0 = new C0748d0(new long[0], 0);
        f8631g = c0748d0;
        c0748d0.f8626d = false;
    }

    public C0748d0() {
        this(new long[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i4, Object obj) {
        int i5;
        long longValue = ((Long) obj).longValue();
        h();
        if (i4 >= 0 && i4 <= (i5 = this.f8633f)) {
            long[] jArr = this.f8632e;
            if (i5 < jArr.length) {
                System.arraycopy(jArr, i4, jArr, i4 + 1, i5 - i4);
            } else {
                long[] jArr2 = new long[((i5 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i4);
                System.arraycopy(this.f8632e, i4, jArr2, i4 + 1, this.f8633f - i4);
                this.f8632e = jArr2;
            }
            this.f8632e[i4] = longValue;
            this.f8633f++;
            ((AbstractList) this).modCount++;
            return;
        }
        StringBuilder a4 = C0196d0.a("Index:", i4, ", Size:");
        a4.append(this.f8633f);
        throw new IndexOutOfBoundsException(a4.toString());
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        h();
        Charset charset = T.f8577a;
        collection.getClass();
        if (collection instanceof C0748d0) {
            C0748d0 c0748d0 = (C0748d0) collection;
            int i4 = c0748d0.f8633f;
            if (i4 == 0) {
                return false;
            }
            int i5 = this.f8633f;
            if (Integer.MAX_VALUE - i5 >= i4) {
                int i6 = i5 + i4;
                long[] jArr = this.f8632e;
                if (i6 > jArr.length) {
                    this.f8632e = Arrays.copyOf(jArr, i6);
                }
                System.arraycopy(c0748d0.f8632e, 0, this.f8632e, this.f8633f, c0748d0.f8633f);
                this.f8633f = i6;
                ((AbstractList) this).modCount++;
                return true;
            }
            throw new OutOfMemoryError();
        }
        return super.addAll(collection);
    }

    @Override // com.google.protobuf.S
    public final S b(int i4) {
        if (i4 >= this.f8633f) {
            return new C0748d0(Arrays.copyOf(this.f8632e, i4), this.f8633f);
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
        if (obj instanceof C0748d0) {
            C0748d0 c0748d0 = (C0748d0) obj;
            if (this.f8633f != c0748d0.f8633f) {
                return false;
            }
            long[] jArr = c0748d0.f8632e;
            for (int i4 = 0; i4 < this.f8633f; i4++) {
                if (this.f8632e[i4] != jArr[i4]) {
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
        return Long.valueOf(this.f8632e[i4]);
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i4 = 1;
        for (int i5 = 0; i5 < this.f8633f; i5++) {
            i4 = (i4 * 31) + T.a(this.f8632e[i5]);
        }
        return i4;
    }

    public final void i(long j4) {
        h();
        int i4 = this.f8633f;
        long[] jArr = this.f8632e;
        if (i4 == jArr.length) {
            long[] jArr2 = new long[((i4 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i4);
            this.f8632e = jArr2;
        }
        long[] jArr3 = this.f8632e;
        int i5 = this.f8633f;
        this.f8633f = i5 + 1;
        jArr3[i5] = j4;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Long) {
            long longValue = ((Long) obj).longValue();
            int i4 = this.f8633f;
            for (int i5 = 0; i5 < i4; i5++) {
                if (this.f8632e[i5] == longValue) {
                    return i5;
                }
            }
            return -1;
        }
        return -1;
    }

    public final void j(int i4) {
        if (i4 < 0 || i4 >= this.f8633f) {
            StringBuilder a4 = C0196d0.a("Index:", i4, ", Size:");
            a4.append(this.f8633f);
            throw new IndexOutOfBoundsException(a4.toString());
        }
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.List
    public final Object remove(int i4) {
        int i5;
        h();
        j(i4);
        long[] jArr = this.f8632e;
        long j4 = jArr[i4];
        if (i4 < this.f8633f - 1) {
            System.arraycopy(jArr, i4 + 1, jArr, i4, (i5 - i4) - 1);
        }
        this.f8633f--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j4);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i4, int i5) {
        h();
        if (i5 < i4) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f8632e;
        System.arraycopy(jArr, i5, jArr, i4, this.f8633f - i5);
        this.f8633f -= i5 - i4;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i4, Object obj) {
        long longValue = ((Long) obj).longValue();
        h();
        j(i4);
        long[] jArr = this.f8632e;
        long j4 = jArr[i4];
        jArr[i4] = longValue;
        return Long.valueOf(j4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8633f;
    }

    public C0748d0(long[] jArr, int i4) {
        this.f8632e = jArr;
        this.f8633f = i4;
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i(((Long) obj).longValue());
        return true;
    }
}
