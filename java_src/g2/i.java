package g2;

import com.google.protobuf.B0;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class i extends J implements InterfaceC0774q0 {
    private static final i DEFAULT_INSTANCE;
    public static final int IMAGE_SIZE_FIELD_NUMBER = 5;
    public static final int IMAGE_TOKEN_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int REQUEST_CONTEXT_FIELD_NUMBER = 1;
    private int bitField0_;
    private int imageSize_;
    private t imageToken_;
    private B requestContext_;

    static {
        i iVar = new i();
        DEFAULT_INSTANCE = iVar;
        J.registerDefaultInstance(i.class, iVar);
    }

    public static void a(i iVar, int i4) {
        iVar.bitField0_ |= 4;
        iVar.imageSize_ = i4;
    }

    public static void b(i iVar, t tVar) {
        iVar.getClass();
        iVar.imageToken_ = tVar;
        iVar.bitField0_ |= 2;
    }

    public static void c(i iVar, B b4) {
        iVar.getClass();
        iVar.requestContext_ = b4;
        iVar.bitField0_ |= 1;
    }

    public static i e() {
        return DEFAULT_INSTANCE;
    }

    public static C0961h f() {
        return (C0961h) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0005\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0005င\u0002", new Object[]{"bitField0_", "requestContext_", "imageToken_", "imageSize_"});
            case 3:
                return new i();
            case 4:
                return new C0961h();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (i.class) {
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
