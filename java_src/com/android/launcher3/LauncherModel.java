package com.android.launcher3;

import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInstaller;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import android.text.TextUtils;
import com.android.launcher3.celllayout.CellPosMapper;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.CacheDataUpdatedTask;
import com.android.launcher3.model.LoaderTask;
import com.android.launcher3.model.ModelDbController;
import com.android.launcher3.model.ModelDelegate;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.PackageIncrementalDownloadUpdatedTask;
import com.android.launcher3.model.PackageInstallStateChangedTask;
import com.android.launcher3.model.PackageUpdatedTask;
import com.android.launcher3.model.ReloadStringCacheTask;
import com.android.launcher3.model.ShortcutsChangedTask;
import com.android.launcher3.model.UserLockStateChangedTask;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.InstallSessionTracker;
import com.android.launcher3.pm.PackageInstallInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.C0481n;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.PackageUserKey;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class LauncherModel extends LauncherApps.Callback implements InstallSessionTracker.Callback {
    private final LauncherAppState mApp;
    private final AllAppsList mBgAllAppsList;
    private final BgDataModel mBgDataModel;
    private final Runnable mDataValidationCheck;
    private boolean mIsLoaderTaskRunning;
    private int mLastLoadId;
    private LoaderTask mLoaderTask;
    private final ModelDbController mModelDbController;
    private final ModelDelegate mModelDelegate;
    private boolean mModelLoaded;
    private final Object mLock = new Object();
    private boolean mShouldReloadWorkProfile = true;
    private boolean mModelDestroyed = false;
    private final ArrayList mCallbacksList = new ArrayList(1);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.LauncherModel$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends BaseModelUpdateTask {

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f4459d;
        final /* synthetic */ Object val$sessionInfo;

        public /* synthetic */ AnonymousClass2(Object obj, int i4) {
            this.f4459d = i4;
            this.val$sessionInfo = obj;
        }

        @Override // com.android.launcher3.model.BaseModelUpdateTask
        public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
            switch (this.f4459d) {
                case 0:
                    allAppsList.addPromiseApp(launcherAppState.getContext(), (PackageInstallInfo) this.val$sessionInfo, true);
                    bindApplicationsIfNeeded();
                    return;
                case 1:
                    WorkspaceItemInfo workspaceItemInfo = (WorkspaceItemInfo) ((Supplier) this.val$sessionInfo).get();
                    getModelWriter().updateItemInDatabase(workspaceItemInfo);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(workspaceItemInfo);
                    bindUpdatedWorkspaceItems(arrayList);
                    return;
                default:
                    bgDataModel.widgetsModel.update(launcherAppState, (PackageUserKey) this.val$sessionInfo);
                    bindUpdatedWidgets(bgDataModel);
                    return;
            }
        }
    }

    /* renamed from: com.android.launcher3.LauncherModel$3  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass3 extends BaseModelUpdateTask {

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f4460d = 0;
        final /* synthetic */ Serializable val$packageName;
        final /* synthetic */ UserHandle val$user;

        public AnonymousClass3(UserHandle userHandle, String str) {
            this.val$user = userHandle;
            this.val$packageName = str;
        }

        @Override // com.android.launcher3.model.BaseModelUpdateTask
        public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
            switch (this.f4460d) {
                case 0:
                    IntSet intSet = new IntSet();
                    synchronized (bgDataModel) {
                        Iterator it = bgDataModel.itemsIdMap.iterator();
                        while (it.hasNext()) {
                            ItemInfo itemInfo = (ItemInfo) it.next();
                            if ((itemInfo instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) itemInfo).hasPromiseIconUi() && this.val$user.equals(itemInfo.user) && itemInfo.getIntent() != null && TextUtils.equals((String) this.val$packageName, itemInfo.getIntent().getPackage())) {
                                intSet.add(itemInfo.id);
                            }
                        }
                    }
                    if (intSet.isEmpty()) {
                        return;
                    }
                    int i4 = ItemInfoMatcher.f5271a;
                    deleteAndBindComponentsRemoved(new C0481n(3, intSet), "removed because install session failed");
                    return;
                default:
                    bgDataModel.widgetsModel.onPackageIconsUpdated((HashSet) this.val$packageName, this.val$user, launcherAppState);
                    bindUpdatedWidgets(bgDataModel);
                    return;
            }
        }

        public AnonymousClass3(HashSet hashSet, UserHandle userHandle) {
            this.val$packageName = hashSet;
            this.val$user = userHandle;
        }
    }

    /* loaded from: classes.dex */
    public interface CallbackTask {
        void execute(BgDataModel.Callbacks callbacks);
    }

    /* loaded from: classes.dex */
    public final class LoaderTransaction implements AutoCloseable {
        private final LoaderTask mTask;

        public LoaderTransaction(LoaderTask loaderTask) {
            synchronized (LauncherModel.this.mLock) {
                if (LauncherModel.this.mLoaderTask != loaderTask) {
                    throw new CancellationException("Loader already stopped");
                }
                LauncherModel.this.mLastLoadId++;
                this.mTask = loaderTask;
                LauncherModel.this.mIsLoaderTaskRunning = true;
                LauncherModel.this.mModelLoaded = false;
            }
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            synchronized (LauncherModel.this.mLock) {
                if (LauncherModel.this.mLoaderTask == this.mTask) {
                    LauncherModel.this.mLoaderTask = null;
                }
                LauncherModel.this.mIsLoaderTaskRunning = false;
            }
        }

        public final void commit() {
            synchronized (LauncherModel.this.mLock) {
                LauncherModel.this.mModelLoaded = true;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface ModelUpdateTask extends Runnable {
        void init(LauncherAppState launcherAppState, LauncherModel launcherModel, BgDataModel bgDataModel, AllAppsList allAppsList, Executor executor);
    }

    public LauncherModel(Context context, LauncherAppState launcherAppState, IconCache iconCache, AppFilter appFilter, boolean z4) {
        BgDataModel bgDataModel = new BgDataModel();
        this.mBgDataModel = bgDataModel;
        this.mLastLoadId = -1;
        this.mDataValidationCheck = new Runnable() { // from class: com.android.launcher3.LauncherModel.1
            @Override // java.lang.Runnable
            public final void run() {
                if (LauncherModel.this.mModelLoaded) {
                    LauncherModel.this.mModelDelegate.validateData();
                }
            }
        };
        this.mApp = launcherAppState;
        this.mModelDbController = new ModelDbController(context);
        AllAppsList allAppsList = new AllAppsList(iconCache, appFilter);
        this.mBgAllAppsList = allAppsList;
        this.mModelDelegate = ModelDelegate.newInstance(context, launcherAppState, allAppsList, bgDataModel, z4);
    }

    public static /* synthetic */ void a(LauncherModel launcherModel, WorkspaceItemInfo workspaceItemInfo, ShortcutInfo shortcutInfo) {
        workspaceItemInfo.updateFromDeepShortcutInfo(launcherModel.mApp.getContext(), shortcutInfo);
        launcherModel.mApp.getIconCache().getShortcutIcon(workspaceItemInfo, shortcutInfo);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0033 A[Catch: all -> 0x0092, TryCatch #0 {, blocks: (B:4:0x0015, B:6:0x001f, B:12:0x002a, B:18:0x0033, B:19:0x0037, B:21:0x003a, B:23:0x003e, B:24:0x0050, B:26:0x005d, B:28:0x0071, B:29:0x0076, B:31:0x0078, B:32:0x0090), top: B:37:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[Catch: all -> 0x0092, TryCatch #0 {, blocks: (B:4:0x0015, B:6:0x001f, B:12:0x002a, B:18:0x0033, B:19:0x0037, B:21:0x003a, B:23:0x003e, B:24:0x0050, B:26:0x005d, B:28:0x0071, B:29:0x0076, B:31:0x0078, B:32:0x0090), top: B:37:0x0015 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean startLoader(com.android.launcher3.model.BgDataModel.Callbacks[] r13) {
        /*
            r12 = this;
            com.android.launcher3.util.MainThreadInitializedObject r0 = com.android.launcher3.model.ItemInstallQueue.INSTANCE
            com.android.launcher3.LauncherAppState r1 = r12.mApp
            android.content.Context r1 = r1.getContext()
            java.lang.Object r0 = r0.get(r1)
            com.android.launcher3.model.ItemInstallQueue r0 = (com.android.launcher3.model.ItemInstallQueue) r0
            r1 = 2
            r0.pauseModelPush(r1)
            java.lang.Object r0 = r12.mLock
            monitor-enter(r0)
            boolean r2 = r12.stopLoader()     // Catch: java.lang.Throwable -> L92
            boolean r3 = r12.mModelLoaded     // Catch: java.lang.Throwable -> L92
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L25
            boolean r3 = r12.mIsLoaderTaskRunning     // Catch: java.lang.Throwable -> L92
            if (r3 != 0) goto L25
            r3 = r4
            goto L26
        L25:
            r3 = r5
        L26:
            if (r2 != 0) goto L30
            if (r3 == 0) goto L30
            int r2 = r13.length     // Catch: java.lang.Throwable -> L92
            if (r2 != 0) goto L2e
            goto L30
        L2e:
            r2 = r5
            goto L31
        L30:
            r2 = r4
        L31:
            if (r2 == 0) goto L37
            com.android.launcher3.model.BgDataModel$Callbacks[] r13 = r12.getCallbacks()     // Catch: java.lang.Throwable -> L92
        L37:
            int r6 = r13.length     // Catch: java.lang.Throwable -> L92
            if (r6 <= 0) goto L90
            int r6 = r13.length     // Catch: java.lang.Throwable -> L92
            r7 = r5
        L3c:
            if (r7 >= r6) goto L50
            r8 = r13[r7]     // Catch: java.lang.Throwable -> L92
            com.android.launcher3.util.LooperExecutor r9 = com.android.launcher3.util.Executors.MAIN_EXECUTOR     // Catch: java.lang.Throwable -> L92
            java.util.Objects.requireNonNull(r8)     // Catch: java.lang.Throwable -> L92
            com.android.launcher3.k0 r10 = new com.android.launcher3.k0     // Catch: java.lang.Throwable -> L92
            r10.<init>(r1, r8)     // Catch: java.lang.Throwable -> L92
            r9.execute(r10)     // Catch: java.lang.Throwable -> L92
            int r7 = r7 + 1
            goto L3c
        L50:
            com.android.launcher3.model.LauncherBinder r11 = new com.android.launcher3.model.LauncherBinder     // Catch: java.lang.Throwable -> L92
            com.android.launcher3.LauncherAppState r1 = r12.mApp     // Catch: java.lang.Throwable -> L92
            com.android.launcher3.model.BgDataModel r6 = r12.mBgDataModel     // Catch: java.lang.Throwable -> L92
            com.android.launcher3.model.AllAppsList r7 = r12.mBgAllAppsList     // Catch: java.lang.Throwable -> L92
            r11.<init>(r1, r6, r7, r13)     // Catch: java.lang.Throwable -> L92
            if (r3 == 0) goto L78
            r11.c(r2, r4)     // Catch: java.lang.Throwable -> L92
            r11.b()     // Catch: java.lang.Throwable -> L92
            r11.bindDeepShortcuts()     // Catch: java.lang.Throwable -> L92
            r11.bindWidgets()     // Catch: java.lang.Throwable -> L92
            com.android.launcher3.config.FeatureFlags$BooleanFlag r1 = com.android.launcher3.config.FeatureFlags.CHANGE_MODEL_DELEGATE_LOADING_ORDER     // Catch: java.lang.Throwable -> L92
            boolean r1 = r1.get()     // Catch: java.lang.Throwable -> L92
            if (r1 == 0) goto L76
            com.android.launcher3.model.ModelDelegate r12 = r12.mModelDelegate     // Catch: java.lang.Throwable -> L92
            r12.bindAllModelExtras(r13)     // Catch: java.lang.Throwable -> L92
        L76:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L92
            return r4
        L78:
            r12.stopLoader()     // Catch: java.lang.Throwable -> L92
            com.android.launcher3.model.LoaderTask r13 = new com.android.launcher3.model.LoaderTask     // Catch: java.lang.Throwable -> L92
            com.android.launcher3.LauncherAppState r7 = r12.mApp     // Catch: java.lang.Throwable -> L92
            com.android.launcher3.model.AllAppsList r8 = r12.mBgAllAppsList     // Catch: java.lang.Throwable -> L92
            com.android.launcher3.model.BgDataModel r9 = r12.mBgDataModel     // Catch: java.lang.Throwable -> L92
            com.android.launcher3.model.ModelDelegate r10 = r12.mModelDelegate     // Catch: java.lang.Throwable -> L92
            r6 = r13
            r6.<init>(r7, r8, r9, r10, r11)     // Catch: java.lang.Throwable -> L92
            r12.mLoaderTask = r13     // Catch: java.lang.Throwable -> L92
            com.android.launcher3.util.LooperExecutor r12 = com.android.launcher3.util.Executors.MODEL_EXECUTOR     // Catch: java.lang.Throwable -> L92
            r12.post(r13)     // Catch: java.lang.Throwable -> L92
        L90:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L92
            return r5
        L92:
            r12 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L92
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.LauncherModel.startLoader(com.android.launcher3.model.BgDataModel$Callbacks[]):boolean");
    }

    private boolean stopLoader() {
        synchronized (this.mLock) {
            LoaderTask loaderTask = this.mLoaderTask;
            this.mLoaderTask = null;
            if (loaderTask != null) {
                loaderTask.stopLocked();
                return true;
            }
            return false;
        }
    }

    public final boolean addCallbacksAndLoad(BgDataModel.Callbacks callbacks) {
        boolean startLoader;
        synchronized (this.mLock) {
            synchronized (this.mCallbacksList) {
                this.mCallbacksList.add(callbacks);
            }
            startLoader = startLoader(new BgDataModel.Callbacks[]{callbacks});
        }
        return startLoader;
    }

    public final void destroy() {
        this.mModelDestroyed = true;
        LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
        ModelDelegate modelDelegate = this.mModelDelegate;
        Objects.requireNonNull(modelDelegate);
        looperExecutor.execute(new RunnableC0348k0(1, modelDelegate));
    }

    public final void dumpState(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        if (strArr.length > 0 && TextUtils.equals(strArr[0], "--all")) {
            StringBuilder a4 = t.j.a(str, "All apps list: size=");
            a4.append(this.mBgAllAppsList.data.size());
            printWriter.println(a4.toString());
            Iterator it = this.mBgAllAppsList.data.iterator();
            while (it.hasNext()) {
                AppInfo appInfo = (AppInfo) it.next();
                StringBuilder a5 = t.j.a(str, "   title=\"");
                a5.append((Object) appInfo.title);
                a5.append("\" bitmapIcon=");
                a5.append(appInfo.bitmap.icon);
                a5.append(" componentName=");
                a5.append(appInfo.componentName.getPackageName());
                printWriter.println(a5.toString());
            }
            printWriter.println();
        }
        this.mModelDelegate.dump(str, fileDescriptor, printWriter, strArr);
        BgDataModel bgDataModel = this.mBgDataModel;
        synchronized (bgDataModel) {
            printWriter.println(str + "Data Model:");
            printWriter.println(str + " ---- workspace items ");
            for (int i4 = 0; i4 < bgDataModel.workspaceItems.size(); i4++) {
                printWriter.println(str + '\t' + ((ItemInfo) bgDataModel.workspaceItems.get(i4)).toString());
            }
            printWriter.println(str + " ---- appwidget items ");
            for (int i5 = 0; i5 < bgDataModel.appWidgets.size(); i5++) {
                printWriter.println(str + '\t' + ((LauncherAppWidgetInfo) bgDataModel.appWidgets.get(i5)).toString());
            }
            printWriter.println(str + " ---- folder items ");
            for (int i6 = 0; i6 < bgDataModel.folders.size(); i6++) {
                printWriter.println(str + '\t' + ((FolderInfo) bgDataModel.folders.valueAt(i6)).toString());
            }
            printWriter.println(str + " ---- items id map ");
            for (int i7 = 0; i7 < bgDataModel.itemsIdMap.size(); i7++) {
                printWriter.println(str + '\t' + ((ItemInfo) bgDataModel.itemsIdMap.valueAt(i7)).toString());
            }
            if (strArr.length > 0 && TextUtils.equals(strArr[0], "--all")) {
                printWriter.println(str + "shortcut counts ");
                Iterator it2 = bgDataModel.deepShortcutMap.values().iterator();
                while (it2.hasNext()) {
                    printWriter.print(((Integer) it2.next()) + ", ");
                }
                printWriter.println();
            }
        }
    }

    public final void enqueueModelUpdateTask(ModelUpdateTask modelUpdateTask) {
        if (this.mModelDestroyed) {
            return;
        }
        modelUpdateTask.init(this.mApp, this, this.mBgDataModel, this.mBgAllAppsList, Executors.MAIN_EXECUTOR);
        Executors.MODEL_EXECUTOR.execute(modelUpdateTask);
    }

    public final void forceReload() {
        synchronized (this.mLock) {
            stopLoader();
            this.mModelLoaded = false;
        }
        if (hasCallbacks()) {
            startLoader(new BgDataModel.Callbacks[0]);
        }
    }

    public final BgDataModel.Callbacks[] getCallbacks() {
        BgDataModel.Callbacks[] callbacksArr;
        synchronized (this.mCallbacksList) {
            ArrayList arrayList = this.mCallbacksList;
            callbacksArr = (BgDataModel.Callbacks[]) arrayList.toArray(new BgDataModel.Callbacks[arrayList.size()]);
        }
        return callbacksArr;
    }

    public final int getLastLoadId() {
        return this.mLastLoadId;
    }

    public final ModelDbController getModelDbController() {
        return this.mModelDbController;
    }

    public final ModelDelegate getModelDelegate() {
        return this.mModelDelegate;
    }

    public final ModelWriter getWriter(boolean z4, boolean z5, CellPosMapper cellPosMapper, BgDataModel.Callbacks callbacks) {
        return new ModelWriter(this.mApp.getContext(), this, this.mBgDataModel, z4, z5, cellPosMapper, callbacks);
    }

    public final boolean hasCallbacks() {
        boolean z4;
        synchronized (this.mCallbacksList) {
            z4 = !this.mCallbacksList.isEmpty();
        }
        return z4;
    }

    public final boolean isModelLoaded() {
        boolean z4;
        synchronized (this.mLock) {
            z4 = this.mModelLoaded && this.mLoaderTask == null && !this.mModelDestroyed;
        }
        return z4;
    }

    public final void loadAsync(final Consumer consumer) {
        synchronized (this.mLock) {
            try {
                if (!this.mModelLoaded && !this.mIsLoaderTaskRunning) {
                    startLoader(new BgDataModel.Callbacks[0]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Executors.MODEL_EXECUTOR.post(new Runnable() { // from class: com.android.launcher3.j0
            @Override // java.lang.Runnable
            public final void run() {
                consumer.accept(r1.isModelLoaded() ? LauncherModel.this.mBgDataModel : null);
            }
        });
    }

    public final void onAppIconChanged(String str, UserHandle userHandle) {
        Context context = this.mApp.getContext();
        onPackageChanged(str, userHandle);
        ShortcutRequest shortcutRequest = new ShortcutRequest(context, userHandle);
        shortcutRequest.forPackage(str, null);
        ShortcutRequest.QueryResult query = shortcutRequest.query(2);
        if (query.isEmpty()) {
            return;
        }
        enqueueModelUpdateTask(new ShortcutsChangedTask(str, query, userHandle, false));
    }

    public final void onBroadcastIntent(Intent intent) {
        String action = intent.getAction();
        if ("android.intent.action.LOCALE_CHANGED".equals(action)) {
            forceReload();
        } else if ("android.app.action.DEVICE_POLICY_RESOURCE_UPDATED".equals(action)) {
            enqueueModelUpdateTask(new ReloadStringCacheTask(this.mModelDelegate));
        }
    }

    @Override // com.android.launcher3.pm.InstallSessionTracker.Callback
    public final void onInstallSessionCreated(PackageInstallInfo packageInstallInfo) {
        if (FeatureFlags.PROMISE_APPS_IN_ALL_APPS.get()) {
            enqueueModelUpdateTask(new AnonymousClass2(packageInstallInfo, 0));
        }
    }

    @Override // android.content.pm.LauncherApps.Callback
    public final void onPackageAdded(String str, UserHandle userHandle) {
        enqueueModelUpdateTask(new PackageUpdatedTask(1, userHandle, str));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public final void onPackageChanged(String str, UserHandle userHandle) {
        enqueueModelUpdateTask(new PackageUpdatedTask(2, userHandle, str));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public final void onPackageLoadingProgressChanged(String str, UserHandle userHandle, float f4) {
        if (Utilities.ATLEAST_S) {
            enqueueModelUpdateTask(new PackageIncrementalDownloadUpdatedTask(str, userHandle, f4));
        }
    }

    @Override // android.content.pm.LauncherApps.Callback
    public final void onPackageRemoved(String str, UserHandle userHandle) {
        onPackagesRemoved(new String[]{str}, userHandle);
    }

    @Override // com.android.launcher3.pm.InstallSessionTracker.Callback
    public final void onPackageStateChanged(PackageInstallInfo packageInstallInfo) {
        enqueueModelUpdateTask(new PackageInstallStateChangedTask(packageInstallInfo));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public final void onPackagesAvailable(String[] strArr, UserHandle userHandle, boolean z4) {
        enqueueModelUpdateTask(new PackageUpdatedTask(2, userHandle, strArr));
    }

    public final void onPackagesRemoved(String[] strArr, UserHandle userHandle) {
        FileLog.d("Launcher.Model", "package removed received " + TextUtils.join(",", strArr));
        enqueueModelUpdateTask(new PackageUpdatedTask(3, userHandle, strArr));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public final void onPackagesSuspended(String[] strArr, UserHandle userHandle) {
        enqueueModelUpdateTask(new PackageUpdatedTask(5, userHandle, strArr));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public final void onPackagesUnavailable(String[] strArr, UserHandle userHandle, boolean z4) {
        if (z4) {
            return;
        }
        enqueueModelUpdateTask(new PackageUpdatedTask(4, userHandle, strArr));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public final void onPackagesUnsuspended(String[] strArr, UserHandle userHandle) {
        enqueueModelUpdateTask(new PackageUpdatedTask(6, userHandle, strArr));
    }

    @Override // com.android.launcher3.pm.InstallSessionTracker.Callback
    public final void onSessionFailure(String str, UserHandle userHandle) {
        enqueueModelUpdateTask(new AnonymousClass3(userHandle, str));
    }

    @Override // android.content.pm.LauncherApps.Callback
    public final void onShortcutsChanged(String str, List list, UserHandle userHandle) {
        enqueueModelUpdateTask(new ShortcutsChangedTask(str, list, userHandle, true));
    }

    @Override // com.android.launcher3.pm.InstallSessionTracker.Callback
    public final void onUpdateSessionDisplay(PackageUserKey packageUserKey, PackageInstaller.SessionInfo sessionInfo) {
        IconCache iconCache = this.mApp.getIconCache();
        iconCache.getClass();
        iconCache.cachePackageInstallInfo(packageUserKey.mPackageName, packageUserKey.mUser, sessionInfo.getAppIcon(), sessionInfo.getAppLabel());
        HashSet hashSet = new HashSet();
        hashSet.add(packageUserKey.mPackageName);
        enqueueModelUpdateTask(new CacheDataUpdatedTask(2, packageUserKey.mUser, hashSet));
    }

    public final void onUserEvent(String str, UserHandle userHandle) {
        if ("android.intent.action.MANAGED_PROFILE_AVAILABLE".equals(str) && this.mShouldReloadWorkProfile) {
            this.mShouldReloadWorkProfile = false;
            forceReload();
        } else if ("android.intent.action.MANAGED_PROFILE_AVAILABLE".equals(str) || "android.intent.action.MANAGED_PROFILE_UNAVAILABLE".equals(str)) {
            this.mShouldReloadWorkProfile = false;
            enqueueModelUpdateTask(new PackageUpdatedTask(7, userHandle, new String[0]));
        } else if (UserCache.ACTION_PROFILE_LOCKED.equals(str) || UserCache.ACTION_PROFILE_UNLOCKED.equals(str)) {
            enqueueModelUpdateTask(new UserLockStateChangedTask(userHandle, UserCache.ACTION_PROFILE_UNLOCKED.equals(str)));
        } else if (UserCache.ACTION_PROFILE_ADDED.equals(str) || UserCache.ACTION_PROFILE_REMOVED.equals(str)) {
            forceReload();
        }
    }

    public final void onWidgetLabelsUpdated(UserHandle userHandle, HashSet hashSet) {
        enqueueModelUpdateTask(new AnonymousClass3(hashSet, userHandle));
    }

    public final void onWorkspaceUiChanged() {
        LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
        ModelDelegate modelDelegate = this.mModelDelegate;
        Objects.requireNonNull(modelDelegate);
        looperExecutor.execute(new RunnableC0348k0(0, modelDelegate));
    }

    public final void rebindCallbacks() {
        if (hasCallbacks()) {
            startLoader(new BgDataModel.Callbacks[0]);
        }
    }

    public final void removeCallbacks(BgDataModel.Callbacks callbacks) {
        synchronized (this.mCallbacksList) {
            if (this.mCallbacksList.remove(callbacks) && stopLoader()) {
                startLoader(new BgDataModel.Callbacks[0]);
            }
        }
    }

    public final void updateAndBindWorkspaceItem(final WorkspaceItemInfo workspaceItemInfo, final ShortcutInfo shortcutInfo) {
        enqueueModelUpdateTask(new AnonymousClass2(new Supplier() { // from class: com.android.launcher3.l0
            @Override // java.util.function.Supplier
            public final Object get() {
                LauncherModel launcherModel = LauncherModel.this;
                WorkspaceItemInfo workspaceItemInfo2 = workspaceItemInfo;
                LauncherModel.a(launcherModel, workspaceItemInfo2, shortcutInfo);
                return workspaceItemInfo2;
            }
        }, 1));
    }

    public final void validateModelDataOnResume() {
        LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
        looperExecutor.getHandler().removeCallbacks(this.mDataValidationCheck);
        looperExecutor.post(this.mDataValidationCheck);
    }
}
