package f2;

import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.Q  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0874Q extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0874Q DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SESSION_START_TIMESTAMP_MS_FIELD_NUMBER = 1;
    public static final int ZERO_STATE_INTERNAL_BYTES_FIELD_NUMBER = 2;
    private int bitField0_;
    private long sessionStartTimestampMs_;
    private ByteString zeroStateInternalBytes_ = ByteString.f8505d;

    static {
        C0874Q c0874q = new C0874Q();
        DEFAULT_INSTANCE = c0874q;
        com.google.protobuf.J.registerDefaultInstance(C0874Q.class, c0874q);
    }

    public static void a(C0874Q c0874q, long j4) {
        c0874q.bitField0_ |= 1;
        c0874q.sessionStartTimestampMs_ = j4;
    }

    public static void b(C0874Q c0874q, ByteString byteString) {
        c0874q.getClass();
        c0874q.bitField0_ |= 2;
        c0874q.zeroStateInternalBytes_ = byteString;
    }

    public static C0874Q d() {
        return DEFAULT_INSTANCE;
    }

    public static C0873P e() {
        return (C0873P) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဃ\u0000\u0002ည\u0001", new Object[]{"bitField0_", "sessionStartTimestampMs_", "zeroStateInternalBytes_"});
            case 3:
                return new C0874Q();
            case 4:
                return new C0873P();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0874Q.class) {
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
