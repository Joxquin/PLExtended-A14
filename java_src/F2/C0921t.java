package f2;

import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0921t extends com.google.protobuf.J implements InterfaceC0774q0 {
    public static final int CONTENT_URI_FIELD_NUMBER = 2;
    private static final C0921t DEFAULT_INSTANCE;
    public static final int ENCODED_IMAGE_BYTES_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TIMING_INFO_FIELD_NUMBER = 3;
    private int bitField0_;
    private D0 timingInfo_;
    private ByteString encodedImageBytes_ = ByteString.f8505d;
    private String contentUri_ = "";

    static {
        C0921t c0921t = new C0921t();
        DEFAULT_INSTANCE = c0921t;
        com.google.protobuf.J.registerDefaultInstance(C0921t.class, c0921t);
    }

    public static C0921t c() {
        return DEFAULT_INSTANCE;
    }

    public final String b() {
        return this.contentUri_;
    }

    public final ByteString d() {
        return this.encodedImageBytes_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ည\u0000\u0002ဈ\u0001\u0003ဉ\u0002", new Object[]{"bitField0_", "encodedImageBytes_", "contentUri_", "timingInfo_"});
            case 3:
                return new C0921t();
            case 4:
                return new C0919s();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0921t.class) {
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

    public final boolean e() {
        return (this.bitField0_ & 2) != 0;
    }

    public final boolean f() {
        return (this.bitField0_ & 1) != 0;
    }
}
