package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.c0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0888c0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0888c0 DEFAULT_INSTANCE;
    public static final int LINE_ONE_FIELD_NUMBER = 2;
    public static final int LINE_TWO_FIELD_NUMBER = 3;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int RICH_ANSWER_FIELD_NUMBER = 4;
    private int bitField0_;
    private String lineOne_ = "";
    private String lineTwo_ = "";
    private T2.n richAnswer_;

    static {
        C0888c0 c0888c0 = new C0888c0();
        DEFAULT_INSTANCE = c0888c0;
        com.google.protobuf.J.registerDefaultInstance(C0888c0.class, c0888c0);
    }

    public static C0888c0 b() {
        return DEFAULT_INSTANCE;
    }

    public final String c() {
        return this.lineOne_;
    }

    public final String d() {
        return this.lineTwo_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0002\u0004\u0003\u0000\u0000\u0000\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဉ\u0002", new Object[]{"bitField0_", "lineOne_", "lineTwo_", "richAnswer_"});
            case 3:
                return new C0888c0();
            case 4:
                return new C0886b0(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0888c0.class) {
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

    public final T2.n e() {
        T2.n nVar = this.richAnswer_;
        return nVar == null ? T2.n.b() : nVar;
    }

    public final boolean f() {
        return (this.bitField0_ & 4) != 0;
    }
}
