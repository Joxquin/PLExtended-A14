package com.android.launcher3.provider;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Process;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.IntArray;
import j.C1080K;
/* loaded from: classes.dex */
public final class LauncherDbUtils {

    /* loaded from: classes.dex */
    public final class SQLiteTransaction implements AutoCloseable {
        private final SQLiteDatabase mDb;

        public SQLiteTransaction(SQLiteDatabase sQLiteDatabase) {
            this.mDb = sQLiteDatabase;
            sQLiteDatabase.beginTransaction();
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            this.mDb.endTransaction();
        }

        public final void commit() {
            this.mDb.setTransactionSuccessful();
        }

        public final SQLiteDatabase getDb() {
            return this.mDb;
        }
    }

    public static void copyTable(SQLiteDatabase sQLiteDatabase, SQLiteDatabase sQLiteDatabase2, String str, Context context) {
        long serialNumberForUser = ((UserCache) UserCache.INSTANCE.get(context)).getSerialNumberForUser(Process.myUserHandle());
        dropTable(sQLiteDatabase2, str);
        LauncherSettings$Favorites.addTableToDb(sQLiteDatabase2, serialNumberForUser, false, str);
        if (sQLiteDatabase == sQLiteDatabase2) {
            sQLiteDatabase2.execSQL("INSERT INTO " + str + " SELECT * FROM favorites");
            return;
        }
        sQLiteDatabase2.execSQL("ATTACH DATABASE '" + sQLiteDatabase.getPath() + "' AS from_db");
        sQLiteDatabase2.execSQL("INSERT INTO " + str + " SELECT * FROM from_db.favorites");
        sQLiteDatabase2.execSQL("DETACH DATABASE 'from_db'");
    }

    public static void dropTable(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ".concat(str));
    }

    public static String itemIdMatch(int i4) {
        return C1080K.a("_id=", i4);
    }

    public static IntArray queryIntArray(boolean z4, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String str4) {
        IntArray intArray = new IntArray();
        Cursor query = sQLiteDatabase.query(z4, str, new String[]{str2}, str3, null, null, null, str4, null);
        while (query.moveToNext()) {
            try {
                intArray.add(query.getInt(0));
            } catch (Throwable th) {
                if (query != null) {
                    try {
                        query.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }
        query.close();
        return intArray;
    }

    public static boolean tableExists(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor query = sQLiteDatabase.query(true, "sqlite_master", new String[]{"tbl_name"}, "tbl_name = ?", new String[]{str}, null, null, null, null, null);
        try {
            boolean z4 = query.getCount() > 0;
            query.close();
            return z4;
        } catch (Throwable th) {
            if (query != null) {
                try {
                    query.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
