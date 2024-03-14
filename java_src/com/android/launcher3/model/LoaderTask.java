package com.android.launcher3.model;

import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInstaller;
import android.content.pm.ShortcutInfo;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Trace;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.ArrayMap;
import android.util.Log;
import android.util.LongSparseArray;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderGridOrganizer;
import com.android.launcher3.folder.FolderNameInfos;
import com.android.launcher3.folder.FolderNameProvider;
import com.android.launcher3.icons.ComponentWithLabelAndIcon;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.LauncherActivityCachingLogic;
import com.android.launcher3.icons.ShortcutCachingLogic;
import com.android.launcher3.icons.cache.IconCacheUpdateHandler;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.IconRequestInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IOUtils;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.LooperIdleLock;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.util.TraceHelper;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.WidgetManagerHelper;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.function.BiConsumer;
/* loaded from: classes.dex */
public class LoaderTask implements Runnable {
    protected final LauncherAppState mApp;
    private final AllAppsList mBgAllAppsList;
    protected final BgDataModel mBgDataModel;
    private String mDbName;
    private FirstScreenBroadcast mFirstScreenBroadcast;
    private final IconCache mIconCache;
    private final LauncherApps mLauncherApps;
    private final LauncherBinder mLauncherBinder;
    private final ModelDelegate mModelDelegate;
    private final InstallSessionHelper mSessionHelper;
    private Map mShortcutKeyToPinnedShortcuts;
    private boolean mStopped;
    private final UserCache mUserCache;
    private final UserManager mUserManager;
    private final UserManagerState mUserManagerState = new UserManagerState();
    protected final Map mWidgetProvidersMap = new ArrayMap();
    private final Set mPendingPackages = new HashSet();
    private boolean mItemsDeleted = false;

