package com.android.launcher3.icons.cache;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.icons.cache.BaseIconCache;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.FlagOp;
import com.android.launcher3.util.SQLiteCacheHelper;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.function.Supplier;
import s.C1391a;
/* loaded from: classes.dex */
public abstract class BaseIconCache {
    private final Looper mBgLooper;
    protected final Context mContext;
    private final String mDbFileName;
    private BitmapInfo mDefaultIcon;
    protected IconDB mIconDb;
    protected int mIconDpi;
    protected final PackageManager mPackageManager;
    protected final Handler mWorkerHandler;
    protected LocaleList mLocaleList = LocaleList.getEmptyLocaleList();
    protected String mSystemState = "";
    private final SparseArray mUserFlagOpMap = new SparseArray();
    private final SparseArray mUserFormatString = new SparseArray();
    private final Map mCache = new HashMap(50);

    /* loaded from: classes.dex */
    public final class CacheEntry {
        public BitmapInfo bitmap = BitmapInfo.LOW_RES_INFO;
        public CharSequence title = "";
        public CharSequence contentDescription = "";
    }

    /* loaded from: classes.dex */
    public final class IconDB extends SQLiteCacheHelper {
        public static final String[] COLUMNS_HIGH_RES;
        public static final String[] COLUMNS_LOW_RES;
        private static final int INDEX_COLOR;
        private static final int INDEX_FLAGS;
        private static final int INDEX_ICON;
        private static final int INDEX_MONO_ICON;
        private static final int INDEX_TITLE;

        static {
            String[] strArr = {"componentName", "label", "icon_color", "flags"};
            COLUMNS_LOW_RES = strArr;
            String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length + 2, String[].class);
            COLUMNS_HIGH_RES = strArr2;
            strArr2[strArr.length] = "icon";
            strArr2[strArr.length + 1] = "mono_icon";
            INDEX_TITLE = Arrays.asList(strArr).indexOf("label");
            INDEX_COLOR = Arrays.asList(strArr).indexOf("icon_color");
            INDEX_FLAGS = Arrays.asList(strArr).indexOf("flags");
            int length = strArr.length;
            INDEX_ICON = length;
            INDEX_MONO_ICON = length + 1;
        }

