package g2;

import com.google.protobuf.B0;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class k extends J implements InterfaceC0774q0 {
    public static final int ASSET_RESPONSE_FIELD_NUMBER = 2;
    private static final k DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int RESPONSE_CONTEXT_FIELD_NUMBER = 1;
    private C0955b assetResponse_;
    private int bitField0_;
    private D responseContext_;

    static {
        k kVar = new k();
        DEFAULT_INSTANCE = kVar;
        J.registerDefaultInstance(k.class, kVar);
    }

    public static k c() {
        return DEFAULT_INSTANCE;
    }

    public final C0955b b() {
        C0955b c0955b = this.assetResponse_;
        return c0955b == null ? C0955b.c() : c0955b;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"bitField0_", "responseContext_", "assetResponse_"});
            case 3:
                return new k();
            case 4:
                return new j();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (k.class) {
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
