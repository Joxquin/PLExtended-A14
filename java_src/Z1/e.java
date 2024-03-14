package Z1;

import com.google.protobuf.B0;
import com.google.protobuf.ByteString;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class e extends J implements InterfaceC0774q0 {
    private static final e DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SEARCH_ICON_FIELD_NUMBER = 3;
    public static final int SEARCH_INTENT_FIELD_NUMBER = 2;
    public static final int VOICE_ICON_FIELD_NUMBER = 5;
    public static final int VOICE_INTENT_FIELD_NUMBER = 4;
    private int bitField0_;
    private ByteString searchIcon_;
    private ByteString voiceIcon_;
    private String voiceIntent_;
    private String packageName_ = "";
    private String searchIntent_ = "";

    static {
        e eVar = new e();
        DEFAULT_INSTANCE = eVar;
        J.registerDefaultInstance(e.class, eVar);
    }

    public e() {
        ByteString byteString = ByteString.f8505d;
        this.searchIcon_ = byteString;
        this.voiceIntent_ = "";
        this.voiceIcon_ = byteString;
    }

    public static void a(e eVar, String str) {
        eVar.getClass();
        str.getClass();
        eVar.bitField0_ |= 1;
        eVar.packageName_ = str;
    }

    public static void b(e eVar, ByteString byteString) {
        eVar.getClass();
        eVar.bitField0_ |= 4;
        eVar.searchIcon_ = byteString;
    }

    public static void c(e eVar, String str) {
        eVar.getClass();
        str.getClass();
        eVar.bitField0_ |= 2;
        eVar.searchIntent_ = str;
    }

    public static void d(e eVar, ByteString byteString) {
        eVar.getClass();
        eVar.bitField0_ |= 16;
        eVar.voiceIcon_ = byteString;
    }

    public static void e(e eVar, String str) {
        eVar.getClass();
        str.getClass();
        eVar.bitField0_ |= 8;
        eVar.voiceIntent_ = str;
    }

    public static /* bridge */ /* synthetic */ e f() {
        return DEFAULT_INSTANCE;
    }

    public static d l() {
        return (d) DEFAULT_INSTANCE.createBuilder();
    }

    public static e m(byte[] bArr) {
        return (e) J.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ည\u0002\u0004ဈ\u0003\u0005ည\u0004", new Object[]{"bitField0_", "packageName_", "searchIntent_", "searchIcon_", "voiceIntent_", "voiceIcon_"});
            case 3:
                return new e();
            case 4:
                return new d();
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

    public final ByteString g() {
        return this.searchIcon_;
    }

    public final String getPackageName() {
        return this.packageName_;
    }

    public final String h() {
        return this.searchIntent_;
    }

    public final ByteString i() {
        return this.voiceIcon_;
    }

    public final String j() {
        return this.voiceIntent_;
    }

    public final boolean k() {
        return (this.bitField0_ & 16) != 0;
    }
}
