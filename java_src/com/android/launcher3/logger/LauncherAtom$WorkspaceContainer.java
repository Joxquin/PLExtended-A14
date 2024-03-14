package com.android.launcher3.logger;

import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$WorkspaceContainer extends J implements InterfaceC0774q0 {
    private static final LauncherAtom$WorkspaceContainer DEFAULT_INSTANCE;
    public static final int GRID_X_FIELD_NUMBER = 2;
    public static final int GRID_Y_FIELD_NUMBER = 3;
    public static final int PAGE_INDEX_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER;
    private int bitField0_;
    private int pageIndex_ = -2;
    private int gridX_ = -1;
    private int gridY_ = -1;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setGridX$1(int i4) {
            copyOnWrite();
            LauncherAtom$WorkspaceContainer.a((LauncherAtom$WorkspaceContainer) this.instance, i4);
        }

        public final void setGridY$1(int i4) {
            copyOnWrite();
            LauncherAtom$WorkspaceContainer.b((LauncherAtom$WorkspaceContainer) this.instance, i4);
        }

        public final void setPageIndex$1(int i4) {
            copyOnWrite();
            LauncherAtom$WorkspaceContainer.c((LauncherAtom$WorkspaceContainer) this.instance, i4);
        }

        private Builder() {
            super(LauncherAtom$WorkspaceContainer.DEFAULT_INSTANCE);
        }
    }

    static {
        LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer = new LauncherAtom$WorkspaceContainer();
        DEFAULT_INSTANCE = launcherAtom$WorkspaceContainer;
        J.registerDefaultInstance(LauncherAtom$WorkspaceContainer.class, launcherAtom$WorkspaceContainer);
    }

    private LauncherAtom$WorkspaceContainer() {
    }

    public static void a(LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer, int i4) {
        launcherAtom$WorkspaceContainer.bitField0_ |= 2;
        launcherAtom$WorkspaceContainer.gridX_ = i4;
    }

    public static void b(LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer, int i4) {
        launcherAtom$WorkspaceContainer.bitField0_ |= 4;
        launcherAtom$WorkspaceContainer.gridY_ = i4;
    }

    public static void c(LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer, int i4) {
        launcherAtom$WorkspaceContainer.bitField0_ |= 1;
        launcherAtom$WorkspaceContainer.pageIndex_ = i4;
    }

    public static LauncherAtom$WorkspaceContainer getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"bitField0_", "pageIndex_", "gridX_", "gridY_"});
            case 3:
                return new LauncherAtom$WorkspaceContainer();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$WorkspaceContainer.class) {
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

    public final int getGridX() {
        return this.gridX_;
    }

    public final int getGridY() {
        return this.gridY_;
    }

    public final int getPageIndex() {
        return this.pageIndex_;
    }
}
