package T2;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class f extends J implements InterfaceC0774q0 {
    private static final f DEFAULT_INSTANCE;
    public static final int EXCHANGE_NAME_FIELD_NUMBER = 2;
    public static final int EXCHANGE_TIMEZONE_FIELD_NUMBER = 4;
    public static final int FORMATTED_PRICE_FIELD_NUMBER = 6;
    public static final int FORMATTED_TIME_FIELD_NUMBER = 3;
    public static final int IS_GREEN_NEGATIVE_FIELD_NUMBER = 8;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int PRICE_CHANGE_FIELD_NUMBER = 7;
    public static final int SYMBOL_FIELD_NUMBER = 1;
    public static final int USER_INTENT_FIELD_NUMBER = 5;
    private int bitField0_;
    private boolean isGreenNegative_;
    private int userIntent_;
    private String symbol_ = "";
    private String exchangeName_ = "";
    private String formattedTime_ = "";
    private String exchangeTimezone_ = "";
    private String formattedPrice_ = "";
    private String priceChange_ = "";

    static {
        f fVar = new f();
        DEFAULT_INSTANCE = fVar;
        J.registerDefaultInstance(f.class, fVar);
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဌ\u0004\u0006ဈ\u0005\u0007ဈ\u0006\bဇ\u0007", new Object[]{"bitField0_", "symbol_", "exchangeName_", "formattedTime_", "exchangeTimezone_", "userIntent_", e.f1725a, "formattedPrice_", "priceChange_", "isGreenNegative_"});
            case 3:
                return new f();
            case 4:
                return new a(3);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (f.class) {
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
