package com.google.protobuf;
/* loaded from: classes.dex */
public final class D implements InterfaceC0768n0 {

    /* renamed from: a  reason: collision with root package name */
    public static final D f8509a = new D();

    @Override // com.google.protobuf.InterfaceC0768n0
    public final InterfaceC0766m0 a(Class cls) {
        if (J.class.isAssignableFrom(cls)) {
            try {
                return (InterfaceC0766m0) J.getDefaultInstance(cls.asSubclass(J.class)).dynamicMethod(GeneratedMessageLite$MethodToInvoke.BUILD_MESSAGE_INFO);
            } catch (Exception e4) {
                throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e4);
            }
        }
        throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
    }

    @Override // com.google.protobuf.InterfaceC0768n0
    public final boolean b(Class cls) {
        return J.class.isAssignableFrom(cls);
    }
}
