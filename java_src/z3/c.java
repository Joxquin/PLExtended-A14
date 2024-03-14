package z3;

import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class c extends J implements InterfaceC0774q0 {
    public static final int CRUSHINATED_IMAGE_FIELD_NUMBER = 1;
    private static final c DEFAULT_INSTANCE;
    public static final int FPS_FIELD_NUMBER = 5;
    public static final int INITIAL_DELAY_MS_FIELD_NUMBER = 8;
    public static final int LOOP_COUNT_FIELD_NUMBER = 7;
    public static final int LOOP_DELAY_MS_FIELD_NUMBER = 6;
    public static final int LOOP_FIELD_NUMBER = 4;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int PLAY_IN_OVERVIEW_FIELD_NUMBER = 10;
    public static final int REVERSE_FIELD_NUMBER = 3;
    public static final int SPRITE_IMAGE_FIELD_NUMBER = 2;
    public static final int START_CRITERIA_FIELD_NUMBER = 9;
    public static final int SUPER_G_COLOR_FIELD_NUMBER = 11;
    public static final int USE_SUPER_G_COLOR_FIELD_NUMBER = 12;
    private int bitField0_;
    private d crushinatedImage_;
    private float fps_;
    private int initialDelayMs_;
    private int loopDelayMs_;
    private boolean loop_;
    private boolean playInOverview_;
    private boolean reverse_;
    private f startCriteria_;
    private int superGColor_;
    private boolean useSuperGColor_;
    private String spriteImage_ = "";
    private int loopCount_ = 1;

    static {
        c cVar = new c();
        DEFAULT_INSTANCE = cVar;
        J.registerDefaultInstance(c.class, cVar);
    }

    public static c o(byte[] bArr) {
        return (c) J.parseFrom(DEFAULT_INSTANCE, bArr);
    }

    public final d b() {
        d dVar = this.crushinatedImage_;
        return dVar == null ? d.b() : dVar;
    }

    public final float c() {
        return this.fps_;
    }

    public final int d() {
        return this.initialDelayMs_;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\f\u0000\u0001\u0001\f\f\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004ဇ\u0003\u0005ခ\u0004\u0006င\u0005\u0007င\u0006\bင\u0007\tဉ\b\nဇ\t\u000bင\n\fဇ\u000b", new Object[]{"bitField0_", "crushinatedImage_", "spriteImage_", "reverse_", "loop_", "fps_", "loopDelayMs_", "loopCount_", "initialDelayMs_", "startCriteria_", "playInOverview_", "superGColor_", "useSuperGColor_"});
            case 3:
                return new c();
            case 4:
                return new a(1);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (c.class) {
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
        return this.loop_;
    }

    public final int f() {
        return this.loopCount_;
    }

    public final int g() {
        return this.loopDelayMs_;
    }

    public final boolean h() {
        return this.reverse_;
    }

    public final String i() {
        return this.spriteImage_;
    }

    public final f j() {
        f fVar = this.startCriteria_;
        return fVar == null ? f.b() : fVar;
    }

    public final int k() {
        return this.superGColor_;
    }

    public final boolean l() {
        return this.useSuperGColor_;
    }

    public final boolean m() {
        return (this.bitField0_ & 1) != 0;
    }

    public final boolean n() {
        return (this.bitField0_ & 256) != 0;
    }
}
