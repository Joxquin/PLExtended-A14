package f2;

import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchError$Status;
import com.google.protobuf.C0784w;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.X  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0880X extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final C0880X DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int STATUS_FIELD_NUMBER = 1;
    private int bitField0_;
    private int status_;

    static {
        C0880X c0880x = new C0880X();
        DEFAULT_INSTANCE = c0880x;
        com.google.protobuf.J.registerDefaultInstance(C0880X.class, c0880x);
    }

    public static C0880X c(byte[] bArr, C0784w c0784w) {
        return (C0880X) com.google.protobuf.J.parseFrom(DEFAULT_INSTANCE, bArr, c0784w);
    }

    public final OneSearchError$Status b() {
        OneSearchError$Status a4 = OneSearchError$Status.a(this.status_);
        return a4 == null ? OneSearchError$Status.UNKNOWN : a4;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဌ\u0000", new Object[]{"bitField0_", "status_", C0879W.f9323a});
            case 3:
                return new C0880X();
            case 4:
                return new C0878V();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0880X.class) {
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
