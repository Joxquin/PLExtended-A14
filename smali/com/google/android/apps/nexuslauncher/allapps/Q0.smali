.class public final Lcom/google/android/apps/nexuslauncher/allapps/Q0;
.super Lcom/google/android/apps/nexuslauncher/allapps/O0;
.source "SourceFile"


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/google/android/apps/nexuslauncher/allapps/T0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;Ljava/lang/Object;I)V
    .locals 7

    iput p7, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;->f:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;->h:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;->g:Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/allapps/O0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;Ljava/lang/String;JLcom/google/android/apps/nexuslauncher/logging/NexusLauncherLatencyEvent;I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;->f:I

    const-string v1, "No URL in AGA response"

    const-string v2, "OneSearchSuggestProvider"

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/Q0;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, Lf2/h;

    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/O0;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lf2/h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lf2/h;->c()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    check-cast v3, Landroid/view/View;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/H0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/H0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_1
    check-cast p1, Lf2/l;

    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/O0;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lf2/l;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lf2/l;->c()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    check-cast v3, Landroid/view/View;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/H0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/H0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :goto_2
    check-cast p1, Lf2/d;

    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/O0;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lf2/d;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lf2/d;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    check-cast v3, Ljava/lang/String;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/H0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/google/android/apps/nexuslauncher/allapps/H0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
