package com.android.launcher3.model;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.net.Uri;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.util.LongSparseArray;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.IconRequestInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSparseArrayMap;
import java.net.URISyntaxException;
import java.security.InvalidParameterException;
/* loaded from: classes.dex */
public final class LoaderCursor extends CursorWrapper {
    private final LongSparseArray allUsers;
    public int container;
    public int id;
    public int itemType;
    private LauncherActivityInfo mActivityInfo;
    private final LauncherAppState mApp;
    private final int mAppWidgetIdIndex;
    private final int mAppWidgetProviderIndex;
    private final int mAppWidgetSourceIndex;
    private final int mCellXIndex;
    private final int mCellYIndex;
    private final int mContainerIndex;
    private final Context mContext;
    private final InvariantDeviceProfile mIDP;
    private final IconCache mIconCache;
    private final int mIconIndex;
    private final int mIdIndex;
    private final int mIntentIndex;
    private final int mItemTypeIndex;
    private final IntArray mItemsToRemove;
    private final IntSparseArrayMap mOccupied;
    private final int mOptionsIndex;
    private final int mProfileIdIndex;
    private final int mRankIndex;
    private final int mRestoredIndex;
    private final IntArray mRestoredRows;
    private final int mScreenIndex;
    private final int mSpanXIndex;
    private final int mSpanYIndex;
    public final int mTitleIndex;
    public int restoreFlag;
    public long serialNumber;
    public UserHandle user;

    public LoaderCursor(Cursor cursor, LauncherAppState launcherAppState, UserManagerState userManagerState) {
        super(cursor);
        this.mItemsToRemove = new IntArray();
        this.mRestoredRows = new IntArray();
        this.mOccupied = new IntSparseArrayMap();
        this.mApp = launcherAppState;
        this.allUsers = userManagerState.allUsers;
        this.mContext = launcherAppState.getContext();
        this.mIconCache = launcherAppState.getIconCache();
        this.mIDP = launcherAppState.getInvariantDeviceProfile();
        this.mIconIndex = getColumnIndexOrThrow("icon");
        this.mTitleIndex = getColumnIndexOrThrow("title");
        this.mIdIndex = getColumnIndexOrThrow("_id");
        this.mContainerIndex = getColumnIndexOrThrow("container");
        this.mItemTypeIndex = getColumnIndexOrThrow("itemType");
        this.mScreenIndex = getColumnIndexOrThrow("screen");
        this.mCellXIndex = getColumnIndexOrThrow("cellX");
        this.mCellYIndex = getColumnIndexOrThrow("cellY");
        this.mProfileIdIndex = getColumnIndexOrThrow("profileId");
        this.mRestoredIndex = getColumnIndexOrThrow("restored");
        this.mIntentIndex = getColumnIndexOrThrow("intent");
        this.mAppWidgetIdIndex = getColumnIndexOrThrow("appWidgetId");
        this.mAppWidgetProviderIndex = getColumnIndexOrThrow("appWidgetProvider");
        this.mSpanXIndex = getColumnIndexOrThrow("spanX");
        this.mSpanYIndex = getColumnIndexOrThrow("spanY");
        this.mRankIndex = getColumnIndexOrThrow("rank");
        this.mOptionsIndex = getColumnIndexOrThrow("options");
        this.mAppWidgetSourceIndex = getColumnIndexOrThrow("appWidgetSource");
    }

    public final void applyCommonProperties(ItemInfo itemInfo) {
        itemInfo.id = this.id;
        itemInfo.container = this.container;
        itemInfo.screenId = getInt(this.mScreenIndex);
        itemInfo.cellX = getInt(this.mCellXIndex);
        itemInfo.cellY = getInt(this.mCellYIndex);
    }

