package com.android.launcher3.model;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.util.ArrayMap;
import android.util.Log;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.GridSizeMigrationUtil;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.provider.LauncherDbUtils;
import com.android.launcher3.util.GridOccupancy;
import com.android.launcher3.util.IntArray;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import v.C1429e;
/* loaded from: classes.dex */
public final class GridSizeMigrationUtil {

    /* loaded from: classes.dex */
    public final class DbEntry extends ItemInfo implements Comparable {
        private Map mFolderItems = new HashMap();
        private String mIntent;
        private String mProvider;

        private static String cleanIntentString(String str) {
            try {
                Intent parseUri = Intent.parseUri(str, 0);
                parseUri.setSourceBounds(null);
                return parseUri.toURI();
            } catch (URISyntaxException e4) {
                Log.e("GridSizeMigrationUtil", "Unable to parse Intent string", e4);
                return str;
            }
        }

        public static /* synthetic */ String t(DbEntry dbEntry, String str) {
            return ((Set) ((HashMap) dbEntry.mFolderItems).get(str)).size() + cleanIntentString(str);
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            DbEntry dbEntry = (DbEntry) obj;
            int i4 = this.screenId;
            int i5 = dbEntry.screenId;
            if (i4 != i5) {
                return Integer.compare(i4, i5);
            }
            int i6 = this.cellY;
            int i7 = dbEntry.cellY;
            return i6 != i7 ? Integer.compare(i6, i7) : Integer.compare(this.cellX, dbEntry.cellX);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || DbEntry.class != obj.getClass()) {
                return false;
            }
            return Objects.equals(getEntryMigrationId(), ((DbEntry) obj).getEntryMigrationId());
        }

