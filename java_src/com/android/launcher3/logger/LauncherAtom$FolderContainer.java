package com.android.launcher3.logger;

import com.android.launcher3.logger.LauncherAtom$HotseatContainer;
import com.android.launcher3.logger.LauncherAtom$TaskBarContainer;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$FolderContainer extends J implements InterfaceC0774q0 {
    private static final LauncherAtom$FolderContainer DEFAULT_INSTANCE;
    public static final int GRID_X_FIELD_NUMBER = 2;
    public static final int GRID_Y_FIELD_NUMBER = 3;
    public static final int HOTSEAT_FIELD_NUMBER = 5;
    public static final int PAGE_INDEX_FIELD_NUMBER = 1;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int TASKBAR_FIELD_NUMBER = 6;
    public static final int WORKSPACE_FIELD_NUMBER = 4;
    private int bitField0_;
    private Object parentContainer_;
    private int parentContainerCase_ = 0;
    private int pageIndex_ = -1;
    private int gridX_ = -1;
    private int gridY_ = -1;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void clearHotseat() {
            copyOnWrite();
            LauncherAtom$FolderContainer.a((LauncherAtom$FolderContainer) this.instance);
        }

        public final LauncherAtom$HotseatContainer getHotseat() {
            return ((LauncherAtom$FolderContainer) this.instance).getHotseat();
        }

        public final void setGridX(int i4) {
            copyOnWrite();
            LauncherAtom$FolderContainer.b((LauncherAtom$FolderContainer) this.instance, i4);
        }

        public final void setGridY(int i4) {
            copyOnWrite();
            LauncherAtom$FolderContainer.c((LauncherAtom$FolderContainer) this.instance, i4);
        }

        public final void setHotseat$1(LauncherAtom$HotseatContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$FolderContainer.d((LauncherAtom$FolderContainer) this.instance, (LauncherAtom$HotseatContainer) builder.build());
        }

        public final void setPageIndex(int i4) {
            copyOnWrite();
            LauncherAtom$FolderContainer.e((LauncherAtom$FolderContainer) this.instance, i4);
        }

        public final void setTaskbar(LauncherAtom$TaskBarContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$FolderContainer.f((LauncherAtom$FolderContainer) this.instance, (LauncherAtom$TaskBarContainer) builder.build());
        }

        public final void setWorkspace$1(LauncherAtom$WorkspaceContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$FolderContainer.g((LauncherAtom$FolderContainer) this.instance, (LauncherAtom$WorkspaceContainer) builder.build());
        }

        private Builder() {
            super(LauncherAtom$FolderContainer.DEFAULT_INSTANCE);
        }
    }

    /* loaded from: classes.dex */
    public enum ParentContainerCase {
        WORKSPACE(4),
        HOTSEAT(5),
        TASKBAR(6),
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
        LauncherAtom$FolderContainer launcherAtom$FolderContainer = new LauncherAtom$FolderContainer();
        DEFAULT_INSTANCE = launcherAtom$FolderContainer;
        J.registerDefaultInstance(LauncherAtom$FolderContainer.class, launcherAtom$FolderContainer);
    }

    private LauncherAtom$FolderContainer() {
    }

    public static void a(LauncherAtom$FolderContainer launcherAtom$FolderContainer) {
        if (launcherAtom$FolderContainer.parentContainerCase_ == 5) {
            launcherAtom$FolderContainer.parentContainerCase_ = 0;
            launcherAtom$FolderContainer.parentContainer_ = null;
        }
    }

    public static void b(LauncherAtom$FolderContainer launcherAtom$FolderContainer, int i4) {
        launcherAtom$FolderContainer.bitField0_ |= 2;
        launcherAtom$FolderContainer.gridX_ = i4;
    }

    public static void c(LauncherAtom$FolderContainer launcherAtom$FolderContainer, int i4) {
        launcherAtom$FolderContainer.bitField0_ |= 4;
        launcherAtom$FolderContainer.gridY_ = i4;
    }

    public static void d(LauncherAtom$FolderContainer launcherAtom$FolderContainer, LauncherAtom$HotseatContainer launcherAtom$HotseatContainer) {
        launcherAtom$FolderContainer.getClass();
        launcherAtom$FolderContainer.parentContainer_ = launcherAtom$HotseatContainer;
        launcherAtom$FolderContainer.parentContainerCase_ = 5;
    }

    public static void e(LauncherAtom$FolderContainer launcherAtom$FolderContainer, int i4) {
        launcherAtom$FolderContainer.bitField0_ |= 1;
        launcherAtom$FolderContainer.pageIndex_ = i4;
    }

    public static void f(LauncherAtom$FolderContainer launcherAtom$FolderContainer, LauncherAtom$TaskBarContainer launcherAtom$TaskBarContainer) {
        launcherAtom$FolderContainer.getClass();
        launcherAtom$FolderContainer.parentContainer_ = launcherAtom$TaskBarContainer;
        launcherAtom$FolderContainer.parentContainerCase_ = 6;
    }

    public static void g(LauncherAtom$FolderContainer launcherAtom$FolderContainer, LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer) {
        launcherAtom$FolderContainer.getClass();
        launcherAtom$FolderContainer.parentContainer_ = launcherAtom$WorkspaceContainer;
        launcherAtom$FolderContainer.parentContainerCase_ = 4;
    }

    public static LauncherAtom$FolderContainer getDefaultInstance() {
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u0006\u0001\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004ြ\u0000\u0005ြ\u0000\u0006ြ\u0000", new Object[]{"parentContainer_", "parentContainerCase_", "bitField0_", "pageIndex_", "gridX_", "gridY_", LauncherAtom$WorkspaceContainer.class, LauncherAtom$HotseatContainer.class, LauncherAtom$TaskBarContainer.class});
            case 3:
                return new LauncherAtom$FolderContainer();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$FolderContainer.class) {
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

    public final LauncherAtom$HotseatContainer getHotseat() {
        return this.parentContainerCase_ == 5 ? (LauncherAtom$HotseatContainer) this.parentContainer_ : LauncherAtom$HotseatContainer.getDefaultInstance();
    }

    public final int getPageIndex() {
        return this.pageIndex_;
    }

    public final ParentContainerCase getParentContainerCase() {
        int i4 = this.parentContainerCase_;
        if (i4 != 0) {
            if (i4 != 4) {
                if (i4 != 5) {
                    if (i4 != 6) {
                        return null;
                    }
                    return ParentContainerCase.TASKBAR;
                }
                return ParentContainerCase.HOTSEAT;
            }
            return ParentContainerCase.WORKSPACE;
        }
        return ParentContainerCase.PARENTCONTAINER_NOT_SET;
    }

    public final LauncherAtom$WorkspaceContainer getWorkspace() {
        return this.parentContainerCase_ == 4 ? (LauncherAtom$WorkspaceContainer) this.parentContainer_ : LauncherAtom$WorkspaceContainer.getDefaultInstance();
    }

    public final boolean hasHotseat() {
        return this.parentContainerCase_ == 5;
    }
}
