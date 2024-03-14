.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final synthetic e:Lf2/x0;

.field public final synthetic f:I

.field public final synthetic g:Lf2/J0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Lf2/x0;ILf2/J0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/i0;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/i0;->e:Lf2/x0;

    iput p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/i0;->f:I

    iput-object p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/i0;->g:Lf2/J0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/i0;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/i0;->e:Lf2/x0;

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/i0;->f:I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/i0;->g:Lf2/J0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lf2/x0;->e()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    if-eq v2, v3, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/google/android/apps/nexuslauncher/allapps/D2;->b:Z

    if-eqz v1, :cond_2

    const-string v1, "AGASessionSummaryLog"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "logOnDeviceResultClicked with deviceBlockIndex= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lf2/G;->f()Lf2/F;

    move-result-object v1

    invoke-virtual {v1, p0}, Lf2/F;->c(Lf2/J0;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lf2/F;->b(J)V

    invoke-virtual {v1, v2}, Lf2/F;->a(I)V

    invoke-virtual {v1}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v1

    check-cast v1, Lf2/G;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d()Lf2/Z;

    move-result-object v0

    iget-object v2, v0, La3/b;->a:LX2/h;

    sget-object v4, Lf2/a0;->p:LX2/u0;

    if-nez v4, :cond_4

    const-class v5, Lf2/a0;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lf2/a0;->p:LX2/u0;

    if-nez v4, :cond_3

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v4

    sget-object v6, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v6, v4, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v6, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v7, "LogOnDeviceResultClicked"

    invoke-static {v6, v7}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v3, v4, LX2/s0;->e:Z

    invoke-static {}, Lf2/G;->e()Lf2/G;

    move-result-object v3

    sget-object v6, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v6, LZ2/b;

    invoke-direct {v6, v3}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v6, v4, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/I;->b()Lf2/I;

    move-result-object v3

    new-instance v6, LZ2/b;

    invoke-direct {v6, v3}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v6, v4, LX2/s0;->b:LX2/t0;

    invoke-virtual {v4}, LX2/s0;->a()LX2/u0;

    move-result-object v3

    sput-object v3, Lf2/a0;->p:LX2/u0;

    move-object v4, v3

    :cond_3
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_1
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v2, v4, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, v1}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->e(Lf2/J0;)V

    :cond_5
    return-void
.end method
