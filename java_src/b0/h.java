package B0;

import com.google.protobuf.A0;
import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import com.google.protobuf.S;
/* loaded from: classes.dex */
public final class h extends J implements InterfaceC0774q0 {
    private static final h DEFAULT_INSTANCE;
    public static final int FRAMEDATA_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TITLE_FIELD_NUMBER = 2;
    private int bitField0_;
    private S frameData_ = A0.f8494g;
    private String title_ = "";

    static {
        h hVar = new h();
        DEFAULT_INSTANCE = hVar;
        J.registerDefaultInstance(h.class, hVar);
    }

    public static void b(h hVar, d dVar) {
        hVar.getClass();
        S s4 = hVar.frameData_;
        if (!s4.g()) {
            hVar.frameData_ = J.mutableCopy(s4);
        }
        hVar.frameData_.add(dVar);
    }

    public static void c(h hVar, String str) {
        hVar.getClass();
        str.getClass();
        hVar.bitField0_ |= 1;
        hVar.title_ = str;
    }

    public static g d() {
        return (g) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000", new Object[]{"bitField0_", "frameData_", d.class, "title_"});
            case 3:
                return new h();
            case 4:
                return new g();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (h.class) {
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
