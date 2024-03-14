package com.android.launcher3;

import android.database.sqlite.SQLiteDatabase;
import android.provider.BaseColumns;
/* loaded from: classes.dex */
public final class LauncherSettings$Favorites implements BaseColumns {
    public static void addTableToDb(SQLiteDatabase sQLiteDatabase, long j4, boolean z4, String str) {
        String str2 = z4 ? " IF NOT EXISTS " : "";
        sQLiteDatabase.execSQL("CREATE TABLE " + str2 + str + " (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,icon BLOB,appWidgetProvider TEXT,modified INTEGER NOT NULL DEFAULT 0,restored INTEGER NOT NULL DEFAULT 0,profileId INTEGER DEFAULT " + j4 + ",rank INTEGER NOT NULL DEFAULT 0,options INTEGER NOT NULL DEFAULT 0,appWidgetSource INTEGER NOT NULL DEFAULT -1);");
    }
}
