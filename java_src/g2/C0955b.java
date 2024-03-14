package g2;

import com.google.protobuf.B0;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* renamed from: g2.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0955b extends J implements InterfaceC0774q0 {
    public static final int ASSET_BYTES_FIELD_NUMBER = 3;
    private static final C0955b DEFAULT_INSTANCE;
    public static final int IMAGE_TOKEN_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER;
    private ByteString assetBytes_ = ByteString.f8505d;
    private int bitField0_;
    private t imageToken_;

    static {
        C0955b c0955b = new C0955b();
        DEFAULT_INSTANCE = c0955b;
        J.registerDefaultInstance(C0955b.class, c0955b);
    }

    public static C0955b c() {
        return DEFAULT_INSTANCE;
    }

    public final ByteString b() {
        return this.assetBytes_;
    }

    public final boolean d() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0002\u0003\u0002\u0000\u0000\u0000\u0002ဉ\u0000\u0003ည\u0001", new Object[]{"bitField0_", "imageToken_", "assetBytes_"});
            case 3:
                return new C0955b();
            case 4:
                return new C0954a();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0955b.class) {
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
