package Z1;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class i extends J implements InterfaceC0774q0 {
    private static final i DEFAULT_INSTANCE;
    public static final int ICON_HDPI_URL_FIELD_NUMBER = 3;
    public static final int ICON_MDPI_URL_FIELD_NUMBER = 2;
    public static final int ICON_XHDPI_URL_FIELD_NUMBER = 4;
    public static final int ICON_XXHDPI_URL_FIELD_NUMBER = 5;
    public static final int ICON_XXXHDPI_URL_FIELD_NUMBER = 6;
    public static final int INTENT_DEFINITION_FIELD_NUMBER = 7;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private b intentDefinition_;
    private String iconMdpiUrl_ = "";
    private String iconHdpiUrl_ = "";
    private String iconXhdpiUrl_ = "";
    private String iconXxhdpiUrl_ = "";
    private String iconXxxhdpiUrl_ = "";

    static {
        i iVar = new i();
        DEFAULT_INSTANCE = iVar;
        J.registerDefaultInstance(i.class, iVar);
    }

    public static i b() {
        return DEFAULT_INSTANCE;
    }

    public final String c() {
        return this.iconXxxhdpiUrl_;
    }

    public final b d() {
        b bVar = this.intentDefinition_;
        return bVar == null ? b.d() : bVar;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0006\u0000\u0001\u0002\u0007\u0006\u0000\u0000\u0000\u0002ဈ\u0000\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဈ\u0003\u0006ဈ\u0004\u0007ဉ\u0005", new Object[]{"bitField0_", "iconMdpiUrl_", "iconHdpiUrl_", "iconXhdpiUrl_", "iconXxhdpiUrl_", "iconXxxhdpiUrl_", "intentDefinition_"});
            case 3:
                return new i();
            case 4:
                return new h();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (i.class) {
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
