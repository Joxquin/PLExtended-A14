package com.android.launcher3.logger;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$Widget extends J implements InterfaceC0774q0 {
    public static final int APP_WIDGET_ID_FIELD_NUMBER = 3;
    public static final int COMPONENT_NAME_FIELD_NUMBER = 5;
    private static final LauncherAtom$Widget DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 4;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int SPAN_X_FIELD_NUMBER = 1;
    public static final int SPAN_Y_FIELD_NUMBER = 2;
    public static final int WIDGET_FEATURES_FIELD_NUMBER = 6;
    private int appWidgetId_;
    private int bitField0_;
    private int widgetFeatures_;
    private int spanX_ = 1;
    private int spanY_ = 1;
    private String packageName_ = "";
    private String componentName_ = "";

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setComponentName$2(String str) {
            copyOnWrite();
            LauncherAtom$Widget.a((LauncherAtom$Widget) this.instance, str);
        }

        public final void setPackageName$2(String str) {
            copyOnWrite();
            LauncherAtom$Widget.b((LauncherAtom$Widget) this.instance, str);
        }

        public final void setSpanX(int i4) {
            copyOnWrite();
            LauncherAtom$Widget.c((LauncherAtom$Widget) this.instance, i4);
        }

        public final void setSpanY(int i4) {
            copyOnWrite();
            LauncherAtom$Widget.d((LauncherAtom$Widget) this.instance, i4);
        }

        public final void setWidgetFeatures(int i4) {
            copyOnWrite();
            LauncherAtom$Widget.e((LauncherAtom$Widget) this.instance, i4);
        }

        private Builder() {
            super(LauncherAtom$Widget.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$Widget launcherAtom$Widget = new LauncherAtom$Widget();
        DEFAULT_INSTANCE = launcherAtom$Widget;
        J.registerDefaultInstance(LauncherAtom$Widget.class, launcherAtom$Widget);
    }

    private LauncherAtom$Widget() {
    }

    public static void a(LauncherAtom$Widget launcherAtom$Widget, String str) {
        launcherAtom$Widget.getClass();
        str.getClass();
        launcherAtom$Widget.bitField0_ |= 16;
        launcherAtom$Widget.componentName_ = str;
    }

    public static void b(LauncherAtom$Widget launcherAtom$Widget, String str) {
        launcherAtom$Widget.getClass();
        str.getClass();
        launcherAtom$Widget.bitField0_ |= 8;
        launcherAtom$Widget.packageName_ = str;
    }

    public static void c(LauncherAtom$Widget launcherAtom$Widget, int i4) {
        launcherAtom$Widget.bitField0_ |= 1;
        launcherAtom$Widget.spanX_ = i4;
    }

    public static void d(LauncherAtom$Widget launcherAtom$Widget, int i4) {
        launcherAtom$Widget.bitField0_ |= 2;
        launcherAtom$Widget.spanY_ = i4;
    }

    public static void e(LauncherAtom$Widget launcherAtom$Widget, int i4) {
        launcherAtom$Widget.bitField0_ |= 32;
        launcherAtom$Widget.widgetFeatures_ = i4;
    }

    public static LauncherAtom$Widget getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006င\u0005", new Object[]{"bitField0_", "spanX_", "spanY_", "appWidgetId_", "packageName_", "componentName_", "widgetFeatures_"});
            case 3:
                return new LauncherAtom$Widget();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$Widget.class) {
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

    public final int getSpanX() {
        return this.spanX_;
    }

    public final int getSpanY() {
        return this.spanY_;
    }

    public final int getWidgetFeatures() {
        return this.widgetFeatures_;
    }
}
