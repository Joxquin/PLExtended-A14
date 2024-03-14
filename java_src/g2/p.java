package g2;

import com.google.protobuf.A0;
import com.google.protobuf.B0;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import com.google.protobuf.S;
/* loaded from: classes.dex */
public final class p extends J implements InterfaceC0774q0 {
    public static final int APP_COMPLETIONS_FIELD_NUMBER = 2;
    private static final p DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int RESPONSE_CONTEXT_FIELD_NUMBER = 1;
    private S appCompletions_ = A0.f8494g;
    private int bitField0_;
    private D responseContext_;

    static {
        p pVar = new p();
        DEFAULT_INSTANCE = pVar;
        J.registerDefaultInstance(p.class, pVar);
    }

    public static p c() {
        return DEFAULT_INSTANCE;
    }

    public final S b() {
        return this.appCompletions_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဉ\u0000\u0002\u001b", new Object[]{"bitField0_", "responseContext_", "appCompletions_", o.class});
            case 3:
                return new p();
            case 4:
                return new n(1);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (p.class) {
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
