package f2;

import com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
/* loaded from: classes.dex */
public final class w0 extends com.google.protobuf.J implements InterfaceC0774q0 {
    private static final w0 DEFAULT_INSTANCE;
    public static final int GOOGLE_BLOCK_FIELD_NUMBER = 1;
    public static final int ON_DEVICE_BLOCK_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private int rowInfoCase_ = 0;
    private Object rowInfo_;

    static {
        w0 w0Var = new w0();
        DEFAULT_INSTANCE = w0Var;
        com.google.protobuf.J.registerDefaultInstance(w0.class, w0Var);
    }

    public static void a(w0 w0Var, C0922t0 c0922t0) {
        w0Var.getClass();
        w0Var.rowInfo_ = c0922t0;
        w0Var.rowInfoCase_ = 1;
    }

    public static void b(w0 w0Var, v0 v0Var) {
        w0Var.getClass();
        w0Var.rowInfo_ = v0Var;
        w0Var.rowInfoCase_ = 2;
    }

    public static C0918r0 e() {
        return (C0918r0) DEFAULT_INSTANCE.createBuilder();
    }

    public final RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase d() {
        int i4 = this.rowInfoCase_;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    return null;
                }
                return RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase.ON_DEVICE_BLOCK;
            }
            return RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase.GOOGLE_BLOCK;
        }
        return RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase.ROWINFO_NOT_SET;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new com.google.protobuf.B0(DEFAULT_INSTANCE, "\u0001\u0002\u0001\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ြ\u0000\u0002ြ\u0000", new Object[]{"rowInfo_", "rowInfoCase_", "bitField0_", C0922t0.class, v0.class});
            case 3:
                return new w0();
            case 4:
                return new C0918r0();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (w0.class) {
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
