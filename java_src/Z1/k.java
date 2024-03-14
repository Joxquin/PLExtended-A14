package Z1;

import com.google.protobuf.A0;
import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import com.google.protobuf.S;
/* loaded from: classes.dex */
public final class k extends J implements InterfaceC0774q0 {
    private static final k DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int PROVIDERS_FIELD_NUMBER = 1;
    private S providers_ = A0.f8494g;

    static {
        k kVar = new k();
        DEFAULT_INSTANCE = kVar;
        J.registerDefaultInstance(k.class, kVar);
    }

    public static k c(byte[] bArr) {
        return (k) J.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public final S b() {
        return this.providers_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"providers_", g.class});
            case 3:
                return new k();
            case 4:
                return new j();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (k.class) {
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
