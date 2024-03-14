package T2;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class i extends J implements InterfaceC0774q0 {
    public static final int ANSWER_FIELD_NUMBER = 1;
    public static final int ATTRIBUTE_NAME_FIELD_NUMBER = 4;
    private static final i DEFAULT_INSTANCE;
    public static final int IMAGE_URL_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SUBJECT_NAME_FIELD_NUMBER = 3;
    private int bitField0_;
    private String answer_ = "";
    private String imageUrl_ = "";
    private String subjectName_ = "";
    private String attributeName_ = "";

    static {
        i iVar = new i();
        DEFAULT_INSTANCE = iVar;
        J.registerDefaultInstance(i.class, iVar);
    }

    public static i d() {
        return DEFAULT_INSTANCE;
    }

    public final String b() {
        return this.answer_;
    }

    public final String c() {
        return this.attributeName_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003", new Object[]{"bitField0_", "answer_", "imageUrl_", "subjectName_", "attributeName_"});
            case 3:
                return new i();
            case 4:
                return new a(6);
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

    public final String e() {
        return this.imageUrl_;
    }

    public final String f() {
        return this.subjectName_;
    }
}