        public IconDB(int i4, Context context, String str) {
            super(i4 + 2228224, context, str);
        }
    }

    public BaseIconCache(Context context, String str, Looper looper, int i4, int i5) {
        this.mContext = context;
        this.mDbFileName = str;
        this.mPackageManager = context.getPackageManager();
        this.mBgLooper = looper;
        this.mWorkerHandler = new Handler(looper);
        updateSystemState();
        this.mIconDpi = i4;
        this.mIconDb = new IconDB(i5, context, str);
    }

    public static void a(BaseIconCache baseIconCache, int i4, int i5) {
        synchronized (baseIconCache) {
            baseIconCache.mIconDpi = i4;
            baseIconCache.mDefaultIcon = null;
            baseIconCache.mUserFlagOpMap.clear();
            baseIconCache.mIconDb.clear();
            baseIconCache.mIconDb.close();
            baseIconCache.mIconDb = new IconDB(i5, baseIconCache.mContext, baseIconCache.mDbFileName);
            baseIconCache.mCache.clear();
        }
    }

    private void addIconToDB(ContentValues contentValues, ComponentName componentName, PackageInfo packageInfo, long j4, long j5) {
        contentValues.put("componentName", componentName.flattenToString());
        contentValues.put("profileId", Long.valueOf(j4));
        contentValues.put("lastUpdated", Long.valueOf(j5));
        contentValues.put("version", Integer.valueOf(packageInfo.versionCode));
        this.mIconDb.insertOrReplace(contentValues);
    }

    private void assertWorkerThread() {
        if (Looper.myLooper() == this.mBgLooper) {
            return;
        }
        throw new IllegalStateException("Cache accessed on wrong thread " + Looper.myLooper());
    }

    private ContentValues newContentValues(BitmapInfo bitmapInfo, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        if (bitmapInfo.canPersist()) {
            Bitmap bitmap = bitmapInfo.icon;
            contentValues.put("icon", GraphicsUtils.flattenBitmap(bitmap));
            Bitmap mono = bitmapInfo.getMono();
            if (mono != null && mono.getHeight() == bitmap.getHeight() && mono.getWidth() == bitmap.getWidth() && mono.getConfig() == Bitmap.Config.ALPHA_8) {
                byte[] bArr = new byte[mono.getHeight() * mono.getWidth()];
                mono.copyPixelsToBuffer(ByteBuffer.wrap(bArr));
                contentValues.put("mono_icon", bArr);
            } else {
                contentValues.put("mono_icon", (byte[]) null);
            }
        } else {
            contentValues.put("icon", (byte[]) null);
            contentValues.put("mono_icon", (byte[]) null);
        }
        contentValues.put("icon_color", Integer.valueOf(bitmapInfo.color));
        contentValues.put("flags", Integer.valueOf(bitmapInfo.flags));
        contentValues.put("label", str);
        contentValues.put("system_state", getIconSystemState(str2));
        contentValues.put("keywords", (String) null);
        return contentValues;
    }

    private void removeFromMemCacheLocked(String str, UserHandle userHandle) {
        HashSet hashSet = new HashSet();
        Map map = this.mCache;
        for (ComponentKey componentKey : map.keySet()) {
            if (componentKey.componentName.getPackageName().equals(str) && componentKey.user.equals(userHandle)) {
                hashSet.add(componentKey);
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            map.remove((ComponentKey) it.next());
        }
    }

    private void updateSystemState() {
        this.mLocaleList = this.mContext.getResources().getConfiguration().getLocales();
        this.mSystemState = this.mLocaleList.toLanguageTags() + "," + Build.VERSION.SDK_INT;
        this.mUserFormatString.clear();
    }

    private boolean updateTitleAndIconLocked(ComponentKey componentKey, CacheEntry cacheEntry, Cursor cursor, boolean z4) {
        cacheEntry.bitmap = new BitmapInfo(BitmapInfo.LOW_RES_ICON, GraphicsUtils.setColorAlphaBound(cursor.getInt(IconDB.INDEX_COLOR), 255));
        String string = cursor.getString(IconDB.INDEX_TITLE);
        cacheEntry.title = string;
        UserHandle userHandle = componentKey.user;
        if (string == null) {
            cacheEntry.title = "";
            cacheEntry.contentDescription = "";
        } else {
            cacheEntry.contentDescription = getUserBadgedLabel(string, userHandle);
        }
        if (!z4) {
            byte[] blob = cursor.getBlob(IconDB.INDEX_ICON);
            if (blob == null) {
                return false;
            }
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inPreferredConfig = Bitmap.Config.HARDWARE;
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(blob, 0, blob.length, options);
                Objects.requireNonNull(decodeByteArray);
                cacheEntry.bitmap = new BitmapInfo(decodeByteArray, cacheEntry.bitmap.color);
                byte[] blob2 = cursor.getBlob(IconDB.INDEX_MONO_ICON);
                Bitmap bitmap = cacheEntry.bitmap.icon;
                if (blob2 != null) {
                    if (blob2.length == bitmap.getWidth() * bitmap.getHeight()) {
                        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ALPHA_8);
                        createBitmap.copyPixelsFromBuffer(ByteBuffer.wrap(blob2));
                        Bitmap copy = createBitmap.copy(Bitmap.Config.HARDWARE, false);
                        if (copy != null) {
                            createBitmap.recycle();
                            createBitmap = copy;
                        }
                        LauncherIcons iconFactory = getIconFactory();
                        try {
                            cacheEntry.bitmap.setMonoIcon(createBitmap, iconFactory);
                            iconFactory.recycle();
                        } catch (Throwable th) {
                            if (iconFactory != null) {
                                try {
                                    iconFactory.recycle();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                            throw th;
                        }
                    }
                }
            } catch (Exception unused) {
                return false;
            }
        }
        cacheEntry.bitmap.flags = cursor.getInt(IconDB.INDEX_FLAGS);
        cacheEntry.bitmap = cacheEntry.bitmap.withFlags(getUserFlagOpLocked(userHandle));
        return true;
    }

    public synchronized void addIconToDBAndMemCache(Object obj, CachingLogic cachingLogic, PackageInfo packageInfo, long j4, boolean z4) {
        UserHandle user = cachingLogic.getUser(obj);
        ComponentName component = cachingLogic.getComponent(obj);
        ComponentKey componentKey = new ComponentKey(component, user);
        CacheEntry cacheEntry = (z4 || (cacheEntry = (CacheEntry) this.mCache.get(componentKey)) == null || cacheEntry.bitmap.isNullOrLowRes()) ? null : null;
        if (cacheEntry == null) {
            cacheEntry = new CacheEntry();
            cacheEntry.bitmap = cachingLogic.loadIcon(this.mContext, obj);
        }
        if (cacheEntry.bitmap.isNullOrLowRes()) {
            return;
        }
        CharSequence label = cachingLogic.getLabel(obj);
        if (label == null) {
            Log.wtf("BaseIconCache", "No label returned from caching logic instance: " + cachingLogic);
            label = "";
        }
        cacheEntry.title = label;
        cacheEntry.contentDescription = getUserBadgedLabel(label, user);
        if (cachingLogic.addToMemCache()) {
            this.mCache.put(componentKey, cacheEntry);
        }
        addIconToDB(newContentValues(cacheEntry.bitmap, cacheEntry.title.toString(), component.getPackageName()), component, packageInfo, j4, cachingLogic.getLastUpdatedTime(obj, packageInfo));
    }

    public final CacheEntry cacheLocked(ComponentName componentName, UserHandle userHandle, Supplier supplier, CachingLogic cachingLogic, boolean z4, boolean z5) {
        return cacheLocked(componentName, userHandle, supplier, cachingLogic, null, z4, z5);
    }

    public final synchronized void cachePackageInstallInfo(String str, UserHandle userHandle, Bitmap bitmap, CharSequence charSequence) {
        removeFromMemCacheLocked(str, userHandle);
        ComponentKey componentKey = new ComponentKey(new ComponentName(str, str + "."), userHandle);
        CacheEntry cacheEntry = (CacheEntry) this.mCache.get(componentKey);
        if (cacheEntry == null) {
            cacheEntry = new CacheEntry();
        }
        if (!TextUtils.isEmpty(charSequence)) {
            cacheEntry.title = charSequence;
        }
        if (bitmap != null) {
            LauncherIcons iconFactory = getIconFactory();
            BaseIconFactory.IconOptions iconOptions = new BaseIconFactory.IconOptions();
            iconOptions.setUser(userHandle);
            cacheEntry.bitmap = iconFactory.createShapedIconBitmap(bitmap, iconOptions);
            iconFactory.recycle();
        }
        if (!TextUtils.isEmpty(charSequence) && cacheEntry.bitmap.icon != null) {
            this.mCache.put(componentKey, cacheEntry);
        }
    }

    public final synchronized BitmapInfo getDefaultIcon(UserHandle userHandle) {
        if (this.mDefaultIcon == null) {
            LauncherIcons iconFactory = getIconFactory();
            this.mDefaultIcon = iconFactory.makeDefaultIcon();
            iconFactory.recycle();
        }
        return this.mDefaultIcon.withFlags(getUserFlagOpLocked(userHandle));
    }

    public final CacheEntry getEntryForPackageLocked(String str, UserHandle userHandle, boolean z4) {
        boolean z5;
        PackageManager packageManager = this.mPackageManager;
        assertWorkerThread();
        ComponentName componentName = new ComponentName(str, C1391a.a(str, "."));
        ComponentKey componentKey = new ComponentKey(componentName, userHandle);
        Map map = this.mCache;
        CacheEntry cacheEntry = (CacheEntry) map.get(componentKey);
        if (cacheEntry == null || (cacheEntry.bitmap.isLowRes() && !z4)) {
            CacheEntry cacheEntry2 = new CacheEntry();
            if (!getEntryFromDBLocked(componentKey, cacheEntry2, z4)) {
                z5 = false;
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(str, Process.myUserHandle().equals(userHandle) ? 0 : 8192);
                    ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                    if (applicationInfo == null) {
                        throw new PackageManager.NameNotFoundException("ApplicationInfo is null");
                    }
                    LauncherIcons iconFactory = getIconFactory();
                    Drawable loadIcon = applicationInfo.loadIcon(packageManager);
                    BaseIconFactory.IconOptions iconOptions = new BaseIconFactory.IconOptions();
                    iconOptions.setUser(userHandle);
                    iconOptions.setInstantApp(isInstantApp(applicationInfo));
                    BitmapInfo createBadgedIconBitmap = iconFactory.createBadgedIconBitmap(loadIcon, iconOptions);
                    iconFactory.recycle();
                    CharSequence loadLabel = applicationInfo.loadLabel(packageManager);
                    cacheEntry2.title = loadLabel;
                    cacheEntry2.contentDescription = getUserBadgedLabel(loadLabel, userHandle);
                    cacheEntry2.bitmap = new BitmapInfo(z4 ? BitmapInfo.LOW_RES_ICON : createBadgedIconBitmap.icon, createBadgedIconBitmap.color);
                    addIconToDB(newContentValues(createBadgedIconBitmap, cacheEntry2.title.toString(), str), componentName, packageInfo, getSerialNumberForUser(userHandle), packageInfo.lastUpdateTime);
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
            z5 = true;
            if (z5) {
                map.put(componentKey, cacheEntry2);
            }
            return cacheEntry2;
        }
        return cacheEntry;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
        if (r1 == null) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean getEntryFromDBLocked(com.android.launcher3.util.ComponentKey r9, com.android.launcher3.icons.cache.BaseIconCache.CacheEntry r10, boolean r11) {
        /*
            r8 = this;
            java.lang.String r0 = "loadIconIndividually"
            android.os.Trace.beginSection(r0)
            r0 = 0
            r1 = 0
            com.android.launcher3.icons.cache.BaseIconCache$IconDB r2 = r8.mIconDb     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            if (r11 == 0) goto Le
            java.lang.String[] r3 = com.android.launcher3.icons.cache.BaseIconCache.IconDB.COLUMNS_LOW_RES     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            goto L10
        Le:
            java.lang.String[] r3 = com.android.launcher3.icons.cache.BaseIconCache.IconDB.COLUMNS_HIGH_RES     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
        L10:
            java.lang.String r4 = "componentName = ? AND profileId = ?"
            r5 = 2
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            android.content.ComponentName r6 = r9.componentName     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            java.lang.String r6 = r6.flattenToString()     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            r5[r0] = r6     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            android.os.UserHandle r6 = r9.user     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            long r6 = r8.getSerialNumberForUser(r6)     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            java.lang.String r6 = java.lang.Long.toString(r6)     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            r7 = 1
            r5[r7] = r6     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            android.database.Cursor r1 = r2.query(r3, r4, r5)     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            boolean r2 = r1.moveToNext()     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            if (r2 == 0) goto L4b
            boolean r8 = r8.updateTitleAndIconLocked(r9, r10, r1, r11)     // Catch: java.lang.Throwable -> L3f android.database.sqlite.SQLiteException -> L41
            r1.close()
            android.os.Trace.endSection()
            return r8
        L3f:
            r8 = move-exception
            goto L52
        L41:
            r8 = move-exception
            java.lang.String r9 = "BaseIconCache"
            java.lang.String r10 = "Error reading icon cache"
            android.util.Log.d(r9, r10, r8)     // Catch: java.lang.Throwable -> L3f
            if (r1 == 0) goto L4e
        L4b:
            r1.close()
        L4e:
            android.os.Trace.endSection()
            return r0
        L52:
            if (r1 == 0) goto L57
            r1.close()
        L57:
            android.os.Trace.endSection()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.cache.BaseIconCache.getEntryFromDBLocked(com.android.launcher3.util.ComponentKey, com.android.launcher3.icons.cache.BaseIconCache$CacheEntry, boolean):boolean");
    }

    public final Drawable getFullResIcon(int i4, String str) {
        try {
            Resources resourcesForApplication = this.mPackageManager.getResourcesForApplication(str);
            if (resourcesForApplication != null && i4 != 0) {
                try {
                    return resourcesForApplication.getDrawableForDensity(i4, this.mIconDpi);
                } catch (Resources.NotFoundException unused) {
                }
            }
            return BaseIconFactory.getFullResDefaultActivityIcon(this.mIconDpi);
        } catch (PackageManager.NameNotFoundException unused2) {
            return BaseIconFactory.getFullResDefaultActivityIcon(this.mIconDpi);
        }
    }

    public abstract LauncherIcons getIconFactory();

    public String getIconSystemState(String str) {
        return this.mSystemState;
    }

    public abstract long getSerialNumberForUser(UserHandle userHandle);

    public final IconCacheUpdateHandler getUpdateHandler() {
        updateSystemState();
        return new IconCacheUpdateHandler((IconCache) this);
    }

    public final CharSequence getUserBadgedLabel(CharSequence charSequence, UserHandle userHandle) {
        String str;
        int hashCode = userHandle.hashCode();
        SparseArray sparseArray = this.mUserFormatString;
        int indexOfKey = sparseArray.indexOfKey(hashCode);
        if (indexOfKey < 0) {
            str = this.mPackageManager.getUserBadgedLabel("%1$s", userHandle).toString();
            if (TextUtils.equals("%1$s", str)) {
                str = null;
            }
            sparseArray.put(hashCode, str);
        } else {
            str = (String) sparseArray.valueAt(indexOfKey);
        }
        return str == null ? charSequence : String.format(str, charSequence);
    }

    public final FlagOp getUserFlagOpLocked(UserHandle userHandle) {
        int hashCode = userHandle.hashCode();
        SparseArray sparseArray = this.mUserFlagOpMap;
        int indexOfKey = sparseArray.indexOfKey(hashCode);
        if (indexOfKey >= 0) {
            return (FlagOp) sparseArray.valueAt(indexOfKey);
        }
        LauncherIcons iconFactory = getIconFactory();
        try {
            BaseIconFactory.IconOptions iconOptions = new BaseIconFactory.IconOptions();
            iconOptions.setUser(userHandle);
            FlagOp bitmapFlagOp = iconFactory.getBitmapFlagOp(iconOptions);
            sparseArray.put(hashCode, bitmapFlagOp);
            iconFactory.recycle();
            return bitmapFlagOp;
        } catch (Throwable th) {
            if (iconFactory != null) {
                try {
                    iconFactory.recycle();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public final boolean isDefaultIcon(BitmapInfo bitmapInfo, UserHandle userHandle) {
        return getDefaultIcon(userHandle).icon == bitmapInfo.icon;
    }

    public abstract boolean isInstantApp(ApplicationInfo applicationInfo);

    public final void loadFallbackIcon(Object obj, CacheEntry cacheEntry, CachingLogic cachingLogic, boolean z4, boolean z5, ComponentName componentName, UserHandle userHandle) {
        if (obj != null) {
            cacheEntry.bitmap = cachingLogic.loadIcon(this.mContext, obj);
            return;
        }
        if (z4) {
            CacheEntry entryForPackageLocked = getEntryForPackageLocked(componentName.getPackageName(), userHandle, false);
            cacheEntry.bitmap = entryForPackageLocked.bitmap;
            cacheEntry.contentDescription = entryForPackageLocked.contentDescription;
            if (z5) {
                cacheEntry.title = entryForPackageLocked.title;
            }
        }
        if (cacheEntry.bitmap == null) {
            Log.wtf("BaseIconCache", "using default icon for " + componentName.toShortString());
            cacheEntry.bitmap = getDefaultIcon(userHandle);
        }
    }

    public final synchronized void remove(ComponentName componentName, UserHandle userHandle) {
        this.mCache.remove(new ComponentKey(componentName, userHandle));
    }

    public final synchronized void removeIconsForPkg(String str, UserHandle userHandle) {
        removeFromMemCacheLocked(str, userHandle);
        long serialNumberForUser = getSerialNumberForUser(userHandle);
        IconDB iconDB = this.mIconDb;
        iconDB.delete("componentName LIKE ? AND profileId = ?", new String[]{str + "/%", Long.toString(serialNumberForUser)});
    }

    public final void updateIconParams(final int i4, final int i5) {
        this.mWorkerHandler.post(new Runnable() { // from class: M0.a
            @Override // java.lang.Runnable
            public final void run() {
                BaseIconCache.a(BaseIconCache.this, i4, i5);
            }
        });
    }

    public final CacheEntry cacheLocked(ComponentName componentName, UserHandle userHandle, Supplier supplier, CachingLogic cachingLogic, Cursor cursor, boolean z4, boolean z5) {
        boolean updateTitleAndIconLocked;
        Object obj;
        boolean z6;
        assertWorkerThread();
        ComponentKey componentKey = new ComponentKey(componentName, userHandle);
        Map map = this.mCache;
        CacheEntry cacheEntry = (CacheEntry) map.get(componentKey);
        if (cacheEntry == null || (cacheEntry.bitmap.isLowRes() && !z5)) {
            CacheEntry cacheEntry2 = new CacheEntry();
            if (cachingLogic.addToMemCache()) {
                map.put(componentKey, cacheEntry2);
            }
            if (cursor == null) {
                updateTitleAndIconLocked = getEntryFromDBLocked(componentKey, cacheEntry2, z5);
            } else {
                updateTitleAndIconLocked = updateTitleAndIconLocked(componentKey, cacheEntry2, cursor, z5);
            }
            if (updateTitleAndIconLocked) {
                obj = null;
                z6 = false;
            } else {
                obj = supplier.get();
                loadFallbackIcon(obj, cacheEntry2, cachingLogic, z4, true, componentName, userHandle);
                z6 = true;
            }
            if (TextUtils.isEmpty(cacheEntry2.title)) {
                if (obj == null && !z6) {
                    obj = supplier.get();
                }
                if (obj != null) {
                    CharSequence label = cachingLogic.getLabel(obj);
                    cacheEntry2.title = label;
                    cacheEntry2.contentDescription = getUserBadgedLabel(cachingLogic.getDescription(obj, label), userHandle);
                }
            }
            return cacheEntry2;
        }
        return cacheEntry;
    }
}
