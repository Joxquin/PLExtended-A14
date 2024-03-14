package com.google.protobuf;
/* renamed from: com.google.protobuf.v  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0782v {

    /* renamed from: a  reason: collision with root package name */
    public final Object f8718a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8719b;

    public C0782v(int i4, Object obj) {
        this.f8718a = obj;
        this.f8719b = i4;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0782v) {
            C0782v c0782v = (C0782v) obj;
            return this.f8718a == c0782v.f8718a && this.f8719b == c0782v.f8719b;
        }
        return false;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f8718a) * 65535) + this.f8719b;
    }
}
