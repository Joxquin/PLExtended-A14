package T2;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class m extends J implements InterfaceC0774q0 {
    public static final int AWAY_FIELD_NUMBER = 3;
    private static final m DEFAULT_INSTANCE;
    public static final int DESCRIPTION_FIELD_NUMBER = 5;
    public static final int ENTITY_TYPE_FIELD_NUMBER = 1;
    public static final int FORMATTED_DATE_TIME_FIELD_NUMBER = 7;
    public static final int HOME_FIELD_NUMBER = 2;
    public static final int IMAGE_URL_FIELD_NUMBER = 4;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int STATUS_FIELD_NUMBER = 6;
    private k away_;
    private int bitField0_;
    private int entityType_;
    private k home_;
    private String imageUrl_ = "";
    private String description_ = "";
    private String status_ = "";
    private String formattedDateTime_ = "";

    static {
        m mVar = new m();
        DEFAULT_INSTANCE = mVar;
        J.registerDefaultInstance(m.class, mVar);
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဈ\u0006", new Object[]{"bitField0_", "entityType_", l.f1726a, "home_", "away_", "imageUrl_", "description_", "status_", "formattedDateTime_"});
            case 3:
                return new m();
            case 4:
                return new a(8);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (m.class) {
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
