package com.google.protobuf;
/* renamed from: com.google.protobuf.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0747d {

    /* renamed from: a  reason: collision with root package name */
    public static final Class f8629a;

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f8630b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f8629a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f8630b = cls2 != null;
    }

    public static boolean a() {
        return (f8629a == null || f8630b) ? false : true;
    }
}
