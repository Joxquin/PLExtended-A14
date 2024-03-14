package com.android.launcher3.logger;

import com.android.launcher3.logger.LauncherAtomExtensions$DeviceSearchResultContainer;
import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtomExtensions$ExtendedContainers extends J implements InterfaceC0774q0 {
    private static final LauncherAtomExtensions$ExtendedContainers DEFAULT_INSTANCE;
    public static final int DEVICE_SEARCH_RESULT_CONTAINER_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private int containerCase_ = 0;
    private Object container_;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setDeviceSearchResultContainer(LauncherAtomExtensions$DeviceSearchResultContainer launcherAtomExtensions$DeviceSearchResultContainer) {
            copyOnWrite();
            LauncherAtomExtensions$ExtendedContainers.a((LauncherAtomExtensions$ExtendedContainers) this.instance, launcherAtomExtensions$DeviceSearchResultContainer);
        }

        private Builder() {
            super(LauncherAtomExtensions$ExtendedContainers.DEFAULT_INSTANCE);
        }

        public final void setDeviceSearchResultContainer(LauncherAtomExtensions$DeviceSearchResultContainer.Builder builder) {
            copyOnWrite();
            LauncherAtomExtensions$ExtendedContainers.a((LauncherAtomExtensions$ExtendedContainers) this.instance, (LauncherAtomExtensions$DeviceSearchResultContainer) builder.build());
        }
    }

    /* loaded from: classes.dex */
    public enum ContainerCase {
        DEVICE_SEARCH_RESULT_CONTAINER(1),
        CONTAINER_NOT_SET(0);
        
        private final int value;

        ContainerCase(int i4) {
            this.value = i4;
        }

        public final int getNumber() {
            return this.value;
        }
    }

    static {
        LauncherAtomExtensions$ExtendedContainers launcherAtomExtensions$ExtendedContainers = new LauncherAtomExtensions$ExtendedContainers();
        DEFAULT_INSTANCE = launcherAtomExtensions$ExtendedContainers;
        J.registerDefaultInstance(LauncherAtomExtensions$ExtendedContainers.class, launcherAtomExtensions$ExtendedContainers);
    }

    private LauncherAtomExtensions$ExtendedContainers() {
    }

    public static void a(LauncherAtomExtensions$ExtendedContainers launcherAtomExtensions$ExtendedContainers, LauncherAtomExtensions$DeviceSearchResultContainer launcherAtomExtensions$DeviceSearchResultContainer) {
        launcherAtomExtensions$ExtendedContainers.getClass();
        launcherAtomExtensions$ExtendedContainers.container_ = launcherAtomExtensions$DeviceSearchResultContainer;
        launcherAtomExtensions$ExtendedContainers.containerCase_ = 1;
    }

    public static LauncherAtomExtensions$ExtendedContainers getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ြ\u0000", new Object[]{"container_", "containerCase_", "bitField0_", LauncherAtomExtensions$DeviceSearchResultContainer.class});
            case 3:
                return new LauncherAtomExtensions$ExtendedContainers();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtomExtensions$ExtendedContainers.class) {
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

    public final ContainerCase getContainerCase() {
        int i4 = this.containerCase_;
        if (i4 != 0) {
            if (i4 != 1) {
                return null;
            }
            return ContainerCase.DEVICE_SEARCH_RESULT_CONTAINER;
        }
        return ContainerCase.CONTAINER_NOT_SET;
    }

    public final LauncherAtomExtensions$DeviceSearchResultContainer getDeviceSearchResultContainer() {
        return this.containerCase_ == 1 ? (LauncherAtomExtensions$DeviceSearchResultContainer) this.container_ : LauncherAtomExtensions$DeviceSearchResultContainer.getDefaultInstance();
    }
}
