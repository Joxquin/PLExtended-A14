package com.android.launcher3.logger;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$WallpapersContainer extends J implements InterfaceC0774q0 {
    public static final int CARDINALITY_FIELD_NUMBER = 1;
    private static final LauncherAtom$WallpapersContainer DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private int cardinality_;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setCardinality$3(int i4) {
            copyOnWrite();
            LauncherAtom$WallpapersContainer.a((LauncherAtom$WallpapersContainer) this.instance, i4);
        }

        private Builder() {
            super(LauncherAtom$WallpapersContainer.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$WallpapersContainer launcherAtom$WallpapersContainer = new LauncherAtom$WallpapersContainer();
        DEFAULT_INSTANCE = launcherAtom$WallpapersContainer;
        J.registerDefaultInstance(LauncherAtom$WallpapersContainer.class, launcherAtom$WallpapersContainer);
    }

    private LauncherAtom$WallpapersContainer() {
    }

    public static void a(LauncherAtom$WallpapersContainer launcherAtom$WallpapersContainer, int i4) {
        launcherAtom$WallpapersContainer.bitField0_ |= 1;
        launcherAtom$WallpapersContainer.cardinality_ = i4;
    }

    public static LauncherAtom$WallpapersContainer getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static Builder newBuilder() {
        return (Builder) DEFAULT_INSTANCE.createBuilder();
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001င\u0000", new Object[]{"bitField0_", "cardinality_"});
            case 3:
                return new LauncherAtom$WallpapersContainer();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$WallpapersContainer.class) {
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
