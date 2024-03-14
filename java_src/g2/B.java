package g2;

import com.google.android.gms.play.cloud.search.grpc.EntryPoint;
import com.google.protobuf.B0;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class B extends J implements InterfaceC0774q0 {
    public static final int CLIENT_FIELD_NUMBER = 6;
    private static final B DEFAULT_INSTANCE;
    public static final int ENTRY_POINT_FIELD_NUMBER = 7;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private C0953A client_;
    private int entryPoint_;

    static {
        B b4 = new B();
        DEFAULT_INSTANCE = b4;
        J.registerDefaultInstance(B.class, b4);
    }

    public static void a(B b4, C0953A c0953a) {
        b4.getClass();
        b4.client_ = c0953a;
        b4.bitField0_ |= 1;
    }

    public static void b(B b4, EntryPoint entryPoint) {
        b4.getClass();
        b4.entryPoint_ = entryPoint.getNumber();
        b4.bitField0_ |= 2;
    }

    public static x d() {
        return (x) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0006\u0007\u0002\u0000\u0000\u0000\u0006ဉ\u0000\u0007ဌ\u0001", new Object[]{"bitField0_", "client_", "entryPoint_", C0960g.f9474a});
            case 3:
                return new B();
            case 4:
                return new x();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (B.class) {
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
