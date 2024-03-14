package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* loaded from: classes.dex */
public final class P0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final P0 DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SEARCH_QUERY_FIELD_NUMBER = 5;
    public static final int SELECTION_TIME_MS_FIELD_NUMBER = 2;
    public static final int SESSION_SUMMARY_LOG_FIELD_NUMBER = 4;
    public static final int SUGGESTION_ID_FIELD_NUMBER = 3;
    private int bitField0_;
    private long selectionTimeMs_;
    private J0 sessionSummaryLog_;
    private String suggestionId_ = "";
    private String searchQuery_ = "";

    static {
        P0 p02 = new P0();
        DEFAULT_INSTANCE = p02;
        com.google.protobuf.J.registerDefaultInstance(P0.class, p02);
    }

    public static void a(P0 p02, String str) {
        p02.getClass();
        p02.bitField0_ |= 2;
        p02.searchQuery_ = str;
    }

    public static void b(P0 p02, long j4) {
        p02.bitField0_ |= 4;
        p02.selectionTimeMs_ = j4;
    }

    public static void c(P0 p02, J0 j02) {
        p02.getClass();
        j02.getClass();
        p02.sessionSummaryLog_ = j02;
        p02.bitField0_ |= 8;
    }

    public static void d(P0 p02, String str) {
        p02.getClass();
        str.getClass();
        p02.bitField0_ |= 1;
        p02.suggestionId_ = str;
    }

    public static P0 f() {
        return DEFAULT_INSTANCE;
    }

    public static O0 g() {
        return (O0) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0002\u0005\u0004\u0000\u0000\u0000\u0002ဃ\u0002\u0003ဈ\u0000\u0004ဉ\u0003\u0005ဈ\u0001", new Object[]{"bitField0_", "selectionTimeMs_", "suggestionId_", "sessionSummaryLog_", "searchQuery_"});
            case 3:
                return new P0();
            case 4:
                return new O0();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (P0.class) {
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
