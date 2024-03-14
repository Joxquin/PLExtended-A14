package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0893f extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0893f DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SELECT_BUTTON_REQUEST_FIELD_NUMBER = 1;
    private int bitField0_;
    private L0 selectButtonRequest_;

    static {
        C0893f c0893f = new C0893f();
        DEFAULT_INSTANCE = c0893f;
        com.google.protobuf.J.registerDefaultInstance(C0893f.class, c0893f);
    }

    public static void a(C0893f c0893f, L0 l02) {
        c0893f.getClass();
        c0893f.selectButtonRequest_ = l02;
        c0893f.bitField0_ |= 1;
    }

    public static C0893f c() {
        return DEFAULT_INSTANCE;
    }

    public static C0891e d() {
        return (C0891e) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"bitField0_", "selectButtonRequest_"});
            case 3:
                return new C0893f();
            case 4:
                return new C0891e();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0893f.class) {
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
