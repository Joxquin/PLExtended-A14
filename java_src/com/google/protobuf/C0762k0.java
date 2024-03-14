package com.google.protobuf;

import java.util.Map;
/* renamed from: com.google.protobuf.k0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0762k0 implements InterfaceC0760j0 {
    @Override // com.google.protobuf.InterfaceC0760j0
    public final MapFieldLite a(Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        MapFieldLite mapFieldLite2 = (MapFieldLite) obj2;
        if (!mapFieldLite2.isEmpty()) {
            if (!mapFieldLite.d()) {
                mapFieldLite = mapFieldLite.f();
            }
            mapFieldLite.c();
            if (!mapFieldLite2.isEmpty()) {
                mapFieldLite.putAll(mapFieldLite2);
            }
        }
        return mapFieldLite;
    }

    @Override // com.google.protobuf.InterfaceC0760j0
    public final int b(int i4, Object obj, Object obj2) {
        MapFieldLite mapFieldLite = (MapFieldLite) obj;
        C0758i0 c0758i0 = (C0758i0) obj2;
        int i5 = 0;
        if (!mapFieldLite.isEmpty()) {
            for (Map.Entry entry : mapFieldLite.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                c0758i0.getClass();
                int i6 = r.i(i4);
                int a4 = C0758i0.a(c0758i0.f8650a, key, value);
                i5 += r.k(a4) + a4 + i6;
            }
        }
        return i5;
    }

    @Override // com.google.protobuf.InterfaceC0760j0
    public final boolean c(Object obj) {
        return !((MapFieldLite) obj).d();
    }

    @Override // com.google.protobuf.InterfaceC0760j0
    public final Object d(Object obj) {
        ((MapFieldLite) obj).e();
        return obj;
    }

    @Override // com.google.protobuf.InterfaceC0760j0
    public final C0756h0 e(Object obj) {
        return ((C0758i0) obj).f8650a;
    }

    @Override // com.google.protobuf.InterfaceC0760j0
    public final MapFieldLite f() {
        return MapFieldLite.f8563d.f();
    }

    @Override // com.google.protobuf.InterfaceC0760j0
    public final MapFieldLite g(Object obj) {
        return (MapFieldLite) obj;
    }

    @Override // com.google.protobuf.InterfaceC0760j0
    public final MapFieldLite h(Object obj) {
        return (MapFieldLite) obj;
    }
}
