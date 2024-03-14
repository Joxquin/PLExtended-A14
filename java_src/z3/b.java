package z3;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class b extends J implements InterfaceC0774q0 {
    public static final int ABSOLUTE_LEFT_FIELD_NUMBER = 1;
    public static final int ABSOLUTE_TOP_FIELD_NUMBER = 2;
    private static final b DEFAULT_INSTANCE;
    public static final int HEIGHT_FIELD_NUMBER = 6;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int REVERSIBLE_FIELD_NUMBER = 7;
    public static final int SPRITE_LEFT_FIELD_NUMBER = 3;
    public static final int SPRITE_TOP_FIELD_NUMBER = 4;
    public static final int WIDTH_FIELD_NUMBER = 5;
    private int absoluteLeft_;
    private int absoluteTop_;
    private int bitField0_;
    private int height_;
    private boolean reversible_;
    private int spriteLeft_;
    private int spriteTop_;
    private int width_;

    static {
        b bVar = new b();
        DEFAULT_INSTANCE = bVar;
        J.registerDefaultInstance(b.class, bVar);
    }

    public final int b() {
        return this.absoluteLeft_;
    }

    public final int c() {
        return this.absoluteTop_;
    }

    public final int d() {
        return this.height_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004\u0006င\u0005\u0007ဇ\u0006", new Object[]{"bitField0_", "absoluteLeft_", "absoluteTop_", "spriteLeft_", "spriteTop_", "width_", "height_", "reversible_"});
            case 3:
                return new b();
            case 4:
                return new a(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (b.class) {
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

    public final boolean e() {
        return this.reversible_;
    }

    public final int f() {
        return this.spriteLeft_;
    }

    public final int g() {
        return this.spriteTop_;
    }

    public final int h() {
        return this.width_;
    }
}
