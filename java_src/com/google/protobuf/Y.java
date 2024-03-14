package com.google.protobuf;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public final class Y extends AbstractC0745c implements Z, RandomAccess {

    /* renamed from: e  reason: collision with root package name */
    public final List f8622e;

    static {
        new Y(10).f8626d = false;
    }

    public Y(int i4) {
        this(new ArrayList(i4));
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i4, Object obj) {
        h();
        this.f8622e.add(i4, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.protobuf.S
    public final S b(int i4) {
        if (i4 >= size()) {
            ArrayList arrayList = new ArrayList(i4);
            arrayList.addAll(this.f8622e);
            return new Y(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.Z
    public final void c(ByteString byteString) {
        h();
        this.f8622e.add(byteString);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        h();
        this.f8622e.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.Z
    public final Z d() {
        return this.f8626d ? new T0(this) : this;
    }

    @Override // com.google.protobuf.Z
    public final Object e(int i4) {
        return this.f8622e.get(i4);
    }

    @Override // com.google.protobuf.Z
    public final List f() {
        return Collections.unmodifiableList(this.f8622e);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i4) {
        String str;
        Object obj = this.f8622e.get(i4);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            byteString.getClass();
            str = byteString.size() == 0 ? "" : byteString.r(T.f8577a);
            if (byteString.m()) {
                this.f8622e.set(i4, str);
            }
        } else {
            byte[] bArr = (byte[]) obj;
            str = new String(bArr, T.f8577a);
            if (b1.f8625a.a(bArr, 0, bArr.length)) {
                this.f8622e.set(i4, str);
            }
        }
        return str;
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.List
    public final Object remove(int i4) {
        String str;
        h();
        Object remove = this.f8622e.remove(i4);
        ((AbstractList) this).modCount++;
        if (remove instanceof String) {
            return (String) remove;
        }
        if (remove instanceof ByteString) {
            ByteString byteString = (ByteString) remove;
            byteString.getClass();
            str = byteString.size() == 0 ? "" : byteString.r(T.f8577a);
        } else {
            str = new String((byte[]) remove, T.f8577a);
        }
        return str;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i4, Object obj) {
        h();
        Object obj2 = this.f8622e.set(i4, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        if (obj2 instanceof ByteString) {
            ByteString byteString = (ByteString) obj2;
            byteString.getClass();
            return byteString.size() == 0 ? "" : byteString.r(T.f8577a);
        }
        return new String((byte[]) obj2, T.f8577a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8622e.size();
    }

    public Y(ArrayList arrayList) {
        this.f8622e = arrayList;
    }

    @Override // com.google.protobuf.AbstractC0745c, java.util.AbstractList, java.util.List
    public final boolean addAll(int i4, Collection collection) {
        h();
        if (collection instanceof Z) {
            collection = ((Z) collection).f();
        }
        boolean addAll = this.f8622e.addAll(i4, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }
}
