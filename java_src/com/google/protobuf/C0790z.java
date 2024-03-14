package com.google.protobuf;
/* renamed from: com.google.protobuf.z  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0790z {

    /* renamed from: a  reason: collision with root package name */
    public static final C0788y f8725a = new C0788y();

    /* renamed from: b  reason: collision with root package name */
    public static final AbstractC0786x f8726b;

    static {
        AbstractC0786x abstractC0786x;
        try {
            abstractC0786x = (AbstractC0786x) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            abstractC0786x = null;
        }
        f8726b = abstractC0786x;
    }
}
