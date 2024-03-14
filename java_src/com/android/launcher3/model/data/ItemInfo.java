package com.android.launcher3.model.data;

import O0.c;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Intent;
import android.net.Uri;
import android.os.Process;
import android.os.UserHandle;
import android.provider.Settings;
import com.android.launcher3.WorkspaceLayoutManager;
import com.android.launcher3.logger.LauncherAtom$AllAppsContainer;
import com.android.launcher3.logger.LauncherAtom$Application;
import com.android.launcher3.logger.LauncherAtom$ContainerInfo;
import com.android.launcher3.logger.LauncherAtom$FolderContainer;
import com.android.launcher3.logger.LauncherAtom$HotseatContainer;
import com.android.launcher3.logger.LauncherAtom$ItemInfo;
import com.android.launcher3.logger.LauncherAtom$PredictedHotseatContainer;
import com.android.launcher3.logger.LauncherAtom$PredictionContainer;
import com.android.launcher3.logger.LauncherAtom$SettingsContainer;
import com.android.launcher3.logger.LauncherAtom$Shortcut;
import com.android.launcher3.logger.LauncherAtom$ShortcutsContainer;
import com.android.launcher3.logger.LauncherAtom$Task;
import com.android.launcher3.logger.LauncherAtom$TaskSwitcherContainer;
import com.android.launcher3.logger.LauncherAtom$WallpapersContainer;
import com.android.launcher3.logger.LauncherAtom$Widget;
import com.android.launcher3.logger.LauncherAtom$WidgetsContainer;
import com.android.launcher3.logger.LauncherAtom$WorkspaceContainer;
import com.android.launcher3.logger.LauncherAtomExtensions$ExtendedContainers;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.util.SettingsCache;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;
/* loaded from: classes.dex */
public class ItemInfo {
    public static final boolean DEBUG = false;
    private static final Uri NAV_BAR_KIDS_MODE = Settings.Secure.getUriFor("nav_bar_kids_mode");
    public static final int NO_ID = -1;
    public static final int NO_MATCHING_ID = Integer.MIN_VALUE;
    public int animationType;
    public int cellX;
    public int cellY;
    public int container;
    public CharSequence contentDescription;
    public int id;
    public int itemType;
    private ComponentName mComponentName;
    public int minSpanX;
    public int minSpanY;
    public int rank;
    public int screenId;
    public int spanX;
    public int spanY;
    public CharSequence title;
    public UserHandle user;

