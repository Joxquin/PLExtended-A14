package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0901j extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0901j DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SELECT_SUGGESTION_REQUEST_FIELD_NUMBER = 1;
    private int bitField0_;
    private P0 selectSuggestionRequest_;

    static {
        C0901j c0901j = new C0901j();
        DEFAULT_INSTANCE = c0901j;
        com.google.protobuf.J.registerDefaultInstance(C0901j.class, c0901j);
    }

    public static void a(C0901j c0901j, P0 p02) {
        c0901j.getClass();
        c0901j.selectSuggestionRequest_ = p02;
        c0901j.bitField0_ |= 1;
    }

    public static C0901j c() {
        return DEFAULT_INSTANCE;
    }

    public static C0899i d() {
        return (C0899i) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"bitField0_", "selectSuggestionRequest_"});
            case 3:
                return new C0901j();
            case 4:
                return new C0899i();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0901j.class) {
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
