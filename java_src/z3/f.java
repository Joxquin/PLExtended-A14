package z3;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import quality.ui.doodles.tools.crushinator.Crushinator$StartOn;
/* loaded from: classes.dex */
public final class f extends J implements InterfaceC0774q0 {
    private static final f DEFAULT_INSTANCE;
    public static final int MAX_NUM_STARTS_FIELD_NUMBER = 3;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int START_EVERY_NUM_TIMES_FIELD_NUMBER = 2;
    public static final int START_ON_FIELD_NUMBER = 1;
    private int bitField0_;
    private int startOn_;
    private int startEveryNumTimes_ = 1;
    private int maxNumStarts_ = 999999;

    static {
        f fVar = new f();
        DEFAULT_INSTANCE = fVar;
        J.registerDefaultInstance(f.class, fVar);
    }

    public static f b() {
        return DEFAULT_INSTANCE;
    }

    public final int c() {
        return this.maxNumStarts_;
    }

    public final int d() {
        return this.startEveryNumTimes_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"bitField0_", "startOn_", g.f13001a, "startEveryNumTimes_", "maxNumStarts_"});
            case 3:
                return new f();
            case 4:
                return new a(4);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (f.class) {
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

    public final Crushinator$StartOn e() {
        int i4 = this.startOn_;
        Crushinator$StartOn crushinator$StartOn = Crushinator$StartOn.DEFAULT;
        Crushinator$StartOn crushinator$StartOn2 = i4 != 0 ? i4 != 1 ? null : Crushinator$StartOn.HOME : crushinator$StartOn;
        return crushinator$StartOn2 == null ? crushinator$StartOn : crushinator$StartOn2;
    }
}
