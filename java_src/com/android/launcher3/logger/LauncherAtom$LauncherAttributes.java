package com.android.launcher3.logger;

import com.google.protobuf.AbstractC0745c;
import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
import com.google.protobuf.K;
import com.google.protobuf.N;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class LauncherAtom$LauncherAttributes extends J implements InterfaceC0774q0 {
    private static final LauncherAtom$LauncherAttributes DEFAULT_INSTANCE;
    public static final int ITEM_ATTRIBUTES_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER;
    private N itemAttributes_ = K.f8552g;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void addItemAttributes(int i4) {
            copyOnWrite();
            LauncherAtom$LauncherAttributes.a((LauncherAtom$LauncherAttributes) this.instance, i4);
        }

        private Builder() {
            super(LauncherAtom$LauncherAttributes.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$LauncherAttributes launcherAtom$LauncherAttributes = new LauncherAtom$LauncherAttributes();
        DEFAULT_INSTANCE = launcherAtom$LauncherAttributes;
        J.registerDefaultInstance(LauncherAtom$LauncherAttributes.class, launcherAtom$LauncherAttributes);
    }

    private LauncherAtom$LauncherAttributes() {
    }

    public static void a(LauncherAtom$LauncherAttributes launcherAtom$LauncherAttributes, int i4) {
        N n4 = launcherAtom$LauncherAttributes.itemAttributes_;
        if (!((AbstractC0745c) n4).f8626d) {
            K k4 = (K) n4;
            int i5 = k4.f8554f;
            int i6 = i5 == 0 ? 10 : i5 * 2;
            if (i6 < i5) {
                throw new IllegalArgumentException();
            }
            launcherAtom$LauncherAttributes.itemAttributes_ = new K(Arrays.copyOf(k4.f8553e, i6), k4.f8554f);
        }
        ((K) launcherAtom$LauncherAttributes.itemAttributes_).i(i4);
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0016", new Object[]{"itemAttributes_"});
            case 3:
                return new LauncherAtom$LauncherAttributes();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$LauncherAttributes.class) {
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
