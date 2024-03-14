package Z1;

import com.google.android.apps.nexuslauncher.searchwidget.thirdparty.IntentDefinitionType;
import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class b extends J implements InterfaceC0774q0 {
    public static final int ACTION_FIELD_NUMBER = 4;
    public static final int CLASS_NAME_FIELD_NUMBER = 3;
    private static final b DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TYPE_FIELD_NUMBER = 1;
    public static final int URI_FIELD_NUMBER = 2;
    private int bitField0_;
    private int type_;
    private String uri_ = "";
    private String className_ = "";
    private String action_ = "";

    static {
        b bVar = new b();
        DEFAULT_INSTANCE = bVar;
        J.registerDefaultInstance(b.class, bVar);
    }

    public static b d() {
        return DEFAULT_INSTANCE;
    }

    public final String b() {
        return this.action_;
    }

    public final String c() {
        return this.className_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003", new Object[]{"bitField0_", "type_", c.f2372a, "uri_", "className_", "action_"});
            case 3:
                return new b();
            case 4:
                return new a();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (b.class) {
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

    public final IntentDefinitionType e() {
        IntentDefinitionType a4 = IntentDefinitionType.a(this.type_);
        return a4 == null ? IntentDefinitionType.UNKNOWN : a4;
    }

    public final boolean f() {
        return (this.bitField0_ & 8) != 0;
    }

    public final boolean g() {
        return (this.bitField0_ & 4) != 0;
    }

    public final String getUri() {
        return this.uri_;
    }

    public final boolean h() {
        return (this.bitField0_ & 1) != 0;
    }

    public final boolean i() {
        return (this.bitField0_ & 2) != 0;
    }
}
