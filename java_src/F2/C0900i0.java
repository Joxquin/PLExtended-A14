package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.i0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0900i0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    public static final int ACTION_URI_FIELD_NUMBER = 5;
    public static final int BUTTON_ID_FIELD_NUMBER = 1;
    public static final int BUTTON_TEXT_FIELD_NUMBER = 2;
    private static final C0900i0 DEFAULT_INSTANCE;
    public static final int ICON_URL_FIELD_NUMBER = 3;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SEARCH_QUERY_FIELD_NUMBER = 4;
    private int bitField0_;
    private String buttonId_ = "";
    private String buttonText_ = "";
    private String iconUrl_ = "";
    private String searchQuery_ = "";
    private String actionUri_ = "";

    static {
        C0900i0 c0900i0 = new C0900i0();
        DEFAULT_INSTANCE = c0900i0;
        com.google.protobuf.J.registerDefaultInstance(C0900i0.class, c0900i0);
    }

    public final String b() {
        return this.actionUri_;
    }

    public final String c() {
        return this.buttonId_;
    }

    public final String d() {
        return this.buttonText_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"bitField0_", "buttonId_", "buttonText_", "iconUrl_", "searchQuery_", "actionUri_"});
            case 3:
                return new C0900i0();
            case 4:
                return new C0886b0(7);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0900i0.class) {
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

    public final String e() {
        return this.searchQuery_;
    }

    public final boolean f() {
        return (this.bitField0_ & 8) != 0;
    }
}
