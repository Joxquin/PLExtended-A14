package com.android.launcher3.logger;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$Application extends J implements InterfaceC0774q0 {
    public static final int COMPONENT_NAME_FIELD_NUMBER = 2;
    private static final LauncherAtom$Application DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private String packageName_ = "";
    private String componentName_ = "";

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setComponentName(String str) {
            copyOnWrite();
            LauncherAtom$Application.a((LauncherAtom$Application) this.instance, str);
        }

        public final void setPackageName(String str) {
            copyOnWrite();
            LauncherAtom$Application.b((LauncherAtom$Application) this.instance, str);
        }

        private Builder() {
            super(LauncherAtom$Application.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$Application launcherAtom$Application = new LauncherAtom$Application();
        DEFAULT_INSTANCE = launcherAtom$Application;
        J.registerDefaultInstance(LauncherAtom$Application.class, launcherAtom$Application);
    }

    private LauncherAtom$Application() {
    }

    public static void a(LauncherAtom$Application launcherAtom$Application, String str) {
        launcherAtom$Application.getClass();
        str.getClass();
        launcherAtom$Application.bitField0_ |= 2;
        launcherAtom$Application.componentName_ = str;
    }

    public static void b(LauncherAtom$Application launcherAtom$Application, String str) {
        launcherAtom$Application.getClass();
        str.getClass();
        launcherAtom$Application.bitField0_ |= 1;
        launcherAtom$Application.packageName_ = str;
    }

    public static LauncherAtom$Application getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"bitField0_", "packageName_", "componentName_"});
            case 3:
                return new LauncherAtom$Application();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$Application.class) {
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

    public final String getComponentName() {
        return this.componentName_;
    }

    public final String getPackageName() {
        return this.packageName_;
    }
}
