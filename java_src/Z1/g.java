package Z1;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class g extends J implements InterfaceC0774q0 {
    private static final g DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SEARCH_ICON_FIELD_NUMBER = 2;
    public static final int VOICE_ICON_FIELD_NUMBER = 3;
    private int bitField0_;
    private String packageName_ = "";
    private i searchIcon_;
    private i voiceIcon_;

    static {
        g gVar = new g();
        DEFAULT_INSTANCE = gVar;
        J.registerDefaultInstance(g.class, gVar);
    }

    public final i b() {
        i iVar = this.searchIcon_;
        return iVar == null ? i.b() : iVar;
    }

    public final i c() {
        i iVar = this.voiceIcon_;
        return iVar == null ? i.b() : iVar;
    }

    public final boolean d() {
        return (this.bitField0_ & 2) != 0;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"bitField0_", "packageName_", "searchIcon_", "voiceIcon_"});
            case 3:
                return new g();
            case 4:
                return new f();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (g.class) {
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

    public final boolean e() {
        return (this.bitField0_ & 4) != 0;
    }

    public final String getPackageName() {
        return this.packageName_;
    }
}
