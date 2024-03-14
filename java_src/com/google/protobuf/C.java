package com.google.protobuf;

import androidx.fragment.app.C0196d0;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class C extends AbstractC0745c implements RandomAccess, InterfaceC0789y0 {

    /* renamed from: e  reason: collision with root package name */
    public float[] f8507e;

    /* renamed from: f  reason: collision with root package name */
    public int f8508f;

    static {
        new C(0, new float[0]).f8626d = false;
    }

    public C() {
        this(0, new float[10]);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i4, Object obj) {
        int i5;
        float floatValue = ((Float) obj).floatValue();
        h();
        if (i4 >= 0 && i4 <= (i5 = this.f8508f)) {
            float[] fArr = this.f8507e;
            if (i5 < fArr.length) {
                System.arraycopy(fArr, i4, fArr, i4 + 1, i5 - i4);
            } else {
                float[] fArr2 = new float[((i5 * 3) / 2) + 1];
                System.arraycopy(fArr, 0, fArr2, 0, i4);
                System.arraycopy(this.f8507e, i4, fArr2, i4 + 1, this.f8508f - i4);
                this.f8507e = fArr2;
            }
            this.f8507e[i4] = floatValue;
            this.f8508f++;
            ((AbstractList) this).modCount++;
            return;
        }
        StringBuilder a4 = C0196d0.a("Index:", i4, ", Size:");
        a4.append(this.f8508f);
        throw new IndexOutOfBoundsException(a4.toString());
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        h();
        Charset charset = T.f8577a;
        collection.getClass();
        if (collection instanceof C) {
            C c4 = (C) collection;
            int i4 = c4.f8508f;
            if (i4 == 0) {
                return false;
            }
            int i5 = this.f8508f;
            if (Integer.MAX_VALUE - i5 >= i4) {
                int i6 = i5 + i4;
                float[] fArr = this.f8507e;
                if (i6 > fArr.length) {
                    this.f8507e = Arrays.copyOf(fArr, i6);
                }
                System.arraycopy(c4.f8507e, 0, this.f8507e, this.f8508f, c4.f8508f);
                this.f8508f = i6;
                ((AbstractList) this).modCount++;
                return true;
            }
            throw new OutOfMemoryError();
        }
        return super.addAll(collection);
    }

    @Override // com.google.protobuf.S
    public final S b(int i4) {
        if (i4 >= this.f8508f) {
            return new C(this.f8508f, Arrays.copyOf(this.f8507e, i4));
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
        if (obj instanceof C) {
            C c4 = (C) obj;
            if (this.f8508f != c4.f8508f) {
                return false;
            }
            float[] fArr = c4.f8507e;
            for (int i4 = 0; i4 < this.f8508f; i4++) {
                if (Float.floatToIntBits(this.f8507e[i4]) != Float.floatToIntBits(fArr[i4])) {
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
        return Float.valueOf(this.f8507e[i4]);
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i4 = 1;
        for (int i5 = 0; i5 < this.f8508f; i5++) {
            i4 = (i4 * 31) + Float.floatToIntBits(this.f8507e[i5]);
        }
        return i4;
    }

    public final void i(float f4) {
        h();
        int i4 = this.f8508f;
        float[] fArr = this.f8507e;
        if (i4 == fArr.length) {
            float[] fArr2 = new float[((i4 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i4);
            this.f8507e = fArr2;
        }
        float[] fArr3 = this.f8507e;
        int i5 = this.f8508f;
        this.f8508f = i5 + 1;
        fArr3[i5] = f4;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (obj instanceof Float) {
            float floatValue = ((Float) obj).floatValue();
            int i4 = this.f8508f;
            for (int i5 = 0; i5 < i4; i5++) {
                if (this.f8507e[i5] == floatValue) {
                    return i5;
                }
            }
            return -1;
        }
        return -1;
    }

    public final void j(int i4) {
        if (i4 < 0 || i4 >= this.f8508f) {
            StringBuilder a4 = C0196d0.a("Index:", i4, ", Size:");
            a4.append(this.f8508f);
            throw new IndexOutOfBoundsException(a4.toString());
        }
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.List
    public final Object remove(int i4) {
        int i5;
        h();
        j(i4);
        float[] fArr = this.f8507e;
        float f4 = fArr[i4];
        if (i4 < this.f8508f - 1) {
            System.arraycopy(fArr, i4 + 1, fArr, i4, (i5 - i4) - 1);
        }
        this.f8508f--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f4);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i4, int i5) {
        h();
        if (i5 < i4) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f8507e;
        System.arraycopy(fArr, i5, fArr, i4, this.f8508f - i5);
        this.f8508f -= i5 - i4;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i4, Object obj) {
        float floatValue = ((Float) obj).floatValue();
        h();
        j(i4);
        float[] fArr = this.f8507e;
        float f4 = fArr[i4];
        fArr[i4] = floatValue;
        return Float.valueOf(f4);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8508f;
    }

    public C(int i4, float[] fArr) {
        this.f8507e = fArr;
        this.f8508f = i4;
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        i(((Float) obj).floatValue());
        return true;
    }
}
