package g2;

import com.google.protobuf.B0;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class t extends J implements InterfaceC0774q0 {
    private static final t DEFAULT_INSTANCE;
    public static final int IMAGE_TOKEN_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private int imageToken_;

    static {
        t tVar = new t();
        DEFAULT_INSTANCE = tVar;
        J.registerDefaultInstance(t.class, tVar);
    }

    public static void a(t tVar, int i4) {
        tVar.bitField0_ |= 1;
        tVar.imageToken_ = i4;
    }

    public static t c() {
        return DEFAULT_INSTANCE;
    }

    public static s e() {
        return (s) DEFAULT_INSTANCE.createBuilder();
    }

    public final int d() {
        return this.imageToken_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001င\u0000", new Object[]{"bitField0_", "imageToken_"});
            case 3:
                return new t();
            case 4:
                return new s();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (t.class) {
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
