package z3;

import com.google.protobuf.A0;
import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import com.google.protobuf.S;
/* loaded from: classes.dex */
public final class d extends J implements InterfaceC0774q0 {
    private static final d DEFAULT_INSTANCE;
    public static final int FRAME_FIELD_NUMBER = 3;
    public static final int HEIGHT_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int WIDTH_FIELD_NUMBER = 1;
    private int bitField0_;
    private S frame_ = A0.f8494g;
    private int height_;
    private int width_;

    static {
        d dVar = new d();
        DEFAULT_INSTANCE = dVar;
        J.registerDefaultInstance(d.class, dVar);
    }

    public static d b() {
        return DEFAULT_INSTANCE;
    }

    public final e c(int i4) {
        return (e) this.frame_.get(i4);
    }

    public final int d() {
        return this.frame_.size();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003\u001b", new Object[]{"bitField0_", "width_", "height_", "frame_", e.class});
            case 3:
                return new d();
            case 4:
                return new a(2);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (d.class) {
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

    public final S e() {
        return this.frame_;
    }

    public final int f() {
        return this.height_;
    }
}
