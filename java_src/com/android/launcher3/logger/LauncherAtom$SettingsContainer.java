package com.android.launcher3.logger;

import com.android.launcher3.logger.LauncherAtom$WidgetsContainer;
import com.google.protobuf.B0;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$SettingsContainer extends J implements InterfaceC0774q0 {
    private static final LauncherAtom$SettingsContainer DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER;

    static {
        LauncherAtom$SettingsContainer launcherAtom$SettingsContainer = new LauncherAtom$SettingsContainer();
        DEFAULT_INSTANCE = launcherAtom$SettingsContainer;
        J.registerDefaultInstance(LauncherAtom$SettingsContainer.class, launcherAtom$SettingsContainer);
    }

    private LauncherAtom$SettingsContainer() {
    }

    public static LauncherAtom$SettingsContainer getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0000", null);
            case 3:
                return new LauncherAtom$SettingsContainer();
            case 4:
                return new LauncherAtom$WidgetsContainer.Builder(1);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$SettingsContainer.class) {
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
