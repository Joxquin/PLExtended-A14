package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0885b extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0885b DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SEARCH_GOOGLE_REQUEST_FIELD_NUMBER = 1;
    private int bitField0_;
    private F0 searchGoogleRequest_;

    static {
        C0885b c0885b = new C0885b();
        DEFAULT_INSTANCE = c0885b;
        com.google.protobuf.J.registerDefaultInstance(C0885b.class, c0885b);
    }

    public static void a(C0885b c0885b, F0 f02) {
        c0885b.getClass();
        c0885b.searchGoogleRequest_ = f02;
        c0885b.bitField0_ |= 1;
    }

    public static C0885b c() {
        return DEFAULT_INSTANCE;
    }

    public static C0883a d() {
        return (C0883a) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"bitField0_", "searchGoogleRequest_"});
            case 3:
                return new C0885b();
            case 4:
                return new C0883a();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0885b.class) {
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
