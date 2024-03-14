package com.google.protobuf;
/* renamed from: com.google.protobuf.i0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0758i0 {

    /* renamed from: a  reason: collision with root package name */
    public final C0756h0 f8650a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f8651b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f8652c;

    public C0758i0(WireFormat$FieldType wireFormat$FieldType, Object obj, WireFormat$FieldType wireFormat$FieldType2, Object obj2) {
        this.f8650a = new C0756h0(wireFormat$FieldType, obj, wireFormat$FieldType2, obj2);
        this.f8651b = obj;
        this.f8652c = obj2;
    }

    public static int a(C0756h0 c0756h0, Object obj, Object obj2) {
        return B.b(c0756h0.f8645c, 2, obj2) + B.b(c0756h0.f8643a, 1, obj);
    }

    public static void b(r rVar, C0756h0 c0756h0, Object obj, Object obj2) {
        B.n(rVar, c0756h0.f8643a, 1, obj);
        B.n(rVar, c0756h0.f8645c, 2, obj2);
    }
}
