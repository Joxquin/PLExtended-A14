package g2;

import com.google.android.gms.play.cloud.search.grpc.RequestContext$Client$ClientName;
import com.google.protobuf.B0;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* renamed from: g2.A  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0953A extends J implements InterfaceC0774q0 {
    public static final int CLIENT_NAME_FIELD_NUMBER = 1;
    private static final C0953A DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int VERSION_CODE_FIELD_NUMBER = 2;
    public static final int VERSION_NAME_FIELD_NUMBER = 3;
    private int bitField0_;
    private int clientName_;
    private int versionCode_;
    private String versionName_ = "";

    static {
        C0953A c0953a = new C0953A();
        DEFAULT_INSTANCE = c0953a;
        J.registerDefaultInstance(C0953A.class, c0953a);
    }

    public static void a(C0953A c0953a) {
        RequestContext$Client$ClientName requestContext$Client$ClientName = RequestContext$Client$ClientName.PIXEL_LAUNCHER;
        c0953a.getClass();
        c0953a.clientName_ = requestContext$Client$ClientName.getNumber();
        c0953a.bitField0_ |= 1;
    }

    public static void b(C0953A c0953a) {
        c0953a.bitField0_ |= 2;
        c0953a.versionCode_ = 0;
    }

    public static void c(C0953A c0953a, String str) {
        c0953a.getClass();
        str.getClass();
        c0953a.bitField0_ |= 4;
        c0953a.versionName_ = str;
    }

    public static y e() {
        return (y) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002င\u0001\u0003ဈ\u0002", new Object[]{"bitField0_", "clientName_", z.f9479a, "versionCode_", "versionName_"});
            case 3:
                return new C0953A();
            case 4:
                return new y();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0953A.class) {
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
