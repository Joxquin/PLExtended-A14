package com.android.launcher3.logger;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$Slice extends J implements InterfaceC0774q0 {
    private static final LauncherAtom$Slice DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int URI_FIELD_NUMBER = 1;
    private int bitField0_;
    private String uri_ = "";

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setUri(String str) {
            copyOnWrite();
            LauncherAtom$Slice.a((LauncherAtom$Slice) this.instance, str);
        }

        private Builder() {
            super(LauncherAtom$Slice.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$Slice launcherAtom$Slice = new LauncherAtom$Slice();
        DEFAULT_INSTANCE = launcherAtom$Slice;
        J.registerDefaultInstance(LauncherAtom$Slice.class, launcherAtom$Slice);
    }

    private LauncherAtom$Slice() {
    }

    public static void a(LauncherAtom$Slice launcherAtom$Slice, String str) {
        launcherAtom$Slice.getClass();
        str.getClass();
        launcherAtom$Slice.bitField0_ |= 1;
        launcherAtom$Slice.uri_ = str;
    }

    public static LauncherAtom$Slice getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"bitField0_", "uri_"});
            case 3:
                return new LauncherAtom$Slice();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$Slice.class) {
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

    public final String getUri() {
        return this.uri_;
    }
}
