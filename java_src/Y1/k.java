package Y1;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class k extends J implements InterfaceC0774q0 {
    public static final int BITMAP_ID_FIELD_NUMBER = 3;
    private static final k DEFAULT_INSTANCE;
    public static final int INTENT_FIELD_NUMBER = 2;
    public static final int LABEL_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int URI_FIELD_NUMBER = 4;
    private int bitField0_;
    private String label_ = "";
    private String intent_ = "";
    private String bitmapId_ = "";
    private String uri_ = "";

    static {
        k kVar = new k();
        DEFAULT_INSTANCE = kVar;
        J.registerDefaultInstance(k.class, kVar);
    }

    public static void a(k kVar, String str) {
        kVar.getClass();
        str.getClass();
        kVar.bitField0_ |= 4;
        kVar.bitmapId_ = str;
    }

    public static void b(k kVar, String str) {
        kVar.getClass();
        str.getClass();
        kVar.bitField0_ |= 2;
        kVar.intent_ = str;
    }

    public static void c(k kVar, String str) {
        kVar.getClass();
        str.getClass();
        kVar.bitField0_ |= 1;
        kVar.label_ = str;
    }

    public static void d(k kVar, String str) {
        kVar.getClass();
        str.getClass();
        kVar.bitField0_ |= 8;
        kVar.uri_ = str;
    }

    public static j g() {
        return (j) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003", new Object[]{"bitField0_", "label_", "intent_", "bitmapId_", "uri_"});
            case 3:
                return new k();
            case 4:
                return new j();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (k.class) {
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

    public final String f() {
        return this.bitmapId_;
    }
}
