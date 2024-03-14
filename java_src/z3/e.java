package z3;

import com.google.protobuf.A0;
import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import com.google.protobuf.S;
/* loaded from: classes.dex */
public final class e extends J implements InterfaceC0774q0 {
    public static final int BOX_FIELD_NUMBER = 1;
    private static final e DEFAULT_INSTANCE;
    public static final int FILE_NAME_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private S box_ = A0.f8494g;
    private String fileName_ = "";

    static {
        e eVar = new e();
        DEFAULT_INSTANCE = eVar;
        J.registerDefaultInstance(e.class, eVar);
    }

    public final b b(int i4) {
        return (b) this.box_.get(i4);
    }

    public final int c() {
        return this.box_.size();
    }

    public final S d() {
        return this.box_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000", new Object[]{"bitField0_", "box_", b.class, "fileName_"});
            case 3:
                return new e();
            case 4:
                return new a(3);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (e.class) {
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
