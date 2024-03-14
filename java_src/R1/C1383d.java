package r1;

import com.google.protobuf.A0;
import com.google.protobuf.AbstractC0743b;
import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import com.google.protobuf.S;
/* renamed from: r1.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1383d extends J implements InterfaceC0774q0 {
    public static final int CLICKED_SUBCARD_INDEX_FIELD_NUMBER = 2;
    private static final C1383d DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SUBCARDS_FIELD_NUMBER = 1;
    private int bitField0_;
    private int clickedSubcardIndex_;
    private S subcards_ = A0.f8494g;

    static {
        C1383d c1383d = new C1383d();
        DEFAULT_INSTANCE = c1383d;
        J.registerDefaultInstance(C1383d.class, c1383d);
    }

    public static void a(C1383d c1383d, Iterable iterable) {
        S s4 = c1383d.subcards_;
        if (!s4.g()) {
            c1383d.subcards_ = J.mutableCopy(s4);
        }
        AbstractC0743b.addAll(iterable, c1383d.subcards_);
    }

    public static void b(C1383d c1383d, int i4) {
        c1383d.bitField0_ |= 1;
        c1383d.clickedSubcardIndex_ = i4;
    }

    public static C1382c d() {
        return (C1382c) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002င\u0000", new Object[]{"bitField0_", "subcards_", C1381b.class, "clickedSubcardIndex_"});
            case 3:
                return new C1383d();
            case 4:
                return new C1382c();
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (C1383d.class) {
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
