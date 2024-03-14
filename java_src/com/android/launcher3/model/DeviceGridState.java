package com.android.launcher3.model;

import android.content.Context;
import android.text.TextUtils;
import com.android.launcher3.ConstantItem;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.MainThreadInitializedObject;
import java.util.Locale;
import java.util.Objects;
import kotlin.Pair;
/* loaded from: classes.dex */
public final class DeviceGridState implements Comparable {
    private final String mDbFile;
    private final int mDeviceType;
    private final String mGridSizeString;
    private final int mNumHotseat;

    public DeviceGridState(InvariantDeviceProfile invariantDeviceProfile) {
        this.mGridSizeString = String.format(Locale.ENGLISH, "%d,%d", Integer.valueOf(invariantDeviceProfile.numColumns), Integer.valueOf(invariantDeviceProfile.numRows));
        this.mNumHotseat = invariantDeviceProfile.numDatabaseHotseatIcons;
        this.mDeviceType = invariantDeviceProfile.deviceType;
        this.mDbFile = invariantDeviceProfile.dbFile;
    }

    public final Integer getColumns() {
        return Integer.valueOf(Integer.parseInt(String.valueOf(this.mGridSizeString.charAt(0))));
    }

    public final String getDbFile() {
        return this.mDbFile;
    }

    public final int getDeviceType() {
        return this.mDeviceType;
    }

    public final int getNumHotseat() {
        return this.mNumHotseat;
    }

    public final Integer getRows() {
        return Integer.valueOf(Integer.parseInt(String.valueOf(this.mGridSizeString.charAt(2))));
    }

    public final StatsLogManager.LauncherEvent getWorkspaceSizeEvent() {
        if (TextUtils.isEmpty(this.mGridSizeString)) {
            return null;
        }
        int intValue = getColumns().intValue();
        if (intValue != 2) {
            if (intValue != 3) {
                if (intValue != 4) {
                    if (intValue != 5) {
                        if (intValue != 6) {
                            return null;
                        }
                        return StatsLogManager.LauncherEvent.LAUNCHER_GRID_SIZE_6;
                    }
                    return StatsLogManager.LauncherEvent.LAUNCHER_GRID_SIZE_5;
                }
                return StatsLogManager.LauncherEvent.LAUNCHER_GRID_SIZE_4;
            }
            return StatsLogManager.LauncherEvent.LAUNCHER_GRID_SIZE_3;
        }
        return StatsLogManager.LauncherEvent.LAUNCHER_GRID_SIZE_2;
    }

    public final boolean isCompatible(DeviceGridState deviceGridState) {
        if (this == deviceGridState) {
            return true;
        }
        return Objects.equals(this.mDbFile, deviceGridState.mDbFile);
    }

    public final String toString() {
        return "DeviceGridState{mGridSizeString='" + this.mGridSizeString + "', mNumHotseat=" + this.mNumHotseat + ", mDeviceType=" + this.mDeviceType + ", mDbFile=" + this.mDbFile + '}';
    }

    public final void writeToPrefs(Context context) {
        if (context instanceof MainThreadInitializedObject.SandboxContext) {
            return;
        }
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        LauncherPrefs launcherPrefs = LauncherPrefs.Companion.get(context);
        ConstantItem constantItem = LauncherPrefs.WORKSPACE_SIZE;
        String str = this.mGridSizeString;
        constantItem.getClass();
        Pair pair = new Pair(constantItem, str);
        ConstantItem constantItem2 = LauncherPrefs.HOTSEAT_COUNT;
        Integer valueOf = Integer.valueOf(this.mNumHotseat);
        constantItem2.getClass();
        Pair pair2 = new Pair(constantItem2, valueOf);
        ConstantItem constantItem3 = LauncherPrefs.DEVICE_TYPE;
        Integer valueOf2 = Integer.valueOf(this.mDeviceType);
        constantItem3.getClass();
        Pair pair3 = new Pair(constantItem3, valueOf2);
        ConstantItem constantItem4 = LauncherPrefs.DB_FILE;
        String str2 = this.mDbFile;
        constantItem4.getClass();
        launcherPrefs.put(pair, pair2, pair3, new Pair(constantItem4, str2));
    }

    @Override // java.lang.Comparable
    public final int compareTo(DeviceGridState deviceGridState) {
        return Integer.valueOf(getRows().intValue() * getColumns().intValue()).compareTo(Integer.valueOf(deviceGridState.getRows().intValue() * deviceGridState.getColumns().intValue()));
    }

    public DeviceGridState(Context context) {
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        LauncherPrefs launcherPrefs = LauncherPrefs.Companion.get(context);
        this.mGridSizeString = (String) launcherPrefs.get(LauncherPrefs.WORKSPACE_SIZE);
        this.mNumHotseat = ((Integer) launcherPrefs.get(LauncherPrefs.HOTSEAT_COUNT)).intValue();
        this.mDeviceType = ((Integer) launcherPrefs.get(LauncherPrefs.DEVICE_TYPE)).intValue();
        this.mDbFile = (String) launcherPrefs.get(LauncherPrefs.DB_FILE);
    }
}
