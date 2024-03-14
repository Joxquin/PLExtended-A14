.class public Lcom/android/quickstep/util/AsyncClockEventDelegate;
.super Landroid/widget/TextClock$ClockEventDelegate;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mFormatObservers:Ljava/util/List;

.field private mFormatRegistered:Z

.field private final mFormatUri:Landroid/net/Uri;

.field private final mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private final mTimeEventReceivers:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/TextClock$ClockEventDelegate;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/quickstep/util/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/util/h;-><init>(Lcom/android/quickstep/util/AsyncClockEventDelegate;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mTimeEventReceivers:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatObservers:Ljava/util/List;

    const-string v0, "time_12_24"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatRegistered:Z

    iput-boolean v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mDestroyed:Z

    iput-object p1, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/util/i;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/util/i;-><init>(Lcom/android/quickstep/util/AsyncClockEventDelegate;I)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/AsyncClockEventDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->lambda$onDestroy$4()V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/util/AsyncClockEventDelegate;Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->lambda$onClockEventReceived$2(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/util/AsyncClockEventDelegate;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->onClockEventReceived(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/util/AsyncClockEventDelegate;Landroid/database/ContentObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->lambda$onSettingsChanged$1(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/util/AsyncClockEventDelegate;Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->lambda$onClockEventReceived$3(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/util/AsyncClockEventDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/AsyncClockEventDelegate;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object p0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mContext:Landroid/content/Context;

    const-string v1, "android.intent.action.TIME_SET"

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onClockEventReceived$2(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$onClockEventReceived$3(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/android/quickstep/util/k;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/quickstep/util/k;-><init>(Lcom/android/quickstep/util/AsyncClockEventDelegate;Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private lambda$onDestroy$4()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object p0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$onSettingsChanged$1(Landroid/database/ContentObserver;)V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p0}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method private onClockEventReceived(Landroid/content/Intent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mTimeEventReceivers:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/quickstep/util/j;

    invoke-direct {v2, p0, p1}, Lcom/android/quickstep/util/j;-><init>(Lcom/android/quickstep/util/AsyncClockEventDelegate;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mDestroyed:Z

    sget-object v1, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/SettingsCache;

    iget-object v2, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p0}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/quickstep/util/i;

    invoke-direct {v2, p0, v0}, Lcom/android/quickstep/util/i;-><init>(Lcom/android/quickstep/util/AsyncClockEventDelegate;I)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSettingsChanged(Z)V
    .locals 3

    iget-boolean p1, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mDestroyed:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatObservers:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatObservers:Ljava/util/List;

    new-instance v1, Lcom/android/quickstep/util/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/util/h;-><init>(Lcom/android/quickstep/util/AsyncClockEventDelegate;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerFormatChangeObserver(Landroid/database/ContentObserver;I)V
    .locals 2

    iget-object p2, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatObservers:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatRegistered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mDestroyed:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    iget-object v1, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatRegistered:Z

    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerTimeChangeReceiver(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mTimeEventReceivers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mTimeEventReceivers:Landroid/util/ArrayMap;

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterFormatChangeObserver(Landroid/database/ContentObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatObservers:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mFormatObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterTimeChangeReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mTimeEventReceivers:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/quickstep/util/AsyncClockEventDelegate;->mTimeEventReceivers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
