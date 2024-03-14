package g2;

import com.google.protobuf.B0;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* renamed from: g2.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0957d extends J implements InterfaceC0774q0 {
    private static final C0957d DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int REQUEST_CONTEXT_FIELD_NUMBER = 1;
    private int bitField0_;
    private B requestContext_;

    static {
        C0957d c0957d = new C0957d();
        DEFAULT_INSTANCE = c0957d;
        J.registerDefaultInstance(C0957d.class, c0957d);
    }

    public static void a(C0957d c0957d, B b4) {
        c0957d.getClass();
        c0957d.requestContext_ = b4;
        c0957d.bitField0_ |= 1;
    }

    public static C0957d c() {
        return DEFAULT_INSTANCE;
    }

    public static C0956c d() {
        return (C0956c) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"bitField0_", "requestContext_"});
            case 3:
                return new C0957d();
            case 4:
                return new C0956c();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0957d.class) {
                        interfaceC0787x0 = PARSER;
                        if (interfaceC0787x0 == null) {
                            interfaceC0787x0 = new com.google.protobuf.F(DEFAULT_INSTANCE);
                            PARSER = interfaceC0787x0;
                        }
                    }
                }
                return interfaceC0787x0;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
