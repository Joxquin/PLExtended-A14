package com.android.launcher3.util;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
/* loaded from: classes.dex */
public abstract class NoLocaleSQLiteHelper extends SQLiteOpenHelper {
    public NoLocaleSQLiteHelper(int i4, Context context, String str) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i4);
        setOpenParams(new SQLiteDatabase.OpenParams.Builder().addOpenFlags(16).build());
    }
}
