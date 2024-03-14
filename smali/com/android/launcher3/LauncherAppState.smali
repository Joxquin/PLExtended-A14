.class public final Lcom/android/launcher3/LauncherAppState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;


# instance fields
.field public final mCachedRemoteViews:Landroid/util/SparseArray;

.field private final mContext:Landroid/content/Context;

.field private final mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private final mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

.field private final mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/b0;

    invoke-direct {v1}, Lcom/android/launcher3/b0;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "app_icons.db"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/LauncherAppState;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "Launcher"

    const-string v1, "LauncherAppState initiated"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    new-instance v1, Lcom/android/launcher3/c0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/c0;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->addOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 5
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v1, Lcom/android/launcher3/h0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/launcher3/h0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 6
    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/d0;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/android/launcher3/d0;-><init>(Lcom/android/launcher3/LauncherModel;I)V

    invoke-direct {v0, v3}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 8
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    const-string v5, "android.app.action.DEVICE_POLICY_RESOURCE_UPDATED"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v3, Lcom/android/launcher3/i0;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/launcher3/i0;-><init>(Lcom/android/launcher3/util/SafeCloseable;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pm/UserCache;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/e0;

    invoke-direct {v3, v1}, Lcom/android/launcher3/e0;-><init>(Lcom/android/launcher3/LauncherModel;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/pm/UserCache;->addUserEventListener(Lcom/android/launcher3/e0;)LR0/h;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v3, Lcom/android/launcher3/f0;

    invoke-direct {v3, v0, v4}, Lcom/android/launcher3/f0;-><init>(Lcom/android/launcher3/util/SafeCloseable;I)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lcom/android/launcher3/util/LockedUserState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {p1}, Lcom/android/launcher3/util/LockedUserState$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/android/launcher3/i0;

    const/4 v3, 0x2

    invoke-direct {v1, p0, p1, v3}, Lcom/android/launcher3/i0;-><init>(Lcom/android/launcher3/util/SafeCloseable;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LockedUserState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    .line 15
    sget-object p1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/SettingsCache;

    .line 16
    new-instance v0, Lcom/android/launcher3/g0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/g0;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    .line 17
    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    .line 18
    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(ILandroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1}, Landroid/service/notification/NotificationListenerService;->requestRebind(Landroid/content/ComponentName;)V

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v1, Lcom/android/launcher3/i0;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v0, v2}, Lcom/android/launcher3/i0;-><init>(Lcom/android/launcher3/util/SafeCloseable;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    .line 23
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mCachedRemoteViews:Landroid/util/SparseArray;

    .line 24
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    .line 25
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 26
    new-instance v2, Lcom/android/launcher3/icons/LauncherIconProvider;

    invoke-direct {v2, p1}, Lcom/android/launcher3/icons/LauncherIconProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    .line 27
    new-instance v9, Lcom/android/launcher3/icons/IconCache;

    invoke-direct {v9, p1, v1, p2, v2}, Lcom/android/launcher3/icons/IconCache;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Ljava/lang/String;Lcom/android/launcher3/icons/LauncherIconProvider;)V

    iput-object v9, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    .line 28
    new-instance v1, Lcom/android/launcher3/LauncherModel;

    new-instance v7, Lcom/android/launcher3/AppFilter;

    invoke-direct {v7, p1}, Lcom/android/launcher3/AppFilter;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v8, p2

    move-object v3, v1

    move-object v4, p1

    move-object v5, p0

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/LauncherModel;-><init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/AppFilter;Z)V

    iput-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 29
    new-instance p0, Lcom/android/launcher3/h0;

    const/4 p1, 0x4

    invoke-direct {p0, p1, v9}, Lcom/android/launcher3/h0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 30
    new-instance p0, Lcom/android/launcher3/h0;

    const/4 p1, 0x5

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/h0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Lcom/android/launcher3/LauncherAppState;Landroid/content/Context;)V
    .locals 6

    sget-object v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/d0;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/launcher3/d0;-><init>(Lcom/android/launcher3/LauncherModel;I)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->setWidgetRefreshCallback(Lcom/android/launcher3/d0;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v2, Lcom/android/launcher3/h0;

    const/4 v4, 0x2

    invoke-direct {v2, v4, v0}, Lcom/android/launcher3/h0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/launcher3/LauncherAppState$IconObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher3/LauncherAppState$IconObserver;-><init>(Lcom/android/launcher3/LauncherAppState;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/android/launcher3/icons/IconProvider;->registerIconChangeListener(Lcom/android/launcher3/icons/IconProvider$IconChangeListener;Landroid/os/Handler;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v5, Lcom/android/launcher3/f0;

    invoke-direct {v5, v1, v3}, Lcom/android/launcher3/f0;-><init>(Lcom/android/launcher3/util/SafeCloseable;I)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/launcher3/h0;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0}, Lcom/android/launcher3/h0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->THEMED_ICONS:Lcom/android/launcher3/ConstantItem;

    filled-new-array {v2}, [Lcom/android/launcher3/Item;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/LauncherPrefs;->addListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v2, Lcom/android/launcher3/i0;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/launcher3/i0;-><init>(Lcom/android/launcher3/util/SafeCloseable;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/pm/InstallSessionHelper;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/pm/InstallSessionHelper;->registerInstallTracker(Lcom/android/launcher3/LauncherModel;)Lcom/android/launcher3/pm/InstallSessionTracker;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    new-instance v0, Lcom/android/launcher3/h0;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/h0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/LauncherAppState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/LauncherAppState$IconObserver;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->THEMED_ICONS:Lcom/android/launcher3/ConstantItem;

    filled-new-array {v0}, [Lcom/android/launcher3/Item;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/LauncherPrefs;->removeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;[Lcom/android/launcher3/Item;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/SimpleBroadcastReceiver;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public static e(Lcom/android/launcher3/LauncherAppState;Z)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {p1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Landroid/service/notification/NotificationListenerService;->requestRebind(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public static getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/InvariantDeviceProfile;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/LauncherAppState;

    return-object p0
.end method

.method public static h(Lcom/android/launcher3/LauncherAppState;Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/launcher3/icons/LauncherIcons;->clearPool()V

    iget-object p1, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateIconParams(II)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/android/launcher3/LauncherAppState;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/icons/LauncherIconProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/android/launcher3/LauncherAppState;)Lcom/android/launcher3/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object p0
.end method

.method public static l(Lcom/android/launcher3/LauncherAppState;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/launcher3/icons/LauncherIcons;->clearPool()V

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/icons/cache/BaseIconCache;->updateIconParams(II)V

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mOnTerminateCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getIconCache()Lcom/android/launcher3/icons/IconCache;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    return-object p0
.end method

.method public final getIconProvider()Lcom/android/launcher3/icons/LauncherIconProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mIconProvider:Lcom/android/launcher3/icons/LauncherIconProvider;

    return-object p0
.end method

.method public final getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mInvariantDeviceProfile:Lcom/android/launcher3/InvariantDeviceProfile;

    return-object p0
.end method

.method public final getModel()Lcom/android/launcher3/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/LauncherAppState;->mModel:Lcom/android/launcher3/LauncherModel;

    return-object p0
.end method
