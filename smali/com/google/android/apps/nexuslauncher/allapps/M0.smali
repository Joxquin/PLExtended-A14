.class public final Lcom/google/android/apps/nexuslauncher/allapps/M0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/apps/nexuslauncher/allapps/T0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;JI)V
    .locals 0

    iput p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/M0;->a:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/M0;->c:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iput-wide p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/M0;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 6

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/M0;->a:I

    iget-wide v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/M0;->b:J

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/M0;->c:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    const-string v3, "OneSearchSuggestProvider"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "Error getting ReportSuggestionResponse from AGA"

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->p:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->a(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/Throwable;)I

    move-result p0

    invoke-virtual {v0, v3, v4, v5, p0}, Lcom/google/android/apps/nexuslauncher/allapps/W;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JI)V

    return-void

    :goto_0
    const-string v0, "Error getting DeleteSuggestionResponse from AGA"

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->o:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->a(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/Throwable;)I

    move-result p0

    invoke-virtual {v0, v3, v4, v5, p0}, Lcom/google/android/apps/nexuslauncher/allapps/W;->b(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JI)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/M0;->a:I

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/M0;->c:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lf2/B0;

    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->p:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/M0;->b:J

    sub-long v4, v0, v6

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/apps/nexuslauncher/allapps/W;->e(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JJ)V

    return-void

    :goto_0
    check-cast p1, Lf2/p;

    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;->o:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/apps/nexuslauncher/allapps/M0;->b:J

    sub-long/2addr v4, v6

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/apps/nexuslauncher/allapps/W;->e(Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;JJ)V

    iget-object p0, v1, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/SearchUiManager;->refreshResults()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
