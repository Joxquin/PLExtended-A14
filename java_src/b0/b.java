package B0;

import com.google.protobuf.A0;
import com.google.protobuf.AbstractC0743b;
import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import com.google.protobuf.S;
/* loaded from: classes.dex */
public final class b extends J implements InterfaceC0774q0 {
    public static final int CLASSNAME_FIELD_NUMBER = 4;
    private static final b DEFAULT_INSTANCE;
    public static final int MAGIC_NUMBER_FIELD_NUMBER = 1;
    public static final int PACKAGE_FIELD_NUMBER = 3;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int REAL_TO_ELAPSED_TIME_OFFSET_NANOS_FIELD_NUMBER = 5;
    public static final int WINDOWDATA_FIELD_NUMBER = 2;
    private int bitField0_;
    private S classname_;
    private long magicNumber_;
    private String package_;
    private long realToElapsedTimeOffsetNanos_;
    private S windowData_;

    static {
        b bVar = new b();
        DEFAULT_INSTANCE = bVar;
        J.registerDefaultInstance(b.class, bVar);
    }

    public b() {
        A0 a02 = A0.f8494g;
        this.windowData_ = a02;
        this.package_ = "";
        this.classname_ = a02;
    }

    public static /* synthetic */ b a() {
        return DEFAULT_INSTANCE;
    }

    public static void b(b bVar, long j4) {
        bVar.bitField0_ |= 1;
        bVar.magicNumber_ = j4;
    }

    public static void c(b bVar, Iterable iterable) {
        S s4 = bVar.classname_;
        if (!s4.g()) {
            bVar.classname_ = J.mutableCopy(s4);
        }
        AbstractC0743b.addAll(iterable, bVar.classname_);
    }

    public static void d(b bVar, long j4) {
        bVar.bitField0_ |= 4;
        bVar.realToElapsedTimeOffsetNanos_ = j4;
    }

    public static void e(b bVar, Iterable iterable) {
        S s4 = bVar.windowData_;
        if (!s4.g()) {
            bVar.windowData_ = J.mutableCopy(s4);
        }
        AbstractC0743b.addAll(iterable, bVar.windowData_);
    }

    public static void f(b bVar, String str) {
        bVar.getClass();
        str.getClass();
        bVar.bitField0_ |= 2;
        bVar.package_ = str;
    }

    public static a g() {
        return (a) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001စ\u0000\u0002\u001b\u0003ဈ\u0001\u0004\u001a\u0005စ\u0002", new Object[]{"bitField0_", "magicNumber_", "windowData_", h.class, "package_", "classname_", "realToElapsedTimeOffsetNanos_"});
            case 3:
                return new b();
            case 4:
                return new a();
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
}
