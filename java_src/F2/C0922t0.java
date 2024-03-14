package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.t0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0922t0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0922t0 DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SUGGESTION_IDS_FIELD_NUMBER = 1;
    private com.google.protobuf.S suggestionIds_ = com.google.protobuf.A0.f8494g;

    static {
        C0922t0 c0922t0 = new C0922t0();
        DEFAULT_INSTANCE = c0922t0;
        com.google.protobuf.J.registerDefaultInstance(C0922t0.class, c0922t0);
    }

    public static void a(C0922t0 c0922t0, String str) {
        c0922t0.getClass();
        com.google.protobuf.S s4 = c0922t0.suggestionIds_;
        if (!s4.g()) {
            c0922t0.suggestionIds_ = com.google.protobuf.J.mutableCopy(s4);
        }
        c0922t0.suggestionIds_.add(str);
    }

    public static C0920s0 c() {
        return (C0920s0) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"suggestionIds_"});
            case 3:
                return new C0922t0();
            case 4:
                return new C0920s0();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0922t0.class) {
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
