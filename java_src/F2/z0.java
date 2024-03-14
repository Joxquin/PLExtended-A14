package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* loaded from: classes.dex */
public final class z0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final z0 DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int RESPONSE_ID_FIELD_NUMBER = 2;
    public static final int SUGGESTION_ID_FIELD_NUMBER = 1;
    private int bitField0_;
    private String suggestionId_ = "";
    private String responseId_ = "";

    static {
        z0 z0Var = new z0();
        DEFAULT_INSTANCE = z0Var;
        com.google.protobuf.J.registerDefaultInstance(z0.class, z0Var);
    }

    public static void a(z0 z0Var, String str) {
        z0Var.getClass();
        z0Var.bitField0_ |= 2;
        z0Var.responseId_ = str;
    }

    public static void b(z0 z0Var, String str) {
        z0Var.getClass();
        z0Var.bitField0_ |= 1;
        z0Var.suggestionId_ = str;
    }

    public static z0 d() {
        return DEFAULT_INSTANCE;
    }

    public static y0 e() {
        return (y0) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"bitField0_", "suggestionId_", "responseId_"});
            case 3:
                return new z0();
            case 4:
                return new y0();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (z0.class) {
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
