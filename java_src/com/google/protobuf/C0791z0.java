package com.google.protobuf;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.protobuf.z0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0791z0 {

    /* renamed from: c  reason: collision with root package name */
    public static final C0791z0 f8727c = new C0791z0();

    /* renamed from: b  reason: collision with root package name */
    public final ConcurrentMap f8729b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    public final C0754g0 f8728a = new C0754g0();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.google.protobuf.t0] */
    /* JADX WARN: Type inference failed for: r3v7, types: [com.google.protobuf.t0] */
    public final C0 a(Class cls) {
        C0777s0 B3;
        C0777s0 c0777s0;
        C0777s0 c0777s02;
        Class cls2;
        Charset charset = T.f8577a;
        if (cls != null) {
            ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f8729b;
            C0 c02 = (C0) concurrentHashMap.get(cls);
            if (c02 == null) {
                C0754g0 c0754g0 = this.f8728a;
                c0754g0.getClass();
                Class cls3 = D0.f8510a;
                if (J.class.isAssignableFrom(cls) || (cls2 = D0.f8510a) == null || cls2.isAssignableFrom(cls)) {
                    InterfaceC0766m0 a4 = c0754g0.f8642a.a(cls);
                    if (a4.a()) {
                        if (J.class.isAssignableFrom(cls)) {
                            c0777s02 = new C0779t0(D0.f8513d, C0790z.f8725a, a4.c());
                        } else {
                            O0 o02 = D0.f8511b;
                            AbstractC0786x abstractC0786x = C0790z.f8726b;
                            if (abstractC0786x == null) {
                                throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                            }
                            c0777s02 = new C0779t0(o02, abstractC0786x, a4.c());
                        }
                        c0777s0 = c0777s02;
                    } else {
                        boolean isAssignableFrom = J.class.isAssignableFrom(cls);
                        ProtoSyntax protoSyntax = ProtoSyntax.PROTO2;
                        if (isAssignableFrom) {
                            B3 = a4.b() == protoSyntax ? C0777s0.B(a4, C0785w0.f8724b, AbstractC0746c0.f8628b, D0.f8513d, C0790z.f8725a, C0764l0.f8663b) : C0777s0.B(a4, C0785w0.f8724b, AbstractC0746c0.f8628b, D0.f8513d, null, C0764l0.f8663b);
                        } else {
                            if (a4.b() == protoSyntax) {
                                InterfaceC0781u0 interfaceC0781u0 = C0785w0.f8723a;
                                C0742a0 c0742a0 = AbstractC0746c0.f8627a;
                                O0 o03 = D0.f8511b;
                                AbstractC0786x abstractC0786x2 = C0790z.f8726b;
                                if (abstractC0786x2 == null) {
                                    throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
                                }
                                B3 = C0777s0.B(a4, interfaceC0781u0, c0742a0, o03, abstractC0786x2, C0764l0.f8662a);
                            } else {
                                B3 = C0777s0.B(a4, C0785w0.f8723a, AbstractC0746c0.f8627a, D0.f8512c, null, C0764l0.f8662a);
                            }
                        }
                        c0777s0 = B3;
                    }
                    C0 c03 = (C0) concurrentHashMap.putIfAbsent(cls, c0777s0);
                    return c03 != null ? c03 : c0777s0;
                }
                throw new IllegalArgumentException("Message classes must extend GeneratedMessageV3 or GeneratedMessageLite");
            }
            return c02;
        }
        throw new NullPointerException("messageType");
    }
}
