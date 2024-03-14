package com.android.launcher3.model;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Process;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.provider.LauncherDbUtils;
/* loaded from: classes.dex */
public final class GridBackupTable {
    private final Context mContext;
    private final SQLiteDatabase mDb;

    public GridBackupTable(Context context, SQLiteDatabase sQLiteDatabase) {
        this.mContext = context;
        this.mDb = sQLiteDatabase;
    }

    private static void copyTable(SQLiteDatabase sQLiteDatabase, String str, String str2, long j4) {
        LauncherDbUtils.dropTable(sQLiteDatabase, str2);
        LauncherSettings$Favorites.addTableToDb(sQLiteDatabase, j4, false, str2);
        sQLiteDatabase.execSQL("INSERT INTO " + str2 + " SELECT * FROM " + str);
    }

    public final void createCustomBackupTable() {
        copyTable(this.mDb, "favorites", "hotseat_restore_backup", ((UserCache) UserCache.INSTANCE.get(this.mContext)).getSerialNumberForUser(Process.myUserHandle()));
    }

    public final void restoreFromCustomBackupTable() {
        SQLiteDatabase sQLiteDatabase = this.mDb;
        if (LauncherDbUtils.tableExists(sQLiteDatabase, "hotseat_restore_backup")) {
            copyTable(sQLiteDatabase, "hotseat_restore_backup", "favorites", ((UserCache) UserCache.INSTANCE.get(this.mContext)).getSerialNumberForUser(Process.myUserHandle()));
            LauncherDbUtils.dropTable(sQLiteDatabase, "hotseat_restore_backup");
        }
    }
}
