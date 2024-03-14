package f2;

import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggestion$SuggestionType;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.MapFieldLite;
/* renamed from: f2.p0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0914p0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    public static final int ANSWER_INFO_FIELD_NUMBER = 11;
    public static final int CALCULATOR_INFO_FIELD_NUMBER = 15;
    private static final C0914p0 DEFAULT_INSTANCE;
    public static final int ENTITY_INFO_FIELD_NUMBER = 8;
    public static final int IMAGE_DESCRIPTION_FIELD_NUMBER = 20;
    public static final int IMAGE_URL_FIELD_NUMBER = 4;
    public static final int INTERACTION_DIALOG_FIELD_NUMBER = 12;
    public static final int IS_PERSONAL_FIELD_NUMBER = 5;
    public static final int IS_TRENDING_FIELD_NUMBER = 17;
    public static final int LAYOUT_INFO_FIELD_NUMBER = 19;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int RENDER_TEXT_FIELD_NUMBER = 3;
    public static final int SCORE_FIELD_NUMBER = 18;
    public static final int SEARCH_EXTRA_PARAMETERS_FIELD_NUMBER = 10;
    public static final int SEARCH_QUERY_FIELD_NUMBER = 9;
    public static final int SUGGESTION_ID_FIELD_NUMBER = 13;
    public static final int SUPPORTS_QUERY_BUILDER_FIELD_NUMBER = 6;
    public static final int TEXT_FIELD_NUMBER = 2;
    public static final int TRUNCATE_TYPE_FIELD_NUMBER = 14;
    public static final int TYPE_FIELD_NUMBER = 1;
    public static final int URL_FIELD_NUMBER = 21;
    public static final int URL_INFO_FIELD_NUMBER = 16;
    private C0888c0 answerInfo_;
    private int bitField0_;
    private C0890d0 calculatorInfo_;
    private C0892e0 entityInfo_;
    private C0898h0 interactionDialog_;
    private boolean isPersonal_;
    private boolean isTrending_;
    private C0902j0 layoutInfo_;
    private int score_;
    private boolean supportsQueryBuilder_;
    private int truncateType_;
    private int type_;
    private C0912o0 urlInfo_;
    private MapFieldLite searchExtraParameters_ = MapFieldLite.f8563d;
    private String suggestionId_ = "";
    private String text_ = "";
    private String renderText_ = "";
    private String imageUrl_ = "";
    private String searchQuery_ = "";
    private String imageDescription_ = "";
    private String url_ = "";

    static {
        C0914p0 c0914p0 = new C0914p0();
        DEFAULT_INSTANCE = c0914p0;
        com.google.protobuf.J.registerDefaultInstance(C0914p0.class, c0914p0);
    }

    public final C0888c0 b() {
        C0888c0 c0888c0 = this.answerInfo_;
        return c0888c0 == null ? C0888c0.b() : c0888c0;
    }

    public final C0892e0 c() {
        C0892e0 c0892e0 = this.entityInfo_;
        return c0892e0 == null ? C0892e0.c() : c0892e0;
    }

    public final String d() {
        return this.imageDescription_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0014\u0000\u0001\u0001\u0015\u0014\u0001\u0000\u0000\u0001ဌ\u0001\u0002ဈ\u0002\u0003ဈ\u0003\u0004ဈ\u0005\u0005ဇ\u0006\u0006ဇ\b\bဉ\n\tဈ\t\n2\u000bဉ\u000b\fဉ\u000e\rဈ\u0000\u000eဌ\u0004\u000fဉ\f\u0010ဉ\r\u0011ဇ\u0007\u0012င\u000f\u0013ဉ\u0010\u0014ဈ\u0011\u0015ဈ\u0012", new Object[]{"bitField0_", "type_", C0908m0.f9343a, "text_", "renderText_", "imageUrl_", "isPersonal_", "supportsQueryBuilder_", "entityInfo_", "searchQuery_", "searchExtraParameters_", C0906l0.f9342a, "answerInfo_", "interactionDialog_", "suggestionId_", "truncateType_", C0910n0.f9344a, "calculatorInfo_", "urlInfo_", "isTrending_", "score_", "layoutInfo_", "imageDescription_", "url_"});
            case 3:
                return new C0914p0();
            case 4:
                return new C0886b0(1);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0914p0.class) {
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
        return this.imageUrl_;
    }

    public final C0898h0 f() {
        C0898h0 c0898h0 = this.interactionDialog_;
        return c0898h0 == null ? C0898h0.b() : c0898h0;
    }

    public final boolean g() {
        return this.isPersonal_;
    }

    public final boolean h() {
        return this.isTrending_;
    }

    public final C0902j0 i() {
        C0902j0 c0902j0 = this.layoutInfo_;
        return c0902j0 == null ? C0902j0.c() : c0902j0;
    }

    public final String j() {
        return this.renderText_;
    }

    public final int k() {
        return this.score_;
    }

    public final String l() {
        return this.suggestionId_;
    }

    public final boolean m() {
        return this.supportsQueryBuilder_;
    }

    public final String n() {
        return this.text_;
    }

    public final OneSearchSuggestion$SuggestionType o() {
        OneSearchSuggestion$SuggestionType a4 = OneSearchSuggestion$SuggestionType.a(this.type_);
        return a4 == null ? OneSearchSuggestion$SuggestionType.QUERY : a4;
    }

    public final String p() {
        return this.url_;
    }

    public final C0912o0 q() {
        C0912o0 c0912o0 = this.urlInfo_;
        return c0912o0 == null ? C0912o0.b() : c0912o0;
    }

    public final boolean r() {
        return (this.bitField0_ & 131072) != 0;
    }

    public final boolean s() {
        return (this.bitField0_ & 32) != 0;
    }

    public final boolean t() {
        return (this.bitField0_ & 16384) != 0;
    }

    public final boolean u() {
        return (this.bitField0_ & 128) != 0;
    }

    public final boolean v() {
        return (this.bitField0_ & 65536) != 0;
    }

    public final boolean w() {
        return (this.bitField0_ & 32768) != 0;
    }

    public final boolean x() {
        return (this.bitField0_ & 262144) != 0;
    }
}
