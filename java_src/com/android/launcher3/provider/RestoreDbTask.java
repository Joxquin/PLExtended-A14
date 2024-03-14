package com.android.launcher3.provider;

import android.app.backup.BackupManager;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.ModelDbController;
import com.android.launcher3.provider.LauncherDbUtils;
/* loaded from: classes.dex */
public final class RestoreDbTask {
    private static final String[] DB_COLUMNS_TO_LOG = {"profileId", "title", "itemType", "screen", "container", "cellX", "cellY", "spanX", "spanY", "intent"};

    public static boolean isPending(Context context) {
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        return LauncherPrefs.Companion.get(context).has(LauncherPrefs.RESTORE_DEVICE);
    }

    public static void migrateProfileId(SQLiteDatabase sQLiteDatabase, long j4, long j5) {
        FileLog.d("RestoreDbTask", "Changing profile user id from " + j4 + " to " + j5);
        ContentValues contentValues = new ContentValues();
        contentValues.put("profileId", Long.valueOf(j5));
        sQLiteDatabase.update("favorites", contentValues, "profileId = ?", new String[]{Long.toString(j4)});
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x018c A[Catch: all -> 0x0190, TRY_ENTER, TRY_LEAVE, TryCatch #9 {Exception -> 0x0196, blocks: (B:55:0x0195, B:38:0x0173, B:50:0x018c), top: B:112:0x00a2 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02c3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void restoreAppWidgetIdsIfExists(android.content.Context r28, com.android.launcher3.model.ModelDbController r29) {
        /*
            Method dump skipped, instructions count: 738
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.provider.RestoreDbTask.restoreAppWidgetIdsIfExists(android.content.Context, com.android.launcher3.model.ModelDbController):void");
    }

    public static void restoreIfNeeded(Context context, ModelDbController modelDbController) {
        boolean z4;
        if (!isPending(context)) {
            Log.d("RestoreDbTask", "No restore task pending, exiting RestoreDbTask");
            return;
        }
        SQLiteDatabase db = modelDbController.getDb();
        FileLog.d("RestoreDbTask", "performRestore: starting restore from db");
        try {
            LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(db);
            new RestoreDbTask().sanitizeDB(context, modelDbController, db, new BackupManager(context));
            restoreAppWidgetIdsIfExists(context, modelDbController);
            sQLiteTransaction.commit();
            sQLiteTransaction.close();
            z4 = true;
        } catch (Exception e4) {
            Log.e("RestoreDbTask", "Failed to verify db", e4);
            FileLog.print("RestoreDbTask", "Failed to verify db", e4);
            z4 = false;
        }
        if (!z4) {
            modelDbController.createEmptyDB();
        }
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        LauncherPrefs.Companion.get(context).removeSync(LauncherPrefs.RESTORE_DEVICE);
        ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(context)).reinitializeAfterRestore(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0379 A[Catch: all -> 0x03e8, TryCatch #12 {Exception -> 0x0402, blocks: (B:96:0x0316, B:107:0x03e4, B:97:0x0366, B:106:0x03e1, B:98:0x036b, B:99:0x0373, B:101:0x0379, B:103:0x0392, B:105:0x03de), top: B:150:0x0316 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0262 A[LOOP:7: B:75:0x0260->B:76:0x0262, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x02a1  */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.lang.String, java.lang.String[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int sanitizeDB(android.content.Context r26, com.android.launcher3.model.ModelDbController r27, android.database.sqlite.SQLiteDatabase r28, android.app.backup.BackupManager r29) {
        /*
            Method dump skipped, instructions count: 1079
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.provider.RestoreDbTask.sanitizeDB(android.content.Context, com.android.launcher3.model.ModelDbController, android.database.sqlite.SQLiteDatabase, android.app.backup.BackupManager):int");
    }
}
