package com.android.launcher3.logger;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$HotseatContainer extends J implements InterfaceC0774q0 {
    private static final LauncherAtom$HotseatContainer DEFAULT_INSTANCE;
    public static final int INDEX_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private int index_;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setIndex(int i4) {
            copyOnWrite();
            LauncherAtom$HotseatContainer.a((LauncherAtom$HotseatContainer) this.instance, i4);
        }

        private Builder() {
            super(LauncherAtom$HotseatContainer.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$HotseatContainer launcherAtom$HotseatContainer = new LauncherAtom$HotseatContainer();
        DEFAULT_INSTANCE = launcherAtom$HotseatContainer;
        J.registerDefaultInstance(LauncherAtom$HotseatContainer.class, launcherAtom$HotseatContainer);
    }

    private LauncherAtom$HotseatContainer() {
    }

    public static void a(LauncherAtom$HotseatContainer launcherAtom$HotseatContainer, int i4) {
        launcherAtom$HotseatContainer.bitField0_ |= 1;
        launcherAtom$HotseatContainer.index_ = i4;
    }

    public static LauncherAtom$HotseatContainer getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001င\u0000", new Object[]{"bitField0_", "index_"});
            case 3:
                return new LauncherAtom$HotseatContainer();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$HotseatContainer.class) {
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

    public final int getIndex() {
        return this.index_;
    }

    public final boolean hasIndex() {
        return (this.bitField0_ & 1) != 0;
    }
}
