package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* loaded from: classes.dex */
public final class F0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final F0 DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int QUERY_FIELD_NUMBER = 1;
    public static final int SESSION_SUMMARY_LOG_FIELD_NUMBER = 3;
    public static final int SUBMISSION_TIME_MS_FIELD_NUMBER = 2;
    private int bitField0_;
    private String query_ = "";
    private J0 sessionSummaryLog_;
    private long submissionTimeMs_;

    static {
        F0 f02 = new F0();
        DEFAULT_INSTANCE = f02;
        com.google.protobuf.J.registerDefaultInstance(F0.class, f02);
    }

    public static void a(F0 f02, String str) {
        f02.getClass();
        str.getClass();
        f02.bitField0_ |= 1;
        f02.query_ = str;
    }

    public static void b(F0 f02, J0 j02) {
        f02.getClass();
        j02.getClass();
        f02.sessionSummaryLog_ = j02;
        f02.bitField0_ |= 4;
    }

    public static void c(F0 f02, long j4) {
        f02.bitField0_ |= 2;
        f02.submissionTimeMs_ = j4;
    }

    public static F0 e() {
        return DEFAULT_INSTANCE;
    }

    public static E0 f() {
        return (E0) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဃ\u0001\u0003ဉ\u0002", new Object[]{"bitField0_", "query_", "submissionTimeMs_", "sessionSummaryLog_"});
            case 3:
                return new F0();
            case 4:
                return new E0();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (F0.class) {
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
