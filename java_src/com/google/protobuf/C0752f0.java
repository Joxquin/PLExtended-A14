package com.google.protobuf;
/* renamed from: com.google.protobuf.f0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0752f0 implements InterfaceC0768n0 {

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC0768n0[] f8638a;

    public C0752f0(InterfaceC0768n0... interfaceC0768n0Arr) {
        this.f8638a = interfaceC0768n0Arr;
    }

    @Override // com.google.protobuf.InterfaceC0768n0
    public final InterfaceC0766m0 a(Class cls) {
        InterfaceC0768n0[] interfaceC0768n0Arr;
        for (InterfaceC0768n0 interfaceC0768n0 : this.f8638a) {
            if (interfaceC0768n0.b(cls)) {
                return interfaceC0768n0.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.protobuf.InterfaceC0768n0
    public final boolean b(Class cls) {
        for (InterfaceC0768n0 interfaceC0768n0 : this.f8638a) {
            if (interfaceC0768n0.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
