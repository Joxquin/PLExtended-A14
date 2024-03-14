package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.T  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0876T extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0876T DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER;

    static {
        C0876T c0876t = new C0876T();
        DEFAULT_INSTANCE = c0876t;
        com.google.protobuf.J.registerDefaultInstance(C0876T.class, c0876t);
    }

    public static C0876T b() {
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
                return new C0876T();
            case 4:
                return new C0875S();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0876T.class) {
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
