.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

.field public final synthetic e:Landroid/app/search/Query;

.field public final synthetic f:Lcom/google/android/apps/nexuslauncher/allapps/Q;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/Q;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/l;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/l;->e:Landroid/app/search/Query;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/l;->f:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/l;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/l;->d:Lcom/google/android/apps/nexuslauncher/allapps/a1;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/l;->e:Landroid/app/search/Query;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/l;->f:Lcom/google/android/apps/nexuslauncher/allapps/Q;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/l;->g:Ljava/lang/String;

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/a1;->c(Landroid/app/search/Query;Z)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/google/android/apps/nexuslauncher/allapps/m;

    const/4 v5, 0x2

    invoke-direct {v4, v0, p0, v5}, Lcom/google/android/apps/nexuslauncher/allapps/m;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/a1;Ljava/lang/Object;I)V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-wide v10, v0, Lcom/google/android/apps/nexuslauncher/allapps/a1;->n:J

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->l:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v5, v0, v10

    sget-object v7, Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;->f:Lcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/apps/nexuslauncher/allapps/Q;->a(Ljava/lang/String;Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JLcom/google/android/apps/nexuslauncher/logging/LatencyLoggingPackageId;ZIJ)V

    return-void
.end method
