package com.android.launcher3.logger;

import com.android.launcher3.logger.LauncherAtom$AllAppsContainer;
import com.android.launcher3.logger.LauncherAtom$FolderContainer;
import com.android.launcher3.logger.LauncherAtom$HotseatContainer;
import com.android.launcher3.logger.LauncherAtom$PredictedHotseatContainer;
import com.android.launcher3.logger.LauncherAtom$PredictionContainer;
import com.android.launcher3.logger.LauncherAtom$SearchResultContainer;
import com.android.launcher3.logger.LauncherAtom$TaskBarContainer;
import com.android.launcher3.logger.LauncherAtom$WallpapersContainer;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logger.LauncherAtomExtensions$ExtendedContainers;
import com.google.protobuf.B0;
import com.google.protobuf.E;
import com.google.protobuf.F;
import com.google.protobuf.GeneratedMessageLite$MethodToInvoke;
import com.google.protobuf.InterfaceC0774q0;
import com.google.protobuf.InterfaceC0787x0;
import com.google.protobuf.J;
/* loaded from: classes.dex */
public final class LauncherAtom$ContainerInfo extends J implements InterfaceC0774q0 {
    public static final int ALL_APPS_CONTAINER_FIELD_NUMBER = 4;
    private static final LauncherAtom$ContainerInfo DEFAULT_INSTANCE;
    public static final int EXTENDED_CONTAINERS_FIELD_NUMBER = 20;
    public static final int FOLDER_FIELD_NUMBER = 3;
    public static final int HOTSEAT_FIELD_NUMBER = 2;
    private static volatile InterfaceC0787x0 PARSER = null;
    public static final int PREDICTED_HOTSEAT_CONTAINER_FIELD_NUMBER = 10;
    public static final int PREDICTION_CONTAINER_FIELD_NUMBER = 6;
    public static final int SEARCH_RESULT_CONTAINER_FIELD_NUMBER = 7;
    public static final int SETTINGS_CONTAINER_FIELD_NUMBER = 9;
    public static final int SHORTCUTS_CONTAINER_FIELD_NUMBER = 8;
    public static final int TASK_BAR_CONTAINER_FIELD_NUMBER = 12;
    public static final int TASK_SWITCHER_CONTAINER_FIELD_NUMBER = 11;
    public static final int WALLPAPERS_CONTAINER_FIELD_NUMBER = 13;
    public static final int WIDGETS_CONTAINER_FIELD_NUMBER = 5;
    public static final int WORKSPACE_FIELD_NUMBER = 1;
    private int bitField0_;
    private int containerCase_ = 0;
    private Object container_;

    /* loaded from: classes.dex */
    public final class Builder extends E implements InterfaceC0774q0 {
        public /* synthetic */ Builder(int i4) {
            this();
        }

        public final void setAllAppsContainer(LauncherAtom$AllAppsContainer launcherAtom$AllAppsContainer) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.a((LauncherAtom$ContainerInfo) this.instance, launcherAtom$AllAppsContainer);
        }

