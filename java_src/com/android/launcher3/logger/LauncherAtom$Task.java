package com.android.launcher3.logger;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$Task extends J implements InterfaceC0774q0 {
    public static final int COMPONENT_NAME_FIELD_NUMBER = 2;
    private static final LauncherAtom$Task DEFAULT_INSTANCE;
    public static final int INDEX_FIELD_NUMBER = 3;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private int index_;
    private String packageName_ = "";
    private String componentName_ = "";

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setComponentName$1(String str) {
            copyOnWrite();
            LauncherAtom$Task.a((LauncherAtom$Task) this.instance, str);
        }

        public final void setIndex$2(int i4) {
            copyOnWrite();
            LauncherAtom$Task.b((LauncherAtom$Task) this.instance, i4);
        }

        private Builder() {
            super(LauncherAtom$Task.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$Task launcherAtom$Task = new LauncherAtom$Task();
        DEFAULT_INSTANCE = launcherAtom$Task;
        J.registerDefaultInstance(LauncherAtom$Task.class, launcherAtom$Task);
    }

    private LauncherAtom$Task() {
    }

    public static void a(LauncherAtom$Task launcherAtom$Task, String str) {
        launcherAtom$Task.getClass();
        str.getClass();
        launcherAtom$Task.bitField0_ |= 2;
        launcherAtom$Task.componentName_ = str;
    }

    public static void b(LauncherAtom$Task launcherAtom$Task, int i4) {
        launcherAtom$Task.bitField0_ |= 4;
        launcherAtom$Task.index_ = i4;
    }

    public static LauncherAtom$Task getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003င\u0002", new Object[]{"bitField0_", "packageName_", "componentName_", "index_"});
            case 3:
                return new LauncherAtom$Task();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$Task.class) {
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

    public final int getIndex() {
        return this.index_;
    }

    public final String getPackageName() {
        return this.packageName_;
    }
}
