package f2;

import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* renamed from: f2.g0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0896g0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    public static final int ACTION_RPC_FIELD_NUMBER = 2;
    private static final C0896g0 DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TEXT_FIELD_NUMBER = 1;
    private int actionRpc_;
    private int bitField0_;
    private String text_ = "";

    static {
        C0896g0 c0896g0 = new C0896g0();
        DEFAULT_INSTANCE = c0896g0;
        com.google.protobuf.J.registerDefaultInstance(C0896g0.class, c0896g0);
    }

    public static C0896g0 c() {
        return DEFAULT_INSTANCE;
    }

    public final OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc b() {
        OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc a4 = OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc.a(this.actionRpc_);
        return a4 == null ? OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc.NONE : a4;
    }

    public final String d() {
        return this.text_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဌ\u0001", new Object[]{"bitField0_", "text_", "actionRpc_", C0894f0.f9340a});
            case 3:
                return new C0896g0();
            case 4:
                return new C0886b0(5);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C0896g0.class) {
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

    public final boolean e() {
        return (this.bitField0_ & 2) != 0;
    }
}
