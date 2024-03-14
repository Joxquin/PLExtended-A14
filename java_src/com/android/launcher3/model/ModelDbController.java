package com.android.launcher3.model;

import android.app.blob.BlobHandle;
import android.app.blob.BlobStoreManager;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.Xml;
import com.android.launcher3.AutoInstallsLayout;
import com.android.launcher3.ConstantItem;
import com.android.launcher3.DefaultLayoutParser;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.provider.LauncherDbUtils;
import com.android.launcher3.provider.RestoreDbTask;
import com.android.launcher3.util.IOUtils;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.Partner;
import com.android.launcher3.widget.LauncherWidgetHolder;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.StringReader;
import java.util.Arrays;
import java.util.function.IntFunction;
import java.util.function.Supplier;
import java.util.function.ToLongFunction;
import java.util.stream.Collectors;
import kotlin.Pair;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes.dex */
public final class ModelDbController {
    private final Context mContext;
    protected DatabaseHelper mOpenHelper;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.model.ModelDbController$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements AutoInstallsLayout.SourceResources {
    }

    public ModelDbController(Context context) {
        this.mContext = context;
    }

    public static void a(ModelDbController modelDbController, String str) {
        LauncherPrefs launcherPrefs = LauncherPrefs.get(modelDbController.mContext);
        ConstantItem emptyDbCreatedKey = modelDbController.getEmptyDbCreatedKey(str);
        Boolean bool = Boolean.TRUE;
        emptyDbCreatedKey.getClass();
        launcherPrefs.putSync(new Pair(emptyDbCreatedKey, bool));
    }

    private synchronized void createDbIfNotExists() {
        if (this.mOpenHelper == null) {
            this.mOpenHelper = createDatabaseHelper(false);
            RestoreDbTask.restoreIfNeeded(this.mContext, this);
        }
    }

    private AutoInstallsLayout createWorkspaceLoaderFromAppRestriction(LauncherWidgetHolder launcherWidgetHolder) {
        Context context = this.mContext;
        ContentResolver contentResolver = context.getContentResolver();
        String string = Settings.Secure.getString(contentResolver, "launcher3.layout.provider.blob");
        if (Utilities.ATLEAST_R && !TextUtils.isEmpty(string)) {
            try {
                ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(((BlobStoreManager) context.getSystemService(BlobStoreManager.class)).openBlob(BlobHandle.createWithSha256(Base64.decode(string, 3), "launcher-layout", 0L, "ignore")));
                AutoInstallsLayout autoInstallsLayoutFromIS = getAutoInstallsLayoutFromIS(autoCloseInputStream, launcherWidgetHolder, new AnonymousClass1());
                autoCloseInputStream.close();
                return autoInstallsLayoutFromIS;
            } catch (Exception e4) {
                Log.e("LauncherProvider", "Error getting layout from blob handle", e4);
                return null;
            }
        }
        String string2 = Settings.Secure.getString(contentResolver, "launcher3.layout.provider");
        if (TextUtils.isEmpty(string2)) {
            return null;
        }
        PackageManager packageManager = context.getPackageManager();
        ProviderInfo resolveContentProvider = packageManager.resolveContentProvider(string2, 0);
        if (resolveContentProvider == null) {
            Log.e("LauncherProvider", "No provider found for authority " + string2);
            return null;
        }
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        try {
            InputStream openInputStream = contentResolver.openInputStream(new Uri.Builder().scheme("content").authority(string2).path("launcher_layout").appendQueryParameter("version", "1").appendQueryParameter("gridWidth", Integer.toString(idp.numColumns)).appendQueryParameter("gridHeight", Integer.toString(idp.numRows)).appendQueryParameter("hotseatSize", Integer.toString(idp.numDatabaseHotseatIcons)).build());
            Log.d("LauncherProvider", "Loading layout from " + string2);
            AutoInstallsLayout autoInstallsLayoutFromIS2 = getAutoInstallsLayoutFromIS(openInputStream, launcherWidgetHolder, AutoInstallsLayout.SourceResources.wrap(packageManager.getResourcesForApplication(resolveContentProvider.applicationInfo)));
            if (openInputStream != null) {
                openInputStream.close();
            }
            return autoInstallsLayoutFromIS2;
        } catch (Exception e5) {
            Log.e("LauncherProvider", "Error getting layout stream from: " + string2, e5);
            return null;
        }
    }

