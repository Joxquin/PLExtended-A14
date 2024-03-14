package T2;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class q extends J implements InterfaceC0774q0 {
    public static final int ATTRIBUTION_FIELD_NUMBER = 7;
    public static final int CONDITION_FIELD_NUMBER = 6;
    private static final q DEFAULT_INSTANCE;
    public static final int FORMATTED_ADDRESS_FIELD_NUMBER = 4;
    public static final int FORMATTED_DATE_TIME_FIELD_NUMBER = 5;
    public static final int ICON_URL_FIELD_NUMBER = 3;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TEMPERATURE_FIELD_NUMBER = 1;
    public static final int UNIT_FIELD_NUMBER = 2;
    private int bitField0_;
    private int temperature_;
    private String unit_ = "";
    private String iconUrl_ = "";
    private String formattedAddress_ = "";
    private String formattedDateTime_ = "";
    private String condition_ = "";
    private String attribution_ = "";

    static {
        q qVar = new q();
        DEFAULT_INSTANCE = qVar;
        J.registerDefaultInstance(q.class, qVar);
    }

    public static q d() {
        return DEFAULT_INSTANCE;
    }

    public final String b() {
        return this.attribution_;
    }

    public final String c() {
        return this.condition_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006", new Object[]{"bitField0_", "temperature_", "unit_", "iconUrl_", "formattedAddress_", "formattedDateTime_", "condition_", "attribution_"});
            case 3:
                return new q();
            case 4:
                return new a(13);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (q.class) {
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

    public final String e() {
        return this.formattedAddress_;
    }

    public final String f() {
        return this.formattedDateTime_;
    }

    public final String g() {
        return this.iconUrl_;
    }

    public final int h() {
        return this.temperature_;
    }

    public final String i() {
        return this.unit_;
    }
}
