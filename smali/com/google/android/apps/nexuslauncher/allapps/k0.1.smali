.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/k0;->d:I

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/k0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->f:Lio/grpc/internal/z1;

    if-eqz v0, :cond_0

    const-string v0, "OneSearchSuggestProvider"

    const-string v1, "Shut down the binder channel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->f:Lio/grpc/internal/z1;

    invoke-virtual {v0}, Lio/grpc/internal/z1;->i()LX2/f0;

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/T0;->h:Lcom/google/android/apps/nexuslauncher/allapps/W;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/W;->c:Z

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/W;->d:I

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->e:Lb0/n;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/x0;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lb0/n;->d(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/X;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/X;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "SearchSessionManager"

    const-string v1, "Error fetching slice"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
