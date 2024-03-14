package Y1;

import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.search.SearchConfigProto$Source;
import com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget;
import com.google.protobuf.A0;
import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import com.google.protobuf.S;
/* loaded from: classes.dex */
public final class m extends J implements InterfaceC0774q0 {
    public static final int BACKGROUND_HINT_COLOR_FIELD_NUMBER = 1;
    private static final m DEFAULT_INSTANCE;
    public static final int FIRST_ICON_ROW_BOUNDS_FIELD_NUMBER = 4;
    public static final int FIRST_ROW_ICONS_FIELD_NUMBER = 6;
    public static final int HAS_DOODLE_FIELD_NUMBER = 16;
    public static final int ICON_TEMPLATE_ID_FIELD_NUMBER = 2;
    public static final int IS_BACKGROUND_HINT_DARK_FIELD_NUMBER = 15;
    public static final int LONG_CLICK_PENDING_INTENT_ID_FIELD_NUMBER = 3;
    public static final int MAX_ICONS_PER_ROW_FIELD_NUMBER = 5;
    public static final int NUM_DOODLE_LOOPS_FIELD_NUMBER = 18;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int PREVIEW_BITMAP_BOUNDS_FIELD_NUMBER = 12;
    public static final int PREVIEW_BITMAP_ID_FIELD_NUMBER = 11;
    public static final int SEARCH_BOX_BOUNDS_FIELD_NUMBER = 7;
    public static final int SEARCH_BOX_G_RES_ID_FIELD_NUMBER = 9;
    public static final int SEARCH_BOX_MIC_RES_ID_FIELD_NUMBER = 10;
    public static final int SEARCH_BOX_TEMPLATE_ID_FIELD_NUMBER = 8;
    public static final int SECOND_ICON_ROW_BOUNDS_FIELD_NUMBER = 14;
    public static final int SOURCE_FIELD_NUMBER = 19;
    public static final int TAP_TARGET_FIELD_NUMBER = 17;
    public static final int TRANSITION_FROM_ALL_APPS_FIELD_NUMBER = 13;
    private int backgroundHintColor_;
    private int bitField0_;
    private i firstIconRowBounds_;
    private boolean hasDoodle_;
    private boolean isBackgroundHintDark_;
    private int maxIconsPerRow_;
    private int numDoodleLoops_;
    private i previewBitmapBounds_;
    private i searchBoxBounds_;
    private int searchBoxGResId_;
    private int searchBoxMicResId_;
    private i secondIconRowBounds_;
    private int source_;
    private int tapTarget_;
    private boolean transitionFromAllApps_;
    private String iconTemplateId_ = "";
    private String longClickPendingIntentId_ = "";
    private S firstRowIcons_ = A0.f8494g;
    private String searchBoxTemplateId_ = "";
    private String previewBitmapId_ = "";

    static {
        m mVar = new m();
        DEFAULT_INSTANCE = mVar;
        J.registerDefaultInstance(m.class, mVar);
    }

    public static l B() {
        return (l) DEFAULT_INSTANCE.createBuilder();
    }

    public static void a(m mVar, k kVar) {
        mVar.getClass();
        kVar.getClass();
        S s4 = mVar.firstRowIcons_;
        if (!s4.g()) {
            mVar.firstRowIcons_ = J.mutableCopy(s4);
        }
        mVar.firstRowIcons_.add(kVar);
    }

    public static void b(m mVar) {
        mVar.getClass();
        mVar.firstRowIcons_ = A0.f8494g;
    }

    public static void c(m mVar, int i4) {
        mVar.bitField0_ |= 1;
        mVar.backgroundHintColor_ = i4;
    }

    public static void d(m mVar, i iVar) {
        mVar.getClass();
        mVar.firstIconRowBounds_ = iVar;
        mVar.bitField0_ |= 16;
    }

    public static void e(m mVar, boolean z4) {
        mVar.bitField0_ |= 16384;
        mVar.hasDoodle_ = z4;
    }

