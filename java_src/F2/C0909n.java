package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0909n extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0909n DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SUGGESTION_ID_FIELD_NUMBER = 1;
    private int bitField0_;
    private String suggestionId_ = "";

    static {
        C0909n c0909n = new C0909n();
        DEFAULT_INSTANCE = c0909n;
        com.google.protobuf.J.registerDefaultInstance(C0909n.class, c0909n);
    }

    public static void a(C0909n c0909n, String str) {
        c0909n.getClass();
        c0909n.bitField0_ |= 1;
        c0909n.suggestionId_ = str;
    }

    public static C0909n c() {
        return DEFAULT_INSTANCE;
    }

    public static C0907m d() {
        return (C0907m) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"bitField0_", "suggestionId_"});
            case 3:
                return new C0909n();
            case 4:
                return new C0907m();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0909n.class) {
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
