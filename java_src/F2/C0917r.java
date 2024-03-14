package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.r  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0917r extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0917r DEFAULT_INSTANCE;
    public static final int ENABLE_CONTENT_URI_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int URL_FIELD_NUMBER = 1;
    private int bitField0_;
    private boolean enableContentUri_;
    private String url_ = "";

    static {
        C0917r c0917r = new C0917r();
        DEFAULT_INSTANCE = c0917r;
        com.google.protobuf.J.registerDefaultInstance(C0917r.class, c0917r);
    }

    public static void a(C0917r c0917r) {
        c0917r.bitField0_ |= 2;
        c0917r.enableContentUri_ = true;
    }

    public static void b(C0917r c0917r, String str) {
        c0917r.getClass();
        str.getClass();
        c0917r.bitField0_ |= 1;
        c0917r.url_ = str;
    }

    public static C0917r d() {
        return DEFAULT_INSTANCE;
    }

    public static C0915q e() {
        return (C0915q) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001", new Object[]{"bitField0_", "url_", "enableContentUri_"});
            case 3:
                return new C0917r();
            case 4:
                return new C0915q();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0917r.class) {
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
