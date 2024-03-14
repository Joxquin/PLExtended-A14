package Y1;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class i extends J implements InterfaceC0774q0 {
    private static final i DEFAULT_INSTANCE;
    public static final int HEIGHT_FIELD_NUMBER = 4;
    public static final int LEFT_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TOP_FIELD_NUMBER = 2;
    public static final int WIDTH_FIELD_NUMBER = 3;
    private int bitField0_;
    private int height_;
    private int left_;
    private int top_;
    private int width_;

    static {
        i iVar = new i();
        DEFAULT_INSTANCE = iVar;
        J.registerDefaultInstance(i.class, iVar);
    }

    public static void a(i iVar, int i4) {
        iVar.bitField0_ |= 8;
        iVar.height_ = i4;
    }

    public static void b(i iVar, int i4) {
        iVar.bitField0_ |= 1;
        iVar.left_ = i4;
    }

    public static void c(i iVar, int i4) {
        iVar.bitField0_ |= 2;
        iVar.top_ = i4;
    }

    public static void d(i iVar, int i4) {
        iVar.bitField0_ |= 4;
        iVar.width_ = i4;
    }

    public static i f() {
        return DEFAULT_INSTANCE;
    }

    public static h k() {
        return (h) DEFAULT_INSTANCE.createBuilder();
    }

    public static h l(i iVar) {
        E createBuilder = DEFAULT_INSTANCE.createBuilder();
        createBuilder.mergeFrom(iVar);
        return (h) createBuilder;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003", new Object[]{"bitField0_", "left_", "top_", "width_", "height_"});
            case 3:
                return new i();
            case 4:
                return new h();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (i.class) {
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

    public final int g() {
        return this.height_;
    }

    public final int h() {
        return this.left_;
    }

    public final int i() {
        return this.top_;
    }

    public final int j() {
        return this.width_;
    }
}
