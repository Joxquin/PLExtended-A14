package com.android.launcher3.icons;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Trace;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.ComponentWithLabel;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.cache.BaseIconCache;
import com.android.launcher3.icons.cache.HandlerRunnable;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.IconRequestInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.PackageItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.InstantAppResolver;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.widget.WidgetSections;
import com.android.systemui.shared.R;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public final class IconCache extends BaseIconCache {
    private final HandlerRunnable mCancelledRunnable;
    private final ComponentWithLabel.ComponentCachingLogic mComponentWithLabelCachingLogic;
    private final IconProvider mIconProvider;
    private final InstantAppResolver mInstantAppResolver;
    private final l mIsUsingFallbackOrNonDefaultIconCheck;
    private final LauncherActivityCachingLogic mLauncherActivityInfoCachingLogic;
    private final LauncherApps mLauncherApps;
    private int mPendingIconRequestCount;
    private final ShortcutCachingLogic mShortcutCachingLogic;
    private final UserCache mUserManager;
    private final SparseArray mWidgetCategoryBitmapInfos;

    /* loaded from: classes.dex */
    public interface ItemInfoUpdateReceiver {
        void reapplyItemInfo(ItemInfoWithIcon itemInfoWithIcon);
    }

    public IconCache(Context context, InvariantDeviceProfile invariantDeviceProfile, String str, LauncherIconProvider launcherIconProvider) {
        super(context, str, Executors.MODEL_EXECUTOR.getLooper(), invariantDeviceProfile.fillResIconDpi, invariantDeviceProfile.iconBitmapSize);
        this.mIsUsingFallbackOrNonDefaultIconCheck = new l(this, 0);
        this.mPendingIconRequestCount = 0;
        this.mComponentWithLabelCachingLogic = new ComponentWithLabel.ComponentCachingLogic(context, false);
        this.mLauncherActivityInfoCachingLogic = (LauncherActivityCachingLogic) ResourceBasedOverride.Overrides.getObject(R.string.launcher_activity_logic_class, context, LauncherActivityCachingLogic.class);
        this.mShortcutCachingLogic = new ShortcutCachingLogic();
        this.mLauncherApps = (LauncherApps) this.mContext.getSystemService(LauncherApps.class);
        this.mUserManager = (UserCache) UserCache.INSTANCE.get(this.mContext);
        this.mInstantAppResolver = InstantAppResolver.newInstance(this.mContext);
        this.mIconProvider = launcherIconProvider;
        this.mWidgetCategoryBitmapInfos = new SparseArray();
        HandlerRunnable handlerRunnable = new HandlerRunnable(this.mWorkerHandler, new m(0), Executors.MAIN_EXECUTOR, new n());
        this.mCancelledRunnable = handlerRunnable;
        handlerRunnable.cancel();
    }

    public static void b(IconCache iconCache, L.c cVar, List list) {
        Iterator it;
        LauncherActivityInfo launcherActivityInfo;
        BaseIconCache.CacheEntry cacheEntry;
        ComponentName componentName;
        Object obj;
        Cursor createBulkQueryCursor;
        Cursor cursor;
        iconCache.getClass();
        int i4 = 0;
        int i5 = 1;
        Map map = (Map) list.stream().filter(new f(0)).collect(Collectors.groupingBy(new o(1)));
        Trace.beginSection("loadIconSubsectionInBulk");
        LauncherActivityCachingLogic launcherActivityCachingLogic = iconCache.mLauncherActivityInfoCachingLogic;
        Trace.beginSection("loadIconSubsectionWithDatabase");
        try {
            try {
                Object obj2 = cVar.f1016a;
                obj = cVar.f1017b;
                createBulkQueryCursor = iconCache.createBulkQueryCursor(list, (UserHandle) obj2, ((Boolean) obj).booleanValue());
            } catch (SQLiteException e4) {
                Log.d("Launcher.IconCache", "Error reading icon cache", e4);
            }
            try {
                int columnIndexOrThrow = createBulkQueryCursor.getColumnIndexOrThrow("componentName");
                while (createBulkQueryCursor.moveToNext()) {
                    ComponentName unflattenFromString = ComponentName.unflattenFromString(createBulkQueryCursor.getString(columnIndexOrThrow));
                    List<IconRequestInfo> list2 = (List) map.get(unflattenFromString);
                    if (unflattenFromString != null) {
                        cursor = createBulkQueryCursor;
                        Object obj3 = obj;
                        try {
                            BaseIconCache.CacheEntry cacheLocked = iconCache.cacheLocked(unflattenFromString, (UserHandle) cVar.f1016a, new k(3, list2), launcherActivityCachingLogic, createBulkQueryCursor, false, ((Boolean) obj).booleanValue());
                            for (IconRequestInfo iconRequestInfo : list2) {
                                iconCache.applyCacheEntry(cacheLocked, iconRequestInfo.itemInfo);
                            }
                            obj = obj3;
                            createBulkQueryCursor = cursor;
                        } catch (Throwable th) {
                            th = th;
                            Throwable th2 = th;
                            if (cursor != null) {
                                try {
                                    cursor.close();
                                } catch (Throwable th3) {
                                    th2.addSuppressed(th3);
                                }
                            }
                            throw th2;
                        }
                    }
                }
                createBulkQueryCursor.close();
                Trace.endSection();
                Trace.beginSection("loadIconSubsectionWithFallback");
                Iterator it2 = map.keySet().iterator();
                while (it2.hasNext()) {
                    ComponentName componentName2 = (ComponentName) it2.next();
                    IconRequestInfo iconRequestInfo2 = (IconRequestInfo) ((List) map.get(componentName2)).get(i4);
                    ItemInfoWithIcon itemInfoWithIcon = iconRequestInfo2.itemInfo;
                    BitmapInfo bitmapInfo = itemInfoWithIcon.bitmap;
                    boolean isEmpty = TextUtils.isEmpty(itemInfoWithIcon.title);
                    int i6 = (bitmapInfo == null || iconCache.isDefaultIcon(bitmapInfo, itemInfoWithIcon.user) || bitmapInfo == BitmapInfo.LOW_RES_INFO) ? i5 : i4;
                    if (isEmpty || i6 != 0) {
                        Log.i("Launcher.IconCache", "Database bulk icon loading failed, using fallback bulk icon loading for: " + componentName2);
                        BaseIconCache.CacheEntry cacheEntry2 = new BaseIconCache.CacheEntry();
                        LauncherActivityInfo launcherActivityInfo2 = iconRequestInfo2.launcherActivityInfo;
                        cacheEntry2.title = itemInfoWithIcon.title;
                        if (bitmapInfo != null) {
                            cacheEntry2.bitmap = bitmapInfo;
                        }
                        cacheEntry2.contentDescription = itemInfoWithIcon.contentDescription;
                        if (i6 != 0) {
                            launcherActivityInfo = launcherActivityInfo2;
                            cacheEntry = cacheEntry2;
                            it = it2;
                            componentName = componentName2;
                            iconCache.loadFallbackIcon(launcherActivityInfo2, cacheEntry2, launcherActivityCachingLogic, false, isEmpty, componentName2, (UserHandle) cVar.f1016a);
                        } else {
                            it = it2;
                            launcherActivityInfo = launcherActivityInfo2;
                            cacheEntry = cacheEntry2;
                            componentName = componentName2;
                        }
                        if (isEmpty && TextUtils.isEmpty(cacheEntry.title) && launcherActivityInfo != null) {
                            CharSequence label = launcherActivityCachingLogic.getLabel(launcherActivityInfo);
                            cacheEntry.title = label;
                            cacheEntry.contentDescription = iconCache.getUserBadgedLabel(label, (UserHandle) cVar.f1016a);
                        }
                        for (IconRequestInfo iconRequestInfo3 : (List) map.get(componentName)) {
                            iconCache.applyCacheEntry(cacheEntry, iconRequestInfo3.itemInfo);
                        }
                    } else {
                        it = it2;
                    }
                    it2 = it;
                    i4 = 0;
                    i5 = 1;
                }
                Trace.endSection();
            } catch (Throwable th4) {
                th = th4;
                cursor = createBulkQueryCursor;
            }
        } finally {
            Trace.endSection();
        }
    }

    public static void c(IconCache iconCache) {
        int i4 = iconCache.mPendingIconRequestCount - 1;
        iconCache.mPendingIconRequestCount = i4;
        if (i4 <= 0) {
            Executors.MODEL_EXECUTOR.setThreadPriority(10);
        }
    }

    private Cursor createBulkQueryCursor(List list, UserHandle userHandle, boolean z4) {
        String[] strArr = (String[]) Stream.concat(list.stream().map(new o(2)).filter(new f(1)).distinct().map(new o(3)), Stream.of(Long.toString(getSerialNumberForUser(userHandle)))).toArray(new g());
        return this.mIconDb.query(z4 ? BaseIconCache.IconDB.COLUMNS_LOW_RES : BaseIconCache.IconDB.COLUMNS_HIGH_RES, E.c.a("componentName IN ( ", TextUtils.join(",", Collections.nCopies(strArr.length - 1, "?")), " ) AND profileId = ?"), strArr);
    }

    public final void applyCacheEntry(BaseIconCache.CacheEntry cacheEntry, ItemInfoWithIcon itemInfoWithIcon) {
        itemInfoWithIcon.title = Utilities.trim(cacheEntry.title);
        itemInfoWithIcon.contentDescription = cacheEntry.contentDescription;
        BitmapInfo bitmapInfo = cacheEntry.bitmap;
        itemInfoWithIcon.bitmap = bitmapInfo;
        if (bitmapInfo == null) {
            Log.wtf("Launcher.IconCache", "Cannot find bitmap from the cache, default icon was loaded.");
            itemInfoWithIcon.bitmap = getDefaultIcon(itemInfoWithIcon.user);
        }
    }

    public final void close() {
        getUpdateHandler();
        this.mIconDb.close();
    }

    public final Drawable getFullResIcon(LauncherActivityInfo launcherActivityInfo) {
        return this.mIconProvider.getIcon(launcherActivityInfo, this.mIconDpi);
    }

    @Override // com.android.launcher3.icons.cache.BaseIconCache
    public final LauncherIcons getIconFactory() {
        return LauncherIcons.obtain(this.mContext);
    }

    @Override // com.android.launcher3.icons.cache.BaseIconCache
    public final String getIconSystemState(String str) {
        return this.mIconProvider.getSystemStateForPackage(this.mSystemState, str);
    }

    @Override // com.android.launcher3.icons.cache.BaseIconCache
    public final long getSerialNumberForUser(UserHandle userHandle) {
        return this.mUserManager.getSerialNumberForUser(userHandle);
    }

    public final void getShortcutIcon(ItemInfoWithIcon itemInfoWithIcon, ShortcutInfo shortcutInfo) {
        getShortcutIcon(itemInfoWithIcon, shortcutInfo, this.mIsUsingFallbackOrNonDefaultIconCheck);
    }

    public ItemInfoWithIcon getShortcutInfoBadgeItem(ShortcutInfo shortcutInfo) {
        String str = shortcutInfo.getPackage();
        String string = shortcutInfo.getExtras() == null ? null : shortcutInfo.getExtras().getString("extra_shortcut_badge_override_package");
        if (TextUtils.isEmpty(string) || !((InstallSessionHelper) InstallSessionHelper.INSTANCE.get(this.mContext)).isTrustedPackage(str, shortcutInfo.getUserHandle())) {
            ComponentName activity = shortcutInfo.getActivity();
            if (activity != null) {
                AppInfo appInfo = new AppInfo();
                appInfo.user = shortcutInfo.getUserHandle();
                appInfo.componentName = activity;
                appInfo.intent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(activity);
                getTitleAndIcon(appInfo, false);
                return appInfo;
            }
        } else {
            str = string;
        }
        PackageItemInfo packageItemInfo = new PackageItemInfo(-1, shortcutInfo.getUserHandle(), str);
        getTitleAndIconForApp(packageItemInfo, false);
        return packageItemInfo;
    }

    public final synchronized void getTitleAndIcon(ItemInfoWithIcon itemInfoWithIcon, LauncherActivityInfo launcherActivityInfo, boolean z4) {
        getTitleAndIcon(itemInfoWithIcon, new k(2, launcherActivityInfo), false, z4);
    }

    public final synchronized void getTitleAndIconForApp(PackageItemInfo packageItemInfo, boolean z4) {
        LauncherIcons obtain;
        applyCacheEntry(getEntryForPackageLocked(packageItemInfo.packageName, packageItemInfo.user, z4), packageItemInfo);
        if (packageItemInfo.widgetCategory == -1) {
            return;
        }
        WidgetSections.WidgetSection widgetSection = (WidgetSections.WidgetSection) WidgetSections.getWidgetSections(this.mContext).get(packageItemInfo.widgetCategory);
        String string = this.mContext.getString(widgetSection.mSectionTitle);
        packageItemInfo.title = string;
        packageItemInfo.contentDescription = getUserBadgedLabel(string, packageItemInfo.user);
        BitmapInfo bitmapInfo = (BitmapInfo) this.mWidgetCategoryBitmapInfos.get(packageItemInfo.widgetCategory);
        if (bitmapInfo != null) {
            UserHandle userHandle = packageItemInfo.user;
            synchronized (this) {
                packageItemInfo.bitmap = bitmapInfo.withFlags(getUserFlagOpLocked(userHandle));
            }
            return;
        }
        try {
            obtain = LauncherIcons.obtain(this.mContext);
        } catch (Exception e4) {
            Log.e("Launcher.IconCache", "Error initializing bitmap for icons with widget category", e4);
        }
        try {
            Drawable drawable = this.mContext.getDrawable(widgetSection.mSectionDrawable);
            BaseIconFactory.IconOptions iconOptions = new BaseIconFactory.IconOptions();
            iconOptions.mShrinkNonAdaptiveIcons = false;
            BitmapInfo createBadgedIconBitmap = obtain.createBadgedIconBitmap(drawable, iconOptions);
            this.mWidgetCategoryBitmapInfos.put(packageItemInfo.widgetCategory, createBadgedIconBitmap);
            UserHandle userHandle2 = packageItemInfo.user;
            synchronized (this) {
                packageItemInfo.bitmap = createBadgedIconBitmap.withFlags(getUserFlagOpLocked(userHandle2));
                obtain.recycle();
            }
        } catch (Throwable th) {
            try {
                obtain.recycle();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final synchronized String getTitleNoCache(ComponentWithLabel componentWithLabel) {
        return Utilities.trim(cacheLocked(componentWithLabel.getComponent(), componentWithLabel.getUser(), new k(0, componentWithLabel), this.mComponentWithLabelCachingLogic, false, true).title);
    }

    public final synchronized void getTitlesAndIconsInBulk(List list) {
        Trace.beginSection("loadIconsInBulk");
        ((Map) list.stream().filter(new l(this, 1)).collect(Collectors.groupingBy(new o(0)))).forEach(new BiConsumer() { // from class: com.android.launcher3.icons.p
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                IconCache.b(IconCache.this, (L.c) obj, (List) obj2);
            }
        });
        Trace.endSection();
    }

    @Override // com.android.launcher3.icons.cache.BaseIconCache
    public final boolean isInstantApp(ApplicationInfo applicationInfo) {
        return this.mInstantAppResolver.isInstantApp(applicationInfo);
    }

    public final HandlerRunnable updateIconInBackground(final ItemInfoUpdateReceiver itemInfoUpdateReceiver, final ItemInfoWithIcon itemInfoWithIcon) {
        Supplier supplier;
        if ((itemInfoWithIcon instanceof AppInfo) || (itemInfoWithIcon instanceof WorkspaceItemInfo)) {
            supplier = new Supplier(this) { // from class: com.android.launcher3.icons.e

                /* renamed from: b  reason: collision with root package name */
                public final /* synthetic */ IconCache f4664b;

                {
                    this.f4664b = this;
                }

                @Override // java.util.function.Supplier
                public final Object get() {
                    switch (r3) {
                        case 0:
                            IconCache iconCache = this.f4664b;
                            ItemInfoWithIcon itemInfoWithIcon2 = itemInfoWithIcon;
                            iconCache.getTitleAndIcon(itemInfoWithIcon2, false);
                            return itemInfoWithIcon2;
                        default:
                            IconCache iconCache2 = this.f4664b;
                            PackageItemInfo packageItemInfo = (PackageItemInfo) itemInfoWithIcon;
                            iconCache2.getTitleAndIconForApp(packageItemInfo, false);
                            return packageItemInfo;
                    }
                }
            };
        } else if (!(itemInfoWithIcon instanceof PackageItemInfo)) {
            StringBuilder sb = new StringBuilder("Icon update not supported for ");
            sb.append(itemInfoWithIcon);
            Log.i("Launcher.IconCache", sb.toString() == null ? "null" : itemInfoWithIcon.getClass().getName());
            return this.mCancelledRunnable;
        } else {
            final PackageItemInfo packageItemInfo = (PackageItemInfo) itemInfoWithIcon;
            supplier = new Supplier(this) { // from class: com.android.launcher3.icons.e

                /* renamed from: b  reason: collision with root package name */
                public final /* synthetic */ IconCache f4664b;

                {
                    this.f4664b = this;
                }

                @Override // java.util.function.Supplier
                public final Object get() {
                    switch (r3) {
                        case 0:
                            IconCache iconCache = this.f4664b;
                            ItemInfoWithIcon itemInfoWithIcon2 = packageItemInfo;
                            iconCache.getTitleAndIcon(itemInfoWithIcon2, false);
                            return itemInfoWithIcon2;
                        default:
                            IconCache iconCache2 = this.f4664b;
                            PackageItemInfo packageItemInfo2 = (PackageItemInfo) packageItemInfo;
                            iconCache2.getTitleAndIconForApp(packageItemInfo2, false);
                            return packageItemInfo2;
                    }
                }
            };
        }
        Supplier supplier2 = supplier;
        if (this.mPendingIconRequestCount <= 0) {
            Executors.MODEL_EXECUTOR.setThreadPriority(-2);
        }
        this.mPendingIconRequestCount++;
        Handler handler = this.mWorkerHandler;
        LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
        Objects.requireNonNull(itemInfoUpdateReceiver);
        HandlerRunnable handlerRunnable = new HandlerRunnable(handler, supplier2, looperExecutor, new Consumer() { // from class: com.android.launcher3.icons.h
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                IconCache.ItemInfoUpdateReceiver.this.reapplyItemInfo((ItemInfoWithIcon) obj);
            }
        }, new Runnable() { // from class: com.android.launcher3.icons.i
            @Override // java.lang.Runnable
            public final void run() {
                IconCache.c(IconCache.this);
            }
        });
        Utilities.postAsyncCallback(handler, handlerRunnable);
        return handlerRunnable;
    }

    public final synchronized void updateIconsForPkg(String str, UserHandle userHandle) {
        removeIconsForPkg(str, userHandle);
        try {
            PackageInfo packageInfo = this.mPackageManager.getPackageInfo(str, 8192);
            long serialNumberForUser = this.mUserManager.getSerialNumberForUser(userHandle);
            for (LauncherActivityInfo launcherActivityInfo : this.mLauncherApps.getActivityList(str, userHandle)) {
                addIconToDBAndMemCache(launcherActivityInfo, this.mLauncherActivityInfoCachingLogic, packageInfo, serialNumberForUser, false);
            }
        } catch (PackageManager.NameNotFoundException e4) {
            Log.d("Launcher.IconCache", "Package not found", e4);
        }
    }

    public final synchronized void updateTitleAndIcon(AppInfo appInfo) {
        BaseIconCache.CacheEntry cacheLocked = cacheLocked(appInfo.componentName, appInfo.user, new m(1), this.mLauncherActivityInfoCachingLogic, false, appInfo.usingLowResIcon());
        BitmapInfo bitmapInfo = cacheLocked.bitmap;
        if (bitmapInfo != null && !isDefaultIcon(bitmapInfo, appInfo.user)) {
            applyCacheEntry(cacheLocked, appInfo);
        }
    }

    public final void getShortcutIcon(ItemInfoWithIcon itemInfoWithIcon, ShortcutInfo shortcutInfo, Predicate predicate) {
        BitmapInfo bitmapInfo = cacheLocked(ShortcutKey.fromInfo(shortcutInfo).componentName, shortcutInfo.getUserHandle(), new k(1, shortcutInfo), this.mShortcutCachingLogic, false, false).bitmap;
        if (bitmapInfo.isNullOrLowRes()) {
            bitmapInfo = getDefaultIcon(shortcutInfo.getUserHandle());
        }
        if (isDefaultIcon(bitmapInfo, shortcutInfo.getUserHandle()) && predicate.test(itemInfoWithIcon)) {
            return;
        }
        itemInfoWithIcon.bitmap = bitmapInfo.withBadgeInfo(getShortcutInfoBadgeItem(shortcutInfo).bitmap);
    }

    public final synchronized void getTitleAndIcon(final ItemInfoWithIcon itemInfoWithIcon, boolean z4) {
        if (itemInfoWithIcon.getTargetComponent() == null) {
            itemInfoWithIcon.bitmap = getDefaultIcon(itemInfoWithIcon.user);
            itemInfoWithIcon.title = "";
            itemInfoWithIcon.contentDescription = "";
        } else {
            final Intent intent = itemInfoWithIcon.getIntent();
            getTitleAndIcon(itemInfoWithIcon, new Supplier() { // from class: com.android.launcher3.icons.j
                @Override // java.util.function.Supplier
                public final Object get() {
                    LauncherActivityInfo resolveActivity;
                    resolveActivity = IconCache.this.mLauncherApps.resolveActivity(intent, itemInfoWithIcon.user);
                    return resolveActivity;
                }
            }, true, z4);
        }
    }

    public final synchronized void getTitleAndIcon(ItemInfoWithIcon itemInfoWithIcon, Supplier supplier, boolean z4, boolean z5) {
        applyCacheEntry(cacheLocked(itemInfoWithIcon.getTargetComponent(), itemInfoWithIcon.user, supplier, this.mLauncherActivityInfoCachingLogic, z4, z5), itemInfoWithIcon);
    }
}