    public final void checkAndAddItem(ItemInfo itemInfo, BgDataModel bgDataModel, LoaderMemoryLogger loaderMemoryLogger) {
        int i4;
        if (itemInfo.itemType == 6) {
            ShortcutKey.fromItemInfo(itemInfo);
        }
        int i5 = itemInfo.screenId;
        int i6 = itemInfo.container;
        boolean z4 = true;
        if (i6 == -101) {
            GridOccupancy gridOccupancy = (GridOccupancy) this.mOccupied.get(-101);
            int i7 = itemInfo.screenId;
            int i8 = this.mIDP.numDatabaseHotseatIcons;
            if (i7 >= i8) {
                Log.e("LoaderCursor", "Error loading shortcut " + itemInfo + " into hotseat position " + itemInfo.screenId + ", position out of bounds: (0 to " + (this.mIDP.numDatabaseHotseatIcons - 1) + ")");
            } else if (gridOccupancy != null) {
                boolean[] zArr = gridOccupancy.cells[i7];
                if (zArr[0]) {
                    Log.e("LoaderCursor", "Error loading shortcut into hotseat " + itemInfo + " into position (" + itemInfo.screenId + ":" + itemInfo.cellX + "," + itemInfo.cellY + ") already occupied");
                } else {
                    zArr[0] = true;
                }
            } else {
                GridOccupancy gridOccupancy2 = new GridOccupancy(i8, 1);
                gridOccupancy2.cells[itemInfo.screenId][0] = true;
                this.mOccupied.put(-101, gridOccupancy2);
            }
            z4 = false;
        } else if (i6 == -100) {
            InvariantDeviceProfile invariantDeviceProfile = this.mIDP;
            int i9 = invariantDeviceProfile.numColumns;
            int i10 = invariantDeviceProfile.numRows;
            if ((i6 != -100 || itemInfo.cellX >= 0) && (i4 = itemInfo.cellY) >= 0 && itemInfo.cellX + itemInfo.spanX <= i9 && i4 + itemInfo.spanY <= i10) {
                if (this.mOccupied.containsKey(i5)) {
                    z4 = true;
                } else {
                    z4 = true;
                    GridOccupancy gridOccupancy3 = new GridOccupancy(i9 + 1, i10 + 1);
                    if (itemInfo.screenId == 0) {
                        gridOccupancy3.markCells(true, 0, 0, this.mIDP.numSearchContainerColumns, 1);
                    }
                    this.mOccupied.put(itemInfo.screenId, gridOccupancy3);
                }
                GridOccupancy gridOccupancy4 = (GridOccupancy) this.mOccupied.get(itemInfo.screenId);
                if (gridOccupancy4.isRegionVacant(itemInfo.cellX, itemInfo.cellY, itemInfo.spanX, itemInfo.spanY)) {
                    gridOccupancy4.markCells(itemInfo);
                } else {
                    Log.e("LoaderCursor", "Error loading shortcut " + itemInfo + " into cell (" + i5 + "-" + itemInfo.screenId + ":" + itemInfo.cellX + "," + itemInfo.cellX + "," + itemInfo.spanX + "," + itemInfo.spanY + ") already occupied");
                }
            } else {
                Log.e("LoaderCursor", "Error loading shortcut " + itemInfo + " into cell (" + i5 + "-" + itemInfo.screenId + ":" + itemInfo.cellX + "," + itemInfo.cellY + ") out of screen bounds ( " + i9 + "x" + i10 + ")");
            }
            z4 = false;
        }
        if (z4) {
            bgDataModel.addItem(this.mContext, itemInfo, false, loaderMemoryLogger);
        } else {
            markDeleted("Item position overlap");
        }
    }

    public final boolean commitDeleted() {
        if (this.mItemsToRemove.size() > 0) {
            this.mApp.getModel().getModelDbController().delete("favorites", Utilities.createDbSelectionQuery("_id", this.mItemsToRemove), null);
            return true;
        }
        return false;
    }

