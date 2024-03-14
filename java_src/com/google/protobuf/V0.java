package com.google.protobuf;

import sun.misc.Unsafe;
/* loaded from: classes.dex */
public final class V0 extends W0 {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f8582b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ V0(Unsafe unsafe, int i4) {
        super(unsafe);
        this.f8582b = i4;
    }

    @Override // com.google.protobuf.W0
    public final boolean a() {
        switch (this.f8582b) {
            case 2:
                if (super.a()) {
                    try {
                        Class<?> cls = this.f8583a.getClass();
                        Class<?> cls2 = Long.TYPE;
                        cls.getMethod("getByte", Object.class, cls2);
                        cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
                        cls.getMethod("getBoolean", Object.class, cls2);
                        cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
                        cls.getMethod("getFloat", Object.class, cls2);
                        cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
                        cls.getMethod("getDouble", Object.class, cls2);
                        cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
                        return true;
                    } catch (Throwable th) {
                        X0.a(th);
                        return false;
                    }
                }
                return false;
            default:
                return super.a();
        }
    }
}
