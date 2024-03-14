package f2;

import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.MapFieldLite;
/* renamed from: f2.A  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0858A extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0858A DEFAULT_INSTANCE;
    public static final int FEATURE_FIELD_NUMBER = 8;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int QUERY_FIELD_NUMBER = 1;
    public static final int RESPONSE_ID_FIELD_NUMBER = 6;
    public static final int SUGGESTION_FIELD_NUMBER = 2;
    public static final int TIMING_INFO_FIELD_NUMBER = 3;
    public static final int USER_NOTIFICATION_FIELD_NUMBER = 4;
    public static final int VERSION_CODE_FIELD_NUMBER = 7;
    public static final int VERSION_FIELD_NUMBER = 5;
    private int bitField0_;
    private MapFieldLite feature_ = MapFieldLite.f8563d;
    private String query_ = "";
    private String responseId_ = "";
    private com.google.protobuf.S suggestion_ = com.google.protobuf.A0.f8494g;
    private D0 timingInfo_;
    private T0 userNotification_;
    private int versionCode_;
    private int version_;

    static {
        C0858A c0858a = new C0858A();
        DEFAULT_INSTANCE = c0858a;
        com.google.protobuf.J.registerDefaultInstance(C0858A.class, c0858a);
    }

    public static C0858A b() {
        return DEFAULT_INSTANCE;
    }

    public static C0858A g(byte[] bArr) {
        return (C0858A) com.google.protobuf.J.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public final boolean c(int i4) {
        MapFieldLite mapFieldLite = this.feature_;
        if (mapFieldLite.containsKey(Integer.valueOf(i4))) {
            return ((Boolean) mapFieldLite.get(Integer.valueOf(i4))).booleanValue();
        }
        return false;
    }

    public final String d() {
        return this.responseId_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\b\u0000\u0001\u0001\b\b\u0001\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဉ\u0002\u0004ဉ\u0003\u0005ဌ\u0004\u0006ဈ\u0001\u0007င\u0005\b2", new Object[]{"bitField0_", "query_", "suggestion_", C0914p0.class, "timingInfo_", "userNotification_", "version_", C0928z.f9347a, "responseId_", "versionCode_", "feature_", C0927y.f9346a});
            case 3:
                return new C0858A();
            case 4:
                return new C0926x();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0858A.class) {
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

    public final com.google.protobuf.S e() {
        return this.suggestion_;
    }

    public final D0 f() {
        D0 d02 = this.timingInfo_;
        return d02 == null ? D0.b() : d02;
    }
}