    private AutoInstallsLayout getAutoInstallsLayoutFromIS(InputStream inputStream, LauncherWidgetHolder launcherWidgetHolder, AutoInstallsLayout.SourceResources sourceResources) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        IOUtils.copy(inputStream, byteArrayOutputStream);
        String str = new String(byteArrayOutputStream.toByteArray());
        final XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(new StringReader(str));
        return new AutoInstallsLayout(this.mContext, launcherWidgetHolder, this.mOpenHelper, sourceResources, new Supplier() { // from class: com.android.launcher3.model.m0
            @Override // java.util.function.Supplier
            public final Object get() {
                return newPullParser;
            }
        }, "workspace");
    }

    private DefaultLayoutParser getDefaultLayoutParser(LauncherWidgetHolder launcherWidgetHolder) {
        Context context = this.mContext;
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        return new DefaultLayoutParser(context, launcherWidgetHolder, this.mOpenHelper, context.getResources(), (idp.demoModeLayoutId == 0 || !((UserManager) context.getSystemService(UserManager.class)).isDemoUser()) ? idp.defaultLayoutId : idp.demoModeLayoutId);
    }

    private ConstantItem getEmptyDbCreatedKey(String str) {
        if (this.mContext instanceof MainThreadInitializedObject.SandboxContext) {
            return LauncherPrefs.nonRestorableItem("EMPTY_DATABASE_CREATED", Boolean.FALSE, false);
        }
        return LauncherPrefs.backedUpItem(TextUtils.equals(str, "launcher.db") ? "EMPTY_DATABASE_CREATED" : androidx.constraintlayout.widget.j.a("EMPTY_DATABASE_CREATED@", str), Boolean.FALSE, false);
    }

    public final void clearEmptyDbFlag() {
        createDbIfNotExists();
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        LauncherPrefs.Companion.get(this.mContext).removeSync(getEmptyDbCreatedKey(this.mOpenHelper.getDatabaseName()));
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.android.launcher3.model.l0] */
    public final DatabaseHelper createDatabaseHelper(boolean z4) {
        Context context = this.mContext;
        final String str = context instanceof MainThreadInitializedObject.SandboxContext ? null : ((InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(context)).dbFile;
        DatabaseHelper databaseHelper = new DatabaseHelper(context, str, new ToLongFunction() { // from class: com.android.launcher3.model.l0
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ModelDbController.this.getSerialNumberForUser((UserHandle) obj);
            }
        }, z4 ? new M0.b() : new Runnable() { // from class: com.android.launcher3.model.k0
            @Override // java.lang.Runnable
            public final void run() {
                ModelDbController.a(ModelDbController.this, str);
            }
        });
        if (!LauncherDbUtils.tableExists(databaseHelper.getReadableDatabase(), "favorites")) {
            Log.e("LauncherProvider", "Tables are missing after onCreate has been called. Trying to recreate");
            LauncherSettings$Favorites.addTableToDb(databaseHelper.getWritableDatabase(), getSerialNumberForUser(Process.myUserHandle()), true, "favorites");
        }
        databaseHelper.mHotseatRestoreTableExists = LauncherDbUtils.tableExists(databaseHelper.getReadableDatabase(), "hotseat_restore_backup");
        databaseHelper.initIds();
        return databaseHelper;
    }

    public final void createEmptyDB() {
        createDbIfNotExists();
        DatabaseHelper databaseHelper = this.mOpenHelper;
        databaseHelper.createEmptyDB(databaseHelper.getWritableDatabase());
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        LauncherPrefs launcherPrefs = LauncherPrefs.Companion.get(this.mContext);
        ConstantItem emptyDbCreatedKey = getEmptyDbCreatedKey(this.mOpenHelper.getDatabaseName());
        Boolean bool = Boolean.TRUE;
        emptyDbCreatedKey.getClass();
        launcherPrefs.putSync(new Pair(emptyDbCreatedKey, bool));
    }

    public final int delete(String str, String str2, String[] strArr) {
        createDbIfNotExists();
        SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        int delete = writableDatabase.delete(str, str2, strArr);
        if (delete > 0) {
            DatabaseHelper databaseHelper = this.mOpenHelper;
            if (databaseHelper.mHotseatRestoreTableExists) {
                LauncherDbUtils.dropTable(writableDatabase, "hotseat_restore_backup");
                databaseHelper.mHotseatRestoreTableExists = false;
            }
        }
        return delete;
    }

    public final IntArray deleteEmptyFolders() {
        createDbIfNotExists();
        SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        try {
            LauncherDbUtils.SQLiteTransaction sQLiteTransaction = new LauncherDbUtils.SQLiteTransaction(writableDatabase);
            IntArray queryIntArray = LauncherDbUtils.queryIntArray(false, writableDatabase, "favorites", "_id", "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)", null);
            if (!queryIntArray.isEmpty()) {
                writableDatabase.delete("favorites", Utilities.createDbSelectionQuery("_id", queryIntArray), null);
            }
            sQLiteTransaction.commit();
            sQLiteTransaction.close();
            return queryIntArray;
        } catch (SQLException e4) {
            Log.e("LauncherProvider", e4.getMessage(), e4);
            return new IntArray();
        }
    }

    public final int generateNewItemId() {
        createDbIfNotExists();
        return this.mOpenHelper.generateNewItemId();
    }

    public final SQLiteDatabase getDb() {
        createDbIfNotExists();
        return this.mOpenHelper.getWritableDatabase();
    }

    public final int getNewScreenId() {
        createDbIfNotExists();
        return this.mOpenHelper.getNewScreenId();
    }

    public final long getSerialNumberForUser(UserHandle userHandle) {
        return ((UserCache) UserCache.INSTANCE.get(this.mContext)).getSerialNumberForUser(userHandle);
    }

    public final int insert(String str, ContentValues contentValues) {
        createDbIfNotExists();
        SQLiteDatabase writableDatabase = this.mOpenHelper.getWritableDatabase();
        contentValues.put("modified", Long.valueOf(System.currentTimeMillis()));
        int dbInsertAndCheck = this.mOpenHelper.dbInsertAndCheck(writableDatabase, str, contentValues);
        if (dbInsertAndCheck >= 0) {
            DatabaseHelper databaseHelper = this.mOpenHelper;
            if (databaseHelper.mHotseatRestoreTableExists) {
                LauncherDbUtils.dropTable(writableDatabase, "hotseat_restore_backup");
                databaseHelper.mHotseatRestoreTableExists = false;
            }
        }
        return dbInsertAndCheck;
    }

    public final synchronized void loadDefaultFavoritesIfNecessary() {
        Partner partner;
        int xmlResId;
        createDbIfNotExists();
        Context context = this.mContext;
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        if (((Boolean) LauncherPrefs.Companion.get(context).get(getEmptyDbCreatedKey(this.mOpenHelper.getDatabaseName()))).booleanValue()) {
            Log.d("LauncherProvider", "loading default workspace");
            LauncherWidgetHolder newLauncherWidgetHolder = this.mOpenHelper.newLauncherWidgetHolder();
            DefaultLayoutParser createWorkspaceLoaderFromAppRestriction = createWorkspaceLoaderFromAppRestriction(newLauncherWidgetHolder);
            if (createWorkspaceLoaderFromAppRestriction == null) {
                createWorkspaceLoaderFromAppRestriction = AutoInstallsLayout.get(this.mContext, newLauncherWidgetHolder, this.mOpenHelper);
            }
            if (createWorkspaceLoaderFromAppRestriction == null && (partner = Partner.get(this.mContext.getPackageManager(), "com.android.launcher3.action.PARTNER_CUSTOMIZATION")) != null && (xmlResId = partner.getXmlResId("partner_default_layout")) != 0) {
                createWorkspaceLoaderFromAppRestriction = new DefaultLayoutParser(this.mContext, newLauncherWidgetHolder, this.mOpenHelper, partner.getResources(), xmlResId);
            }
            boolean z4 = createWorkspaceLoaderFromAppRestriction != null;
            if (createWorkspaceLoaderFromAppRestriction == null) {
                createWorkspaceLoaderFromAppRestriction = getDefaultLayoutParser(newLauncherWidgetHolder);
            }
            DatabaseHelper databaseHelper = this.mOpenHelper;
            databaseHelper.createEmptyDB(databaseHelper.getWritableDatabase());
            DatabaseHelper databaseHelper2 = this.mOpenHelper;
            if (databaseHelper2.loadFavorites(databaseHelper2.getWritableDatabase(), createWorkspaceLoaderFromAppRestriction) <= 0 && z4) {
                DatabaseHelper databaseHelper3 = this.mOpenHelper;
                databaseHelper3.createEmptyDB(databaseHelper3.getWritableDatabase());
                DatabaseHelper databaseHelper4 = this.mOpenHelper;
                databaseHelper4.loadFavorites(databaseHelper4.getWritableDatabase(), getDefaultLayoutParser(newLauncherWidgetHolder));
            }
            LauncherPrefs.Companion.get(this.mContext).removeSync(getEmptyDbCreatedKey(this.mOpenHelper.getDatabaseName()));
            newLauncherWidgetHolder.destroy();
        }
    }

    public final LauncherDbUtils.SQLiteTransaction newTransaction() {
        createDbIfNotExists();
        return new LauncherDbUtils.SQLiteTransaction(this.mOpenHelper.getWritableDatabase());
    }

    public final Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3) {
        createDbIfNotExists();
        Cursor query = this.mOpenHelper.getWritableDatabase().query(str, strArr, str2, strArr2, null, null, str3);
        Bundle bundle = new Bundle();
        bundle.putString("db_name", this.mOpenHelper.getDatabaseName());
        query.setExtras(bundle);
        return query;
    }

    public final void refreshHotseatRestoreTable() {
        createDbIfNotExists();
        DatabaseHelper databaseHelper = this.mOpenHelper;
        databaseHelper.mHotseatRestoreTableExists = LauncherDbUtils.tableExists(databaseHelper.getReadableDatabase(), "hotseat_restore_backup");
    }

    public final void removeGhostWidgets() {
        createDbIfNotExists();
        DatabaseHelper databaseHelper = this.mOpenHelper;
        SQLiteDatabase writableDatabase = databaseHelper.getWritableDatabase();
        LauncherWidgetHolder newLauncherWidgetHolder = databaseHelper.newLauncherWidgetHolder();
        try {
            try {
                int[] appWidgetIds = newLauncherWidgetHolder.getAppWidgetIds();
                IntSet wrap = IntSet.wrap(LauncherDbUtils.queryIntArray(false, writableDatabase, "favorites", "appWidgetId", "itemType=4", null));
                boolean z4 = false;
                for (int i4 : appWidgetIds) {
                    if (!wrap.contains(i4)) {
                        try {
                            FileLog.d("DatabaseHelper", "Deleting invalid widget " + i4);
                            newLauncherWidgetHolder.deleteAppWidgetId(i4);
                            z4 = true;
                        } catch (RuntimeException unused) {
                        }
                    }
                }
                if (z4) {
                    FileLog.d("DatabaseHelper", "One or more widgets was removed. db_path=" + writableDatabase.getPath() + " allWidgetsIds=" + ((String) Arrays.stream(appWidgetIds).mapToObj(new IntFunction() { // from class: com.android.launcher3.model.L
                        @Override // java.util.function.IntFunction
                        public final Object apply(int i5) {
                            switch (r1) {
                                case 0:
                                    return String.valueOf(i5);
                                default:
                                    return String.valueOf(i5);
                            }
                        }
                    }).collect(Collectors.joining(",", "[", "]"))) + ", validWidgetsIds=" + ((String) Arrays.stream(wrap.getArray().toArray()).mapToObj(new IntFunction() { // from class: com.android.launcher3.model.L
                        @Override // java.util.function.IntFunction
                        public final Object apply(int i5) {
                            switch (r1) {
                                case 0:
                                    return String.valueOf(i5);
                                default:
                                    return String.valueOf(i5);
                            }
                        }
                    }).collect(Collectors.joining(",", "[", "]"))));
                }
            } catch (IncompatibleClassChangeError e4) {
                Log.e("DatabaseHelper", "getAppWidgetIds not supported", e4);
            }
            newLauncherWidgetHolder.destroy();
        } catch (Throwable th) {
            newLauncherWidgetHolder.destroy();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void tryMigrateDB() {
        /*
            r6 = this;
            r6.createDbIfNotExists()
            com.android.launcher3.LauncherPrefs$Companion r0 = com.android.launcher3.LauncherPrefs.Companion
            android.content.Context r0 = r6.mContext
            com.android.launcher3.LauncherPrefs r1 = com.android.launcher3.LauncherPrefs.Companion.get(r0)
            com.android.launcher3.model.DatabaseHelper r2 = r6.mOpenHelper
            java.lang.String r2 = r2.getDatabaseName()
            com.android.launcher3.ConstantItem r2 = r6.getEmptyDbCreatedKey(r2)
            java.lang.Object r1 = r1.get(r2)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            java.lang.String r2 = "LauncherProvider"
            if (r1 == 0) goto L24
            goto L56
        L24:
            com.android.launcher3.InvariantDeviceProfile r1 = com.android.launcher3.LauncherAppState.getIDP(r0)
            boolean r3 = com.android.launcher3.model.GridSizeMigrationUtil.needsToMigrate(r0, r1)
            r4 = 1
            if (r3 != 0) goto L30
            goto L75
        L30:
            com.android.launcher3.model.DeviceGridState r3 = new com.android.launcher3.model.DeviceGridState
            r3.<init>(r1)
            java.lang.String r3 = r3.getDbFile()
            com.android.launcher3.model.DatabaseHelper r5 = r6.mOpenHelper
            java.lang.String r5 = r5.getDatabaseName()
            boolean r5 = android.text.TextUtils.equals(r3, r5)
            if (r5 == 0) goto L58
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r4 = "migrateGridIfNeeded - target db is same as current: "
            r1.<init>(r4)
            r1.append(r3)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r2, r1)
        L56:
            r4 = 0
            goto L75
        L58:
            com.android.launcher3.model.DatabaseHelper r3 = r6.mOpenHelper
            boolean r5 = r0 instanceof com.android.launcher3.util.MainThreadInitializedObject.SandboxContext
            if (r5 == 0) goto L60
            r4 = r3
            goto L64
        L60:
            com.android.launcher3.model.DatabaseHelper r4 = r6.createDatabaseHelper(r4)
        L64:
            r6.mOpenHelper = r4
            android.database.sqlite.SQLiteDatabase r5 = r3.getWritableDatabase()     // Catch: java.lang.Throwable -> Lab
            boolean r4 = com.android.launcher3.model.GridSizeMigrationUtil.migrateGridIfNeeded(r0, r1, r4, r5)     // Catch: java.lang.Throwable -> Lab
            com.android.launcher3.model.DatabaseHelper r1 = r6.mOpenHelper
            if (r1 == r3) goto L75
            r3.close()
        L75:
            if (r4 != 0) goto Laa
            java.lang.String r1 = "Migration failed: resetting launcher database"
            android.util.Log.d(r2, r1)
            r6.createEmptyDB()
            com.android.launcher3.LauncherPrefs r1 = com.android.launcher3.LauncherPrefs.Companion.get(r0)
            com.android.launcher3.model.DatabaseHelper r2 = r6.mOpenHelper
            java.lang.String r2 = r2.getDatabaseName()
            com.android.launcher3.ConstantItem r6 = r6.getEmptyDbCreatedKey(r2)
            java.lang.Boolean r2 = java.lang.Boolean.TRUE
            r6.getClass()
            kotlin.Pair r3 = new kotlin.Pair
            r3.<init>(r6, r2)
            kotlin.Pair[] r6 = new kotlin.Pair[]{r3}
            r1.putSync(r6)
            com.android.launcher3.model.DeviceGridState r6 = new com.android.launcher3.model.DeviceGridState
            com.android.launcher3.InvariantDeviceProfile r1 = com.android.launcher3.LauncherAppState.getIDP(r0)
            r6.<init>(r1)
            r6.writeToPrefs(r0)
        Laa:
            return
        Lab:
            r0 = move-exception
            com.android.launcher3.model.DatabaseHelper r6 = r6.mOpenHelper
            if (r6 == r3) goto Lb3
            r3.close()
        Lb3:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.ModelDbController.tryMigrateDB():void");
    }

    public final int update(String str, ContentValues contentValues, String str2, String[] strArr) {
        createDbIfNotExists();
        contentValues.put("modified", Long.valueOf(System.currentTimeMillis()));
        return this.mOpenHelper.getWritableDatabase().update(str, contentValues, str2, strArr);
    }
}
