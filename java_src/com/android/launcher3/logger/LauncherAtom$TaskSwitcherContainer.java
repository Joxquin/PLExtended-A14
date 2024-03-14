package com.android.launcher3.logger;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$TaskSwitcherContainer extends J implements InterfaceC0774q0 {
    private static final LauncherAtom$TaskSwitcherContainer DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        private Builder() {
            super(LauncherAtom$TaskSwitcherContainer.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$TaskSwitcherContainer launcherAtom$TaskSwitcherContainer = new LauncherAtom$TaskSwitcherContainer();
        DEFAULT_INSTANCE = launcherAtom$TaskSwitcherContainer;
        J.registerDefaultInstance(LauncherAtom$TaskSwitcherContainer.class, launcherAtom$TaskSwitcherContainer);
    }

    private LauncherAtom$TaskSwitcherContainer() {
    }

    public static LauncherAtom$TaskSwitcherContainer getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0000", null);
            case 3:
                return new LauncherAtom$TaskSwitcherContainer();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$TaskSwitcherContainer.class) {
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
