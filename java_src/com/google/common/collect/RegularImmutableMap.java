package com.google.common.collect;

import O2.m;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class RegularImmutableMap extends ImmutableMap {

    /* renamed from: j  reason: collision with root package name */
    public static final ImmutableMap f8439j = new RegularImmutableMap(0, null, new Object[0]);
    private static final long serialVersionUID = 0;

    /* renamed from: g  reason: collision with root package name */
    public final transient Object f8440g;

    /* renamed from: h  reason: collision with root package name */
    public final transient Object[] f8441h;

    /* renamed from: i  reason: collision with root package name */
    public final transient int f8442i;

    /* loaded from: classes.dex */
    class EntrySet extends ImmutableSet {

        /* renamed from: g  reason: collision with root package name */
        public final transient ImmutableMap f8443g;

        /* renamed from: h  reason: collision with root package name */
        public final transient Object[] f8444h;

        /* renamed from: i  reason: collision with root package name */
        public final transient int f8445i = 0;

        /* renamed from: j  reason: collision with root package name */
        public final transient int f8446j;

        public EntrySet(ImmutableMap immutableMap, Object[] objArr, int i4) {
            this.f8443g = immutableMap;
            this.f8444h = objArr;
            this.f8446j = i4;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                return value != null && value.equals(this.f8443g.get(key));
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int h(Object[] objArr) {
            return n().h(objArr);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean l() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        /* renamed from: m */
        public final h iterator() {
            return n().listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableSet
        public final ImmutableList q() {
            return new ImmutableList() { // from class: com.google.common.collect.RegularImmutableMap.EntrySet.1
                @Override // java.util.List
                public final Object get(int i4) {
                    m.g(i4, EntrySet.this.f8446j);
                    EntrySet entrySet = EntrySet.this;
                    int i5 = i4 * 2;
                    Object obj = entrySet.f8444h[entrySet.f8445i + i5];
                    Objects.requireNonNull(obj);
                    EntrySet entrySet2 = EntrySet.this;
                    Object obj2 = entrySet2.f8444h[i5 + (entrySet2.f8445i ^ 1)];
                    Objects.requireNonNull(obj2);
                    return new AbstractMap.SimpleImmutableEntry(obj, obj2);
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public final int size() {
                    return EntrySet.this.f8446j;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f8446j;
        }
    }

    /* loaded from: classes.dex */
    final class KeySet extends ImmutableSet {

        /* renamed from: g  reason: collision with root package name */
        public final transient ImmutableMap f8447g;

        /* renamed from: h  reason: collision with root package name */
        public final transient ImmutableList f8448h;

        public KeySet(ImmutableMap immutableMap, ImmutableList immutableList) {
            this.f8447g = immutableMap;
            this.f8448h = immutableList;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f8447g.get(obj) != null;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int h(Object[] objArr) {
            return this.f8448h.h(objArr);
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean l() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        /* renamed from: m */
        public final h iterator() {
            return this.f8448h.listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableSet
        public final ImmutableList n() {
            throw null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.f8447g.size();
        }
    }

    /* loaded from: classes.dex */
    final class KeysOrValuesAsList extends ImmutableList {

        /* renamed from: f  reason: collision with root package name */
        public final transient Object[] f8449f;

        /* renamed from: g  reason: collision with root package name */
        public final transient int f8450g;

        /* renamed from: h  reason: collision with root package name */
        public final transient int f8451h;

        public KeysOrValuesAsList(int i4, int i5, Object[] objArr) {
            this.f8449f = objArr;
            this.f8450g = i4;
            this.f8451h = i5;
        }

        @Override // java.util.List
        public final Object get(int i4) {
            m.g(i4, this.f8451h);
            Object obj = this.f8449f[(i4 * 2) + this.f8450g];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f8451h;
        }
    }

    public RegularImmutableMap(int i4, Object obj, Object[] objArr) {
        this.f8440g = obj;
        this.f8441h = objArr;
        this.f8442i = i4;
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet c() {
        return new EntrySet(this, this.f8441h, this.f8442i);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableSet d() {
        return new KeySet(this, new KeysOrValuesAsList(0, this.f8442i, this.f8441h));
    }

    @Override // com.google.common.collect.ImmutableMap
    public final ImmutableCollection e() {
        return new KeysOrValuesAsList(1, this.f8442i, this.f8441h);
    }

    @Override // com.google.common.collect.ImmutableMap
    public final void f() {
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009f A[RETURN] */
    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = r8.f8440g
            java.lang.Object[] r1 = r8.f8441h
            int r8 = r8.f8442i
            r2 = 0
            if (r9 != 0) goto La
            goto L20
        La:
            r3 = 1
            if (r8 != r3) goto L23
            r8 = 0
            r8 = r1[r8]
            java.util.Objects.requireNonNull(r8)
            boolean r8 = r8.equals(r9)
            if (r8 == 0) goto L20
            r8 = r1[r3]
            java.util.Objects.requireNonNull(r8)
            goto L9c
        L20:
            r8 = r2
            goto L9c
        L23:
            if (r0 != 0) goto L26
            goto L20
        L26:
            boolean r8 = r0 instanceof byte[]
            r4 = -1
            if (r8 == 0) goto L52
            r8 = r0
            byte[] r8 = (byte[]) r8
            int r0 = r8.length
            int r5 = r0 + (-1)
            int r0 = r9.hashCode()
            int r0 = com.google.common.collect.b.a(r0)
        L39:
            r0 = r0 & r5
            r4 = r8[r0]
            r6 = 255(0xff, float:3.57E-43)
            r4 = r4 & r6
            if (r4 != r6) goto L42
            goto L20
        L42:
            r6 = r1[r4]
            boolean r6 = r9.equals(r6)
            if (r6 == 0) goto L4f
            r8 = r4 ^ 1
            r8 = r1[r8]
            goto L9c
        L4f:
            int r0 = r0 + 1
            goto L39
        L52:
            boolean r8 = r0 instanceof short[]
            if (r8 == 0) goto L7e
            r8 = r0
            short[] r8 = (short[]) r8
            int r0 = r8.length
            int r5 = r0 + (-1)
            int r0 = r9.hashCode()
            int r0 = com.google.common.collect.b.a(r0)
        L64:
            r0 = r0 & r5
            short r4 = r8[r0]
            r6 = 65535(0xffff, float:9.1834E-41)
            r4 = r4 & r6
            if (r4 != r6) goto L6e
            goto L20
        L6e:
            r6 = r1[r4]
            boolean r6 = r9.equals(r6)
            if (r6 == 0) goto L7b
            r8 = r4 ^ 1
            r8 = r1[r8]
            goto L9c
        L7b:
            int r0 = r0 + 1
            goto L64
        L7e:
            int[] r0 = (int[]) r0
            int r8 = r0.length
            int r8 = r8 - r3
            int r5 = r9.hashCode()
            int r5 = com.google.common.collect.b.a(r5)
        L8a:
            r5 = r5 & r8
            r6 = r0[r5]
            if (r6 != r4) goto L90
            goto L20
        L90:
            r7 = r1[r6]
            boolean r7 = r9.equals(r7)
            if (r7 == 0) goto La0
            r8 = r6 ^ 1
            r8 = r1[r8]
        L9c:
            if (r8 != 0) goto L9f
            return r2
        L9f:
            return r8
        La0:
            int r5 = r5 + 1
            goto L8a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.RegularImmutableMap.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.f8442i;
    }
}
