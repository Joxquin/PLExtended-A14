package Y1;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class o extends J implements InterfaceC0774q0 {
    private static final o DEFAULT_INSTANCE;
    public static final int INITIAL_QUERY_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int PIXEL_APPS_SEARCH_CONFIG_FIELD_NUMBER = 1;
    private int bitField0_;
    private String initialQuery_ = "";
    private m pixelAppsSearchConfig_;

    static {
        o oVar = new o();
        DEFAULT_INSTANCE = oVar;
        J.registerDefaultInstance(o.class, oVar);
    }

    public static void a(o oVar, String str) {
        oVar.getClass();
        str.getClass();
        oVar.bitField0_ |= 2;
        oVar.initialQuery_ = str;
    }

    public static void b(o oVar, m mVar) {
        oVar.getClass();
        oVar.pixelAppsSearchConfig_ = mVar;
        oVar.bitField0_ |= 1;
    }

    public static n d() {
        return (n) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဈ\u0001", new Object[]{"bitField0_", "pixelAppsSearchConfig_", "initialQuery_"});
            case 3:
                return new o();
            case 4:
                return new n();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (o.class) {
                        interfaceC0787x0 = PARSER;
                        if (interfaceC0787x0 == null) {
                            interfaceC0787x0 = new F(DEFAULT_INSTANCE);
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
