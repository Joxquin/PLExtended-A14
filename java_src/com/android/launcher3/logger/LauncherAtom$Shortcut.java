package com.android.launcher3.logger;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$Shortcut extends J implements InterfaceC0774q0 {
    private static final LauncherAtom$Shortcut DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SHORTCUT_ID_FIELD_NUMBER = 2;
    public static final int SHORTCUT_NAME_FIELD_NUMBER = 1;
    private int bitField0_;
    private String shortcutName_ = "";
    private String shortcutId_ = "";

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setShortcutId(String str) {
            copyOnWrite();
            LauncherAtom$Shortcut.a((LauncherAtom$Shortcut) this.instance, str);
        }

        public final void setShortcutName(String str) {
            copyOnWrite();
            LauncherAtom$Shortcut.b((LauncherAtom$Shortcut) this.instance, str);
        }

        private Builder() {
            super(LauncherAtom$Shortcut.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$Shortcut launcherAtom$Shortcut = new LauncherAtom$Shortcut();
        DEFAULT_INSTANCE = launcherAtom$Shortcut;
        J.registerDefaultInstance(LauncherAtom$Shortcut.class, launcherAtom$Shortcut);
    }

    private LauncherAtom$Shortcut() {
    }

    public static void a(LauncherAtom$Shortcut launcherAtom$Shortcut, String str) {
        launcherAtom$Shortcut.getClass();
        str.getClass();
        launcherAtom$Shortcut.bitField0_ |= 2;
        launcherAtom$Shortcut.shortcutId_ = str;
    }

    public static void b(LauncherAtom$Shortcut launcherAtom$Shortcut, String str) {
        launcherAtom$Shortcut.getClass();
        str.getClass();
        launcherAtom$Shortcut.bitField0_ |= 1;
        launcherAtom$Shortcut.shortcutName_ = str;
    }

    public static LauncherAtom$Shortcut getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"bitField0_", "shortcutName_", "shortcutId_"});
            case 3:
                return new LauncherAtom$Shortcut();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$Shortcut.class) {
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

    public final String getShortcutId() {
        return this.shortcutId_;
    }

    public final String getShortcutName() {
        return this.shortcutName_;
    }
}
