package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0889d extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0889d DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int URL_FIELD_NUMBER = 1;
    private int bitField0_;
    private String url_ = "";

    static {
        C0889d c0889d = new C0889d();
        DEFAULT_INSTANCE = c0889d;
        com.google.protobuf.J.registerDefaultInstance(C0889d.class, c0889d);
    }

    public static C0889d b() {
        return DEFAULT_INSTANCE;
    }

    public final String c() {
        return this.url_;
    }

    public final boolean d() {
        return (this.bitField0_ & 1) != 0;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"bitField0_", "url_"});
            case 3:
                return new C0889d();
            case 4:
                return new C0887c();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0889d.class) {
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
