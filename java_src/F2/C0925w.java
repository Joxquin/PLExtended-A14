package f2;

import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchEntryPoint;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.MapFieldLite;
/* renamed from: f2.w  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0925w extends com.google.protobuf.J implements InterfaceC0774q0 {
    public static final int CURSOR_POSITION_FIELD_NUMBER = 6;
    private static final C0925w DEFAULT_INSTANCE;
    public static final int ENTRY_POINT_FIELD_NUMBER = 4;
    public static final int FEATURE_FIELD_NUMBER = 8;
    public static final int NEW_SESSION_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int QUERY_BUILDER_TAP_FIELD_NUMBER = 3;
    public static final int QUERY_FIELD_NUMBER = 1;
    public static final int REQUEST_TIMESTAMP_MS_FIELD_NUMBER = 5;
    public static final int VERSION_CODE_FIELD_NUMBER = 9;
    private int bitField0_;
    private int cursorPosition_;
    private int entryPoint_;
    private boolean newSession_;
    private boolean queryBuilderTap_;
    private long requestTimestampMs_;
    private int versionCode_;
    private MapFieldLite feature_ = MapFieldLite.f8563d;
    private String query_ = "";

    static {
        C0925w c0925w = new C0925w();
        DEFAULT_INSTANCE = c0925w;
        com.google.protobuf.J.registerDefaultInstance(C0925w.class, c0925w);
    }

    public static MapFieldLite a(C0925w c0925w) {
        if (!c0925w.feature_.d()) {
            c0925w.feature_ = c0925w.feature_.f();
        }
        return c0925w.feature_;
    }

    public static void b(C0925w c0925w, OneSearchEntryPoint oneSearchEntryPoint) {
        c0925w.getClass();
        c0925w.entryPoint_ = oneSearchEntryPoint.getNumber();
        c0925w.bitField0_ |= 16;
    }

    public static void c(C0925w c0925w, boolean z4) {
        c0925w.bitField0_ |= 4;
        c0925w.newSession_ = z4;
    }

    public static void d(C0925w c0925w, String str) {
        c0925w.getClass();
        str.getClass();
        c0925w.bitField0_ |= 1;
        c0925w.query_ = str;
    }

    public static void e(C0925w c0925w, long j4) {
        c0925w.bitField0_ |= 32;
        c0925w.requestTimestampMs_ = j4;
    }

    public static void f(C0925w c0925w) {
        c0925w.bitField0_ |= 64;
        c0925w.versionCode_ = 1;
    }

    public static C0925w h() {
        return DEFAULT_INSTANCE;
    }

    public static C0923u i() {
        return (C0923u) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\b\u0000\u0001\u0001\t\b\u0001\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0002\u0003ဇ\u0003\u0004ဌ\u0004\u0005ဃ\u0005\u0006င\u0001\b2\tင\u0006", new Object[]{"bitField0_", "query_", "newSession_", "queryBuilderTap_", "entryPoint_", C0877U.f9322a, "requestTimestampMs_", "cursorPosition_", "feature_", C0924v.f9345a, "versionCode_"});
            case 3:
                return new C0925w();
            case 4:
                return new C0923u();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0925w.class) {
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
}
