package com.android.launcher3.logger;

import com.android.launcher3.logger.LauncherAtom$TaskBarContainer;
import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$PredictionContainer extends J implements InterfaceC0774q0 {
    private static final LauncherAtom$PredictionContainer DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TASKBAR_CONTAINER_FIELD_NUMBER = 1;
    private int bitField0_;
    private int parentContainerCase_ = 0;
    private Object parentContainer_;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setTaskbarContainer$1(LauncherAtom$TaskBarContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$PredictionContainer.a((LauncherAtom$PredictionContainer) this.instance, (LauncherAtom$TaskBarContainer) builder.build());
        }

        private Builder() {
            super(LauncherAtom$PredictionContainer.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$PredictionContainer launcherAtom$PredictionContainer = new LauncherAtom$PredictionContainer();
        DEFAULT_INSTANCE = launcherAtom$PredictionContainer;
        J.registerDefaultInstance(LauncherAtom$PredictionContainer.class, launcherAtom$PredictionContainer);
    }

    private LauncherAtom$PredictionContainer() {
    }

    public static void a(LauncherAtom$PredictionContainer launcherAtom$PredictionContainer, LauncherAtom$TaskBarContainer launcherAtom$TaskBarContainer) {
        launcherAtom$PredictionContainer.getClass();
        launcherAtom$PredictionContainer.parentContainer_ = launcherAtom$TaskBarContainer;
        launcherAtom$PredictionContainer.parentContainerCase_ = 1;
    }

    public static LauncherAtom$PredictionContainer getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    @Override // com.google.protobuf.J
    public final Object dynamicMethod(GeneratedMessageLite$MethodToInvoke generatedMessageLite$MethodToInvoke) {
        switch (generatedMessageLite$MethodToInvoke.ordinal()) {
            case 0:
                return (byte) 1;
            case 1:
                return null;
            case 2:
                return new B0(DEFAULT_INSTANCE, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ြ\u0000", new Object[]{"parentContainer_", "parentContainerCase_", "bitField0_", LauncherAtom$TaskBarContainer.class});
            case 3:
                return new LauncherAtom$PredictionContainer();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$PredictionContainer.class) {
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
