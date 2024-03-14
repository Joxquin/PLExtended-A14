package com.android.launcher3.logger;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$WidgetsContainer extends J implements InterfaceC0774q0 {
    private static final LauncherAtom$WidgetsContainer DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(int i4) {
            super(LauncherAtom$WidgetsContainer.DEFAULT_INSTANCE);
            LauncherAtom$SettingsContainer launcherAtom$SettingsContainer;
            LauncherAtom$ShortcutsContainer launcherAtom$ShortcutsContainer;
            if (i4 == 1) {
                launcherAtom$SettingsContainer = LauncherAtom$SettingsContainer.DEFAULT_INSTANCE;
                super(launcherAtom$SettingsContainer);
            } else if (i4 != 2) {
            } else {
                launcherAtom$ShortcutsContainer = LauncherAtom$ShortcutsContainer.DEFAULT_INSTANCE;
                super(launcherAtom$ShortcutsContainer);
            }
        }
    }

    static {
        LauncherAtom$WidgetsContainer launcherAtom$WidgetsContainer = new LauncherAtom$WidgetsContainer();
        DEFAULT_INSTANCE = launcherAtom$WidgetsContainer;
        J.registerDefaultInstance(LauncherAtom$WidgetsContainer.class, launcherAtom$WidgetsContainer);
    }

    private LauncherAtom$WidgetsContainer() {
    }

    public static LauncherAtom$WidgetsContainer getDefaultInstance() {
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
                return new LauncherAtom$WidgetsContainer();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$WidgetsContainer.class) {
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
