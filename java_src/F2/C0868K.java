package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.K  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0868K extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0868K DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER;

    static {
        C0868K c0868k = new C0868K();
        DEFAULT_INSTANCE = c0868k;
        com.google.protobuf.J.registerDefaultInstance(C0868K.class, c0868k);
    }

    public static C0868K b() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0000", null);
            case 3:
                return new C0868K();
            case 4:
                return new C0867J();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0868K.class) {
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
