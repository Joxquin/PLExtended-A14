package f2;

import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggestion$LayoutType;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.j0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0902j0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    public static final int BUTTON_INFO_FIELD_NUMBER = 5;
    private static final C0902j0 DEFAULT_INSTANCE;
    public static final int HEADER_DESCRIPTION_FIELD_NUMBER = 6;
    public static final int HEADER_FIELD_NUMBER = 2;
    public static final int LAYOUT_TYPE_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SUBTITLE_DESCRIPTION_FIELD_NUMBER = 8;
    public static final int SUBTITLE_FIELD_NUMBER = 4;
    public static final int TITLE_DESCRIPTION_FIELD_NUMBER = 7;
    public static final int TITLE_FIELD_NUMBER = 3;
    private int bitField0_;
    private int layoutType_;
    private String header_ = "";
    private String headerDescription_ = "";
    private String title_ = "";
    private String titleDescription_ = "";
    private String subtitle_ = "";
    private String subtitleDescription_ = "";
    private com.google.protobuf.S buttonInfo_ = com.google.protobuf.A0.f8494g;

    static {
        C0902j0 c0902j0 = new C0902j0();
        DEFAULT_INSTANCE = c0902j0;
        com.google.protobuf.J.registerDefaultInstance(C0902j0.class, c0902j0);
    }

    public static C0902j0 c() {
        return DEFAULT_INSTANCE;
    }

    public final com.google.protobuf.S b() {
        return this.buttonInfo_;
    }

    public final String d() {
        return this.header_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001ဌ\u0000\u0002ဈ\u0001\u0003ဈ\u0003\u0004ဈ\u0005\u0005\u001b\u0006ဈ\u0002\u0007ဈ\u0004\bဈ\u0006", new Object[]{"bitField0_", "layoutType_", C0904k0.f9341a, "header_", "title_", "subtitle_", "buttonInfo_", C0900i0.class, "headerDescription_", "titleDescription_", "subtitleDescription_"});
            case 3:
                return new C0902j0();
            case 4:
                return new C0886b0(6);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0902j0.class) {
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
        return this.headerDescription_;
    }

    public final OneSearchSuggestion$LayoutType f() {
        int i4 = this.layoutType_;
        OneSearchSuggestion$LayoutType oneSearchSuggestion$LayoutType = OneSearchSuggestion$LayoutType.SMALL_ICON_HORIZONTAL_TEXT;
        OneSearchSuggestion$LayoutType oneSearchSuggestion$LayoutType2 = i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? null : OneSearchSuggestion$LayoutType.TALL_CARD_WITH_IMAGE_NO_ICON : OneSearchSuggestion$LayoutType.EXTRA_TALL_ICON_ROW : OneSearchSuggestion$LayoutType.HORIZONTAL_MEDIUM_TEXT : oneSearchSuggestion$LayoutType;
        return oneSearchSuggestion$LayoutType2 == null ? oneSearchSuggestion$LayoutType : oneSearchSuggestion$LayoutType2;
    }

    public final String g() {
        return this.subtitle_;
    }

    public final String getTitle() {
        return this.title_;
    }

    public final String h() {
        return this.subtitleDescription_;
    }

    public final String i() {
        return this.titleDescription_;
    }

    public final boolean j() {
        return (this.bitField0_ & 2) != 0;
    }

    public final boolean k() {
        return (this.bitField0_ & 4) != 0;
    }

    public final boolean l() {
        return (this.bitField0_ & 1) != 0;
    }

    public final boolean m() {
        return (this.bitField0_ & 64) != 0;
    }

    public final boolean n() {
        return (this.bitField0_ & 16) != 0;
    }
}
