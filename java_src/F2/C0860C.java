package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.C  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0860C extends com.google.protobuf.J implements InterfaceC0774q0 {
    public static final int ABANDONMENT_TIME_MS_FIELD_NUMBER = 2;
    private static final C0860C DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SESSION_SUMMARY_LOG_FIELD_NUMBER = 1;
    private long abandonmentTimeMs_;
    private int bitField0_;
    private J0 sessionSummaryLog_;

    static {
        C0860C c0860c = new C0860C();
        DEFAULT_INSTANCE = c0860c;
        com.google.protobuf.J.registerDefaultInstance(C0860C.class, c0860c);
    }

    public static void a(C0860C c0860c, long j4) {
        c0860c.bitField0_ |= 2;
        c0860c.abandonmentTimeMs_ = j4;
    }

    public static void b(C0860C c0860c, J0 j02) {
        c0860c.getClass();
        j02.getClass();
        c0860c.sessionSummaryLog_ = j02;
        c0860c.bitField0_ |= 1;
    }

    public static C0860C d() {
        return DEFAULT_INSTANCE;
    }

    public static C0859B e() {
        return (C0859B) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဃ\u0001", new Object[]{"bitField0_", "sessionSummaryLog_", "abandonmentTimeMs_"});
            case 3:
                return new C0860C();
            case 4:
                return new C0859B();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0860C.class) {
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
