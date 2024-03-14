package com.google.protobuf;

import java.util.Map;
/* loaded from: classes.dex */
public final class U implements Map.Entry {

    /* renamed from: d  reason: collision with root package name */
    public final Map.Entry f8580d;

    public U(Map.Entry entry) {
        this.f8580d = entry;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f8580d.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        W w4 = (W) this.f8580d.getValue();
        if (w4 == null) {
            return null;
        }
        return w4.a(null);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof InterfaceC0772p0) {
            W w4 = (W) this.f8580d.getValue();
            InterfaceC0772p0 interfaceC0772p0 = w4.f8613a;
            w4.f8614b = null;
            w4.f8613a = (InterfaceC0772p0) obj;
            return interfaceC0772p0;
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
