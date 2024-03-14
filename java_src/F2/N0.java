package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* loaded from: classes.dex */
public final class N0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final N0 DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER;

    static {
        N0 n02 = new N0();
        DEFAULT_INSTANCE = n02;
        com.google.protobuf.J.registerDefaultInstance(N0.class, n02);
    }

    public static N0 b() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0000", null);
            case 3:
                return new N0();
            case 4:
                return new M0();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (N0.class) {
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