        public final String getEntryMigrationId() {
            int i4 = this.itemType;
            if (i4 != 0) {
                return i4 != 2 ? i4 != 4 ? cleanIntentString(this.mIntent) : this.mProvider : (String) ((HashMap) this.mFolderItems).keySet().stream().map(new Function() { // from class: com.android.launcher3.model.V
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        return GridSizeMigrationUtil.DbEntry.t(GridSizeMigrationUtil.DbEntry.this, (String) obj);
                    }
                }).sorted().collect(Collectors.joining(","));
            }
            String cleanIntentString = cleanIntentString(this.mIntent);
            try {
                ComponentName component = Intent.parseUri(cleanIntentString, 0).getComponent();
                Objects.requireNonNull(component);
                return component.toString();
            } catch (Exception unused) {
                return cleanIntentString;
            }
        }

        public final int hashCode() {
            return Objects.hash(getEntryMigrationId());
        }
    }

    /* loaded from: classes.dex */
    public final class DbReader {
        private final Context mContext;
        private final SQLiteDatabase mDb;
        private final String mTableName;
        private final Set mValidPackages;
        private int mLastScreenId = -1;
        private final Map mWorkspaceEntriesByScreenId = new ArrayMap();

        public DbReader(SQLiteDatabase sQLiteDatabase, String str, Context context, Set set) {
            this.mDb = sQLiteDatabase;
            this.mTableName = str;
            this.mContext = context;
            this.mValidPackages = set;
        }

        private int getFolderItemsCount(DbEntry dbEntry) {
            Cursor query = this.mDb.query(this.mTableName, new String[]{"_id", "intent"}, "container = " + dbEntry.id, null, null, null, null);
            int i4 = 0;
            while (query.moveToNext()) {
                try {
                    int i5 = query.getInt(0);
                    String string = query.getString(1);
                    verifyIntent(string);
                    i4++;
                    if (!((HashMap) dbEntry.mFolderItems).containsKey(string)) {
                        ((HashMap) dbEntry.mFolderItems).put(string, new HashSet());
                    }
                    ((Set) ((HashMap) dbEntry.mFolderItems).get(string)).add(Integer.valueOf(i5));
                } catch (Exception unused) {
                    GridSizeMigrationUtil.a(this.mDb, this.mTableName, IntArray.wrap(query.getInt(0)));
                }
            }
            query.close();
            return i4;
        }

        private void verifyIntent(String str) {
            Intent parseUri = Intent.parseUri(str, 0);
            if (parseUri.getComponent() != null) {
                verifyPackage(parseUri.getComponent().getPackageName());
            } else if (parseUri.getPackage() != null) {
                verifyPackage(parseUri.getPackage());
            }
        }

        private void verifyPackage(String str) {
            if (!this.mValidPackages.contains(str)) {
                throw new Exception("Package not available");
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x0170  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.List loadAllWorkspaceEntries() {
            /*
                Method dump skipped, instructions count: 456
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.GridSizeMigrationUtil.DbReader.loadAllWorkspaceEntries():java.util.List");
        }

        public final List loadHotseatEntries() {
            int i4;
            ArrayList arrayList = new ArrayList();
            Cursor query = this.mDb.query(this.mTableName, new String[]{"_id", "itemType", "intent", "screen"}, "container = -101", null, null, null, null);
            int columnIndexOrThrow = query.getColumnIndexOrThrow("_id");
            int columnIndexOrThrow2 = query.getColumnIndexOrThrow("itemType");
            int columnIndexOrThrow3 = query.getColumnIndexOrThrow("intent");
            int columnIndexOrThrow4 = query.getColumnIndexOrThrow("screen");
            IntArray intArray = new IntArray();
            while (query.moveToNext()) {
                DbEntry dbEntry = new DbEntry();
                dbEntry.id = query.getInt(columnIndexOrThrow);
                dbEntry.itemType = query.getInt(columnIndexOrThrow2);
                dbEntry.screenId = query.getInt(columnIndexOrThrow4);
                try {
                    i4 = dbEntry.itemType;
                } catch (Exception e4) {
                    Log.d("GridSizeMigrationUtil", "Removing item " + dbEntry.id, e4);
                    intArray.add(dbEntry.id);
                }
                if (i4 != 0) {
                    if (i4 != 2) {
                        if (i4 != 6) {
                            throw new Exception("Invalid item type");
                        }
                    } else if (getFolderItemsCount(dbEntry) == 0) {
                        throw new Exception("Folder is empty");
                    } else {
                        arrayList.add(dbEntry);
                    }
                }
                dbEntry.mIntent = query.getString(columnIndexOrThrow3);
                verifyIntent(query.getString(columnIndexOrThrow3));
                arrayList.add(dbEntry);
            }
            GridSizeMigrationUtil.a(this.mDb, this.mTableName, intArray);
            query.close();
            return arrayList;
        }
    }

    public static void a(SQLiteDatabase sQLiteDatabase, String str, IntArray intArray) {
        sQLiteDatabase.delete(str, Utilities.createDbSelectionQuery("_id", intArray), null);
    }

    private static int copyEntryAndUpdate(DatabaseHelper databaseHelper, DbEntry dbEntry, int i4, int i5, String str, String str2) {
        SQLiteDatabase writableDatabase = databaseHelper.getWritableDatabase();
        StringBuilder sb = new StringBuilder("_id = '");
        if (dbEntry != null) {
            i4 = dbEntry.id;
        }
        Cursor query = writableDatabase.query(str, null, C1429e.a(sb, i4, "'"), null, null, null, null);
        int i6 = -1;
        while (query.moveToNext()) {
            ContentValues contentValues = new ContentValues();
            DatabaseUtils.cursorRowToContentValues(query, contentValues);
            if (dbEntry != null) {
                contentValues.put("screen", Integer.valueOf(dbEntry.screenId));
                contentValues.put("cellX", Integer.valueOf(dbEntry.cellX));
                contentValues.put("cellY", Integer.valueOf(dbEntry.cellY));
                contentValues.put("spanX", Integer.valueOf(dbEntry.spanX));
                contentValues.put("spanY", Integer.valueOf(dbEntry.spanY));
            } else {
                contentValues.put("container", Integer.valueOf(i5));
            }
            int generateNewItemId = databaseHelper.generateNewItemId();
            contentValues.put("_id", Integer.valueOf(generateNewItemId));
            databaseHelper.getWritableDatabase().insert(str2, null, contentValues);
            i6 = generateNewItemId;
        }
        query.close();
        return i6;
    }

    private static void insertEntryInDb(DatabaseHelper databaseHelper, DbEntry dbEntry, String str, String str2) {
        int copyEntryAndUpdate = copyEntryAndUpdate(databaseHelper, dbEntry, -1, -1, str, str2);
        if (dbEntry.itemType == 2) {
            for (Set<Integer> set : ((HashMap) dbEntry.mFolderItems).values()) {
                for (Integer num : set) {
                    copyEntryAndUpdate(databaseHelper, null, num.intValue(), copyEntryAndUpdate, str, str2);
                }
            }
        }
    }

    public static void migrate(DatabaseHelper databaseHelper, DbReader dbReader, DbReader dbReader2, int i4, Point point, DeviceGridState deviceGridState, DeviceGridState deviceGridState2) {
        ArrayList arrayList;
        final List loadHotseatEntries = dbReader.loadHotseatEntries();
        final List loadAllWorkspaceEntries = dbReader.loadAllWorkspaceEntries();
        final List loadHotseatEntries2 = dbReader2.loadHotseatEntries();
        final List loadAllWorkspaceEntries2 = dbReader2.loadAllWorkspaceEntries();
        final ArrayList arrayList2 = new ArrayList(1);
        final ArrayList arrayList3 = new ArrayList(1);
        final IntArray intArray = new IntArray();
        ((ArrayList) loadHotseatEntries).forEach(new Consumer() { // from class: com.android.launcher3.model.T
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r3) {
                    case 0:
                        List list = loadHotseatEntries2;
                        List list2 = (List) arrayList2;
                        GridSizeMigrationUtil.DbEntry dbEntry = (GridSizeMigrationUtil.DbEntry) obj;
                        if (list.contains(dbEntry)) {
                            return;
                        }
                        list2.add(dbEntry);
                        return;
                    default:
                        List list3 = loadHotseatEntries2;
                        IntArray intArray2 = (IntArray) arrayList2;
                        GridSizeMigrationUtil.DbEntry dbEntry2 = (GridSizeMigrationUtil.DbEntry) obj;
                        if (list3.contains(dbEntry2)) {
                            return;
                        }
                        intArray2.add(dbEntry2.id);
                        if (dbEntry2.itemType == 2) {
                            ((HashMap) dbEntry2.mFolderItems).values().forEach(new U(0, intArray2));
                            return;
                        }
                        return;
                }
            }
        });
        ArrayList arrayList4 = (ArrayList) loadHotseatEntries2;
        arrayList4.forEach(new Consumer() { // from class: com.android.launcher3.model.T
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r3) {
                    case 0:
                        List list = loadHotseatEntries;
                        List list2 = (List) intArray;
                        GridSizeMigrationUtil.DbEntry dbEntry = (GridSizeMigrationUtil.DbEntry) obj;
                        if (list.contains(dbEntry)) {
                            return;
                        }
                        list2.add(dbEntry);
                        return;
                    default:
                        List list3 = loadHotseatEntries;
                        IntArray intArray2 = (IntArray) intArray;
                        GridSizeMigrationUtil.DbEntry dbEntry2 = (GridSizeMigrationUtil.DbEntry) obj;
                        if (list3.contains(dbEntry2)) {
                            return;
                        }
                        intArray2.add(dbEntry2.id);
                        if (dbEntry2.itemType == 2) {
                            ((HashMap) dbEntry2.mFolderItems).values().forEach(new U(0, intArray2));
                            return;
                        }
                        return;
                }
            }
        });
        ((ArrayList) loadAllWorkspaceEntries).forEach(new Consumer() { // from class: com.android.launcher3.model.T
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r3) {
                    case 0:
                        List list = loadAllWorkspaceEntries2;
                        List list2 = (List) arrayList3;
                        GridSizeMigrationUtil.DbEntry dbEntry = (GridSizeMigrationUtil.DbEntry) obj;
                        if (list.contains(dbEntry)) {
                            return;
                        }
                        list2.add(dbEntry);
                        return;
                    default:
                        List list3 = loadAllWorkspaceEntries2;
                        IntArray intArray2 = (IntArray) arrayList3;
                        GridSizeMigrationUtil.DbEntry dbEntry2 = (GridSizeMigrationUtil.DbEntry) obj;
                        if (list3.contains(dbEntry2)) {
                            return;
                        }
                        intArray2.add(dbEntry2.id);
                        if (dbEntry2.itemType == 2) {
                            ((HashMap) dbEntry2.mFolderItems).values().forEach(new U(0, intArray2));
                            return;
                        }
                        return;
                }
            }
        });
        ((ArrayList) loadAllWorkspaceEntries2).forEach(new Consumer() { // from class: com.android.launcher3.model.T
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r3) {
                    case 0:
                        List list = loadAllWorkspaceEntries;
                        List list2 = (List) intArray;
                        GridSizeMigrationUtil.DbEntry dbEntry = (GridSizeMigrationUtil.DbEntry) obj;
                        if (list.contains(dbEntry)) {
                            return;
                        }
                        list2.add(dbEntry);
                        return;
                    default:
                        List list3 = loadAllWorkspaceEntries;
                        IntArray intArray2 = (IntArray) intArray;
                        GridSizeMigrationUtil.DbEntry dbEntry2 = (GridSizeMigrationUtil.DbEntry) obj;
                        if (list3.contains(dbEntry2)) {
                            return;
                        }
                        intArray2.add(dbEntry2.id);
                        if (dbEntry2.itemType == 2) {
                            ((HashMap) dbEntry2.mFolderItems).values().forEach(new U(0, intArray2));
                            return;
                        }
                        return;
                }
            }
        });
        int i5 = point.x;
        int i6 = point.y;
        Log.d("GridSizeMigrationUtil", "Start migration:\n Source Device:" + ((String) loadAllWorkspaceEntries.stream().map(new Function() { // from class: com.android.launcher3.model.Q
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    default:
                        return ((GridSizeMigrationUtil.DbEntry) obj).toString();
                }
            }
        }).collect(Collectors.joining(",\n", "[", "]"))) + "\n Target Device:" + ((String) loadAllWorkspaceEntries2.stream().map(new Function() { // from class: com.android.launcher3.model.Q
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    default:
                        return ((GridSizeMigrationUtil.DbEntry) obj).toString();
                }
            }
        }).collect(Collectors.joining(",\n", "[", "]"))) + "\n Removing Items:" + ((String) loadAllWorkspaceEntries2.stream().filter(new Predicate() { // from class: com.android.launcher3.model.S
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return IntArray.this.contains(((GridSizeMigrationUtil.DbEntry) obj).id);
            }
        }).map(new Function() { // from class: com.android.launcher3.model.Q
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    default:
                        return ((GridSizeMigrationUtil.DbEntry) obj).toString();
                }
            }
        }).collect(Collectors.joining(",\n", "[", "]"))) + "\n Adding Workspace Items:" + ((String) arrayList3.stream().map(new Function() { // from class: com.android.launcher3.model.Q
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    default:
                        return ((GridSizeMigrationUtil.DbEntry) obj).toString();
                }
            }
        }).collect(Collectors.joining(",\n", "[", "]"))) + "\n Adding Hotseat Items:" + ((String) arrayList2.stream().map(new Function() { // from class: com.android.launcher3.model.Q
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                switch (r1) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    default:
                        return ((GridSizeMigrationUtil.DbEntry) obj).toString();
                }
            }
        }).collect(Collectors.joining(",\n", "[", "]"))));
        if (!intArray.isEmpty()) {
            dbReader2.mDb.delete(dbReader2.mTableName, Utilities.createDbSelectionQuery("_id", intArray), null);
        }
        if (arrayList2.isEmpty() && arrayList3.isEmpty()) {
            return;
        }
        Collections.sort(arrayList2);
        Collections.sort(arrayList3);
        boolean[] zArr = new boolean[i4];
        Iterator it = arrayList4.iterator();
        while (it.hasNext()) {
            zArr[((DbEntry) it.next()).screenId] = true;
        }
        for (int i7 = 0; i7 < i4; i7++) {
            if (!zArr[i7] && !arrayList2.isEmpty()) {
                DbEntry dbEntry = (DbEntry) arrayList2.remove(0);
                dbEntry.screenId = i7;
                dbEntry.cellX = i7;
                dbEntry.cellY = 0;
                insertEntryInDb(databaseHelper, dbEntry, dbReader.mTableName, dbReader2.mTableName);
                zArr[dbEntry.screenId] = true;
            }
        }
        ArrayList arrayList5 = new ArrayList();
        for (int i8 = 0; i8 <= dbReader2.mLastScreenId; i8++) {
            arrayList5.add(Integer.valueOf(i8));
        }
        boolean z4 = arrayList5.isEmpty() && FeatureFlags.ENABLE_NEW_MIGRATION_LOGIC.get() && deviceGridState2.compareTo(deviceGridState) >= 0 && deviceGridState2.getColumns().intValue() - deviceGridState.getColumns().intValue() <= 2;
        Iterator it2 = arrayList5.iterator();
        while (true) {
            if (!it2.hasNext()) {
                arrayList = arrayList3;
                break;
            }
            int intValue = ((Integer) it2.next()).intValue();
            Log.d("GridSizeMigrationUtil", "Migrating " + intValue);
            arrayList = arrayList3;
            solveGridPlacement(databaseHelper, dbReader, dbReader2, intValue, i5, i6, arrayList3, false);
            if (arrayList.isEmpty()) {
                break;
            }
            arrayList3 = arrayList;
        }
        int i9 = dbReader2.mLastScreenId;
        while (true) {
            i9++;
            if (arrayList.isEmpty()) {
                return;
            }
            solveGridPlacement(databaseHelper, dbReader, dbReader2, i9, i5, i6, arrayList, z4);
        }
    }

    public static boolean migrateGridIfNeeded(Context context, InvariantDeviceProfile invariantDeviceProfile, DatabaseHelper databaseHelper, SQLiteDatabase sQLiteDatabase) {
        LauncherDbUtils.SQLiteTransaction sQLiteTransaction;
        DeviceGridState deviceGridState = new DeviceGridState(context);
        DeviceGridState deviceGridState2 = new DeviceGridState(invariantDeviceProfile);
        if (!needsToMigrate(deviceGridState, deviceGridState2)) {
            return true;
        }
        LauncherDbUtils.copyTable(sQLiteDatabase, databaseHelper.getWritableDatabase(), "favorites_tmp", context);
        HashSet hashSet = new HashSet();
        for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(8192)) {
            hashSet.add(packageInfo.packageName);
        }
        ((InstallSessionHelper) InstallSessionHelper.INSTANCE.get(context)).getActiveSessions().keySet().forEach(new U(2, hashSet));
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                LauncherDbUtils.SQLiteTransaction sQLiteTransaction2 = new LauncherDbUtils.SQLiteTransaction(databaseHelper.getWritableDatabase());
                try {
                    sQLiteTransaction = sQLiteTransaction2;
                    try {
                        migrate(databaseHelper, new DbReader(sQLiteTransaction2.getDb(), "favorites_tmp", context, hashSet), new DbReader(sQLiteTransaction2.getDb(), "favorites", context, hashSet), deviceGridState2.getNumHotseat(), new Point(deviceGridState2.getColumns().intValue(), deviceGridState2.getRows().intValue()), deviceGridState, deviceGridState2);
                        LauncherDbUtils.dropTable(sQLiteTransaction.getDb(), "favorites_tmp");
                        sQLiteTransaction.commit();
                        sQLiteTransaction.close();
                        return true;
                    } catch (Throwable th) {
                        th = th;
                        Throwable th2 = th;
                        try {
                            sQLiteTransaction.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    sQLiteTransaction = sQLiteTransaction2;
                }
            } catch (Exception e4) {
                Log.e("GridSizeMigrationUtil", "Error during grid migration", e4);
                Log.v("GridSizeMigrationUtil", "Workspace migration completed in " + (System.currentTimeMillis() - currentTimeMillis));
                deviceGridState2.writeToPrefs(context);
                return false;
            }
        } finally {
            Log.v("GridSizeMigrationUtil", "Workspace migration completed in " + (System.currentTimeMillis() - currentTimeMillis));
            deviceGridState2.writeToPrefs(context);
        }
    }

    public static boolean needsToMigrate(Context context, InvariantDeviceProfile invariantDeviceProfile) {
        return needsToMigrate(new DeviceGridState(context), new DeviceGridState(invariantDeviceProfile));
    }

    private static void solveGridPlacement(DatabaseHelper databaseHelper, DbReader dbReader, DbReader dbReader2, int i4, int i5, int i6, List list, boolean z4) {
        boolean z5;
        GridOccupancy gridOccupancy = new GridOccupancy(i5, i6);
        Point point = new Point(i5, i6);
        Point point2 = new Point(0, i4 == 0 ? 1 : 0);
        List<DbEntry> list2 = (List) ((ArrayMap) dbReader2.mWorkspaceEntriesByScreenId).get(Integer.valueOf(i4));
        if (list2 != null) {
            for (DbEntry dbEntry : list2) {
                gridOccupancy.markCells(dbEntry);
            }
        }
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            DbEntry dbEntry2 = (DbEntry) it.next();
            if (!z4 || dbEntry2.screenId >= i4) {
                if (z4 && dbEntry2.screenId > i4) {
                    return;
                }
                if (dbEntry2.minSpanX > i5 || dbEntry2.minSpanY > i6) {
                    it.remove();
                } else {
                    for (int i7 = point2.y; i7 < point.y; i7++) {
                        for (int i8 = point2.x; i8 < point.x; i8++) {
                            boolean isRegionVacant = gridOccupancy.isRegionVacant(i8, i7, dbEntry2.spanX, dbEntry2.spanY);
                            boolean isRegionVacant2 = gridOccupancy.isRegionVacant(i8, i7, dbEntry2.minSpanX, dbEntry2.minSpanY);
                            if (isRegionVacant2) {
                                dbEntry2.spanX = dbEntry2.minSpanX;
                                dbEntry2.spanY = dbEntry2.minSpanY;
                            }
                            if (isRegionVacant || isRegionVacant2) {
                                dbEntry2.screenId = i4;
                                dbEntry2.cellX = i8;
                                dbEntry2.cellY = i7;
                                gridOccupancy.markCells(dbEntry2);
                                point2.set(i8 + dbEntry2.spanX, i7);
                                z5 = true;
                                break;
                            }
                        }
                        point2.set(0, point2.y);
                    }
                    z5 = false;
                    if (z5) {
                        insertEntryInDb(databaseHelper, dbEntry2, dbReader.mTableName, dbReader2.mTableName);
                        it.remove();
                    }
                }
            }
        }
    }

    private static boolean needsToMigrate(DeviceGridState deviceGridState, DeviceGridState deviceGridState2) {
        boolean z4 = !deviceGridState2.isCompatible(deviceGridState);
        if (z4) {
            Log.i("GridSizeMigrationUtil", "Migration is needed. destDeviceState: " + deviceGridState2 + ", srcDeviceState: " + deviceGridState);
        }
        return z4;
    }
}
