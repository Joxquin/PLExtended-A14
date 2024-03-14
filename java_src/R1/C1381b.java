package r1;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* renamed from: r1.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1381b extends J implements InterfaceC0774q0 {
    public static final int CARD_TYPE_ID_FIELD_NUMBER = 2;
    private static final C1381b DEFAULT_INSTANCE;
    public static final int INSTANCE_ID_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private int cardTypeId_;
    private int instanceId_;

    static {
        C1381b c1381b = new C1381b();
        DEFAULT_INSTANCE = c1381b;
        J.registerDefaultInstance(C1381b.class, c1381b);
    }

    public static void a(C1381b c1381b, int i4) {
        c1381b.bitField0_ |= 2;
        c1381b.cardTypeId_ = i4;
    }

    public static void b(C1381b c1381b, int i4) {
        c1381b.bitField0_ |= 1;
        c1381b.instanceId_ = i4;
    }

    public static C1380a d() {
        return (C1380a) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"bitField0_", "instanceId_", "cardTypeId_"});
            case 3:
                return new C1381b();
            case 4:
                return new C1380a();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C1381b.class) {
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
}
