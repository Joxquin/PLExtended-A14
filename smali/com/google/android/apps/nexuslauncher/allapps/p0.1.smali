.class public final Lcom/google/android/apps/nexuslauncher/allapps/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/z;


# instance fields
.field public final d:Lcom/android/launcher3/Alarm;

.field public final synthetic e:Landroid/net/Uri;

.field public final synthetic f:Landroidx/lifecycle/z;

.field public final synthetic g:Lcom/google/android/apps/nexuslauncher/allapps/y0;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/net/Uri;Lcom/google/android/apps/nexuslauncher/allapps/Q1;Landroidx/slice/widget/SliceView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/p0;->g:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/p0;->e:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/p0;->f:Landroidx/lifecycle/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/launcher3/Alarm;

    invoke-direct {p1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/p0;->d:Lcom/android/launcher3/Alarm;

    new-instance p4, Lcom/google/android/apps/nexuslauncher/allapps/o0;

    invoke-direct {p4, p0, p2, p3}, Lcom/google/android/apps/nexuslauncher/allapps/o0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/p0;Landroid/net/Uri;Lcom/google/android/apps/nexuslauncher/allapps/Q1;)V

    invoke-virtual {p1, p4}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    const-wide/16 p2, 0x41

    invoke-virtual {p1, p2, p3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)V
    .locals 6

    check-cast p1, Landroidx/slice/Slice;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/p0;->d:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/p0;->e:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/p0;->g:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH_PERFORMANCE_LOGGING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v3, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->setUri(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v4, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->u:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_3
    iget-object v0, v3, Lcom/google/android/apps/nexuslauncher/allapps/y0;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v3, Lcom/google/android/apps/nexuslauncher/allapps/y0;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/x0;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->i:Landroidx/slice/Slice;

    :cond_4
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/p0;->f:Landroidx/lifecycle/z;

    invoke-interface {p0, p1}, Landroidx/lifecycle/z;->i(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
