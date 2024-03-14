package com.android.launcher3.util;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.util.Log;
import com.android.launcher3.icons.cache.BaseIconCache;
/* loaded from: classes.dex */
public abstract class SQLiteCacheHelper {
    private final MySQLiteOpenHelper mOpenHelper;
    private final String mTableName = "icons";
    private boolean mIgnoreWrites = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class MySQLiteOpenHelper extends NoLocaleSQLiteHelper {
        public MySQLiteOpenHelper(Context context, String str, int i4) {
            super(i4, context, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearDB(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + SQLiteCacheHelper.this.mTableName);
            onCreate(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            ((BaseIconCache.IconDB) SQLiteCacheHelper.this).getClass();
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS icons (componentName TEXT NOT NULL, profileId INTEGER NOT NULL, lastUpdated INTEGER NOT NULL DEFAULT 0, version INTEGER NOT NULL DEFAULT 0, icon BLOB, mono_icon BLOB, icon_color INTEGER NOT NULL DEFAULT 0, flags INTEGER NOT NULL DEFAULT 0, label TEXT, system_state TEXT, keywords TEXT, PRIMARY KEY (componentName, profileId) );");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i4, int i5) {
            if (i4 != i5) {
                clearDB(sQLiteDatabase);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i4, int i5) {
            if (i4 != i5) {
                clearDB(sQLiteDatabase);
            }
        }
    }

    public SQLiteCacheHelper(int i4, Context context, String str) {
        this.mOpenHelper = new MySQLiteOpenHelper(context, str, i4);
    }

    public final void clear() {
        MySQLiteOpenHelper mySQLiteOpenHelper = this.mOpenHelper;
        mySQLiteOpenHelper.clearDB(mySQLiteOpenHelper.getWritableDatabase());
    }

    public final void close() {
        this.mOpenHelper.close();
    }

    public final void delete(String str, String[] strArr) {
        if (this.mIgnoreWrites) {
            return;
        }
        try {
            this.mOpenHelper.getWritableDatabase().delete(this.mTableName, str, strArr);
        } catch (SQLiteFullException e4) {
            Log.e("SQLiteCacheHelper", "Disk full, all write operations will be ignored", e4);
            this.mIgnoreWrites = true;
        } catch (SQLiteException e5) {
            Log.d("SQLiteCacheHelper", "Ignoring sqlite exception", e5);
        }
    }

    public final void insertOrReplace(ContentValues contentValues) {
        if (this.mIgnoreWrites) {
            return;
        }
        try {
            this.mOpenHelper.getWritableDatabase().insertWithOnConflict(this.mTableName, null, contentValues, 5);
        } catch (SQLiteFullException e4) {
            Log.e("SQLiteCacheHelper", "Disk full, all write operations will be ignored", e4);
            this.mIgnoreWrites = true;
        } catch (SQLiteException e5) {
            Log.d("SQLiteCacheHelper", "Ignoring sqlite exception", e5);
        }
    }

    public final Cursor query(String[] strArr, String str, String[] strArr2) {
        return this.mOpenHelper.getReadableDatabase().query(this.mTableName, strArr, str, strArr2, null, null, null);
    }
}
