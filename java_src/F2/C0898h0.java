package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.h0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0898h0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0898h0 DEFAULT_INSTANCE;
    public static final int LEARN_MORE_TEXT_FIELD_NUMBER = 3;
    public static final int LEARN_MORE_URL_FIELD_NUMBER = 4;
    public static final int NEGATIVE_BUTTON_FIELD_NUMBER = 6;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int POSITIVE_BUTTON_FIELD_NUMBER = 5;
    public static final int TEXT_FIELD_NUMBER = 2;
    public static final int TITLE_FIELD_NUMBER = 1;
    private int bitField0_;
    private C0896g0 negativeButton_;
    private C0896g0 positiveButton_;
    private String title_ = "";
    private String text_ = "";
    private String learnMoreText_ = "";
    private String learnMoreUrl_ = "";

    static {
        C0898h0 c0898h0 = new C0898h0();
        DEFAULT_INSTANCE = c0898h0;
        com.google.protobuf.J.registerDefaultInstance(C0898h0.class, c0898h0);
    }

    public static C0898h0 b() {
        return DEFAULT_INSTANCE;
    }

    public final String c() {
        return this.learnMoreUrl_;
    }

    public final C0896g0 d() {
        C0896g0 c0896g0 = this.negativeButton_;
        return c0896g0 == null ? C0896g0.c() : c0896g0;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဉ\u0004\u0006ဉ\u0005", new Object[]{"bitField0_", "title_", "text_", "learnMoreText_", "learnMoreUrl_", "positiveButton_", "negativeButton_"});
            case 3:
                return new C0898h0();
            case 4:
                return new C0886b0(4);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0898h0.class) {
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

    public final C0896g0 e() {
        C0896g0 c0896g0 = this.positiveButton_;
        return c0896g0 == null ? C0896g0.c() : c0896g0;
    }

    public final boolean f() {
        return (this.bitField0_ & 8) != 0;
    }

    public final boolean g() {
        return (this.bitField0_ & 32) != 0;
    }

    public final boolean h() {
        return (this.bitField0_ & 16) != 0;
    }
}
