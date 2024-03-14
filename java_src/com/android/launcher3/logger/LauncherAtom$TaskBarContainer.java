package com.android.launcher3.logger;

import com.android.launcher3.logger.LauncherAtom$TaskSwitcherContainer;
import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$TaskBarContainer extends J implements InterfaceC0774q0 {
    public static final int CARDINALITY_FIELD_NUMBER = 2;
    private static final LauncherAtom$TaskBarContainer DEFAULT_INSTANCE;
    public static final int INDEX_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TASK_SWITCHER_CONTAINER_FIELD_NUMBER = 3;
    private int bitField0_;
    private int cardinality_;
    private int index_;
    private int parentContainerCase_ = 0;
    private Object parentContainer_;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setCardinality$2(int i4) {
            copyOnWrite();
            LauncherAtom$TaskBarContainer.a((LauncherAtom$TaskBarContainer) this.instance, i4);
        }

        public final void setIndex$3(int i4) {
            copyOnWrite();
            LauncherAtom$TaskBarContainer.b((LauncherAtom$TaskBarContainer) this.instance, i4);
        }

        public final void setTaskSwitcherContainer(LauncherAtom$TaskSwitcherContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$TaskBarContainer.c((LauncherAtom$TaskBarContainer) this.instance, (LauncherAtom$TaskSwitcherContainer) builder.build());
        }

        private Builder() {
            super(LauncherAtom$TaskBarContainer.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$TaskBarContainer launcherAtom$TaskBarContainer = new LauncherAtom$TaskBarContainer();
        DEFAULT_INSTANCE = launcherAtom$TaskBarContainer;
        J.registerDefaultInstance(LauncherAtom$TaskBarContainer.class, launcherAtom$TaskBarContainer);
    }

    private LauncherAtom$TaskBarContainer() {
    }

    public static void a(LauncherAtom$TaskBarContainer launcherAtom$TaskBarContainer, int i4) {
        launcherAtom$TaskBarContainer.bitField0_ |= 2;
        launcherAtom$TaskBarContainer.cardinality_ = i4;
    }

    public static void b(LauncherAtom$TaskBarContainer launcherAtom$TaskBarContainer, int i4) {
        launcherAtom$TaskBarContainer.bitField0_ |= 1;
        launcherAtom$TaskBarContainer.index_ = i4;
    }

    public static void c(LauncherAtom$TaskBarContainer launcherAtom$TaskBarContainer, LauncherAtom$TaskSwitcherContainer launcherAtom$TaskSwitcherContainer) {
        launcherAtom$TaskBarContainer.getClass();
        launcherAtom$TaskBarContainer.parentContainer_ = launcherAtom$TaskSwitcherContainer;
        launcherAtom$TaskBarContainer.parentContainerCase_ = 3;
    }

    public static LauncherAtom$TaskBarContainer getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0003\u0001\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003ြ\u0000", new Object[]{"parentContainer_", "parentContainerCase_", "bitField0_", "index_", "cardinality_", LauncherAtom$TaskSwitcherContainer.class});
            case 3:
                return new LauncherAtom$TaskBarContainer();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$TaskBarContainer.class) {
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

    public final int getCardinality() {
        return this.cardinality_;
    }

    public final int getIndex() {
        return this.index_;
    }
}
