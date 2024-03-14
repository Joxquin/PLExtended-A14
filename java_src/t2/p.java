package T2;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class p extends J implements InterfaceC0774q0 {
    private static final p DEFAULT_INSTANCE;
    public static final int ORIGINAL_TEXT_FIELD_NUMBER = 3;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SOURCE_LANGUAGE_FIELD_NUMBER = 4;
    public static final int TARGET_LANGUAGE_FIELD_NUMBER = 2;
    public static final int TRANSLATED_TEXT_FIELD_NUMBER = 1;
    private int bitField0_;
    private String translatedText_ = "";
    private String targetLanguage_ = "";
    private String originalText_ = "";
    private String sourceLanguage_ = "";

    static {
        p pVar = new p();
        DEFAULT_INSTANCE = pVar;
        J.registerDefaultInstance(p.class, pVar);
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003", new Object[]{"bitField0_", "translatedText_", "targetLanguage_", "originalText_", "sourceLanguage_"});
            case 3:
                return new p();
            case 4:
                return new a(12);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (p.class) {
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