    public static void f(m mVar) {
        mVar.getClass();
        mVar.bitField0_ |= 4;
        mVar.iconTemplateId_ = "icon_view_template";
    }

    public static void g(m mVar, boolean z4) {
        mVar.bitField0_ |= 2;
        mVar.isBackgroundHintDark_ = z4;
    }

    public static void h(m mVar, int i4) {
        mVar.bitField0_ |= 64;
        mVar.maxIconsPerRow_ = i4;
    }

    public static void i(m mVar, int i4) {
        mVar.bitField0_ |= 65536;
        mVar.numDoodleLoops_ = i4;
    }

    public static void j(m mVar, i iVar) {
        mVar.getClass();
        mVar.previewBitmapBounds_ = iVar;
        mVar.bitField0_ |= 4096;
    }

    public static void k(m mVar) {
        mVar.getClass();
        mVar.bitField0_ |= 2048;
        mVar.previewBitmapId_ = "preview_bitmap";
    }

    public static void l(m mVar, i iVar) {
        mVar.getClass();
        mVar.searchBoxBounds_ = iVar;
        mVar.bitField0_ |= 128;
    }

    public static void m(m mVar) {
        mVar.bitField0_ |= 512;
        mVar.searchBoxGResId_ = R.id.g_icon;
    }

    public static void n(m mVar, int i4) {
        mVar.bitField0_ |= 1024;
        mVar.searchBoxMicResId_ = i4;
    }

    public static void o(m mVar) {
        mVar.getClass();
        mVar.bitField0_ |= 256;
        mVar.searchBoxTemplateId_ = "search_box_template";
    }

    public static void p(m mVar, i iVar) {
        mVar.getClass();
        mVar.secondIconRowBounds_ = iVar;
        mVar.bitField0_ |= 32;
    }

    public static void q(m mVar, SearchConfigProto$Source searchConfigProto$Source) {
        mVar.getClass();
        mVar.source_ = searchConfigProto$Source.getNumber();
        mVar.bitField0_ |= 131072;
    }

    public static void r(m mVar, SearchConfigProto$TapTarget searchConfigProto$TapTarget) {
        mVar.getClass();
        mVar.tapTarget_ = searchConfigProto$TapTarget.getNumber();
        mVar.bitField0_ |= 32768;
    }

    public static void s(m mVar, boolean z4) {
        mVar.bitField0_ |= 8192;
        mVar.transitionFromAllApps_ = z4;
    }

    public final boolean A() {
        return (this.bitField0_ & 32) != 0;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0002\u0003ဈ\u0003\u0004ဉ\u0004\u0005င\u0006\u0006\u001b\u0007ဉ\u0007\bဈ\b\tင\t\nင\n\u000bဈ\u000b\fဉ\f\rဇ\r\u000eဉ\u0005\u000fဇ\u0001\u0010ဇ\u000e\u0011ဌ\u000f\u0012င\u0010\u0013ဌ\u0011", new Object[]{"bitField0_", "backgroundHintColor_", "iconTemplateId_", "longClickPendingIntentId_", "firstIconRowBounds_", "maxIconsPerRow_", "firstRowIcons_", k.class, "searchBoxBounds_", "searchBoxTemplateId_", "searchBoxGResId_", "searchBoxMicResId_", "previewBitmapId_", "previewBitmapBounds_", "transitionFromAllApps_", "secondIconRowBounds_", "isBackgroundHintDark_", "hasDoodle_", "tapTarget_", q.f2299a, "numDoodleLoops_", "source_", p.f2298a});
            case 3:
                return new m();
            case 4:
                return new l();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (m.class) {
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

    public final i u() {
        i iVar = this.firstIconRowBounds_;
        return iVar == null ? i.f() : iVar;
    }

    public final String v() {
        return this.iconTemplateId_;
    }

    public final int w() {
        return this.maxIconsPerRow_;
    }

    public final String x() {
        return this.previewBitmapId_;
    }

    public final String y() {
        return this.searchBoxTemplateId_;
    }

    public final boolean z() {
        return this.transitionFromAllApps_;
    }
}