    public ItemInfo() {
        this.id = -1;
        this.animationType = 0;
        this.container = -1;
        this.screenId = -1;
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
        this.minSpanX = 1;
        this.minSpanY = 1;
        this.rank = 0;
        this.user = Process.myUserHandle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ LauncherAtom$Application.Builder lambda$buildProto$0(ComponentName componentName) {
        LauncherAtom$Application.Builder newBuilder = LauncherAtom$Application.newBuilder();
        newBuilder.setComponentName(componentName.flattenToShortString());
        newBuilder.setPackageName(componentName.getPackageName());
        return newBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ LauncherAtom$Shortcut.Builder lambda$buildProto$2(ComponentName componentName) {
        final LauncherAtom$Shortcut.Builder newBuilder = LauncherAtom$Shortcut.newBuilder();
        newBuilder.setShortcutName(componentName.flattenToShortString());
        Optional.ofNullable(getIntent()).map(new c(2)).ifPresent(new Consumer() { // from class: O0.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                LauncherAtom$Shortcut.Builder.this.setShortcutId((String) obj);
            }
        });
        return newBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ LauncherAtom$Widget.Builder lambda$buildProto$3(ComponentName componentName) {
        LauncherAtom$Widget.Builder newBuilder = LauncherAtom$Widget.newBuilder();
        newBuilder.setComponentName$2(componentName.flattenToShortString());
        newBuilder.setPackageName$2(componentName.getPackageName());
        return newBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ LauncherAtom$Task.Builder lambda$buildProto$4(ComponentName componentName) {
        LauncherAtom$Task.Builder newBuilder = LauncherAtom$Task.newBuilder();
        newBuilder.setComponentName$1(componentName.flattenToShortString());
        newBuilder.setIndex$2(this.screenId);
        return newBuilder;
    }

    public LauncherAtom$ItemInfo buildProto() {
        return buildProto(null);
    }

    public void copyFrom(ItemInfo itemInfo) {
        this.id = itemInfo.id;
        this.title = itemInfo.title;
        this.cellX = itemInfo.cellX;
        this.cellY = itemInfo.cellY;
        this.spanX = itemInfo.spanX;
        this.spanY = itemInfo.spanY;
        this.minSpanX = itemInfo.minSpanX;
        this.minSpanY = itemInfo.minSpanY;
        this.rank = itemInfo.rank;
        this.screenId = itemInfo.screenId;
        this.itemType = itemInfo.itemType;
        this.animationType = itemInfo.animationType;
        this.container = itemInfo.container;
        this.user = itemInfo.user;
        this.contentDescription = itemInfo.contentDescription;
        this.mComponentName = itemInfo.getTargetComponent();
    }

    public String dumpProperties() {
        String str;
        StringBuilder sb = new StringBuilder("id=");
        sb.append(this.id);
        sb.append(" type=");
        int i4 = this.itemType;
        if (i4 == 0) {
            str = "APP";
        } else if (i4 == 2) {
            str = "FOLDER";
        } else if (i4 != 10) {
            switch (i4) {
                case 4:
                    str = "WIDGET";
                    break;
                case 5:
                    str = "CUSTOMWIDGET";
                    break;
                case 6:
                    str = "DEEPSHORTCUT";
                    break;
                case 7:
                    str = "TASK";
                    break;
                case 8:
                    str = "QSB";
                    break;
                default:
                    str = String.valueOf(i4);
                    break;
            }
        } else {
            str = "APP_PAIR";
        }
        sb.append(str);
        sb.append(" container=");
        sb.append(getContainerInfo());
        sb.append(" targetComponent=");
        sb.append(getTargetComponent());
        sb.append(" screen=");
        sb.append(this.screenId);
        sb.append(" cell(");
        sb.append(this.cellX);
        sb.append(",");
        sb.append(this.cellY);
        sb.append(") span(");
        sb.append(this.spanX);
        sb.append(",");
        sb.append(this.spanY);
        sb.append(") minSpan(");
        sb.append(this.minSpanX);
        sb.append(",");
        sb.append(this.minSpanY);
        sb.append(") rank=");
        sb.append(this.rank);
        sb.append(" user=");
        sb.append(this.user);
        sb.append(" title=");
        sb.append((Object) this.title);
        return sb.toString();
    }

    public final ComponentKey getComponentKey() {
        ComponentName targetComponent = getTargetComponent();
        if (targetComponent == null) {
            return null;
        }
        return new ComponentKey(targetComponent, this.user);
    }

    public LauncherAtom$ContainerInfo getContainerInfo() {
        int i4 = this.container;
        switch (i4) {
            case -114:
                LauncherAtom$ContainerInfo.Builder newBuilder = LauncherAtom$ContainerInfo.newBuilder();
                newBuilder.setWallpapersContainer(LauncherAtom$WallpapersContainer.getDefaultInstance());
                return (LauncherAtom$ContainerInfo) newBuilder.build();
            case -113:
            case -112:
            case -111:
            case -110:
            case -106:
            default:
                if (i4 <= -200) {
                    LauncherAtom$ContainerInfo.Builder newBuilder2 = LauncherAtom$ContainerInfo.newBuilder();
                    newBuilder2.setExtendedContainers(getExtendedContainer());
                    return (LauncherAtom$ContainerInfo) newBuilder2.build();
                }
                return LauncherAtom$ContainerInfo.getDefaultInstance();
            case -109:
                LauncherAtom$ContainerInfo.Builder newBuilder3 = LauncherAtom$ContainerInfo.newBuilder();
                newBuilder3.setTaskSwitcherContainer(LauncherAtom$TaskSwitcherContainer.getDefaultInstance());
                return (LauncherAtom$ContainerInfo) newBuilder3.build();
            case -108:
                LauncherAtom$ContainerInfo.Builder newBuilder4 = LauncherAtom$ContainerInfo.newBuilder();
                newBuilder4.setSettingsContainer(LauncherAtom$SettingsContainer.getDefaultInstance());
                return (LauncherAtom$ContainerInfo) newBuilder4.build();
            case -107:
                LauncherAtom$ContainerInfo.Builder newBuilder5 = LauncherAtom$ContainerInfo.newBuilder();
                newBuilder5.setShortcutsContainer(LauncherAtom$ShortcutsContainer.getDefaultInstance());
                return (LauncherAtom$ContainerInfo) newBuilder5.build();
            case -105:
                LauncherAtom$ContainerInfo.Builder newBuilder6 = LauncherAtom$ContainerInfo.newBuilder();
                newBuilder6.setWidgetsContainer(LauncherAtom$WidgetsContainer.getDefaultInstance());
                return (LauncherAtom$ContainerInfo) newBuilder6.build();
            case -104:
                LauncherAtom$ContainerInfo.Builder newBuilder7 = LauncherAtom$ContainerInfo.newBuilder();
                newBuilder7.setAllAppsContainer(LauncherAtom$AllAppsContainer.getDefaultInstance());
                return (LauncherAtom$ContainerInfo) newBuilder7.build();
            case -103:
                LauncherAtom$ContainerInfo.Builder newBuilder8 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$PredictedHotseatContainer.Builder newBuilder9 = LauncherAtom$PredictedHotseatContainer.newBuilder();
                newBuilder9.setIndex$1(this.screenId);
                newBuilder8.setPredictedHotseatContainer(newBuilder9);
                return (LauncherAtom$ContainerInfo) newBuilder8.build();
            case -102:
                LauncherAtom$ContainerInfo.Builder newBuilder10 = LauncherAtom$ContainerInfo.newBuilder();
                newBuilder10.setPredictionContainer(LauncherAtom$PredictionContainer.getDefaultInstance());
                return (LauncherAtom$ContainerInfo) newBuilder10.build();
            case -101:
                LauncherAtom$ContainerInfo.Builder newBuilder11 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$HotseatContainer.Builder newBuilder12 = LauncherAtom$HotseatContainer.newBuilder();
                newBuilder12.setIndex(this.screenId);
                newBuilder11.setHotseat(newBuilder12);
                return (LauncherAtom$ContainerInfo) newBuilder11.build();
            case -100:
                LauncherAtom$ContainerInfo.Builder newBuilder13 = LauncherAtom$ContainerInfo.newBuilder();
                LauncherAtom$WorkspaceContainer.Builder newBuilder14 = LauncherAtom$WorkspaceContainer.newBuilder();
                newBuilder14.setGridX$1(this.cellX);
                newBuilder14.setGridY$1(this.cellY);
                newBuilder14.setPageIndex$1(this.screenId);
                newBuilder13.setWorkspace(newBuilder14);
                return (LauncherAtom$ContainerInfo) newBuilder13.build();
        }
    }

    public LauncherAtom$ItemInfo.Builder getDefaultItemInfoBuilder() {
        LauncherAtom$ItemInfo.Builder newBuilder = LauncherAtom$ItemInfo.newBuilder();
        boolean z4 = true;
        newBuilder.setIsWork(!Process.myUserHandle().equals(this.user));
        SettingsCache settingsCache = (SettingsCache) SettingsCache.INSTANCE.getNoCreate();
        if (settingsCache == null || !settingsCache.getValue(0, NAV_BAR_KIDS_MODE)) {
            z4 = false;
        }
        newBuilder.setIsKidsMode(z4);
        newBuilder.setRank(this.rank);
        return newBuilder;
    }

    public LauncherAtomExtensions$ExtendedContainers getExtendedContainer() {
        return LauncherAtomExtensions$ExtendedContainers.getDefaultInstance();
    }

    public Intent getIntent() {
        return null;
    }

    public ComponentName getTargetComponent() {
        return (ComponentName) Optional.ofNullable(getIntent()).map(new c(3)).orElse(this.mComponentName);
    }

    public String getTargetPackage() {
        ComponentName targetComponent = getTargetComponent();
        Intent intent = getIntent();
        if (targetComponent != null) {
            return targetComponent.getPackageName();
        }
        if (intent != null) {
            return intent.getPackage();
        }
        return null;
    }

    public int getViewId() {
        return this.id;
    }

    public boolean isDisabled() {
        return false;
    }

    public boolean isInHotseat() {
        int i4 = this.container;
        return i4 == -101 || i4 == -103;
    }

    public boolean isPredictedItem() {
        int i4 = this.container;
        return i4 == -103 || i4 == -102;
    }

    public ItemInfo makeShallowCopy() {
        ItemInfo itemInfo = new ItemInfo();
        itemInfo.copyFrom(this);
        return itemInfo;
    }

    public void onAddToDatabase(ContentWriter contentWriter) {
        if (WorkspaceLayoutManager.EXTRA_EMPTY_SCREEN_IDS.contains(this.screenId)) {
            throw new RuntimeException("Screen id should not be extra empty screen: " + this.screenId);
        }
        writeToValues(contentWriter);
        contentWriter.put(this.user);
    }

    public void readFromValues(ContentValues contentValues) {
        this.itemType = contentValues.getAsInteger("itemType").intValue();
        this.container = contentValues.getAsInteger("container").intValue();
        this.screenId = contentValues.getAsInteger("screen").intValue();
        this.cellX = contentValues.getAsInteger("cellX").intValue();
        this.cellY = contentValues.getAsInteger("cellY").intValue();
        this.spanX = contentValues.getAsInteger("spanX").intValue();
        this.spanY = contentValues.getAsInteger("spanY").intValue();
        this.rank = contentValues.getAsInteger("rank").intValue();
    }

    public void setTitle(CharSequence charSequence, ModelWriter modelWriter) {
        this.title = charSequence;
    }

    public boolean shouldUseBackgroundAnimation() {
        return this.animationType == 1;
    }

    public final String toString() {
        return getClass().getSimpleName() + "(" + dumpProperties() + ")";
    }

    public void writeToValues(ContentWriter contentWriter) {
        contentWriter.put("itemType", Integer.valueOf(this.itemType));
        contentWriter.put("container", Integer.valueOf(this.container));
        contentWriter.put("screen", Integer.valueOf(this.screenId));
        contentWriter.put("cellX", Integer.valueOf(this.cellX));
        contentWriter.put("cellY", Integer.valueOf(this.cellY));
        contentWriter.put("spanX", Integer.valueOf(this.spanX));
        contentWriter.put("spanY", Integer.valueOf(this.spanY));
        contentWriter.put("rank", Integer.valueOf(this.rank));
    }

    public LauncherAtom$ItemInfo buildProto(FolderInfo folderInfo) {
        LauncherAtom$ItemInfo.Builder defaultItemInfoBuilder = getDefaultItemInfoBuilder();
        Optional ofNullable = Optional.ofNullable(getTargetComponent());
        int i4 = this.itemType;
        if (i4 == 0) {
            defaultItemInfoBuilder.setApplication((LauncherAtom$Application.Builder) ofNullable.map(new c(0)).orElse(LauncherAtom$Application.newBuilder()));
        } else if (i4 == 4) {
            LauncherAtom$Widget.Builder builder = (LauncherAtom$Widget.Builder) ofNullable.map(new c(1)).orElse(LauncherAtom$Widget.newBuilder());
            builder.setSpanX(this.spanX);
            builder.setSpanY(this.spanY);
            defaultItemInfoBuilder.setWidget(builder);
        } else if (i4 == 6) {
            defaultItemInfoBuilder.setShortcut((LauncherAtom$Shortcut.Builder) ofNullable.map(new Function() { // from class: O0.d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    LauncherAtom$Task.Builder lambda$buildProto$4;
                    LauncherAtom$Shortcut.Builder lambda$buildProto$2;
                    switch (r1) {
                        case 0:
                            lambda$buildProto$2 = this.lambda$buildProto$2((ComponentName) obj);
                            return lambda$buildProto$2;
                        default:
                            lambda$buildProto$4 = this.lambda$buildProto$4((ComponentName) obj);
                            return lambda$buildProto$4;
                    }
                }
            }).orElse(LauncherAtom$Shortcut.newBuilder()));
        } else if (i4 == 7) {
            defaultItemInfoBuilder.setTask((LauncherAtom$Task.Builder) ofNullable.map(new Function() { // from class: O0.d
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    LauncherAtom$Task.Builder lambda$buildProto$4;
                    LauncherAtom$Shortcut.Builder lambda$buildProto$2;
                    switch (r1) {
                        case 0:
                            lambda$buildProto$2 = this.lambda$buildProto$2((ComponentName) obj);
                            return lambda$buildProto$2;
                        default:
                            lambda$buildProto$4 = this.lambda$buildProto$4((ComponentName) obj);
                            return lambda$buildProto$4;
                    }
                }
            }).orElse(LauncherAtom$Task.newBuilder()));
        }
        if (folderInfo != null) {
            LauncherAtom$FolderContainer.Builder newBuilder = LauncherAtom$FolderContainer.newBuilder();
            newBuilder.setGridX(this.cellX);
            newBuilder.setGridY(this.cellY);
            newBuilder.setPageIndex(this.screenId);
            int i5 = folderInfo.container;
            if (i5 == -103 || i5 == -101) {
                LauncherAtom$HotseatContainer.Builder newBuilder2 = LauncherAtom$HotseatContainer.newBuilder();
                newBuilder2.setIndex(folderInfo.screenId);
                newBuilder.setHotseat$1(newBuilder2);
            } else if (i5 == -100) {
                LauncherAtom$WorkspaceContainer.Builder newBuilder3 = LauncherAtom$WorkspaceContainer.newBuilder();
                newBuilder3.setPageIndex$1(folderInfo.screenId);
                newBuilder3.setGridX$1(folderInfo.cellX);
                newBuilder3.setGridY$1(folderInfo.cellY);
                newBuilder.setWorkspace$1(newBuilder3);
            }
            LauncherAtom$ContainerInfo.Builder newBuilder4 = LauncherAtom$ContainerInfo.newBuilder();
            newBuilder4.setFolder(newBuilder);
            defaultItemInfoBuilder.setContainerInfo(newBuilder4);
        } else {
            LauncherAtom$ContainerInfo containerInfo = getContainerInfo();
            if (!containerInfo.getContainerCase().equals(LauncherAtom$ContainerInfo.ContainerCase.CONTAINER_NOT_SET)) {
                defaultItemInfoBuilder.setContainerInfo(containerInfo);
            }
        }
        return (LauncherAtom$ItemInfo) defaultItemInfoBuilder.build();
    }

    public ItemInfo(ItemInfo itemInfo) {
        this.id = -1;
        this.animationType = 0;
        this.container = -1;
        this.screenId = -1;
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
        this.minSpanX = 1;
        this.minSpanY = 1;
        this.rank = 0;
        copyFrom(itemInfo);
    }
}
