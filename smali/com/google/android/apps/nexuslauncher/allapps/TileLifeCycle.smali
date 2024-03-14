.class public final Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;
.super Lcom/google/android/systemui/qs/launcher/ILauncherTileListener$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;


# instance fields
.field private mIsUpdateLogged:Z

.field public mLastValue:LJ2/c;

.field private final mLatencyLogger:Lcom/google/android/apps/nexuslauncher/allapps/W;

.field private final mLauncher:Lcom/android/launcher3/views/ActivityContext;

.field final mListeners:Ljava/util/ArrayList;

.field public mService:Lcom/google/android/systemui/qs/launcher/ILauncherTileService;

.field private final mSessionManager:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field private mStartTime:J

.field private mTileDestroyed:Z

.field private final mTileServiceIntent:Landroid/content/Intent;

.field private final mTileSpec:Ljava/lang/String;

.field private final mTimeoutAlarm:Lcom/android/launcher3/Alarm;

.field private mWasListening:Z


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;ZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/qs/launcher/ILauncherTileListener$Stub;-><init>()V

    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTimeoutAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTileDestroyed:Z

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mWasListening:Z

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mSessionManager:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTileSpec:Ljava/lang/String;

    new-instance p3, Landroid/content/Intent;

    const-string v1, "com.google.android.systemui.qs.launcher.LauncherTileService"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTileServiceIntent:Landroid/content/Intent;

    const-string v1, "com.android.systemui"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p3, Lcom/google/android/apps/nexuslauncher/allapps/W;

    invoke-direct {p3, p1}, Lcom/google/android/apps/nexuslauncher/allapps/W;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mLatencyLogger:Lcom/google/android/apps/nexuslauncher/allapps/W;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowVisibilityChangeListener(Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->destroy()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->updateListening()V

    :goto_0
    return-void
.end method

.method public static a(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mWasListening:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mWasListening:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mSessionManager:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTileServiceIntent:Landroid/content/Intent;

    const/16 v1, 0x41

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mStartTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mIsUpdateLogged:Z

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTimeoutAlarm:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/T2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/T2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTimeoutAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mService:Lcom/google/android/systemui/qs/launcher/ILauncherTileService;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTileSpec:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/google/android/systemui/qs/launcher/ILauncherTileService;->clearTileListeners(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "TileLifeCycle"

    const-string v1, "Failed to call clearTileListeners"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mService:Lcom/google/android/systemui/qs/launcher/ILauncherTileService;

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mSessionManager:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p1, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;Lcom/android/launcher3/Alarm;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mLatencyLogger:Lcom/google/android/apps/nexuslauncher/allapps/W;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mStartTime:J

    sub-long/2addr v1, v3

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->TIMEOUT:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/allapps/W;->f(JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;LJ2/c;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mLastValue:LJ2/c;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/S2;

    invoke-direct {v1, p1}, Lcom/google/android/apps/nexuslauncher/allapps/S2;-><init>(LJ2/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mIsUpdateLogged:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTimeoutAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTimeoutAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mIsUpdateLogged:Z

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mLatencyLogger:Lcom/google/android/apps/nexuslauncher/allapps/W;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mStartTime:J

    sub-long/2addr v0, v2

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->HOT:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/W;->f(JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    :cond_1
    return-void
.end method

.method public static d(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;Landroid/os/IBinder;)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mWasListening:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.systemui.qs.launcher.ILauncherTileService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/systemui/qs/launcher/ILauncherTileService;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/systemui/qs/launcher/ILauncherTileService;

    goto :goto_0

    :cond_1
    new-instance v0, LJ2/a;

    invoke-direct {v0, p1}, LJ2/a;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mService:Lcom/google/android/systemui/qs/launcher/ILauncherTileService;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTileSpec:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/google/android/systemui/qs/launcher/ILauncherTileService;->addTileListener(Ljava/lang/String;Lcom/google/android/systemui/qs/launcher/ILauncherTileListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "TileLifeCycle"

    const-string v1, "Failed to call addTileListener"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mLatencyLogger:Lcom/google/android/apps/nexuslauncher/allapps/W;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mStartTime:J

    sub-long/2addr v0, v2

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;->FAIL:Lcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/W;->f(JLcom/android/launcher3/logging/StatsLogManager$StatsLatencyLogger$LatencyType;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateListening()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTileDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/Q2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/Q2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;Z)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final addListener(Landroidx/lifecycle/z;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->updateListening()V

    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTileDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTileDestroyed:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowVisibilityChangeListener(Landroid/view/ViewTreeObserver$OnWindowVisibilityChangeListener;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mTimeoutAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->updateListening()V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/R2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/apps/nexuslauncher/allapps/R2;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->updateListening()V

    return-void
.end method

.method public final removeListener(Landroidx/lifecycle/z;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/TileLifeCycle;->updateListening()V

    return-void
.end method
