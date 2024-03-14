package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* loaded from: classes.dex */
public final class x0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final x0 DEFAULT_INSTANCE;
    public static final int ONE_SEARCH_RENDERED_BLOCKS_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SUGGESTIONS_RENDERED_TIMESTAMP_MS_FIELD_NUMBER = 3;
    public static final int SUGGESTIONS_RESPONSE_ID_FIELD_NUMBER = 4;
    private int bitField0_;
    private long suggestionsRenderedTimestampMs_;
    private com.google.protobuf.S oneSearchRenderedBlocks_ = com.google.protobuf.A0.f8494g;
    private String suggestionsResponseId_ = "";

    static {
        x0 x0Var = new x0();
        DEFAULT_INSTANCE = x0Var;
        com.google.protobuf.J.registerDefaultInstance(x0.class, x0Var);
    }

    public static void a(x0 x0Var, w0 w0Var) {
        x0Var.getClass();
        com.google.protobuf.S s4 = x0Var.oneSearchRenderedBlocks_;
        if (!s4.g()) {
            x0Var.oneSearchRenderedBlocks_ = com.google.protobuf.J.mutableCopy(s4);
        }
        x0Var.oneSearchRenderedBlocks_.add(w0Var);
    }

    public static void b(x0 x0Var, long j4) {
        x0Var.bitField0_ |= 1;
        x0Var.suggestionsRenderedTimestampMs_ = j4;
    }

    public static void c(x0 x0Var, String str) {
        x0Var.getClass();
        x0Var.bitField0_ |= 2;
        x0Var.suggestionsResponseId_ = str;
    }

    public static C0916q0 h() {
        return (C0916q0) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0002\u0004\u0003\u0000\u0001\u0000\u0002\u001b\u0003ဃ\u0000\u0004ဈ\u0001", new Object[]{"bitField0_", "oneSearchRenderedBlocks_", w0.class, "suggestionsRenderedTimestampMs_", "suggestionsResponseId_"});
            case 3:
                return new x0();
            case 4:
                return new C0916q0();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (x0.class) {
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

    public final int e() {
        return this.oneSearchRenderedBlocks_.size();
    }

    public final com.google.protobuf.S f() {
        return this.oneSearchRenderedBlocks_;
    }

    public final String g() {
        return this.suggestionsResponseId_;
    }
}
