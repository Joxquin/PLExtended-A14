package com.android.launcher3.logger;

import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$SearchResultContainer extends J implements InterfaceC0774q0 {
    public static final int ALL_APPS_CONTAINER_FIELD_NUMBER = 3;
    private static final LauncherAtom$SearchResultContainer DEFAULT_INSTANCE;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int QUERY_LENGTH_FIELD_NUMBER = 1;
    public static final int WORKSPACE_FIELD_NUMBER = 2;
    private int bitField0_;
    private int parentContainerCase_ = 0;
    private Object parentContainer_;
    private int queryLength_;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setAllAppsContainer$1(LauncherAtom$AllAppsContainer launcherAtom$AllAppsContainer) {
            copyOnWrite();
            LauncherAtom$SearchResultContainer.a((LauncherAtom$SearchResultContainer) this.instance, launcherAtom$AllAppsContainer);
        }

        public final void setQueryLength(int i4) {
            copyOnWrite();
            LauncherAtom$SearchResultContainer.b((LauncherAtom$SearchResultContainer) this.instance, i4);
        }

        public final void setWorkspace$2(LauncherAtom$WorkspaceContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$SearchResultContainer.c((LauncherAtom$SearchResultContainer) this.instance, (LauncherAtom$WorkspaceContainer) builder.build());
        }

        private Builder() {
            super(LauncherAtom$SearchResultContainer.DEFAULT_INSTANCE);
        }
    }

    /* loaded from: classes.dex */
    public enum ParentContainerCase {
        WORKSPACE(2),
        ALL_APPS_CONTAINER(3),
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
        LauncherAtom$SearchResultContainer launcherAtom$SearchResultContainer = new LauncherAtom$SearchResultContainer();
        DEFAULT_INSTANCE = launcherAtom$SearchResultContainer;
        J.registerDefaultInstance(LauncherAtom$SearchResultContainer.class, launcherAtom$SearchResultContainer);
    }

    private LauncherAtom$SearchResultContainer() {
    }

    public static void a(LauncherAtom$SearchResultContainer launcherAtom$SearchResultContainer, LauncherAtom$AllAppsContainer launcherAtom$AllAppsContainer) {
        launcherAtom$SearchResultContainer.getClass();
        launcherAtom$AllAppsContainer.getClass();
        launcherAtom$SearchResultContainer.parentContainer_ = launcherAtom$AllAppsContainer;
        launcherAtom$SearchResultContainer.parentContainerCase_ = 3;
    }

    public static void b(LauncherAtom$SearchResultContainer launcherAtom$SearchResultContainer, int i4) {
        launcherAtom$SearchResultContainer.bitField0_ |= 1;
        launcherAtom$SearchResultContainer.queryLength_ = i4;
    }

    public static void c(LauncherAtom$SearchResultContainer launcherAtom$SearchResultContainer, LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer) {
        launcherAtom$SearchResultContainer.getClass();
        launcherAtom$SearchResultContainer.parentContainer_ = launcherAtom$WorkspaceContainer;
        launcherAtom$SearchResultContainer.parentContainerCase_ = 2;
    }

    public static LauncherAtom$SearchResultContainer getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0003\u0001\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002ြ\u0000\u0003ြ\u0000", new Object[]{"parentContainer_", "parentContainerCase_", "bitField0_", "queryLength_", LauncherAtom$WorkspaceContainer.class, LauncherAtom$AllAppsContainer.class});
            case 3:
                return new LauncherAtom$SearchResultContainer();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$SearchResultContainer.class) {
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
            if (i4 != 2) {
                if (i4 != 3) {
                    return null;
                }
                return ParentContainerCase.ALL_APPS_CONTAINER;
            }
            return ParentContainerCase.WORKSPACE;
        }
        return ParentContainerCase.PARENTCONTAINER_NOT_SET;
    }

    public final int getQueryLength() {
        return this.queryLength_;
    }

    public final LauncherAtom$WorkspaceContainer getWorkspace() {
        return this.parentContainerCase_ == 2 ? (LauncherAtom$WorkspaceContainer) this.parentContainer_ : LauncherAtom$WorkspaceContainer.getDefaultInstance();
    }
}
