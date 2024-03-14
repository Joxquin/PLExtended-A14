package g2;

import com.google.protobuf.B0;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class o extends J implements InterfaceC0774q0 {
    public static final int APP_ICON_FIELD_NUMBER = 3;
    public static final int APP_NAME_FIELD_NUMBER = 1;
    public static final int APP_PACKAGE_NAME_FIELD_NUMBER = 2;
    public static final int CONFIDENCE_SCORE_FIELD_NUMBER = 7;
    public static final int DEEP_LINK_FOR_INSTALL_FIELD_NUMBER = 6;
    private static final o DEFAULT_INSTANCE;
    public static final int DEVELOPER_NAME_FIELD_NUMBER = 5;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int RATING_FIELD_NUMBER = 4;
    private r appIcon_;
    private int bitField0_;
    private double confidenceScore_;
    private float rating_;
    private String appName_ = "";
    private String appPackageName_ = "";
    private String developerName_ = "";
    private String deepLinkForInstall_ = "";

    static {
        o oVar = new o();
        DEFAULT_INSTANCE = oVar;
        J.registerDefaultInstance(o.class, oVar);
    }

    public final r b() {
        r rVar = this.appIcon_;
        return rVar == null ? r.b() : rVar;
    }

    public final String c() {
        return this.appName_;
    }

    public final String d() {
        return this.appPackageName_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ခ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007က\u0006", new Object[]{"bitField0_", "appName_", "appPackageName_", "appIcon_", "rating_", "developerName_", "deepLinkForInstall_", "confidenceScore_"});
            case 3:
                return new o();
            case 4:
                return new n(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (o.class) {
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

    public final double e() {
        return this.confidenceScore_;
    }

    public final String f() {
        return this.deepLinkForInstall_;
    }

    public final String g() {
        return this.developerName_;
    }

    public final float h() {
        return this.rating_;
    }

    public final boolean i() {
        return (this.bitField0_ & 64) != 0;
    }

    public final boolean j() {
        return (this.bitField0_ & 8) != 0;
    }
}