    public final void commitRestoredItems() {
        if (this.mRestoredRows.size() > 0) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("restored", (Integer) 0);
            this.mApp.getModel().getModelDbController().update("favorites", contentValues, Utilities.createDbSelectionQuery("_id", this.mRestoredRows), null);
        }
    }

    public final IconRequestInfo createIconRequestInfo(WorkspaceItemInfo workspaceItemInfo, boolean z4) {
        return new IconRequestInfo(workspaceItemInfo, this.mActivityInfo, (this.itemType == 6 || this.restoreFlag != 0) ? getIconBlob() : null, z4);
    }

    public final WorkspaceItemInfo getAppShortcutInfo(Intent intent, boolean z4, boolean z5) {
        if (this.user == null) {
            Log.d("LoaderCursor", "Null user found in getShortcutInfo");
            return null;
        }
        ComponentName component = intent.getComponent();
        if (component == null) {
            Log.d("LoaderCursor", "Missing component found in getShortcutInfo");
            return null;
        }
        Intent intent2 = new Intent("android.intent.action.MAIN", (Uri) null);
        intent2.addCategory("android.intent.category.LAUNCHER");
        intent2.setComponent(component);
        LauncherActivityInfo resolveActivity = ((LauncherApps) this.mContext.getSystemService(LauncherApps.class)).resolveActivity(intent2, this.user);
        this.mActivityInfo = resolveActivity;
        if (resolveActivity == null && !z4) {
            Log.d("LoaderCursor", "Missing activity found in getShortcutInfo: " + component);
            return null;
        }
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.user = this.user;
        workspaceItemInfo.intent = intent2;
        LauncherActivityInfo launcherActivityInfo = this.mActivityInfo;
        if (launcherActivityInfo != null) {
            AppInfo.updateRuntimeFlagsForActivityTarget(workspaceItemInfo, launcherActivityInfo);
        }
        if (TextUtils.isEmpty(workspaceItemInfo.title)) {
            workspaceItemInfo.title = "";
        }
        workspaceItemInfo.contentDescription = this.mIconCache.getUserBadgedLabel(workspaceItemInfo.title, workspaceItemInfo.user);
        return workspaceItemInfo;
    }

    public final int getAppWidgetId() {
        return getInt(this.mAppWidgetIdIndex);
    }

    public final String getAppWidgetProvider() {
        return getString(this.mAppWidgetProviderIndex);
    }

    public final int getAppWidgetSource() {
        return getInt(this.mAppWidgetSourceIndex);
    }

    public final byte[] getIconBlob() {
        return getBlob(this.mIconIndex);
    }

    public final LauncherActivityInfo getLauncherActivityInfo() {
        return this.mActivityInfo;
    }

    public final int getOptions() {
        return getInt(this.mOptionsIndex);
    }

    public final int getRank() {
        return getInt(this.mRankIndex);
    }

    public final WorkspaceItemInfo getRestoredItemInfo(Intent intent) {
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.user = this.user;
        workspaceItemInfo.intent = intent;
        if (!loadIcon(workspaceItemInfo)) {
            this.mIconCache.getTitleAndIcon(workspaceItemInfo, false);
        }
        if (hasRestoreFlag(1)) {
            String title = getTitle();
            if (!TextUtils.isEmpty(title)) {
                workspaceItemInfo.title = Utilities.trim(title);
            }
        } else if (!hasRestoreFlag(2)) {
            throw new InvalidParameterException("Invalid restoreType " + this.restoreFlag);
        } else if (TextUtils.isEmpty(workspaceItemInfo.title)) {
            workspaceItemInfo.title = getTitle();
        }
        workspaceItemInfo.contentDescription = this.mIconCache.getUserBadgedLabel(workspaceItemInfo.title, workspaceItemInfo.user);
        workspaceItemInfo.itemType = this.itemType;
        workspaceItemInfo.status = this.restoreFlag;
        return workspaceItemInfo;
    }

    public final int getSpanX() {
        return getInt(this.mSpanXIndex);
    }

    public final int getSpanY() {
        return getInt(this.mSpanYIndex);
    }

    public final String getTitle() {
        return Utilities.trim(getString(this.mTitleIndex));
    }

    public final boolean hasRestoreFlag(int i4) {
        return (this.restoreFlag & i4) != 0;
    }

    public final boolean loadIcon(WorkspaceItemInfo workspaceItemInfo) {
        return createIconRequestInfo(workspaceItemInfo, false).loadWorkspaceIcon(this.mContext);
    }

    public WorkspaceItemInfo loadSimpleWorkspaceItem() {
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
        workspaceItemInfo.intent = new Intent();
        workspaceItemInfo.user = this.user;
        workspaceItemInfo.itemType = this.itemType;
        workspaceItemInfo.title = getTitle();
        if (!loadIcon(workspaceItemInfo)) {
            workspaceItemInfo.bitmap = this.mIconCache.getDefaultIcon(workspaceItemInfo.user);
        }
        return workspaceItemInfo;
    }

    public final void markDeleted(String str) {
        FileLog.e("LoaderCursor", str);
        this.mItemsToRemove.add(this.id);
    }

    public final void markRestored() {
        if (this.restoreFlag != 0) {
            this.mRestoredRows.add(this.id);
            this.restoreFlag = 0;
        }
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public final boolean moveToNext() {
        boolean moveToNext = super.moveToNext();
        if (moveToNext) {
            this.mActivityInfo = null;
            this.itemType = getInt(this.mItemTypeIndex);
            this.container = getInt(this.mContainerIndex);
            this.id = getInt(this.mIdIndex);
            long j4 = getInt(this.mProfileIdIndex);
            this.serialNumber = j4;
            this.user = (UserHandle) this.allUsers.get(j4);
            this.restoreFlag = getInt(this.mRestoredIndex);
        }
        return moveToNext;
    }

    public final Intent parseIntent() {
        String string = getString(this.mIntentIndex);
        try {
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return Intent.parseUri(string, 0);
        } catch (URISyntaxException unused) {
            Log.e("LoaderCursor", "Error parsing Intent");
            return null;
        }
    }

    public final ContentWriter updater() {
        return new ContentWriter(this.mContext, new ContentWriter.CommitParams(this.mApp.getModel().getModelDbController(), "_id= ?", new String[]{Integer.toString(this.id)}));
    }
}
