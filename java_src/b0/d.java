package B0;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class d extends J implements InterfaceC0774q0 {
    private static final d DEFAULT_INSTANCE;
    public static final int NODE_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TIMESTAMP_FIELD_NUMBER = 1;
    private int bitField0_;
    private f node_;
    private long timestamp_;

    static {
        d dVar = new d();
        DEFAULT_INSTANCE = dVar;
        J.registerDefaultInstance(d.class, dVar);
    }

    public static void b(d dVar, long j4) {
        dVar.bitField0_ |= 1;
        dVar.timestamp_ = j4;
    }

    public static void c(d dVar, f fVar) {
        dVar.getClass();
        dVar.node_ = fVar;
        dVar.bitField0_ |= 2;
    }

    public static c d() {
        return (c) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဉ\u0001", new Object[]{"bitField0_", "timestamp_", "node_"});
            case 3:
                return new d();
            case 4:
                return new c();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (d.class) {
                        interfaceC0787x0 = PARSER;
                        if (interfaceC0787x0 == null) {
                            interfaceC0787x0 = new F(DEFAULT_INSTANCE);
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
