package com.google.protobuf;

import java.util.Map;
/* loaded from: classes.dex */
public final class I0 implements Map.Entry, Comparable {

    /* renamed from: d  reason: collision with root package name */
    public final Comparable f8534d;

    /* renamed from: e  reason: collision with root package name */
    public Object f8535e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ L0 f8536f;

    public I0(L0 l02, Comparable comparable, Object obj) {
        this.f8536f = l02;
        this.f8534d = comparable;
        this.f8535e = obj;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f8534d.compareTo(((I0) obj).f8534d);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Comparable comparable = this.f8534d;
            Object key = entry.getKey();
            if (comparable == null ? key == null : comparable.equals(key)) {
                Object obj2 = this.f8535e;
                Object value = entry.getValue();
                if (obj2 == null ? value == null : obj2.equals(value)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f8534d;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f8535e;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f8534d;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f8535e;
        return hashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        L0 l02 = this.f8536f;
        int i4 = L0.f8556j;
        l02.c();
        Object obj2 = this.f8535e;
        this.f8535e = obj;
        return obj2;
    }

    public final String toString() {
        return this.f8534d + "=" + this.f8535e;
    }
}
