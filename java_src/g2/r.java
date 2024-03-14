package g2;

import com.google.protobuf.B0;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class r extends J implements InterfaceC0774q0 {
    private static final r DEFAULT_INSTANCE;
    public static final int IMAGE_TOKEN_FIELD_NUMBER = 1;
    public static final int IMAGE_URI_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private t imageToken_;
    private String imageUri_ = "";

    static {
        r rVar = new r();
        DEFAULT_INSTANCE = rVar;
        J.registerDefaultInstance(r.class, rVar);
    }

    public static r b() {
        return DEFAULT_INSTANCE;
    }

    public final t c() {
        t tVar = this.imageToken_;
        return tVar == null ? t.c() : tVar;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဈ\u0001", new Object[]{"bitField0_", "imageToken_", "imageUri_"});
            case 3:
                return new r();
            case 4:
                return new q();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (r.class) {
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
