package com.android.launcher3.logger;

import com.android.launcher3.logger.LauncherAtom$TaskBarContainer;
import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$AllAppsContainer extends J implements InterfaceC0774q0 {
    private static final LauncherAtom$AllAppsContainer DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TASKBAR_CONTAINER_FIELD_NUMBER = 1;
    private int bitField0_;
    private int parentContainerCase_ = 0;
    private Object parentContainer_;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setTaskbarContainer(LauncherAtom$TaskBarContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$AllAppsContainer.a((LauncherAtom$AllAppsContainer) this.instance, (LauncherAtom$TaskBarContainer) builder.build());
        }

        private Builder() {
            super(LauncherAtom$AllAppsContainer.DEFAULT_INSTANCE);
        }
    }

    /* loaded from: classes.dex */
    public enum ParentContainerCase {
        TASKBAR_CONTAINER(1),
        PARENTCONTAINER_NOT_SET(0);
        
        private final int value;

        ParentContainerCase(int i4) {
            this.value = i4;
        }

        public final int getNumber() {
            return this.value;
        }
    }

    static {
        LauncherAtom$AllAppsContainer launcherAtom$AllAppsContainer = new LauncherAtom$AllAppsContainer();
        DEFAULT_INSTANCE = launcherAtom$AllAppsContainer;
        J.registerDefaultInstance(LauncherAtom$AllAppsContainer.class, launcherAtom$AllAppsContainer);
    }

    private LauncherAtom$AllAppsContainer() {
    }

    public static void a(LauncherAtom$AllAppsContainer launcherAtom$AllAppsContainer, LauncherAtom$TaskBarContainer launcherAtom$TaskBarContainer) {
        launcherAtom$AllAppsContainer.getClass();
        launcherAtom$AllAppsContainer.parentContainer_ = launcherAtom$TaskBarContainer;
        launcherAtom$AllAppsContainer.parentContainerCase_ = 1;
    }

    public static LauncherAtom$AllAppsContainer getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ြ\u0000", new Object[]{"parentContainer_", "parentContainerCase_", "bitField0_", LauncherAtom$TaskBarContainer.class});
            case 3:
                return new LauncherAtom$AllAppsContainer();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$AllAppsContainer.class) {
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

    public final ParentContainerCase getParentContainerCase() {
        int i4 = this.parentContainerCase_;
        if (i4 != 0) {
            if (i4 != 1) {
                return null;
            }
            return ParentContainerCase.TASKBAR_CONTAINER;
        }
        return ParentContainerCase.PARENTCONTAINER_NOT_SET;
    }
}
