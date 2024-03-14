package com.google.protobuf;

import androidx.fragment.app.C0196d0;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0753g extends AbstractC0745c implements RandomAccess, InterfaceC0789y0 {

    /* renamed from: e  reason: collision with root package name */
    public boolean[] f8639e;

    /* renamed from: f  reason: collision with root package name */
    public int f8640f;

    static {
        new C0753g(new boolean[0], 0).f8626d = false;
    }

    public C0753g() {
        this(new boolean[10], 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i4, Object obj) {
        int i5;
        boolean booleanValue = ((Boolean) obj).booleanValue();
        h();
        if (i4 >= 0 && i4 <= (i5 = this.f8640f)) {
            boolean[] zArr = this.f8639e;
            if (i5 < zArr.length) {
                System.arraycopy(zArr, i4, zArr, i4 + 1, i5 - i4);
            } else {
                boolean[] zArr2 = new boolean[((i5 * 3) / 2) + 1];
                System.arraycopy(zArr, 0, zArr2, 0, i4);
                System.arraycopy(this.f8639e, i4, zArr2, i4 + 1, this.f8640f - i4);
                this.f8639e = zArr2;
            }
            this.f8639e[i4] = booleanValue;
            this.f8640f++;
            ((AbstractList) this).modCount++;
            return;
        }
        StringBuilder a4 = C0196d0.a("Index:", i4, ", Size:");
        a4.append(this.f8640f);
        throw new IndexOutOfBoundsException(a4.toString());
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        h();
        Charset charset = T.f8577a;
        collection.getClass();
        if (collection instanceof C0753g) {
            C0753g c0753g = (C0753g) collection;
            int i4 = c0753g.f8640f;
            if (i4 == 0) {
                return false;
            }
            int i5 = this.f8640f;
            if (Integer.MAX_VALUE - i5 >= i4) {
                int i6 = i5 + i4;
                boolean[] zArr = this.f8639e;
                if (i6 > zArr.length) {
                    this.f8639e = Arrays.copyOf(zArr, i6);
                }
                System.arraycopy(c0753g.f8639e, 0, this.f8639e, this.f8640f, c0753g.f8640f);
                this.f8640f = i6;
                ((AbstractList) this).modCount++;
                return true;
            }
            throw new OutOfMemoryError();
        }
        return super.addAll(collection);
    }

    @Override // com.google.protobuf.S
    public final S b(int i4) {
        if (i4 >= this.f8640f) {
            return new C0753g(Arrays.copyOf(this.f8639e, i4), this.f8640f);
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
        if (obj instanceof C0753g) {
            C0753g c0753g = (C0753g) obj;
            if (this.f8640f != c0753g.f8640f) {
                return false;
            }
            boolean[] zArr = c0753g.f8639e;
            for (int i4 = 0; i4 < this.f8640f; i4++) {
                if (this.f8639e[i4] != zArr[i4]) {
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
        return Boolean.valueOf(this.f8639e[i4]);
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i4 = 1;
        for (int i5 = 0; i5 < this.f8640f; i5++) {
            int i6 = i4 * 31;
            boolean z4 = this.f8639e[i5];
            Charset charset = T.f8577a;
            i4 = i6 + (z4 ? 1231 : 1237);
        }
        return i4;
    }

    public final void i(boolean z4) {
        h();
        int i4 = this.f8640f;
        boolean[] zArr = this.f8639e;
        if (i4 == zArr.length) {
            boolean[] zArr2 = new boolean[((i4 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i4);
            this.f8639e = zArr2;
        }
        boolean[] zArr3 = this.f8639e;
        int i5 = this.f8640f;
        this.f8640f = i5 + 1;
        zArr3[i5] = z4;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Boolean) {
            boolean booleanValue = ((Boolean) obj).booleanValue();
            int i4 = this.f8640f;
            for (int i5 = 0; i5 < i4; i5++) {
                if (this.f8639e[i5] == booleanValue) {
                    return i5;
                }
            }
            return -1;
        }
        return -1;
    }

    public final void j(int i4) {
        if (i4 < 0 || i4 >= this.f8640f) {
            StringBuilder a4 = C0196d0.a("Index:", i4, ", Size:");
            a4.append(this.f8640f);
            throw new IndexOutOfBoundsException(a4.toString());
        }
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.List
    public final Object remove(int i4) {
        int i5;
        h();
        j(i4);
        boolean[] zArr = this.f8639e;
        boolean z4 = zArr[i4];
        if (i4 < this.f8640f - 1) {
            System.arraycopy(zArr, i4 + 1, zArr, i4, (i5 - i4) - 1);
        }
        this.f8640f--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z4);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i4, int i5) {
        h();
        if (i5 < i4) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f8639e;
        System.arraycopy(zArr, i5, zArr, i4, this.f8640f - i5);
        this.f8640f -= i5 - i4;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i4, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        h();
        j(i4);
        boolean[] zArr = this.f8639e;
        boolean z4 = zArr[i4];
        zArr[i4] = booleanValue;
        return Boolean.valueOf(z4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8640f;
    }

    public C0753g(boolean[] zArr, int i4) {
        this.f8639e = zArr;
        this.f8640f = i4;
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i(((Boolean) obj).booleanValue());
        return true;
    }
}
