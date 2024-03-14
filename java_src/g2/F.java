package g2;

import com.google.protobuf.B0;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class F extends J implements InterfaceC0774q0 {
    private static final F DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int REQUEST_CONTEXT_FIELD_NUMBER = 1;
    private int bitField0_;
    private B requestContext_;

    static {
        F f4 = new F();
        DEFAULT_INSTANCE = f4;
        J.registerDefaultInstance(F.class, f4);
    }

    public static void a(F f4, B b4) {
        f4.getClass();
        f4.requestContext_ = b4;
        f4.bitField0_ |= 1;
    }

    public static F c() {
        return DEFAULT_INSTANCE;
    }

    public static E d() {
        return (E) DEFAULT_INSTANCE.createBuilder();
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
                return new F();
            case 4:
                return new E();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (F.class) {
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