        public final void setExtendedContainers(LauncherAtomExtensions$ExtendedContainers launcherAtomExtensions$ExtendedContainers) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.b((LauncherAtom$ContainerInfo) this.instance, launcherAtomExtensions$ExtendedContainers);
        }

        public final void setFolder(LauncherAtom$FolderContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.c((LauncherAtom$ContainerInfo) this.instance, (LauncherAtom$FolderContainer) builder.build());
        }

        public final void setHotseat(LauncherAtom$HotseatContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.d((LauncherAtom$ContainerInfo) this.instance, (LauncherAtom$HotseatContainer) builder.build());
        }

        public final void setPredictedHotseatContainer(LauncherAtom$PredictedHotseatContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.e((LauncherAtom$ContainerInfo) this.instance, (LauncherAtom$PredictedHotseatContainer) builder.build());
        }

        public final void setPredictionContainer(LauncherAtom$PredictionContainer launcherAtom$PredictionContainer) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.f((LauncherAtom$ContainerInfo) this.instance, launcherAtom$PredictionContainer);
        }

        public final void setSearchResultContainer(LauncherAtom$SearchResultContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.g((LauncherAtom$ContainerInfo) this.instance, (LauncherAtom$SearchResultContainer) builder.build());
        }

        public final void setSettingsContainer(LauncherAtom$SettingsContainer launcherAtom$SettingsContainer) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.h((LauncherAtom$ContainerInfo) this.instance, launcherAtom$SettingsContainer);
        }

        public final void setShortcutsContainer(LauncherAtom$ShortcutsContainer launcherAtom$ShortcutsContainer) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.i((LauncherAtom$ContainerInfo) this.instance, launcherAtom$ShortcutsContainer);
        }

        public final void setTaskBarContainer(LauncherAtom$TaskBarContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.j((LauncherAtom$ContainerInfo) this.instance, (LauncherAtom$TaskBarContainer) builder.build());
        }

        public final void setTaskSwitcherContainer(LauncherAtom$TaskSwitcherContainer launcherAtom$TaskSwitcherContainer) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.k((LauncherAtom$ContainerInfo) this.instance, launcherAtom$TaskSwitcherContainer);
        }

        public final void setWallpapersContainer(LauncherAtom$WallpapersContainer launcherAtom$WallpapersContainer) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.l((LauncherAtom$ContainerInfo) this.instance, launcherAtom$WallpapersContainer);
        }

        public final void setWidgetsContainer(LauncherAtom$WidgetsContainer launcherAtom$WidgetsContainer) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.m((LauncherAtom$ContainerInfo) this.instance, launcherAtom$WidgetsContainer);
        }

        public final void setWorkspace(LauncherAtom$WorkspaceContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.n((LauncherAtom$ContainerInfo) this.instance, (LauncherAtom$WorkspaceContainer) builder.build());
        }

        private Builder() {
            super(LauncherAtom$ContainerInfo.DEFAULT_INSTANCE);
        }

        public final void setAllAppsContainer(LauncherAtom$AllAppsContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.a((LauncherAtom$ContainerInfo) this.instance, (LauncherAtom$AllAppsContainer) builder.build());
        }

        public final void setExtendedContainers(LauncherAtomExtensions$ExtendedContainers.Builder builder) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.b((LauncherAtom$ContainerInfo) this.instance, (LauncherAtomExtensions$ExtendedContainers) builder.build());
        }

        public final void setPredictionContainer(LauncherAtom$PredictionContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.f((LauncherAtom$ContainerInfo) this.instance, (LauncherAtom$PredictionContainer) builder.build());
        }

        public final void setWallpapersContainer(LauncherAtom$WallpapersContainer.Builder builder) {
            copyOnWrite();
            LauncherAtom$ContainerInfo.l((LauncherAtom$ContainerInfo) this.instance, (LauncherAtom$WallpapersContainer) builder.build());
        }
    }

    /* loaded from: classes.dex */
    public enum ContainerCase {
        WORKSPACE(1),
        HOTSEAT(2),
        FOLDER(3),
        ALL_APPS_CONTAINER(4),
        WIDGETS_CONTAINER(5),
        PREDICTION_CONTAINER(6),
        SEARCH_RESULT_CONTAINER(7),
        SHORTCUTS_CONTAINER(8),
        SETTINGS_CONTAINER(9),
        PREDICTED_HOTSEAT_CONTAINER(10),
        TASK_SWITCHER_CONTAINER(11),
        TASK_BAR_CONTAINER(12),
        WALLPAPERS_CONTAINER(13),
        EXTENDED_CONTAINERS(20),
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
        LauncherAtom$ContainerInfo launcherAtom$ContainerInfo = new LauncherAtom$ContainerInfo();
        DEFAULT_INSTANCE = launcherAtom$ContainerInfo;
        J.registerDefaultInstance(LauncherAtom$ContainerInfo.class, launcherAtom$ContainerInfo);
    }

    private LauncherAtom$ContainerInfo() {
    }

    public static void a(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$AllAppsContainer launcherAtom$AllAppsContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$AllAppsContainer.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$AllAppsContainer;
        launcherAtom$ContainerInfo.containerCase_ = 4;
    }

    public static void b(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtomExtensions$ExtendedContainers launcherAtomExtensions$ExtendedContainers) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtomExtensions$ExtendedContainers.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtomExtensions$ExtendedContainers;
        launcherAtom$ContainerInfo.containerCase_ = 20;
    }

    public static void c(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$FolderContainer launcherAtom$FolderContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$FolderContainer;
        launcherAtom$ContainerInfo.containerCase_ = 3;
    }

    public static void d(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$HotseatContainer launcherAtom$HotseatContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$HotseatContainer;
        launcherAtom$ContainerInfo.containerCase_ = 2;
    }

    public static void e(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$PredictedHotseatContainer launcherAtom$PredictedHotseatContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$PredictedHotseatContainer;
        launcherAtom$ContainerInfo.containerCase_ = 10;
    }

    public static void f(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$PredictionContainer launcherAtom$PredictionContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$PredictionContainer.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$PredictionContainer;
        launcherAtom$ContainerInfo.containerCase_ = 6;
    }

    public static void g(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$SearchResultContainer launcherAtom$SearchResultContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$SearchResultContainer;
        launcherAtom$ContainerInfo.containerCase_ = 7;
    }

    public static LauncherAtom$ContainerInfo getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static void h(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$SettingsContainer launcherAtom$SettingsContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$SettingsContainer.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$SettingsContainer;
        launcherAtom$ContainerInfo.containerCase_ = 9;
    }

    public static void i(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$ShortcutsContainer launcherAtom$ShortcutsContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$ShortcutsContainer.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$ShortcutsContainer;
        launcherAtom$ContainerInfo.containerCase_ = 8;
    }

    public static void j(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$TaskBarContainer launcherAtom$TaskBarContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$TaskBarContainer;
        launcherAtom$ContainerInfo.containerCase_ = 12;
    }

    public static void k(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$TaskSwitcherContainer launcherAtom$TaskSwitcherContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$TaskSwitcherContainer.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$TaskSwitcherContainer;
        launcherAtom$ContainerInfo.containerCase_ = 11;
    }

    public static void l(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$WallpapersContainer launcherAtom$WallpapersContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$WallpapersContainer.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$WallpapersContainer;
        launcherAtom$ContainerInfo.containerCase_ = 13;
    }

    public static void m(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$WidgetsContainer launcherAtom$WidgetsContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$WidgetsContainer.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$WidgetsContainer;
        launcherAtom$ContainerInfo.containerCase_ = 5;
    }

    public static void n(LauncherAtom$ContainerInfo launcherAtom$ContainerInfo, LauncherAtom$WorkspaceContainer launcherAtom$WorkspaceContainer) {
        launcherAtom$ContainerInfo.getClass();
        launcherAtom$ContainerInfo.container_ = launcherAtom$WorkspaceContainer;
        launcherAtom$ContainerInfo.containerCase_ = 1;
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
                return new B0(DEFAULT_INSTANCE, "\u0001\u000e\u0001\u0001\u0001\u0014\u000e\u0000\u0000\u0000\u0001ြ\u0000\u0002ြ\u0000\u0003ြ\u0000\u0004ြ\u0000\u0005ြ\u0000\u0006ြ\u0000\u0007ြ\u0000\bြ\u0000\tြ\u0000\nြ\u0000\u000bြ\u0000\fြ\u0000\rြ\u0000\u0014ြ\u0000", new Object[]{"container_", "containerCase_", "bitField0_", LauncherAtom$WorkspaceContainer.class, LauncherAtom$HotseatContainer.class, LauncherAtom$FolderContainer.class, LauncherAtom$AllAppsContainer.class, LauncherAtom$WidgetsContainer.class, LauncherAtom$PredictionContainer.class, LauncherAtom$SearchResultContainer.class, LauncherAtom$ShortcutsContainer.class, LauncherAtom$SettingsContainer.class, LauncherAtom$PredictedHotseatContainer.class, LauncherAtom$TaskSwitcherContainer.class, LauncherAtom$TaskBarContainer.class, LauncherAtom$WallpapersContainer.class, LauncherAtomExtensions$ExtendedContainers.class});
            case 3:
                return new LauncherAtom$ContainerInfo();
            case 4:
                return new Builder(0);
            case 5:
                return DEFAULT_INSTANCE;
            case 6:
                InterfaceC0787x0 interfaceC0787x0 = PARSER;
                if (interfaceC0787x0 == null) {
                    synchronized (LauncherAtom$ContainerInfo.class) {
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

    public final LauncherAtom$AllAppsContainer getAllAppsContainer() {
        return this.containerCase_ == 4 ? (LauncherAtom$AllAppsContainer) this.container_ : LauncherAtom$AllAppsContainer.getDefaultInstance();
    }

    public final ContainerCase getContainerCase() {
        int i4 = this.containerCase_;
        if (i4 != 20) {
            switch (i4) {
                case 0:
                    return ContainerCase.CONTAINER_NOT_SET;
                case 1:
                    return ContainerCase.WORKSPACE;
                case 2:
                    return ContainerCase.HOTSEAT;
                case 3:
                    return ContainerCase.FOLDER;
                case 4:
                    return ContainerCase.ALL_APPS_CONTAINER;
                case 5:
                    return ContainerCase.WIDGETS_CONTAINER;
                case 6:
                    return ContainerCase.PREDICTION_CONTAINER;
                case 7:
                    return ContainerCase.SEARCH_RESULT_CONTAINER;
                case 8:
                    return ContainerCase.SHORTCUTS_CONTAINER;
                case 9:
                    return ContainerCase.SETTINGS_CONTAINER;
                case 10:
                    return ContainerCase.PREDICTED_HOTSEAT_CONTAINER;
                case 11:
                    return ContainerCase.TASK_SWITCHER_CONTAINER;
                case 12:
                    return ContainerCase.TASK_BAR_CONTAINER;
                case 13:
                    return ContainerCase.WALLPAPERS_CONTAINER;
                default:
                    return null;
            }
        }
        return ContainerCase.EXTENDED_CONTAINERS;
    }

    public final LauncherAtomExtensions$ExtendedContainers getExtendedContainers() {
        return this.containerCase_ == 20 ? (LauncherAtomExtensions$ExtendedContainers) this.container_ : LauncherAtomExtensions$ExtendedContainers.getDefaultInstance();
    }

    public final LauncherAtom$FolderContainer getFolder() {
        return this.containerCase_ == 3 ? (LauncherAtom$FolderContainer) this.container_ : LauncherAtom$FolderContainer.getDefaultInstance();
    }

    public final LauncherAtom$HotseatContainer getHotseat() {
        return this.containerCase_ == 2 ? (LauncherAtom$HotseatContainer) this.container_ : LauncherAtom$HotseatContainer.getDefaultInstance();
    }

    public final LauncherAtom$PredictedHotseatContainer getPredictedHotseatContainer() {
        return this.containerCase_ == 10 ? (LauncherAtom$PredictedHotseatContainer) this.container_ : LauncherAtom$PredictedHotseatContainer.getDefaultInstance();
    }

    public final LauncherAtom$PredictionContainer getPredictionContainer() {
        return this.containerCase_ == 6 ? (LauncherAtom$PredictionContainer) this.container_ : LauncherAtom$PredictionContainer.getDefaultInstance();
    }

    public final LauncherAtom$SearchResultContainer getSearchResultContainer() {
        return this.containerCase_ == 7 ? (LauncherAtom$SearchResultContainer) this.container_ : LauncherAtom$SearchResultContainer.getDefaultInstance();
    }

    public final LauncherAtom$TaskBarContainer getTaskBarContainer() {
        return this.containerCase_ == 12 ? (LauncherAtom$TaskBarContainer) this.container_ : LauncherAtom$TaskBarContainer.getDefaultInstance();
    }

    public final LauncherAtom$WorkspaceContainer getWorkspace() {
        return this.containerCase_ == 1 ? (LauncherAtom$WorkspaceContainer) this.container_ : LauncherAtom$WorkspaceContainer.getDefaultInstance();
    }

    public final boolean hasAllAppsContainer() {
        return this.containerCase_ == 4;
    }

    public final boolean hasFolder() {
        return this.containerCase_ == 3;
    }

    public final boolean hasHotseat() {
        return this.containerCase_ == 2;
    }

    public final boolean hasPredictedHotseatContainer() {
        return this.containerCase_ == 10;
    }

    public final boolean hasPredictionContainer() {
        return this.containerCase_ == 6;
    }
}
