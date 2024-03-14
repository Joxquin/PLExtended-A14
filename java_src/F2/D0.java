package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* loaded from: classes.dex */
public final class D0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final D0 DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int REQUEST_HANDLING_END_FIELD_NUMBER = 4;
    public static final int REQUEST_HANDLING_START_FIELD_NUMBER = 1;
    public static final int SERVER_REQUEST_SENT_FIELD_NUMBER = 2;
    public static final int SERVER_RESPONSE_RECEIVED_FIELD_NUMBER = 3;
    private int bitField0_;
    private long requestHandlingEnd_;
    private long requestHandlingStart_;
    private long serverRequestSent_;
    private long serverResponseReceived_;

    static {
        D0 d02 = new D0();
        DEFAULT_INSTANCE = d02;
        com.google.protobuf.J.registerDefaultInstance(D0.class, d02);
    }

    public static D0 b() {
        return DEFAULT_INSTANCE;
    }

    public final long c() {
        return this.requestHandlingEnd_;
    }

    public final long d() {
        return this.requestHandlingStart_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဃ\u0000\u0002ဃ\u0001\u0003ဃ\u0002\u0004ဃ\u0003", new Object[]{"bitField0_", "requestHandlingStart_", "serverRequestSent_", "serverResponseReceived_", "requestHandlingEnd_"});
            case 3:
                return new D0();
            case 4:
                return new C0();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (D0.class) {
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

    public final long e() {
        return this.serverRequestSent_;
    }

    public final long f() {
        return this.serverResponseReceived_;
    }
}
