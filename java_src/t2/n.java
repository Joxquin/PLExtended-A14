package T2;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class n extends J implements InterfaceC0774q0 {
    public static final int ACCESSIBILITY_LABEL_FIELD_NUMBER = 13;
    public static final int CURRENCY_ANSWER_FIELD_NUMBER = 10;
    private static final n DEFAULT_INSTANCE;
    public static final int DICTIONARY_ANSWER_FIELD_NUMBER = 2;
    public static final int FINANCE_ANSWER_FIELD_NUMBER = 3;
    public static final int FLIGHT_STATUS_ANSWER_FIELD_NUMBER = 12;
    public static final int GENERIC_ANSWER_FIELD_NUMBER = 4;
    public static final int LOCAL_TIME_ANSWER_FIELD_NUMBER = 11;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SPORTS_ANSWER_FIELD_NUMBER = 5;
    public static final int SUGGESTION_TEXT_FIELD_NUMBER = 1;
    public static final int SUNRISE_SUNSET_ANSWER_FIELD_NUMBER = 6;
    public static final int TRANSLATION_ANSWER_FIELD_NUMBER = 7;
    public static final int WEATHER_ANSWER_FIELD_NUMBER = 8;
    public static final int WHEN_IS_ANSWER_FIELD_NUMBER = 9;
    private Object answerData_;
    private int bitField0_;
    private int answerDataCase_ = 0;
    private String suggestionText_ = "";
    private String accessibilityLabel_ = "";

    static {
        n nVar = new n();
        DEFAULT_INSTANCE = nVar;
        J.registerDefaultInstance(n.class, nVar);
    }

    public static n b() {
        return DEFAULT_INSTANCE;
    }

    public final i c() {
        return this.answerDataCase_ == 4 ? (i) this.answerData_ : i.d();
    }

    public final q d() {
        return this.answerDataCase_ == 8 ? (q) this.answerData_ : q.d();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\r\u0001\u0001\u0001\r\r\u0000\u0000\u0000\u0001ဈ\u0000\u0002ြ\u0000\u0003ြ\u0000\u0004ြ\u0000\u0005ြ\u0000\u0006ြ\u0000\u0007ြ\u0000\bြ\u0000\tြ\u0000\nြ\u0000\u000bြ\u0000\fြ\u0000\rဈ\f", new Object[]{"answerData_", "answerDataCase_", "bitField0_", "suggestionText_", d.class, f.class, i.class, m.class, o.class, p.class, q.class, r.class, c.class, j.class, h.class, "accessibilityLabel_"});
            case 3:
                return new n();
            case 4:
                return new a(10);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (n.class) {
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
        return this.answerDataCase_ == 4;
    }

    public final boolean f() {
        return this.answerDataCase_ == 8;
    }
}
