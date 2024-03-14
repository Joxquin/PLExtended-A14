package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.G  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0864G extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0864G DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int RESULT_BLOCK_INDEX_FIELD_NUMBER = 1;
    public static final int SELECTION_TIME_MS_FIELD_NUMBER = 3;
    public static final int SESSION_SUMMARY_LOG_FIELD_NUMBER = 2;
    private int bitField0_;
    private int resultBlockIndex_;
    private long selectionTimeMs_;
    private J0 sessionSummaryLog_;

    static {
        C0864G c0864g = new C0864G();
        DEFAULT_INSTANCE = c0864g;
        com.google.protobuf.J.registerDefaultInstance(C0864G.class, c0864g);
    }

    public static void a(C0864G c0864g, int i4) {
        c0864g.bitField0_ |= 1;
        c0864g.resultBlockIndex_ = i4;
    }

    public static void b(C0864G c0864g, long j4) {
        c0864g.bitField0_ |= 4;
        c0864g.selectionTimeMs_ = j4;
    }

    public static void c(C0864G c0864g, J0 j02) {
        c0864g.getClass();
        j02.getClass();
        c0864g.sessionSummaryLog_ = j02;
        c0864g.bitField0_ |= 2;
    }

    public static C0864G e() {
        return DEFAULT_INSTANCE;
    }

    public static C0863F f() {
        return (C0863F) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဋ\u0000\u0002ဉ\u0001\u0003ဃ\u0002", new Object[]{"bitField0_", "resultBlockIndex_", "sessionSummaryLog_", "selectionTimeMs_"});
            case 3:
                return new C0864G();
            case 4:
                return new C0863F();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0864G.class) {
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
