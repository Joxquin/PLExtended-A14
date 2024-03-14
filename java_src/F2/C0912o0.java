package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.o0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0912o0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0912o0 DEFAULT_INSTANCE;
    public static final int DESTINATION_URL_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TITLE_FIELD_NUMBER = 1;
    private int bitField0_;
    private String title_ = "";
    private String destinationUrl_ = "";

    static {
        C0912o0 c0912o0 = new C0912o0();
        DEFAULT_INSTANCE = c0912o0;
        com.google.protobuf.J.registerDefaultInstance(C0912o0.class, c0912o0);
    }

    public static C0912o0 b() {
        return DEFAULT_INSTANCE;
    }

    public final String c() {
        return this.destinationUrl_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"bitField0_", "title_", "destinationUrl_"});
            case 3:
                return new C0912o0();
            case 4:
                return new C0886b0(8);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0912o0.class) {
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

    public final String getTitle() {
        return this.title_;
    }
}
