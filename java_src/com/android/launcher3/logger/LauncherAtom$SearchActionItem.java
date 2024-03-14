package com.android.launcher3.logger;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$SearchActionItem extends J implements InterfaceC0774q0 {
    private static final LauncherAtom$SearchActionItem DEFAULT_INSTANCE;
    public static final int PACKAGE_NAME_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TITLE_FIELD_NUMBER = 2;
    private int bitField0_;
    private String packageName_ = "";
    private String title_ = "";

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setPackageName$1(String str) {
            copyOnWrite();
            LauncherAtom$SearchActionItem.a((LauncherAtom$SearchActionItem) this.instance, str);
        }

        public final void setTitle$1(String str) {
            copyOnWrite();
            LauncherAtom$SearchActionItem.b((LauncherAtom$SearchActionItem) this.instance, str);
        }

        private Builder() {
            super(LauncherAtom$SearchActionItem.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$SearchActionItem launcherAtom$SearchActionItem = new LauncherAtom$SearchActionItem();
        DEFAULT_INSTANCE = launcherAtom$SearchActionItem;
        J.registerDefaultInstance(LauncherAtom$SearchActionItem.class, launcherAtom$SearchActionItem);
    }

    private LauncherAtom$SearchActionItem() {
    }

    public static void a(LauncherAtom$SearchActionItem launcherAtom$SearchActionItem, String str) {
        launcherAtom$SearchActionItem.getClass();
        str.getClass();
        launcherAtom$SearchActionItem.bitField0_ |= 1;
        launcherAtom$SearchActionItem.packageName_ = str;
    }

    public static void b(LauncherAtom$SearchActionItem launcherAtom$SearchActionItem, String str) {
        launcherAtom$SearchActionItem.getClass();
        str.getClass();
        launcherAtom$SearchActionItem.bitField0_ |= 2;
        launcherAtom$SearchActionItem.title_ = str;
    }

    public static LauncherAtom$SearchActionItem getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"bitField0_", "packageName_", "title_"});
            case 3:
                return new LauncherAtom$SearchActionItem();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$SearchActionItem.class) {
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

    public final String getPackageName() {
        return this.packageName_;
    }

    public final String getTitle() {
        return this.title_;
    }
}
