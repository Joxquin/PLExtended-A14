package com.google.protobuf;

import java.nio.charset.Charset;
/* renamed from: com.google.protobuf.g0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0754g0 {

    /* renamed from: b  reason: collision with root package name */
    public static final C0750e0 f8641b = new C0750e0();

    /* renamed from: a  reason: collision with root package name */
    public final InterfaceC0768n0 f8642a;

    public C0754g0() {
        InterfaceC0768n0 interfaceC0768n0;
        InterfaceC0768n0[] interfaceC0768n0Arr = new InterfaceC0768n0[2];
        interfaceC0768n0Arr[0] = D.f8509a;
        try {
            interfaceC0768n0 = (InterfaceC0768n0) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            interfaceC0768n0 = f8641b;
        }
        interfaceC0768n0Arr[1] = interfaceC0768n0;
        C0752f0 c0752f0 = new C0752f0(interfaceC0768n0Arr);
        Charset charset = T.f8577a;
        this.f8642a = c0752f0;
    }
}
