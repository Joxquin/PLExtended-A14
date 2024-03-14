package com.android.launcher3.model;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import android.util.Log;
import android.util.Pair;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.ItemInstallQueue;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.PersistedItemArray;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.function.LongFunction;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public final class ItemInstallQueue {
    public static MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new X());
    private final Context mContext;
    private List mItems;
    private final PersistedItemArray mStorage = new PersistedItemArray("apps_to_install");
    private int mInstallQueueDisabledFlags = 0;

    private ItemInstallQueue(Context context) {
        this.mContext = context;
    }

    public static void a(ItemInstallQueue itemInstallQueue) {
        itemInstallQueue.getClass();
        Launcher launcher = (Launcher) Launcher.ACTIVITY_TRACKER.getCreatedActivity();
        if (launcher == null) {
            return;
        }
        itemInstallQueue.ensureQueueLoaded();
        if (itemInstallQueue.mItems.isEmpty()) {
            return;
        }
        List list = (List) itemInstallQueue.mItems.stream().map(new Z(0, itemInstallQueue)).collect(Collectors.toList());
        if (!list.isEmpty()) {
            LauncherModel model = launcher.getModel();
            for (BgDataModel.Callbacks callbacks : model.getCallbacks()) {
                callbacks.preAddApps();
            }
            model.enqueueModelUpdateTask(new AddWorkspaceItemsTask(list));
        }
        itemInstallQueue.mItems.clear();
        itemInstallQueue.mStorage.getFile(itemInstallQueue.mContext).delete();
    }

    public static /* synthetic */ ItemInstallQueue c(Context context) {
        return new ItemInstallQueue(context);
    }

    public static void d(ItemInstallQueue itemInstallQueue, PendingInstallShortcutInfo pendingInstallShortcutInfo, Exception exc) {
        Pair itemInfo;
        Context context = itemInstallQueue.mContext;
        if (pendingInstallShortcutInfo.getItemInfo(context) == null) {
            int i4 = FileLog.f4698a;
            Log.d("ItemInstallQueue", "Adding PendingInstallShortcutInfo with no attached info to queue.", exc);
            FileLog.print("ItemInstallQueue", "Adding PendingInstallShortcutInfo with no attached info to queue.", exc);
        } else {
            String str = "Adding PendingInstallShortcutInfo to queue. Attached info: " + itemInfo.first;
            int i5 = FileLog.f4698a;
            Log.d("ItemInstallQueue", str, exc);
            FileLog.print("ItemInstallQueue", str, exc);
        }
        itemInstallQueue.ensureQueueLoaded();
        if (itemInstallQueue.mItems.contains(pendingInstallShortcutInfo)) {
            return;
        }
        itemInstallQueue.mItems.add(pendingInstallShortcutInfo);
        itemInstallQueue.mStorage.write(context, itemInstallQueue.mItems);
    }

    public static PendingInstallShortcutInfo e(ItemInstallQueue itemInstallQueue, int i4, UserHandle userHandle, Intent intent) {
        if (i4 == 0) {
            itemInstallQueue.getClass();
            return new PendingInstallShortcutInfo(intent.getPackage(), userHandle);
        }
        Context context = itemInstallQueue.mContext;
        if (i4 == 4) {
            int intExtra = intent.getIntExtra("appWidgetId", 0);
            AppWidgetProviderInfo appWidgetInfo = AppWidgetManager.getInstance(context).getAppWidgetInfo(intExtra);
            if (appWidgetInfo != null && appWidgetInfo.provider.equals(intent.getComponent()) && appWidgetInfo.getProfile().equals(userHandle)) {
                return new PendingInstallShortcutInfo(intExtra, appWidgetInfo);
            }
        } else if (i4 != 6) {
            Log.e("InstallShortcutReceiver", "Unknown item type");
        } else {
            ShortcutKey fromIntent = ShortcutKey.fromIntent(intent, userHandle);
            ShortcutRequest shortcutRequest = new ShortcutRequest(context, fromIntent.user);
            ComponentName componentName = fromIntent.componentName;
            shortcutRequest.forPackage(componentName.getPackageName(), Arrays.asList(componentName.getClassName()));
            ShortcutRequest.QueryResult query = shortcutRequest.query(11);
            if (!query.isEmpty()) {
                return new PendingInstallShortcutInfo((ShortcutInfo) query.get(0));
            }
        }
        return null;
    }

    private void ensureQueueLoaded() {
        if (this.mItems == null) {
            PersistedItemArray.ItemFactory itemFactory = new PersistedItemArray.ItemFactory() { // from class: com.android.launcher3.model.b0
                @Override // com.android.launcher3.util.PersistedItemArray.ItemFactory
                public final ItemInfo createInfo(int i4, UserHandle userHandle, Intent intent) {
                    return ItemInstallQueue.e(ItemInstallQueue.this, i4, userHandle, intent);
                }
            };
            PersistedItemArray persistedItemArray = this.mStorage;
            persistedItemArray.getClass();
            MainThreadInitializedObject mainThreadInitializedObject = UserCache.INSTANCE;
            Context context = this.mContext;
            final UserCache userCache = (UserCache) mainThreadInitializedObject.get(context);
            Objects.requireNonNull(userCache);
            this.mItems = persistedItemArray.read(context, itemFactory, new LongFunction() { // from class: com.android.launcher3.util.z
                @Override // java.util.function.LongFunction
                public final Object apply(long j4) {
                    return UserCache.this.getUserForSerialNumber(j4);
                }
            });
        }
    }

    private void queuePendingShortcutInfo(final PendingInstallShortcutInfo pendingInstallShortcutInfo) {
        final Exception exc = new Exception();
        LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
        looperExecutor.post(new Runnable() { // from class: com.android.launcher3.model.Y
            @Override // java.lang.Runnable
            public final void run() {
                ItemInstallQueue.d(ItemInstallQueue.this, pendingInstallShortcutInfo, exc);
            }
        });
        if (this.mInstallQueueDisabledFlags != 0) {
            return;
        }
        looperExecutor.post(new W(this));
    }

    public final Stream getPendingShortcuts(final UserHandle userHandle) {
        ensureQueueLoaded();
        return this.mItems.stream().filter(new Predicate() { // from class: com.android.launcher3.model.c0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                ItemInstallQueue.PendingInstallShortcutInfo pendingInstallShortcutInfo = (ItemInstallQueue.PendingInstallShortcutInfo) obj;
                return pendingInstallShortcutInfo.itemType == 6 && userHandle.equals(pendingInstallShortcutInfo.user);
            }
        }).map(new Z(1, userHandle));
    }

    public final void pauseModelPush(int i4) {
        this.mInstallQueueDisabledFlags = i4 | this.mInstallQueueDisabledFlags;
    }

    public final void queueItem(ShortcutInfo shortcutInfo) {
        queuePendingShortcutInfo(new PendingInstallShortcutInfo(shortcutInfo));
    }

    public final void removeFromInstallQueue(final UserHandle userHandle, final HashSet hashSet) {
        if (hashSet.isEmpty()) {
            return;
        }
        ensureQueueLoaded();
        if (this.mItems.removeIf(new Predicate() { // from class: com.android.launcher3.model.a0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                UserHandle userHandle2 = userHandle;
                HashSet hashSet2 = hashSet;
                ItemInstallQueue.PendingInstallShortcutInfo pendingInstallShortcutInfo = (ItemInstallQueue.PendingInstallShortcutInfo) obj;
                if (pendingInstallShortcutInfo.user.equals(userHandle2)) {
                    Intent intent = pendingInstallShortcutInfo.intent;
                    if (hashSet2.contains(intent.getComponent() == null ? intent.getPackage() : intent.getComponent().getPackageName())) {
                        return true;
                    }
                }
                return false;
            }
        })) {
            this.mStorage.write(this.mContext, this.mItems);
        }
    }

    public final void resumeModelPush(int i4) {
        int i5 = (~i4) & this.mInstallQueueDisabledFlags;
        this.mInstallQueueDisabledFlags = i5;
        if (i5 != 0) {
            return;
        }
        Executors.MODEL_EXECUTOR.post(new W(this));
    }

    public final void queueItem(int i4, AppWidgetProviderInfo appWidgetProviderInfo) {
        queuePendingShortcutInfo(new PendingInstallShortcutInfo(i4, appWidgetProviderInfo));
    }

    public final void queueItem(String str, UserHandle userHandle) {
        queuePendingShortcutInfo(new PendingInstallShortcutInfo(str, userHandle));
    }

    /* loaded from: classes.dex */
    public final class PendingInstallShortcutInfo extends ItemInfo {
        final Intent intent;
        AppWidgetProviderInfo providerInfo;
        ShortcutInfo shortcutInfo;

        public PendingInstallShortcutInfo(String str, UserHandle userHandle) {
            this.itemType = 0;
            this.intent = new Intent().setPackage(str);
            this.user = userHandle;
        }

        public final boolean equals(Object obj) {
            AppWidgetProviderInfo appWidgetProviderInfo;
            if (obj instanceof PendingInstallShortcutInfo) {
                PendingInstallShortcutInfo pendingInstallShortcutInfo = (PendingInstallShortcutInfo) obj;
                boolean equals = this.user.equals(pendingInstallShortcutInfo.user);
                boolean z4 = this.itemType == pendingInstallShortcutInfo.itemType;
                boolean equals2 = this.intent.toUri(0).equals(pendingInstallShortcutInfo.intent.toUri(0));
                ShortcutInfo shortcutInfo = this.shortcutInfo;
                boolean z5 = shortcutInfo != null ? pendingInstallShortcutInfo.shortcutInfo != null && shortcutInfo.getId().equals(pendingInstallShortcutInfo.shortcutInfo.getId()) && this.shortcutInfo.getPackage().equals(pendingInstallShortcutInfo.shortcutInfo.getPackage()) : pendingInstallShortcutInfo.shortcutInfo == null;
                AppWidgetProviderInfo appWidgetProviderInfo2 = this.providerInfo;
                return equals && z4 && equals2 && z5 && (appWidgetProviderInfo2 != null ? !((appWidgetProviderInfo = pendingInstallShortcutInfo.providerInfo) == null || !appWidgetProviderInfo2.provider.equals(appWidgetProviderInfo.provider)) : pendingInstallShortcutInfo.providerInfo == null);
            }
            return false;
        }

        @Override // com.android.launcher3.model.data.ItemInfo
        public final Intent getIntent() {
            return this.intent;
        }

        public final Pair getItemInfo(Context context) {
            final LauncherActivityInfo launcherActivityInfo;
            int i4 = this.itemType;
            Intent intent = this.intent;
            if (i4 == 0) {
                String str = intent.getPackage();
                List<LauncherActivityInfo> activityList = ((LauncherApps) context.getSystemService(LauncherApps.class)).getActivityList(str, this.user);
                WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo();
                workspaceItemInfo.user = this.user;
                boolean isEmpty = activityList.isEmpty();
                if (isEmpty) {
                    workspaceItemInfo.intent = AppInfo.makeLaunchIntent(new ComponentName(str, "")).setPackage(str);
                    workspaceItemInfo.status |= 2;
                    launcherActivityInfo = null;
                } else {
                    launcherActivityInfo = activityList.get(0);
                    AppInfo[] appInfoArr = AppInfo.EMPTY_ARRAY;
                    workspaceItemInfo.intent = AppInfo.makeLaunchIntent(launcherActivityInfo.getComponentName());
                }
                LauncherAppState.getInstance(context).getIconCache().getTitleAndIcon(workspaceItemInfo, new Supplier() { // from class: com.android.launcher3.model.d0
                    @Override // java.util.function.Supplier
                    public final Object get() {
                        return launcherActivityInfo;
                    }
                }, isEmpty, false);
                return Pair.create(workspaceItemInfo, null);
            } else if (i4 != 4) {
                if (i4 != 6) {
                    return null;
                }
                WorkspaceItemInfo workspaceItemInfo2 = new WorkspaceItemInfo(context, this.shortcutInfo);
                LauncherAppState.getInstance(context).getIconCache().getShortcutIcon(workspaceItemInfo2, this.shortcutInfo);
                return Pair.create(workspaceItemInfo2, this.shortcutInfo);
            } else {
                LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(context, this.providerInfo);
                LauncherAppWidgetInfo launcherAppWidgetInfo = new LauncherAppWidgetInfo(intent.getIntExtra("appWidgetId", 0), ((AppWidgetProviderInfo) fromProviderInfo).provider);
                InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
                launcherAppWidgetInfo.minSpanX = fromProviderInfo.minSpanX;
                launcherAppWidgetInfo.minSpanY = fromProviderInfo.minSpanY;
                launcherAppWidgetInfo.spanX = Math.min(fromProviderInfo.spanX, idp.numColumns);
                launcherAppWidgetInfo.spanY = Math.min(fromProviderInfo.spanY, idp.numRows);
                launcherAppWidgetInfo.user = this.user;
                return Pair.create(launcherAppWidgetInfo, this.providerInfo);
            }
        }

        public PendingInstallShortcutInfo(ShortcutInfo shortcutInfo) {
            this.itemType = 6;
            this.intent = ShortcutKey.makeIntent(shortcutInfo.getId(), shortcutInfo.getPackage()).setComponent(shortcutInfo.getActivity());
            this.user = shortcutInfo.getUserHandle();
            this.shortcutInfo = shortcutInfo;
        }

        public PendingInstallShortcutInfo(int i4, AppWidgetProviderInfo appWidgetProviderInfo) {
            this.itemType = 4;
            this.intent = new Intent().setComponent(appWidgetProviderInfo.provider).putExtra("appWidgetId", i4);
            this.user = appWidgetProviderInfo.getProfile();
            this.providerInfo = appWidgetProviderInfo;
        }
    }
}
