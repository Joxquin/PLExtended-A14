package com.android.launcher3.model;

import android.content.ContentValues;
import android.content.Context;
import android.database.DatabaseUtils;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.os.Process;
import android.os.UserHandle;
import android.util.Log;
import com.android.launcher3.AutoInstallsLayout;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.provider.LauncherDbUtils;
import com.android.launcher3.util.IOUtils;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.NoLocaleSQLiteHelper;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.widget.LauncherWidgetHolder;
import com.android.systemui.shared.R;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import java.util.function.ToLongFunction;
/* loaded from: classes.dex */
public final class DatabaseHelper extends NoLocaleSQLiteHelper implements AutoInstallsLayout.LayoutParserCallback {
    private final Context mContext;
    public boolean mHotseatRestoreTableExists;
    private int mMaxItemId;
    private final Runnable mOnEmptyDbCreateCallback;
    private final ToLongFunction mUserSerialProvider;

    public DatabaseHelper(Context context, String str, C0376l0 c0376l0, Runnable runnable) {
        super(32, context, str);
        this.mMaxItemId = -1;
        this.mContext = context;
        this.mUserSerialProvider = c0376l0;
        this.mOnEmptyDbCreateCallback = runnable;
    }

    private static boolean addIntegerColumn(SQLiteDatabase sQLiteDatabase, String str, long j4) {
        try {
            LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(sQLiteDatabase);
            sQLiteDatabase.execSQL("ALTER TABLE favorites ADD COLUMN " + str + " INTEGER NOT NULL DEFAULT " + j4 + ";");
            sQLiteTransaction.commit();
            sQLiteTransaction.close();
            return true;
        } catch (SQLException e4) {
            Log.e("DatabaseHelper", e4.getMessage(), e4);
            return false;
        }
    }

    private static int getMaxId(SQLiteDatabase sQLiteDatabase, String str, Object... objArr) {
        SQLiteStatement compileStatement;
        int i4 = 0;
        try {
            compileStatement = sQLiteDatabase.compileStatement(String.format(Locale.ENGLISH, str, objArr));
            i4 = (int) DatabaseUtils.longForQuery(compileStatement, null);
        } catch (IllegalArgumentException e4) {
            String message = e4.getMessage();
            if (!message.contains("re-open") || !message.contains("already-closed")) {
                throw e4;
            }
        }
        if (i4 >= 0) {
            if (compileStatement != null) {
                compileStatement.close();
            }
            return i4;
        }
        throw new RuntimeException("Error: could not query max id");
    }

    public final void createEmptyDB(SQLiteDatabase sQLiteDatabase) {
        LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(sQLiteDatabase);
        try {
            LauncherDbUtils.dropTable(sQLiteDatabase, "favorites");
            LauncherDbUtils.dropTable(sQLiteDatabase, "workspaceScreens");
            onCreate(sQLiteDatabase);
            sQLiteTransaction.commit();
            sQLiteTransaction.close();
        } catch (Throwable th) {
            try {
                sQLiteTransaction.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final int dbInsertAndCheck(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues) {
        if (contentValues != null) {
            if (contentValues.containsKey("_id")) {
                this.mMaxItemId = Math.max(contentValues.getAsInteger("_id").intValue(), this.mMaxItemId);
                return (int) sQLiteDatabase.insert(str, null, contentValues);
            }
            throw new RuntimeException("Error: attempting to add item without specifying an id");
        }
        throw new RuntimeException("Error: attempting to insert null values");
    }

    public final int generateNewItemId() {
        int i4 = this.mMaxItemId;
        if (i4 >= 0) {
            int i5 = i4 + 1;
            this.mMaxItemId = i5;
            return i5;
        }
        throw new RuntimeException("Error: max item id was not initialized");
    }

    public final int getNewScreenId() {
        return getMaxId(getWritableDatabase(), "SELECT MAX(%1$s) FROM %2$s WHERE %3$s = %4$d AND %1$s >= 0", "screen", "favorites", "container", -100) + 1;
    }

    public final void initIds() {
        if (this.mMaxItemId == -1) {
            this.mMaxItemId = getMaxId(getWritableDatabase(), "SELECT MAX(%1$s) FROM %2$s", "_id", "favorites");
        }
    }

    public final int loadFavorites(SQLiteDatabase sQLiteDatabase, AutoInstallsLayout autoInstallsLayout) {
        int loadLayout = autoInstallsLayout.loadLayout(sQLiteDatabase, new IntArray());
        this.mMaxItemId = getMaxId(sQLiteDatabase, "SELECT MAX(%1$s) FROM %2$s", "_id", "favorites");
        return loadLayout;
    }

    public final LauncherWidgetHolder newLauncherWidgetHolder() {
        Context context = this.mContext;
        return ((LauncherWidgetHolder.HolderFactory) ResourceBasedOverride.Overrides.getObject(R.string.widget_holder_factory_class, context, LauncherWidgetHolder.HolderFactory.class)).newInstance(context, null);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.mMaxItemId = 1;
        LauncherSettings$Favorites.addTableToDb(sQLiteDatabase, this.mUserSerialProvider.applyAsLong(Process.myUserHandle()), false, "favorites");
        this.mMaxItemId = getMaxId(sQLiteDatabase, "SELECT MAX(%1$s) FROM %2$s", "_id", "favorites");
        this.mOnEmptyDbCreateCallback.run();
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i4, int i5) {
        try {
            DbDowngradeHelper.parse(this.mContext.getFileStreamPath("downgrade_schema.json")).onDowngrade(sQLiteDatabase, i4, i5);
        } catch (Exception e4) {
            Log.d("DatabaseHelper", "Unable to downgrade from: " + i4 + " to " + i5 + ". Wiping database.", e4);
            createEmptyDB(sQLiteDatabase);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onOpen(SQLiteDatabase sQLiteDatabase) {
        super.onOpen(sQLiteDatabase);
        File fileStreamPath = this.mContext.getFileStreamPath("downgrade_schema.json");
        if (!fileStreamPath.exists()) {
            UserCache userCache = (UserCache) UserCache.INSTANCE.get(this.mContext);
            for (UserHandle userHandle : userCache.getUserProfiles()) {
                long serialNumberForUser = userCache.getSerialNumberForUser(userHandle);
                sQLiteDatabase.execSQL("update favorites set intent = replace(intent, ';l.profile=" + serialNumberForUser + ";', ';') where itemType = 0;");
            }
        }
        Context context = this.mContext;
        try {
            if (DbDowngradeHelper.parse(fileStreamPath).version >= 32) {
                return;
            }
        } catch (Exception unused) {
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(fileStreamPath);
            InputStream openRawResource = context.getResources().openRawResource(R.raw.downgrade_schema);
            try {
                IOUtils.copy(openRawResource, fileOutputStream);
                if (openRawResource != null) {
                    openRawResource.close();
                }
                fileOutputStream.close();
            } catch (Throwable th) {
                if (openRawResource != null) {
                    try {
                        openRawResource.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            Log.e("DbDowngradeHelper", "Error writing schema file", e4);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:105:0x02a1
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(android.database.sqlite.SQLiteDatabase r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 1030
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.DatabaseHelper.onUpgrade(android.database.sqlite.SQLiteDatabase, int, int):void");
    }
}
