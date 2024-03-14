package T2;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class c extends J implements InterfaceC0774q0 {
    private static final c DEFAULT_INSTANCE;
    public static final int FORMATTED_CURRENCY_TEXT_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SOURCE_CURRENCY_FIELD_NUMBER = 2;
    public static final int TARGET_CURRENCY_FIELD_NUMBER = 3;
    private int bitField0_;
    private String formattedCurrencyText_ = "";
    private b sourceCurrency_;
    private b targetCurrency_;

    static {
        c cVar = new c();
        DEFAULT_INSTANCE = cVar;
        J.registerDefaultInstance(c.class, cVar);
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"bitField0_", "formattedCurrencyText_", "sourceCurrency_", "targetCurrency_"});
            case 3:
                return new c();
            case 4:
                return new a(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (c.class) {
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
