package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* loaded from: classes.dex */
public final class L0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    public static final int BUTTON_ID_FIELD_NUMBER = 2;
    private static final L0 DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SEARCH_QUERY_FIELD_NUMBER = 3;
    public static final int SELECTION_TIME_MS_FIELD_NUMBER = 4;
    public static final int SESSION_SUMMARY_LOG_FIELD_NUMBER = 5;
    public static final int SUGGESTION_ID_FIELD_NUMBER = 1;
    private int bitField0_;
    private long selectionTimeMs_;
    private J0 sessionSummaryLog_;
    private String suggestionId_ = "";
    private String buttonId_ = "";
    private String searchQuery_ = "";

    static {
        L0 l02 = new L0();
        DEFAULT_INSTANCE = l02;
        com.google.protobuf.J.registerDefaultInstance(L0.class, l02);
    }

    public static void a(L0 l02, String str) {
        l02.getClass();
        str.getClass();
        l02.bitField0_ |= 2;
        l02.buttonId_ = str;
    }

    public static void b(L0 l02, String str) {
        l02.getClass();
        str.getClass();
        l02.bitField0_ |= 4;
        l02.searchQuery_ = str;
    }

    public static void c(L0 l02, long j4) {
        l02.bitField0_ |= 8;
        l02.selectionTimeMs_ = j4;
    }

    public static void d(L0 l02, J0 j02) {
        l02.getClass();
        j02.getClass();
        l02.sessionSummaryLog_ = j02;
        l02.bitField0_ |= 16;
    }

    public static void e(L0 l02, String str) {
        l02.getClass();
        str.getClass();
        l02.bitField0_ |= 1;
        l02.suggestionId_ = str;
    }

    public static L0 g() {
        return DEFAULT_INSTANCE;
    }

    public static K0 h() {
        return (K0) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဃ\u0003\u0005ဉ\u0004", new Object[]{"bitField0_", "suggestionId_", "buttonId_", "searchQuery_", "selectionTimeMs_", "sessionSummaryLog_"});
            case 3:
                return new L0();
            case 4:
                return new K0();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (L0.class) {
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