    public LoaderTask(LauncherAppState launcherAppState, AllAppsList allAppsList, BgDataModel bgDataModel, ModelDelegate modelDelegate, LauncherBinder launcherBinder) {
        this.mApp = launcherAppState;
        this.mBgAllAppsList = allAppsList;
        this.mBgDataModel = bgDataModel;
        this.mModelDelegate = modelDelegate;
        this.mLauncherBinder = launcherBinder;
        this.mLauncherApps = (LauncherApps) launcherAppState.getContext().getSystemService(LauncherApps.class);
        this.mUserManager = (UserManager) launcherAppState.getContext().getSystemService(UserManager.class);
        this.mUserCache = (UserCache) UserCache.INSTANCE.get(launcherAppState.getContext());
        this.mSessionHelper = (InstallSessionHelper) InstallSessionHelper.INSTANCE.get(launcherAppState.getContext());
        this.mIconCache = launcherAppState.getIconCache();
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0062, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List loadAllApps() {
        /*
            r12 = this;
            com.android.launcher3.pm.UserCache r0 = r12.mUserCache
            java.util.List r0 = r0.getUserProfiles()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            com.android.launcher3.model.AllAppsList r2 = r12.mBgAllAppsList
            r2.clear()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.Iterator r0 = r0.iterator()
        L19:
            boolean r3 = r0.hasNext()
            r4 = 0
            r5 = 0
            if (r3 == 0) goto L63
            java.lang.Object r3 = r0.next()
            android.os.UserHandle r3 = (android.os.UserHandle) r3
            android.content.pm.LauncherApps r6 = r12.mLauncherApps
            java.util.List r6 = r6.getActivityList(r4, r3)
            if (r6 == 0) goto L62
            boolean r7 = r6.isEmpty()
            if (r7 == 0) goto L36
            goto L62
        L36:
            com.android.launcher3.model.UserManagerState r7 = r12.mUserManagerState
            boolean r7 = r7.isUserQuiet(r3)
            r8 = r5
        L3d:
            int r9 = r6.size()
            if (r8 >= r9) goto L5e
            java.lang.Object r9 = r6.get(r8)
            android.content.pm.LauncherActivityInfo r9 = (android.content.pm.LauncherActivityInfo) r9
            com.android.launcher3.model.data.AppInfo r10 = new com.android.launcher3.model.data.AppInfo
            r10.<init>(r9, r3, r7)
            com.android.launcher3.model.data.IconRequestInfo r11 = new com.android.launcher3.model.data.IconRequestInfo
            r11.<init>(r10, r9, r4, r5)
            r2.add(r11)
            com.android.launcher3.model.AllAppsList r11 = r12.mBgAllAppsList
            r11.add(r10, r9, r5)
            int r8 = r8 + 1
            goto L3d
        L5e:
            r1.addAll(r6)
            goto L19
        L62:
            return r1
        L63:
            com.android.launcher3.config.FeatureFlags$BooleanFlag r0 = com.android.launcher3.config.FeatureFlags.PROMISE_APPS_IN_ALL_APPS
            boolean r0 = r0.get()
            if (r0 == 0) goto La2
            com.android.launcher3.pm.InstallSessionHelper r0 = r12.mSessionHelper
            java.util.List r0 = r0.getAllVerifiedSessions()
            java.util.ArrayList r0 = (java.util.ArrayList) r0
            java.util.Iterator r0 = r0.iterator()
        L77:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto La2
            java.lang.Object r3 = r0.next()
            android.content.pm.PackageInstaller$SessionInfo r3 = (android.content.pm.PackageInstaller.SessionInfo) r3
            com.android.launcher3.model.AllAppsList r6 = r12.mBgAllAppsList
            com.android.launcher3.LauncherAppState r7 = r12.mApp
            android.content.Context r7 = r7.getContext()
            com.android.launcher3.pm.PackageInstallInfo r3 = com.android.launcher3.pm.PackageInstallInfo.fromInstallingState(r3)
            com.android.launcher3.model.data.AppInfo r3 = r6.addPromiseApp(r7, r3, r5)
            if (r3 == 0) goto L77
            com.android.launcher3.model.data.IconRequestInfo r6 = new com.android.launcher3.model.data.IconRequestInfo
            boolean r7 = r3.usingLowResIcon()
            r6.<init>(r3, r4, r4, r7)
            r2.add(r6)
            goto L77
        La2:
            java.lang.String r0 = "LoadAllAppsIconsInBulk"
            android.os.Trace.beginSection(r0)
            com.android.launcher3.icons.IconCache r0 = r12.mIconCache     // Catch: java.lang.Throwable -> Lee
            r0.getTitlesAndIconsInBulk(r2)     // Catch: java.lang.Throwable -> Lee
            com.android.launcher3.model.i0 r0 = new com.android.launcher3.model.i0     // Catch: java.lang.Throwable -> Lee
            r0.<init>()     // Catch: java.lang.Throwable -> Lee
            r2.forEach(r0)     // Catch: java.lang.Throwable -> Lee
            android.os.Trace.endSection()
            com.android.launcher3.model.AllAppsList r0 = r12.mBgAllAppsList
            com.android.launcher3.model.UserManagerState r2 = r12.mUserManagerState
            boolean r2 = r2.isAnyProfileQuietModeEnabled()
            r3 = 2
            r0.setFlags(r3, r2)
            com.android.launcher3.model.AllAppsList r0 = r12.mBgAllAppsList
            com.android.launcher3.LauncherAppState r2 = r12.mApp
            android.content.Context r2 = r2.getContext()
            boolean r2 = com.android.launcher3.util.PackageManagerHelper.hasShortcutsPermission(r2)
            r3 = 1
            r0.setFlags(r3, r2)
            com.android.launcher3.model.AllAppsList r0 = r12.mBgAllAppsList
            com.android.launcher3.LauncherAppState r2 = r12.mApp
            android.content.Context r2 = r2.getContext()
            java.lang.String r4 = "android.permission.MODIFY_QUIET_MODE"
            int r2 = r2.checkSelfPermission(r4)
            if (r2 != 0) goto Le4
            r5 = r3
        Le4:
            r2 = 4
            r0.setFlags(r2, r5)
            com.android.launcher3.model.AllAppsList r12 = r12.mBgAllAppsList
            r12.getAndResetChangeFlag()
            return r1
        Lee:
            r12 = move-exception
            android.os.Trace.endSection()
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.LoaderTask.loadAllApps():java.util.List");
    }

    private List loadDeepShortcuts() {
        ArrayList arrayList = new ArrayList();
        this.mBgDataModel.deepShortcutMap.clear();
        if (this.mBgAllAppsList.hasShortcutHostPermission()) {
            for (UserHandle userHandle : this.mUserCache.getUserProfiles()) {
                if (this.mUserManager.isUserUnlocked(userHandle)) {
                    ShortcutRequest.QueryResult query = new ShortcutRequest(this.mApp.getContext(), userHandle).query(11);
                    arrayList.addAll(query);
                    this.mBgDataModel.updateDeepShortcutCounts(null, query, userHandle);
                }
            }
        }
        return arrayList;
    }

    private void loadFolderNames() {
        FolderNameProvider newInstance = FolderNameProvider.newInstance(this.mApp.getContext(), this.mBgAllAppsList.data, this.mBgDataModel.folders);
        synchronized (this.mBgDataModel) {
            for (int i4 = 0; i4 < this.mBgDataModel.folders.size(); i4++) {
                FolderNameInfos folderNameInfos = new FolderNameInfos();
                FolderInfo folderInfo = (FolderInfo) this.mBgDataModel.folders.valueAt(i4);
                if (folderInfo.suggestedFolderNames == null) {
                    newInstance.getSuggestedFolderName(this.mApp.getContext(), folderInfo.contents, folderNameInfos);
                    folderInfo.suggestedFolderNames = folderNameInfos;
                }
            }
        }
    }

    private void loadWorkspaceImpl(List list, String str, LoaderMemoryLogger loaderMemoryLogger) {
        BgDataModel bgDataModel;
        LoaderCursor loaderCursor;
        Iterator it;
        Context context;
        boolean z4;
        Context context2 = this.mApp.getContext();
        PackageManagerHelper packageManagerHelper = new PackageManagerHelper(context2);
        boolean isSafeMode = packageManagerHelper.isSafeMode();
        boolean equals = "1".equals(Utilities.getSystemProperty("sys.boot_completed", "1"));
        WidgetManagerHelper widgetManagerHelper = new WidgetManagerHelper(context2);
        ModelDbController modelDbController = this.mApp.getModel().getModelDbController();
        modelDbController.tryMigrateDB();
        Log.d("LoaderTask", "loadWorkspace: loading default favorites");
        modelDbController.loadDefaultFavoritesIfNecessary();
        BgDataModel bgDataModel2 = this.mBgDataModel;
        synchronized (bgDataModel2) {
            try {
                this.mBgDataModel.clear();
                ((HashSet) this.mPendingPackages).clear();
                HashMap activeSessions = this.mSessionHelper.getActiveSessions();
                final IconCache iconCache = this.mApp.getIconCache();
                Objects.requireNonNull(iconCache);
                activeSessions.forEach(new BiConsumer() { // from class: com.android.launcher3.model.h0
                    @Override // java.util.function.BiConsumer
                    public final void accept(Object obj, Object obj2) {
                        IconCache iconCache2 = IconCache.this;
                        PackageUserKey packageUserKey = (PackageUserKey) obj;
                        PackageInstaller.SessionInfo sessionInfo = (PackageInstaller.SessionInfo) obj2;
                        iconCache2.getClass();
                        iconCache2.cachePackageInstallInfo(packageUserKey.mPackageName, packageUserKey.mUser, sessionInfo.getAppIcon(), sessionInfo.getAppLabel());
                    }
                });
                FileLog.d("LoaderTask", "loadWorkspace: Packages with active install sessions: " + activeSessions.values());
                String str2 = null;
                PackageUserKey packageUserKey = new PackageUserKey((String) null, (UserHandle) null);
                this.mFirstScreenBroadcast = new FirstScreenBroadcast(activeSessions);
                this.mShortcutKeyToPinnedShortcuts = new HashMap();
                bgDataModel = bgDataModel2;
                try {
                    LoaderCursor loaderCursor2 = new LoaderCursor(modelDbController.query("favorites", null, str, null, null), this.mApp, this.mUserManagerState);
                    Bundle extras = loaderCursor2.getExtras();
                    if (extras != null) {
                        str2 = extras.getString("db_name");
                    }
                    this.mDbName = str2;
                    try {
                        LongSparseArray longSparseArray = new LongSparseArray();
                        this.mUserManagerState.init(this.mUserCache, this.mUserManager);
                        Iterator it2 = this.mUserCache.getUserProfiles().iterator();
                        while (it2.hasNext()) {
                            UserHandle userHandle = (UserHandle) it2.next();
                            long serialNumberForUser = this.mUserCache.getSerialNumberForUser(userHandle);
                            boolean isUserUnlocked = this.mUserManager.isUserUnlocked(userHandle);
                            if (isUserUnlocked) {
                                ShortcutRequest.QueryResult query = new ShortcutRequest(context2, userHandle).query(2);
                                if (query.wasSuccess()) {
                                    Iterator it3 = query.iterator();
                                    while (it3.hasNext()) {
                                        ShortcutInfo shortcutInfo = (ShortcutInfo) it3.next();
                                        ((HashMap) this.mShortcutKeyToPinnedShortcuts).put(ShortcutKey.fromInfo(shortcutInfo), shortcutInfo);
                                        it2 = it2;
                                        context2 = context2;
                                    }
                                } else {
                                    it = it2;
                                    context = context2;
                                    z4 = false;
                                    longSparseArray.put(serialNumberForUser, Boolean.valueOf(z4));
                                    it2 = it;
                                    context2 = context;
                                }
                            }
                            it = it2;
                            context = context2;
                            z4 = isUserUnlocked;
                            longSparseArray.put(serialNumberForUser, Boolean.valueOf(z4));
                            it2 = it;
                            context2 = context;
                        }
                        ArrayList arrayList = new ArrayList();
                        while (!this.mStopped && loaderCursor2.moveToNext()) {
                            PackageUserKey packageUserKey2 = packageUserKey;
                            ArrayList arrayList2 = arrayList;
                            boolean z5 = equals;
                            LongSparseArray longSparseArray2 = longSparseArray;
                            HashMap hashMap = activeSessions;
                            loaderCursor = loaderCursor2;
                            WidgetManagerHelper widgetManagerHelper2 = widgetManagerHelper;
                            try {
                                processWorkspaceItem(loaderCursor2, loaderMemoryLogger, activeSessions, equals, packageUserKey2, widgetManagerHelper, packageManagerHelper, arrayList2, longSparseArray2, isSafeMode, list);
                                arrayList = arrayList2;
                                packageUserKey = packageUserKey2;
                                equals = z5;
                                longSparseArray = longSparseArray2;
                                activeSessions = hashMap;
                                loaderCursor2 = loaderCursor;
                                widgetManagerHelper = widgetManagerHelper2;
                            } catch (Throwable th) {
                                th = th;
                                IOUtils.closeSilently(loaderCursor);
                                throw th;
                            }
                        }
                        loaderCursor = loaderCursor2;
                        tryLoadWorkspaceIconsInBulk(arrayList);
                        IOUtils.closeSilently(loaderCursor);
                        if (!FeatureFlags.CHANGE_MODEL_DELEGATE_LOADING_ORDER.get()) {
                            this.mModelDelegate.loadAndBindWorkspaceItems(this.mUserManagerState, this.mLauncherBinder.mCallbacksList, this.mShortcutKeyToPinnedShortcuts);
                            this.mModelDelegate.loadAndBindAllAppsItems(this.mUserManagerState, this.mLauncherBinder.mCallbacksList, this.mShortcutKeyToPinnedShortcuts);
                            this.mModelDelegate.loadAndBindOtherItems(this.mLauncherBinder.mCallbacksList);
                            this.mModelDelegate.markActive();
                        }
                        if (this.mStopped) {
                            this.mBgDataModel.clear();
                            return;
                        }
                        this.mItemsDeleted = loaderCursor.commitDeleted();
                        FolderGridOrganizer folderGridOrganizer = new FolderGridOrganizer(this.mApp.getInvariantDeviceProfile());
                        Iterator it4 = this.mBgDataModel.folders.iterator();
                        while (it4.hasNext()) {
                            FolderInfo folderInfo = (FolderInfo) it4.next();
                            Collections.sort(folderInfo.contents, Folder.ITEM_POS_COMPARATOR);
                            folderGridOrganizer.setFolderInfo(folderInfo);
                            int size = folderInfo.contents.size();
                            for (int i4 = 0; i4 < size; i4++) {
                                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) folderInfo.contents.get(i4);
                                workspaceItemInfo.rank = i4;
                                if (workspaceItemInfo.usingLowResIcon() && workspaceItemInfo.itemType == 0 && folderGridOrganizer.isItemInPreview(0, workspaceItemInfo.rank)) {
                                    this.mIconCache.getTitleAndIcon(workspaceItemInfo, false);
                                }
                            }
                        }
                        loaderCursor.commitRestoredItems();
                    } catch (Throwable th2) {
                        th = th2;
                        loaderCursor = loaderCursor2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    while (true) {
                        try {
                            break;
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    }
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                bgDataModel = bgDataModel2;
            }
        }
    }

    private static void logASplit(String str) {
        Log.d("LoaderTask", str);
    }

    private static void logWidgetInfo(InvariantDeviceProfile invariantDeviceProfile, LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo) {
        Point point = new Point();
        for (DeviceProfile deviceProfile : invariantDeviceProfile.supportedProfiles) {
            deviceProfile.getCellSize(point);
            FileLog.d("LoaderTask", "DeviceProfile available width: " + deviceProfile.availableWidthPx + ", available height: " + deviceProfile.availableHeightPx + ", cellLayoutBorderSpacePx Horizontal: " + deviceProfile.cellLayoutBorderSpacePx.x + ", cellLayoutBorderSpacePx Vertical: " + deviceProfile.cellLayoutBorderSpacePx.y + ", cellSize: " + point);
        }
        StringBuilder sb = new StringBuilder("Widget dimensions:\nminResizeWidth: ");
        sb.append(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).minResizeWidth);
        sb.append("\nminResizeHeight: ");
        sb.append(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).minResizeHeight);
        sb.append("\ndefaultWidth: ");
        sb.append(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).minWidth);
        sb.append("\ndefaultHeight: ");
        sb.append(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).minHeight);
        sb.append("\n");
        if (Utilities.ATLEAST_S) {
            sb.append("targetCellWidth: ");
            sb.append(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).targetCellWidth);
            sb.append("\ntargetCellHeight: ");
            sb.append(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).targetCellHeight);
            sb.append("\nmaxResizeWidth: ");
            sb.append(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).maxResizeWidth);
            sb.append("\nmaxResizeHeight: ");
            sb.append(((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).maxResizeHeight);
            sb.append("\n");
        }
        FileLog.d("LoaderTask", sb.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x021d A[Catch: Exception -> 0x0585, TryCatch #1 {Exception -> 0x0585, blocks: (B:3:0x0026, B:5:0x002a, B:7:0x0030, B:23:0x0053, B:25:0x0065, B:27:0x0071, B:30:0x007b, B:34:0x0089, B:38:0x0095, B:40:0x00a8, B:42:0x00ba, B:44:0x00c6, B:46:0x00ca, B:54:0x00db, B:57:0x00ef, B:60:0x0100, B:61:0x0102, B:78:0x0180, B:80:0x0188, B:81:0x018e, B:84:0x01b3, B:87:0x01b9, B:89:0x01bf, B:91:0x01c5, B:93:0x01cb, B:94:0x020b, B:102:0x021d, B:105:0x0225, B:107:0x0233, B:109:0x0239, B:110:0x0250, B:112:0x0254, B:113:0x026a, B:114:0x0271, B:62:0x0106, B:66:0x0150, B:77:0x017d, B:76:0x0179, B:70:0x015b, B:72:0x0163, B:65:0x0145, B:29:0x0077, B:116:0x028d, B:117:0x0291, B:121:0x02a6, B:122:0x02a7, B:126:0x02ce, B:128:0x02d5, B:130:0x02db, B:134:0x02e9, B:136:0x02ef, B:138:0x02f8, B:140:0x02fe, B:142:0x0304, B:144:0x030a, B:151:0x031c, B:153:0x0321, B:155:0x032b, B:156:0x032f, B:158:0x0339, B:162:0x0358, B:165:0x0360, B:167:0x0364, B:170:0x0383, B:172:0x0389, B:173:0x039f, B:175:0x03b1, B:177:0x03bb, B:182:0x03c7, B:189:0x0400, B:193:0x040a, B:194:0x040d, B:204:0x0420, B:206:0x0424, B:255:0x0505, B:257:0x050a, B:258:0x0515, B:260:0x052c, B:262:0x0538, B:263:0x053e, B:265:0x0544, B:266:0x054c, B:268:0x0550, B:270:0x0556, B:272:0x0563, B:274:0x056c, B:275:0x0577, B:276:0x057d, B:277:0x0584, B:207:0x042a, B:209:0x042e, B:212:0x0439, B:214:0x044f, B:216:0x045b, B:218:0x0461, B:220:0x0483, B:228:0x0492, B:229:0x0498, B:230:0x04a3, B:231:0x04af, B:233:0x04b9, B:235:0x04c2, B:243:0x04d1, B:244:0x04d3, B:246:0x04df, B:248:0x04e5, B:250:0x04f1, B:252:0x04fd, B:184:0x03cc, B:186:0x03ed, B:159:0x0350, B:137:0x02f4, B:118:0x0292, B:120:0x029c), top: B:281:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x032b A[Catch: Exception -> 0x0585, TryCatch #1 {Exception -> 0x0585, blocks: (B:3:0x0026, B:5:0x002a, B:7:0x0030, B:23:0x0053, B:25:0x0065, B:27:0x0071, B:30:0x007b, B:34:0x0089, B:38:0x0095, B:40:0x00a8, B:42:0x00ba, B:44:0x00c6, B:46:0x00ca, B:54:0x00db, B:57:0x00ef, B:60:0x0100, B:61:0x0102, B:78:0x0180, B:80:0x0188, B:81:0x018e, B:84:0x01b3, B:87:0x01b9, B:89:0x01bf, B:91:0x01c5, B:93:0x01cb, B:94:0x020b, B:102:0x021d, B:105:0x0225, B:107:0x0233, B:109:0x0239, B:110:0x0250, B:112:0x0254, B:113:0x026a, B:114:0x0271, B:62:0x0106, B:66:0x0150, B:77:0x017d, B:76:0x0179, B:70:0x015b, B:72:0x0163, B:65:0x0145, B:29:0x0077, B:116:0x028d, B:117:0x0291, B:121:0x02a6, B:122:0x02a7, B:126:0x02ce, B:128:0x02d5, B:130:0x02db, B:134:0x02e9, B:136:0x02ef, B:138:0x02f8, B:140:0x02fe, B:142:0x0304, B:144:0x030a, B:151:0x031c, B:153:0x0321, B:155:0x032b, B:156:0x032f, B:158:0x0339, B:162:0x0358, B:165:0x0360, B:167:0x0364, B:170:0x0383, B:172:0x0389, B:173:0x039f, B:175:0x03b1, B:177:0x03bb, B:182:0x03c7, B:189:0x0400, B:193:0x040a, B:194:0x040d, B:204:0x0420, B:206:0x0424, B:255:0x0505, B:257:0x050a, B:258:0x0515, B:260:0x052c, B:262:0x0538, B:263:0x053e, B:265:0x0544, B:266:0x054c, B:268:0x0550, B:270:0x0556, B:272:0x0563, B:274:0x056c, B:275:0x0577, B:276:0x057d, B:277:0x0584, B:207:0x042a, B:209:0x042e, B:212:0x0439, B:214:0x044f, B:216:0x045b, B:218:0x0461, B:220:0x0483, B:228:0x0492, B:229:0x0498, B:230:0x04a3, B:231:0x04af, B:233:0x04b9, B:235:0x04c2, B:243:0x04d1, B:244:0x04d3, B:246:0x04df, B:248:0x04e5, B:250:0x04f1, B:252:0x04fd, B:184:0x03cc, B:186:0x03ed, B:159:0x0350, B:137:0x02f4, B:118:0x0292, B:120:0x029c), top: B:281:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:156:0x032f A[Catch: Exception -> 0x0585, TryCatch #1 {Exception -> 0x0585, blocks: (B:3:0x0026, B:5:0x002a, B:7:0x0030, B:23:0x0053, B:25:0x0065, B:27:0x0071, B:30:0x007b, B:34:0x0089, B:38:0x0095, B:40:0x00a8, B:42:0x00ba, B:44:0x00c6, B:46:0x00ca, B:54:0x00db, B:57:0x00ef, B:60:0x0100, B:61:0x0102, B:78:0x0180, B:80:0x0188, B:81:0x018e, B:84:0x01b3, B:87:0x01b9, B:89:0x01bf, B:91:0x01c5, B:93:0x01cb, B:94:0x020b, B:102:0x021d, B:105:0x0225, B:107:0x0233, B:109:0x0239, B:110:0x0250, B:112:0x0254, B:113:0x026a, B:114:0x0271, B:62:0x0106, B:66:0x0150, B:77:0x017d, B:76:0x0179, B:70:0x015b, B:72:0x0163, B:65:0x0145, B:29:0x0077, B:116:0x028d, B:117:0x0291, B:121:0x02a6, B:122:0x02a7, B:126:0x02ce, B:128:0x02d5, B:130:0x02db, B:134:0x02e9, B:136:0x02ef, B:138:0x02f8, B:140:0x02fe, B:142:0x0304, B:144:0x030a, B:151:0x031c, B:153:0x0321, B:155:0x032b, B:156:0x032f, B:158:0x0339, B:162:0x0358, B:165:0x0360, B:167:0x0364, B:170:0x0383, B:172:0x0389, B:173:0x039f, B:175:0x03b1, B:177:0x03bb, B:182:0x03c7, B:189:0x0400, B:193:0x040a, B:194:0x040d, B:204:0x0420, B:206:0x0424, B:255:0x0505, B:257:0x050a, B:258:0x0515, B:260:0x052c, B:262:0x0538, B:263:0x053e, B:265:0x0544, B:266:0x054c, B:268:0x0550, B:270:0x0556, B:272:0x0563, B:274:0x056c, B:275:0x0577, B:276:0x057d, B:277:0x0584, B:207:0x042a, B:209:0x042e, B:212:0x0439, B:214:0x044f, B:216:0x045b, B:218:0x0461, B:220:0x0483, B:228:0x0492, B:229:0x0498, B:230:0x04a3, B:231:0x04af, B:233:0x04b9, B:235:0x04c2, B:243:0x04d1, B:244:0x04d3, B:246:0x04df, B:248:0x04e5, B:250:0x04f1, B:252:0x04fd, B:184:0x03cc, B:186:0x03ed, B:159:0x0350, B:137:0x02f4, B:118:0x0292, B:120:0x029c), top: B:281:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x035e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0364 A[Catch: Exception -> 0x0585, TryCatch #1 {Exception -> 0x0585, blocks: (B:3:0x0026, B:5:0x002a, B:7:0x0030, B:23:0x0053, B:25:0x0065, B:27:0x0071, B:30:0x007b, B:34:0x0089, B:38:0x0095, B:40:0x00a8, B:42:0x00ba, B:44:0x00c6, B:46:0x00ca, B:54:0x00db, B:57:0x00ef, B:60:0x0100, B:61:0x0102, B:78:0x0180, B:80:0x0188, B:81:0x018e, B:84:0x01b3, B:87:0x01b9, B:89:0x01bf, B:91:0x01c5, B:93:0x01cb, B:94:0x020b, B:102:0x021d, B:105:0x0225, B:107:0x0233, B:109:0x0239, B:110:0x0250, B:112:0x0254, B:113:0x026a, B:114:0x0271, B:62:0x0106, B:66:0x0150, B:77:0x017d, B:76:0x0179, B:70:0x015b, B:72:0x0163, B:65:0x0145, B:29:0x0077, B:116:0x028d, B:117:0x0291, B:121:0x02a6, B:122:0x02a7, B:126:0x02ce, B:128:0x02d5, B:130:0x02db, B:134:0x02e9, B:136:0x02ef, B:138:0x02f8, B:140:0x02fe, B:142:0x0304, B:144:0x030a, B:151:0x031c, B:153:0x0321, B:155:0x032b, B:156:0x032f, B:158:0x0339, B:162:0x0358, B:165:0x0360, B:167:0x0364, B:170:0x0383, B:172:0x0389, B:173:0x039f, B:175:0x03b1, B:177:0x03bb, B:182:0x03c7, B:189:0x0400, B:193:0x040a, B:194:0x040d, B:204:0x0420, B:206:0x0424, B:255:0x0505, B:257:0x050a, B:258:0x0515, B:260:0x052c, B:262:0x0538, B:263:0x053e, B:265:0x0544, B:266:0x054c, B:268:0x0550, B:270:0x0556, B:272:0x0563, B:274:0x056c, B:275:0x0577, B:276:0x057d, B:277:0x0584, B:207:0x042a, B:209:0x042e, B:212:0x0439, B:214:0x044f, B:216:0x045b, B:218:0x0461, B:220:0x0483, B:228:0x0492, B:229:0x0498, B:230:0x04a3, B:231:0x04af, B:233:0x04b9, B:235:0x04c2, B:243:0x04d1, B:244:0x04d3, B:246:0x04df, B:248:0x04e5, B:250:0x04f1, B:252:0x04fd, B:184:0x03cc, B:186:0x03ed, B:159:0x0350, B:137:0x02f4, B:118:0x0292, B:120:0x029c), top: B:281:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x03b1 A[Catch: Exception -> 0x0585, TryCatch #1 {Exception -> 0x0585, blocks: (B:3:0x0026, B:5:0x002a, B:7:0x0030, B:23:0x0053, B:25:0x0065, B:27:0x0071, B:30:0x007b, B:34:0x0089, B:38:0x0095, B:40:0x00a8, B:42:0x00ba, B:44:0x00c6, B:46:0x00ca, B:54:0x00db, B:57:0x00ef, B:60:0x0100, B:61:0x0102, B:78:0x0180, B:80:0x0188, B:81:0x018e, B:84:0x01b3, B:87:0x01b9, B:89:0x01bf, B:91:0x01c5, B:93:0x01cb, B:94:0x020b, B:102:0x021d, B:105:0x0225, B:107:0x0233, B:109:0x0239, B:110:0x0250, B:112:0x0254, B:113:0x026a, B:114:0x0271, B:62:0x0106, B:66:0x0150, B:77:0x017d, B:76:0x0179, B:70:0x015b, B:72:0x0163, B:65:0x0145, B:29:0x0077, B:116:0x028d, B:117:0x0291, B:121:0x02a6, B:122:0x02a7, B:126:0x02ce, B:128:0x02d5, B:130:0x02db, B:134:0x02e9, B:136:0x02ef, B:138:0x02f8, B:140:0x02fe, B:142:0x0304, B:144:0x030a, B:151:0x031c, B:153:0x0321, B:155:0x032b, B:156:0x032f, B:158:0x0339, B:162:0x0358, B:165:0x0360, B:167:0x0364, B:170:0x0383, B:172:0x0389, B:173:0x039f, B:175:0x03b1, B:177:0x03bb, B:182:0x03c7, B:189:0x0400, B:193:0x040a, B:194:0x040d, B:204:0x0420, B:206:0x0424, B:255:0x0505, B:257:0x050a, B:258:0x0515, B:260:0x052c, B:262:0x0538, B:263:0x053e, B:265:0x0544, B:266:0x054c, B:268:0x0550, B:270:0x0556, B:272:0x0563, B:274:0x056c, B:275:0x0577, B:276:0x057d, B:277:0x0584, B:207:0x042a, B:209:0x042e, B:212:0x0439, B:214:0x044f, B:216:0x045b, B:218:0x0461, B:220:0x0483, B:228:0x0492, B:229:0x0498, B:230:0x04a3, B:231:0x04af, B:233:0x04b9, B:235:0x04c2, B:243:0x04d1, B:244:0x04d3, B:246:0x04df, B:248:0x04e5, B:250:0x04f1, B:252:0x04fd, B:184:0x03cc, B:186:0x03ed, B:159:0x0350, B:137:0x02f4, B:118:0x0292, B:120:0x029c), top: B:281:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x040a A[Catch: Exception -> 0x0585, TryCatch #1 {Exception -> 0x0585, blocks: (B:3:0x0026, B:5:0x002a, B:7:0x0030, B:23:0x0053, B:25:0x0065, B:27:0x0071, B:30:0x007b, B:34:0x0089, B:38:0x0095, B:40:0x00a8, B:42:0x00ba, B:44:0x00c6, B:46:0x00ca, B:54:0x00db, B:57:0x00ef, B:60:0x0100, B:61:0x0102, B:78:0x0180, B:80:0x0188, B:81:0x018e, B:84:0x01b3, B:87:0x01b9, B:89:0x01bf, B:91:0x01c5, B:93:0x01cb, B:94:0x020b, B:102:0x021d, B:105:0x0225, B:107:0x0233, B:109:0x0239, B:110:0x0250, B:112:0x0254, B:113:0x026a, B:114:0x0271, B:62:0x0106, B:66:0x0150, B:77:0x017d, B:76:0x0179, B:70:0x015b, B:72:0x0163, B:65:0x0145, B:29:0x0077, B:116:0x028d, B:117:0x0291, B:121:0x02a6, B:122:0x02a7, B:126:0x02ce, B:128:0x02d5, B:130:0x02db, B:134:0x02e9, B:136:0x02ef, B:138:0x02f8, B:140:0x02fe, B:142:0x0304, B:144:0x030a, B:151:0x031c, B:153:0x0321, B:155:0x032b, B:156:0x032f, B:158:0x0339, B:162:0x0358, B:165:0x0360, B:167:0x0364, B:170:0x0383, B:172:0x0389, B:173:0x039f, B:175:0x03b1, B:177:0x03bb, B:182:0x03c7, B:189:0x0400, B:193:0x040a, B:194:0x040d, B:204:0x0420, B:206:0x0424, B:255:0x0505, B:257:0x050a, B:258:0x0515, B:260:0x052c, B:262:0x0538, B:263:0x053e, B:265:0x0544, B:266:0x054c, B:268:0x0550, B:270:0x0556, B:272:0x0563, B:274:0x056c, B:275:0x0577, B:276:0x057d, B:277:0x0584, B:207:0x042a, B:209:0x042e, B:212:0x0439, B:214:0x044f, B:216:0x045b, B:218:0x0461, B:220:0x0483, B:228:0x0492, B:229:0x0498, B:230:0x04a3, B:231:0x04af, B:233:0x04b9, B:235:0x04c2, B:243:0x04d1, B:244:0x04d3, B:246:0x04df, B:248:0x04e5, B:250:0x04f1, B:252:0x04fd, B:184:0x03cc, B:186:0x03ed, B:159:0x0350, B:137:0x02f4, B:118:0x0292, B:120:0x029c), top: B:281:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0413  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x041d  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x041f  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0424 A[Catch: Exception -> 0x0585, TryCatch #1 {Exception -> 0x0585, blocks: (B:3:0x0026, B:5:0x002a, B:7:0x0030, B:23:0x0053, B:25:0x0065, B:27:0x0071, B:30:0x007b, B:34:0x0089, B:38:0x0095, B:40:0x00a8, B:42:0x00ba, B:44:0x00c6, B:46:0x00ca, B:54:0x00db, B:57:0x00ef, B:60:0x0100, B:61:0x0102, B:78:0x0180, B:80:0x0188, B:81:0x018e, B:84:0x01b3, B:87:0x01b9, B:89:0x01bf, B:91:0x01c5, B:93:0x01cb, B:94:0x020b, B:102:0x021d, B:105:0x0225, B:107:0x0233, B:109:0x0239, B:110:0x0250, B:112:0x0254, B:113:0x026a, B:114:0x0271, B:62:0x0106, B:66:0x0150, B:77:0x017d, B:76:0x0179, B:70:0x015b, B:72:0x0163, B:65:0x0145, B:29:0x0077, B:116:0x028d, B:117:0x0291, B:121:0x02a6, B:122:0x02a7, B:126:0x02ce, B:128:0x02d5, B:130:0x02db, B:134:0x02e9, B:136:0x02ef, B:138:0x02f8, B:140:0x02fe, B:142:0x0304, B:144:0x030a, B:151:0x031c, B:153:0x0321, B:155:0x032b, B:156:0x032f, B:158:0x0339, B:162:0x0358, B:165:0x0360, B:167:0x0364, B:170:0x0383, B:172:0x0389, B:173:0x039f, B:175:0x03b1, B:177:0x03bb, B:182:0x03c7, B:189:0x0400, B:193:0x040a, B:194:0x040d, B:204:0x0420, B:206:0x0424, B:255:0x0505, B:257:0x050a, B:258:0x0515, B:260:0x052c, B:262:0x0538, B:263:0x053e, B:265:0x0544, B:266:0x054c, B:268:0x0550, B:270:0x0556, B:272:0x0563, B:274:0x056c, B:275:0x0577, B:276:0x057d, B:277:0x0584, B:207:0x042a, B:209:0x042e, B:212:0x0439, B:214:0x044f, B:216:0x045b, B:218:0x0461, B:220:0x0483, B:228:0x0492, B:229:0x0498, B:230:0x04a3, B:231:0x04af, B:233:0x04b9, B:235:0x04c2, B:243:0x04d1, B:244:0x04d3, B:246:0x04df, B:248:0x04e5, B:250:0x04f1, B:252:0x04fd, B:184:0x03cc, B:186:0x03ed, B:159:0x0350, B:137:0x02f4, B:118:0x0292, B:120:0x029c), top: B:281:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:207:0x042a A[Catch: Exception -> 0x0585, TryCatch #1 {Exception -> 0x0585, blocks: (B:3:0x0026, B:5:0x002a, B:7:0x0030, B:23:0x0053, B:25:0x0065, B:27:0x0071, B:30:0x007b, B:34:0x0089, B:38:0x0095, B:40:0x00a8, B:42:0x00ba, B:44:0x00c6, B:46:0x00ca, B:54:0x00db, B:57:0x00ef, B:60:0x0100, B:61:0x0102, B:78:0x0180, B:80:0x0188, B:81:0x018e, B:84:0x01b3, B:87:0x01b9, B:89:0x01bf, B:91:0x01c5, B:93:0x01cb, B:94:0x020b, B:102:0x021d, B:105:0x0225, B:107:0x0233, B:109:0x0239, B:110:0x0250, B:112:0x0254, B:113:0x026a, B:114:0x0271, B:62:0x0106, B:66:0x0150, B:77:0x017d, B:76:0x0179, B:70:0x015b, B:72:0x0163, B:65:0x0145, B:29:0x0077, B:116:0x028d, B:117:0x0291, B:121:0x02a6, B:122:0x02a7, B:126:0x02ce, B:128:0x02d5, B:130:0x02db, B:134:0x02e9, B:136:0x02ef, B:138:0x02f8, B:140:0x02fe, B:142:0x0304, B:144:0x030a, B:151:0x031c, B:153:0x0321, B:155:0x032b, B:156:0x032f, B:158:0x0339, B:162:0x0358, B:165:0x0360, B:167:0x0364, B:170:0x0383, B:172:0x0389, B:173:0x039f, B:175:0x03b1, B:177:0x03bb, B:182:0x03c7, B:189:0x0400, B:193:0x040a, B:194:0x040d, B:204:0x0420, B:206:0x0424, B:255:0x0505, B:257:0x050a, B:258:0x0515, B:260:0x052c, B:262:0x0538, B:263:0x053e, B:265:0x0544, B:266:0x054c, B:268:0x0550, B:270:0x0556, B:272:0x0563, B:274:0x056c, B:275:0x0577, B:276:0x057d, B:277:0x0584, B:207:0x042a, B:209:0x042e, B:212:0x0439, B:214:0x044f, B:216:0x045b, B:218:0x0461, B:220:0x0483, B:228:0x0492, B:229:0x0498, B:230:0x04a3, B:231:0x04af, B:233:0x04b9, B:235:0x04c2, B:243:0x04d1, B:244:0x04d3, B:246:0x04df, B:248:0x04e5, B:250:0x04f1, B:252:0x04fd, B:184:0x03cc, B:186:0x03ed, B:159:0x0350, B:137:0x02f4, B:118:0x0292, B:120:0x029c), top: B:281:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0492 A[Catch: Exception -> 0x0585, TryCatch #1 {Exception -> 0x0585, blocks: (B:3:0x0026, B:5:0x002a, B:7:0x0030, B:23:0x0053, B:25:0x0065, B:27:0x0071, B:30:0x007b, B:34:0x0089, B:38:0x0095, B:40:0x00a8, B:42:0x00ba, B:44:0x00c6, B:46:0x00ca, B:54:0x00db, B:57:0x00ef, B:60:0x0100, B:61:0x0102, B:78:0x0180, B:80:0x0188, B:81:0x018e, B:84:0x01b3, B:87:0x01b9, B:89:0x01bf, B:91:0x01c5, B:93:0x01cb, B:94:0x020b, B:102:0x021d, B:105:0x0225, B:107:0x0233, B:109:0x0239, B:110:0x0250, B:112:0x0254, B:113:0x026a, B:114:0x0271, B:62:0x0106, B:66:0x0150, B:77:0x017d, B:76:0x0179, B:70:0x015b, B:72:0x0163, B:65:0x0145, B:29:0x0077, B:116:0x028d, B:117:0x0291, B:121:0x02a6, B:122:0x02a7, B:126:0x02ce, B:128:0x02d5, B:130:0x02db, B:134:0x02e9, B:136:0x02ef, B:138:0x02f8, B:140:0x02fe, B:142:0x0304, B:144:0x030a, B:151:0x031c, B:153:0x0321, B:155:0x032b, B:156:0x032f, B:158:0x0339, B:162:0x0358, B:165:0x0360, B:167:0x0364, B:170:0x0383, B:172:0x0389, B:173:0x039f, B:175:0x03b1, B:177:0x03bb, B:182:0x03c7, B:189:0x0400, B:193:0x040a, B:194:0x040d, B:204:0x0420, B:206:0x0424, B:255:0x0505, B:257:0x050a, B:258:0x0515, B:260:0x052c, B:262:0x0538, B:263:0x053e, B:265:0x0544, B:266:0x054c, B:268:0x0550, B:270:0x0556, B:272:0x0563, B:274:0x056c, B:275:0x0577, B:276:0x057d, B:277:0x0584, B:207:0x042a, B:209:0x042e, B:212:0x0439, B:214:0x044f, B:216:0x045b, B:218:0x0461, B:220:0x0483, B:228:0x0492, B:229:0x0498, B:230:0x04a3, B:231:0x04af, B:233:0x04b9, B:235:0x04c2, B:243:0x04d1, B:244:0x04d3, B:246:0x04df, B:248:0x04e5, B:250:0x04f1, B:252:0x04fd, B:184:0x03cc, B:186:0x03ed, B:159:0x0350, B:137:0x02f4, B:118:0x0292, B:120:0x029c), top: B:281:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x04d1 A[Catch: Exception -> 0x0585, TryCatch #1 {Exception -> 0x0585, blocks: (B:3:0x0026, B:5:0x002a, B:7:0x0030, B:23:0x0053, B:25:0x0065, B:27:0x0071, B:30:0x007b, B:34:0x0089, B:38:0x0095, B:40:0x00a8, B:42:0x00ba, B:44:0x00c6, B:46:0x00ca, B:54:0x00db, B:57:0x00ef, B:60:0x0100, B:61:0x0102, B:78:0x0180, B:80:0x0188, B:81:0x018e, B:84:0x01b3, B:87:0x01b9, B:89:0x01bf, B:91:0x01c5, B:93:0x01cb, B:94:0x020b, B:102:0x021d, B:105:0x0225, B:107:0x0233, B:109:0x0239, B:110:0x0250, B:112:0x0254, B:113:0x026a, B:114:0x0271, B:62:0x0106, B:66:0x0150, B:77:0x017d, B:76:0x0179, B:70:0x015b, B:72:0x0163, B:65:0x0145, B:29:0x0077, B:116:0x028d, B:117:0x0291, B:121:0x02a6, B:122:0x02a7, B:126:0x02ce, B:128:0x02d5, B:130:0x02db, B:134:0x02e9, B:136:0x02ef, B:138:0x02f8, B:140:0x02fe, B:142:0x0304, B:144:0x030a, B:151:0x031c, B:153:0x0321, B:155:0x032b, B:156:0x032f, B:158:0x0339, B:162:0x0358, B:165:0x0360, B:167:0x0364, B:170:0x0383, B:172:0x0389, B:173:0x039f, B:175:0x03b1, B:177:0x03bb, B:182:0x03c7, B:189:0x0400, B:193:0x040a, B:194:0x040d, B:204:0x0420, B:206:0x0424, B:255:0x0505, B:257:0x050a, B:258:0x0515, B:260:0x052c, B:262:0x0538, B:263:0x053e, B:265:0x0544, B:266:0x054c, B:268:0x0550, B:270:0x0556, B:272:0x0563, B:274:0x056c, B:275:0x0577, B:276:0x057d, B:277:0x0584, B:207:0x042a, B:209:0x042e, B:212:0x0439, B:214:0x044f, B:216:0x045b, B:218:0x0461, B:220:0x0483, B:228:0x0492, B:229:0x0498, B:230:0x04a3, B:231:0x04af, B:233:0x04b9, B:235:0x04c2, B:243:0x04d1, B:244:0x04d3, B:246:0x04df, B:248:0x04e5, B:250:0x04f1, B:252:0x04fd, B:184:0x03cc, B:186:0x03ed, B:159:0x0350, B:137:0x02f4, B:118:0x0292, B:120:0x029c), top: B:281:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:255:0x0505 A[Catch: Exception -> 0x0585, TryCatch #1 {Exception -> 0x0585, blocks: (B:3:0x0026, B:5:0x002a, B:7:0x0030, B:23:0x0053, B:25:0x0065, B:27:0x0071, B:30:0x007b, B:34:0x0089, B:38:0x0095, B:40:0x00a8, B:42:0x00ba, B:44:0x00c6, B:46:0x00ca, B:54:0x00db, B:57:0x00ef, B:60:0x0100, B:61:0x0102, B:78:0x0180, B:80:0x0188, B:81:0x018e, B:84:0x01b3, B:87:0x01b9, B:89:0x01bf, B:91:0x01c5, B:93:0x01cb, B:94:0x020b, B:102:0x021d, B:105:0x0225, B:107:0x0233, B:109:0x0239, B:110:0x0250, B:112:0x0254, B:113:0x026a, B:114:0x0271, B:62:0x0106, B:66:0x0150, B:77:0x017d, B:76:0x0179, B:70:0x015b, B:72:0x0163, B:65:0x0145, B:29:0x0077, B:116:0x028d, B:117:0x0291, B:121:0x02a6, B:122:0x02a7, B:126:0x02ce, B:128:0x02d5, B:130:0x02db, B:134:0x02e9, B:136:0x02ef, B:138:0x02f8, B:140:0x02fe, B:142:0x0304, B:144:0x030a, B:151:0x031c, B:153:0x0321, B:155:0x032b, B:156:0x032f, B:158:0x0339, B:162:0x0358, B:165:0x0360, B:167:0x0364, B:170:0x0383, B:172:0x0389, B:173:0x039f, B:175:0x03b1, B:177:0x03bb, B:182:0x03c7, B:189:0x0400, B:193:0x040a, B:194:0x040d, B:204:0x0420, B:206:0x0424, B:255:0x0505, B:257:0x050a, B:258:0x0515, B:260:0x052c, B:262:0x0538, B:263:0x053e, B:265:0x0544, B:266:0x054c, B:268:0x0550, B:270:0x0556, B:272:0x0563, B:274:0x056c, B:275:0x0577, B:276:0x057d, B:277:0x0584, B:207:0x042a, B:209:0x042e, B:212:0x0439, B:214:0x044f, B:216:0x045b, B:218:0x0461, B:220:0x0483, B:228:0x0492, B:229:0x0498, B:230:0x04a3, B:231:0x04af, B:233:0x04b9, B:235:0x04c2, B:243:0x04d1, B:244:0x04d3, B:246:0x04df, B:248:0x04e5, B:250:0x04f1, B:252:0x04fd, B:184:0x03cc, B:186:0x03ed, B:159:0x0350, B:137:0x02f4, B:118:0x0292, B:120:0x029c), top: B:281:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x057d A[Catch: Exception -> 0x0585, TryCatch #1 {Exception -> 0x0585, blocks: (B:3:0x0026, B:5:0x002a, B:7:0x0030, B:23:0x0053, B:25:0x0065, B:27:0x0071, B:30:0x007b, B:34:0x0089, B:38:0x0095, B:40:0x00a8, B:42:0x00ba, B:44:0x00c6, B:46:0x00ca, B:54:0x00db, B:57:0x00ef, B:60:0x0100, B:61:0x0102, B:78:0x0180, B:80:0x0188, B:81:0x018e, B:84:0x01b3, B:87:0x01b9, B:89:0x01bf, B:91:0x01c5, B:93:0x01cb, B:94:0x020b, B:102:0x021d, B:105:0x0225, B:107:0x0233, B:109:0x0239, B:110:0x0250, B:112:0x0254, B:113:0x026a, B:114:0x0271, B:62:0x0106, B:66:0x0150, B:77:0x017d, B:76:0x0179, B:70:0x015b, B:72:0x0163, B:65:0x0145, B:29:0x0077, B:116:0x028d, B:117:0x0291, B:121:0x02a6, B:122:0x02a7, B:126:0x02ce, B:128:0x02d5, B:130:0x02db, B:134:0x02e9, B:136:0x02ef, B:138:0x02f8, B:140:0x02fe, B:142:0x0304, B:144:0x030a, B:151:0x031c, B:153:0x0321, B:155:0x032b, B:156:0x032f, B:158:0x0339, B:162:0x0358, B:165:0x0360, B:167:0x0364, B:170:0x0383, B:172:0x0389, B:173:0x039f, B:175:0x03b1, B:177:0x03bb, B:182:0x03c7, B:189:0x0400, B:193:0x040a, B:194:0x040d, B:204:0x0420, B:206:0x0424, B:255:0x0505, B:257:0x050a, B:258:0x0515, B:260:0x052c, B:262:0x0538, B:263:0x053e, B:265:0x0544, B:266:0x054c, B:268:0x0550, B:270:0x0556, B:272:0x0563, B:274:0x056c, B:275:0x0577, B:276:0x057d, B:277:0x0584, B:207:0x042a, B:209:0x042e, B:212:0x0439, B:214:0x044f, B:216:0x045b, B:218:0x0461, B:220:0x0483, B:228:0x0492, B:229:0x0498, B:230:0x04a3, B:231:0x04af, B:233:0x04b9, B:235:0x04c2, B:243:0x04d1, B:244:0x04d3, B:246:0x04df, B:248:0x04e5, B:250:0x04f1, B:252:0x04fd, B:184:0x03cc, B:186:0x03ed, B:159:0x0350, B:137:0x02f4, B:118:0x0292, B:120:0x029c), top: B:281:0x0026 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void processWorkspaceItem(final com.android.launcher3.model.LoaderCursor r27, com.android.launcher3.model.LoaderMemoryLogger r28, java.util.HashMap r29, boolean r30, com.android.launcher3.util.PackageUserKey r31, com.android.launcher3.widget.WidgetManagerHelper r32, com.android.launcher3.util.PackageManagerHelper r33, java.util.List r34, android.util.LongSparseArray r35, boolean r36, java.util.List r37) {
        /*
            Method dump skipped, instructions count: 1420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.LoaderTask.processWorkspaceItem(com.android.launcher3.model.LoaderCursor, com.android.launcher3.model.LoaderMemoryLogger, java.util.HashMap, boolean, com.android.launcher3.util.PackageUserKey, com.android.launcher3.widget.WidgetManagerHelper, com.android.launcher3.util.PackageManagerHelper, java.util.List, android.util.LongSparseArray, boolean, java.util.List):void");
    }

    private void sanitizeFolders(boolean z4) {
        if (z4) {
            IntArray deleteEmptyFolders = this.mApp.getModel().getModelDbController().deleteEmptyFolders();
            synchronized (this.mBgDataModel) {
                Iterator it = deleteEmptyFolders.iterator();
                while (it.hasNext()) {
                    int intValue = ((Integer) it.next()).intValue();
                    BgDataModel bgDataModel = this.mBgDataModel;
                    bgDataModel.workspaceItems.remove(bgDataModel.folders.get(intValue));
                    this.mBgDataModel.folders.remove(intValue);
                    this.mBgDataModel.itemsIdMap.remove(intValue);
                }
            }
        }
    }

    private void sanitizeWidgetsShortcutsAndPackages() {
        Context context = this.mApp.getContext();
        this.mApp.getModel().getModelDbController().removeGhostWidgets();
        BgDataModel bgDataModel = this.mBgDataModel;
        bgDataModel.getClass();
        for (UserHandle userHandle : ((UserCache) UserCache.INSTANCE.get(context)).getUserProfiles()) {
            bgDataModel.updateShortcutPinnedState(context, userHandle);
        }
        if ("1".equals(Utilities.getSystemProperty("sys.boot_completed", "1")) || ((HashSet) this.mPendingPackages).isEmpty()) {
            return;
        }
        context.registerReceiver(new SdCardAvailableReceiver(this.mApp, this.mPendingPackages), new IntentFilter("android.intent.action.BOOT_COMPLETED"), null, Executors.MODEL_EXECUTOR.getHandler());
    }

    private void sendFirstScreenActiveInstallsBroadcast() {
        ArrayList arrayList = new ArrayList();
        ModelUtils.filterCurrentWorkspaceItems(IntSet.wrap(this.mBgDataModel.collectWorkspaceScreens().get(0)), this.mBgDataModel.getAllWorkspaceItems(), arrayList, new ArrayList());
        this.mFirstScreenBroadcast.sendBroadcasts(this.mApp.getContext(), arrayList);
    }

    private void setIgnorePackages(IconCacheUpdateHandler iconCacheUpdateHandler) {
        synchronized (this.mBgDataModel) {
            Iterator it = this.mBgDataModel.itemsIdMap.iterator();
            while (it.hasNext()) {
                ItemInfo itemInfo = (ItemInfo) it.next();
                if (itemInfo instanceof WorkspaceItemInfo) {
                    WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) itemInfo;
                    if (workspaceItemInfo.hasStatusFlag(3) && workspaceItemInfo.getTargetComponent() != null) {
                        iconCacheUpdateHandler.addPackagesToIgnore(workspaceItemInfo.getTargetComponent().getPackageName(), workspaceItemInfo.user);
                    }
                } else if (itemInfo instanceof LauncherAppWidgetInfo) {
                    LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) itemInfo;
                    if (launcherAppWidgetInfo.hasRestoreFlag(2)) {
                        iconCacheUpdateHandler.addPackagesToIgnore(launcherAppWidgetInfo.providerName.getPackageName(), launcherAppWidgetInfo.user);
                    }
                }
            }
        }
    }

    private void tryLoadWorkspaceIconsInBulk(List list) {
        Trace.beginSection("LoadWorkspaceIconsInBulk");
        try {
            this.mIconCache.getTitlesAndIconsInBulk(list);
            Iterator it = ((ArrayList) list).iterator();
            while (it.hasNext()) {
                IconRequestInfo iconRequestInfo = (IconRequestInfo) it.next();
                WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) iconRequestInfo.itemInfo;
                if (this.mIconCache.isDefaultIcon(workspaceItemInfo.bitmap, workspaceItemInfo.user)) {
                    iconRequestInfo.loadWorkspaceIcon(this.mApp.getContext());
                }
            }
        } finally {
            Trace.endSection();
        }
    }

    private synchronized void verifyNotStopped() {
        if (this.mStopped) {
            throw new CancellationException("Loader stopped");
        }
    }

    public final void loadWorkspace(List list, String str, LoaderMemoryLogger loaderMemoryLogger) {
        Trace.beginSection("LoadWorkspace");
        try {
            loadWorkspaceImpl(list, str, loaderMemoryLogger);
            Trace.endSection();
            logASplit("loadWorkspace");
            if (FeatureFlags.CHANGE_MODEL_DELEGATE_LOADING_ORDER.get()) {
                verifyNotStopped();
                this.mModelDelegate.loadAndBindWorkspaceItems(this.mUserManagerState, this.mLauncherBinder.mCallbacksList, this.mShortcutKeyToPinnedShortcuts);
                this.mModelDelegate.markActive();
                logASplit("workspaceDelegateItems");
            }
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this) {
            if (this.mStopped) {
                return;
            }
            TraceHelper.INSTANCE.beginSection("LoaderTask");
            LoaderMemoryLogger loaderMemoryLogger = new LoaderMemoryLogger();
            try {
                LauncherModel model = this.mApp.getModel();
                model.getClass();
                LauncherModel.LoaderTransaction loaderTransaction = new LauncherModel.LoaderTransaction(this);
                try {
                    ArrayList arrayList = new ArrayList();
                    loadWorkspace(arrayList, "", loaderMemoryLogger);
                    if (this.mApp.getInvariantDeviceProfile().dbFile.equals(this.mDbName)) {
                        verifyNotStopped();
                        sanitizeFolders(this.mItemsDeleted);
                        sanitizeWidgetsShortcutsAndPackages();
                        logASplit("sanitizeData");
                    }
                    verifyNotStopped();
                    this.mLauncherBinder.c(true, false);
                    logASplit("bindWorkspace");
                    this.mModelDelegate.workspaceLoadComplete();
                    sendFirstScreenActiveInstallsBroadcast();
                    logASplit("sendFirstScreenActiveInstallsBroadcast");
                    waitForIdle();
                    logASplit("step 1 complete");
                    verifyNotStopped();
                    Trace.beginSection("LoadAllApps");
                    List loadAllApps = loadAllApps();
                    Trace.endSection();
                    logASplit("loadAllApps");
                    FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.CHANGE_MODEL_DELEGATE_LOADING_ORDER;
                    if (booleanFlag.get()) {
                        this.mModelDelegate.loadAndBindAllAppsItems(this.mUserManagerState, this.mLauncherBinder.mCallbacksList, this.mShortcutKeyToPinnedShortcuts);
                        logASplit("allAppsDelegateItems");
                    }
                    verifyNotStopped();
                    this.mLauncherBinder.b();
                    logASplit("bindAllApps");
                    verifyNotStopped();
                    IconCacheUpdateHandler updateHandler = this.mIconCache.getUpdateHandler();
                    setIgnorePackages(updateHandler);
                    final LauncherModel model2 = this.mApp.getModel();
                    Objects.requireNonNull(model2);
                    updateHandler.updateIcons(loadAllApps, (LauncherActivityCachingLogic) ResourceBasedOverride.Overrides.getObject(R.string.launcher_activity_logic_class, this.mApp.getContext(), LauncherActivityCachingLogic.class), new IconCacheUpdateHandler.OnUpdateCallback() { // from class: com.android.launcher3.model.f0
                        @Override // com.android.launcher3.icons.cache.IconCacheUpdateHandler.OnUpdateCallback
                        public final void onPackageIconsUpdated(UserHandle userHandle, HashSet hashSet) {
                            int i4 = r2;
                            LauncherModel launcherModel = model2;
                            switch (i4) {
                                case 0:
                                    launcherModel.getClass();
                                    launcherModel.enqueueModelUpdateTask(new CacheDataUpdatedTask(1, userHandle, hashSet));
                                    return;
                                case 1:
                                    launcherModel.getClass();
                                    launcherModel.enqueueModelUpdateTask(new CacheDataUpdatedTask(1, userHandle, hashSet));
                                    return;
                                default:
                                    launcherModel.onWidgetLabelsUpdated(userHandle, hashSet);
                                    return;
                            }
                        }
                    });
                    logASplit("update icon cache");
                    verifyNotStopped();
                    logASplit("save shortcuts in icon cache");
                    ShortcutCachingLogic shortcutCachingLogic = new ShortcutCachingLogic();
                    final LauncherModel model3 = this.mApp.getModel();
                    Objects.requireNonNull(model3);
                    updateHandler.updateIcons(arrayList, shortcutCachingLogic, new IconCacheUpdateHandler.OnUpdateCallback() { // from class: com.android.launcher3.model.f0
                        @Override // com.android.launcher3.icons.cache.IconCacheUpdateHandler.OnUpdateCallback
                        public final void onPackageIconsUpdated(UserHandle userHandle, HashSet hashSet) {
                            int i4 = r2;
                            LauncherModel launcherModel = model3;
                            switch (i4) {
                                case 0:
                                    launcherModel.getClass();
                                    launcherModel.enqueueModelUpdateTask(new CacheDataUpdatedTask(1, userHandle, hashSet));
                                    return;
                                case 1:
                                    launcherModel.getClass();
                                    launcherModel.enqueueModelUpdateTask(new CacheDataUpdatedTask(1, userHandle, hashSet));
                                    return;
                                default:
                                    launcherModel.onWidgetLabelsUpdated(userHandle, hashSet);
                                    return;
                            }
                        }
                    });
                    waitForIdle();
                    logASplit("step 2 complete");
                    verifyNotStopped();
                    List loadDeepShortcuts = loadDeepShortcuts();
                    logASplit("loadDeepShortcuts");
                    verifyNotStopped();
                    this.mLauncherBinder.bindDeepShortcuts();
                    logASplit("bindDeepShortcuts");
                    verifyNotStopped();
                    logASplit("save deep shortcuts in icon cache");
                    updateHandler.updateIcons(loadDeepShortcuts, new ShortcutCachingLogic(), new C0366g0());
                    waitForIdle();
                    logASplit("step 3 complete");
                    verifyNotStopped();
                    List update = this.mBgDataModel.widgetsModel.update(this.mApp, null);
                    logASplit("load widgets");
                    verifyNotStopped();
                    this.mLauncherBinder.bindWidgets();
                    logASplit("bindWidgets");
                    verifyNotStopped();
                    if (booleanFlag.get()) {
                        this.mModelDelegate.loadAndBindOtherItems(this.mLauncherBinder.mCallbacksList);
                        logASplit("otherDelegateItems");
                        verifyNotStopped();
                    }
                    ComponentWithLabelAndIcon.ComponentWithIconCachingLogic componentWithIconCachingLogic = new ComponentWithLabelAndIcon.ComponentWithIconCachingLogic(this.mApp.getContext());
                    final LauncherModel model4 = this.mApp.getModel();
                    Objects.requireNonNull(model4);
                    updateHandler.updateIcons(update, componentWithIconCachingLogic, new IconCacheUpdateHandler.OnUpdateCallback() { // from class: com.android.launcher3.model.f0
                        @Override // com.android.launcher3.icons.cache.IconCacheUpdateHandler.OnUpdateCallback
                        public final void onPackageIconsUpdated(UserHandle userHandle, HashSet hashSet) {
                            int i4 = r2;
                            LauncherModel launcherModel = model4;
                            switch (i4) {
                                case 0:
                                    launcherModel.getClass();
                                    launcherModel.enqueueModelUpdateTask(new CacheDataUpdatedTask(1, userHandle, hashSet));
                                    return;
                                case 1:
                                    launcherModel.getClass();
                                    launcherModel.enqueueModelUpdateTask(new CacheDataUpdatedTask(1, userHandle, hashSet));
                                    return;
                                default:
                                    launcherModel.onWidgetLabelsUpdated(userHandle, hashSet);
                                    return;
                            }
                        }
                    });
                    logASplit("save widgets in icon cache");
                    loadFolderNames();
                    verifyNotStopped();
                    updateHandler.finish();
                    logASplit("finish icon update");
                    this.mModelDelegate.modelLoadComplete();
                    loaderTransaction.commit();
                    loaderMemoryLogger.clearLogs();
                    loaderTransaction.close();
                } catch (Throwable th) {
                    try {
                        loaderTransaction.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (CancellationException unused) {
                logASplit("Cancelled");
            } catch (Exception e4) {
                loaderMemoryLogger.printLogs();
                throw e4;
            }
            TraceHelper.INSTANCE.endSection();
        }
    }

    public final synchronized void stopLocked() {
        this.mStopped = true;
        notify();
    }

    public final synchronized void waitForIdle() {
        LauncherBinder launcherBinder = this.mLauncherBinder;
        launcherBinder.getClass();
        LooperExecutor looperExecutor = launcherBinder.mUiExecutor;
        LooperIdleLock looperIdleLock = new LooperIdleLock(this, looperExecutor.getLooper());
        if (looperExecutor.getLooper().getQueue().isIdle()) {
            looperIdleLock.queueIdle();
        }
        while (!this.mStopped && looperIdleLock.awaitLocked()) {
        }
    }
}
