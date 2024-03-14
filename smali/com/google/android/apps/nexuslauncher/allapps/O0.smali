.class public Lcom/google/android/apps/nexuslauncher/allapps/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/i;


# instance fields
.field public final synthetic a:I

.field public final b:J

.field public final synthetic c:Lcom/google/android/apps/nexuslauncher/allapps/T0;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Landroid/app/search/Query;Lcom/google/android/apps/nexuslauncher/allapps/p;J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->a:I

    .line 2
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->c:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->e:Ljava/lang/Object;

    iput-wide p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->a:I

    .line 3
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->c:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->d:Ljava/lang/Object;

    .line 5
    iput-wide p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->b:J

    .line 6
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;I)V
    .locals 0

    .line 1
    const/4 p6, 0x1

    iput p6, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->a:I

    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/nexuslauncher/allapps/O0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 7

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->a:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->e:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->b:J

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->c:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    const-string v5, "OneSearchSuggestProvider"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p0, "Unable to get suggestions from AGA"

    invoke-static {v5, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v4, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->d:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v4, p1}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->a(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/Throwable;)I

    move-result p1

    invoke-virtual {p0, v0, v5, v6, p1}, Lcom/google/android/apps/nexuslauncher/allapps/W;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JI)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    check-cast v1, Lcom/google/android/apps/nexuslauncher/allapps/p;

    new-instance p1, Lcom/google/android/apps/nexuslauncher/allapps/L0;

    invoke-direct {p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/L0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/p;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Error getting "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from AGA"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, v4, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    check-cast v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v4, p1}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->a(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/Throwable;)I

    move-result p1

    invoke-virtual {p0, v1, v5, v6, p1}, Lcom/google/android/apps/nexuslauncher/allapps/W;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JI)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->a:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->e:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v4, p1

    check-cast v4, Lf2/A;

    sget-boolean p1, Lcom/google/android/apps/nexuslauncher/allapps/D2;->a:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->d:Ljava/lang/Object;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess on AGA suggestion, query="

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/app/search/Query;

    invoke-virtual {v2}, Landroid/app/search/Query;->getInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WebAppSearchLogging"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->c:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    move-object v3, v0

    check-cast v3, Landroid/app/search/Query;

    move-object v5, v1

    check-cast v5, Lcom/google/android/apps/nexuslauncher/allapps/p;

    iget-wide v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->b:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->b(Landroid/app/search/Query;Lf2/A;Lcom/google/android/apps/nexuslauncher/allapps/p;J[BZ)V

    return-void

    :goto_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->c:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v2, p1, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    move-object v3, v1

    check-cast v3, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/O0;->b:J

    sub-long v4, v0, v6

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/apps/nexuslauncher/allapps/W;->e(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
