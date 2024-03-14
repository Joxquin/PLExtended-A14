.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->f:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->g:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/H2;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    const-string v2, "get_people_tile_preview"

    const/4 v3, 0x0

    const-string v4, "com.android.systemui.people.PeopleProvider"

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "remote_views"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/X;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/X;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->f:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Landroid/app/search/Query;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->g:Ljava/lang/Object;

    move-object v9, p0

    check-cast v9, Lcom/google/android/apps/nexuslauncher/allapps/p;

    iget-object v5, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->s:Lcom/google/android/apps/nexuslauncher/allapps/A;

    invoke-virtual {v5, v2}, Lcom/google/android/apps/nexuslauncher/allapps/A;->a(Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v6}, Landroid/app/search/Query;->getInput()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/allapps/A;->getEntryPoint()Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;

    move-result-object v0

    iget-object v2, v5, Lcom/google/android/apps/nexuslauncher/allapps/A;->c:Lg2/x;

    invoke-virtual {v2, v0}, Lg2/x;->b(Lcom/google/android/gms/play/cloud/search/grpc/EntryPoint;)V

    invoke-static {}, Lg2/m;->i()Lg2/l;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v2

    check-cast v2, Lg2/B;

    invoke-virtual {v0, v2}, Lg2/l;->d(Lg2/B;)V

    invoke-virtual {v0, p0}, Lg2/l;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lg2/l;->b()V

    invoke-virtual {v0, v7, v8}, Lg2/l;->e(J)V

    iget-object p0, v5, Lcom/google/android/apps/nexuslauncher/allapps/A;->a:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->u:I

    invoke-virtual {v0, p0}, Lg2/l;->f(I)V

    iget p0, v5, Lcom/google/android/apps/nexuslauncher/allapps/A;->f:I

    invoke-virtual {v0, p0}, Lg2/l;->a(I)V

    invoke-virtual {v0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lg2/m;

    iget-object v0, v5, Lcom/google/android/apps/nexuslauncher/allapps/A;->i:Lg2/v;

    iget-object v2, v0, La3/b;->a:LX2/h;

    sget-object v3, Lg2/w;->a:LX2/u0;

    if-nez v3, :cond_2

    const-class v4, Lg2/w;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lg2/w;->a:LX2/u0;

    if-nez v3, :cond_1

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v3

    sget-object v10, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v10, v3, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v10, "com.google.android.gms.play.cloud.search.grpc.PlayCloudSearchService"

    const-string v11, "GetCompletions"

    invoke-static {v10, v11}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v1, v3, LX2/s0;->e:Z

    invoke-static {}, Lg2/m;->h()Lg2/m;

    move-result-object v1

    sget-object v10, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v10, LZ2/b;

    invoke-direct {v10, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v10, v3, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lg2/p;->c()Lg2/p;

    move-result-object v1

    new-instance v10, LZ2/b;

    invoke-direct {v10, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v10, v3, LX2/s0;->b:LX2/t0;

    invoke-virtual {v3}, LX2/s0;->a()LX2/u0;

    move-result-object v1

    sput-object v1, Lg2/w;->a:LX2/u0;

    move-object v3, v1

    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    iget-object v0, v0, La3/b;->b:LX2/g;

    invoke-virtual {v2, v3, v0}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v0

    invoke-static {v0, p0}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object p0

    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/allapps/B;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "GmsPlayProvider"

    const-string v1, "Sending request to Gms Play to get completions."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/z;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/nexuslauncher/allapps/z;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/A;Landroid/app/search/Query;JLcom/google/android/apps/nexuslauncher/allapps/p;)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    :goto_1
    return-void

    :goto_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/m0;->g:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->r:Lcom/google/android/apps/nexuslauncher/allapps/T0;

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "OneSearchSuggestProvider"

    const-string v0, "Can\'t report suggestion - null id?"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/T0;->d()Lf2/Z;

    move-result-object v4

    invoke-static {}, Lf2/z0;->e()Lf2/y0;

    move-result-object v5

    invoke-virtual {v5, v3}, Lf2/y0;->b(Ljava/lang/String;)V

    if-eqz p0, :cond_5

    invoke-virtual {v5, p0}, Lf2/y0;->a(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v5}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/z0;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v3, v4, La3/b;->a:LX2/h;

    sget-object v7, Lf2/a0;->m:LX2/u0;

    if-nez v7, :cond_7

    const-class v8, Lf2/a0;

    monitor-enter v8

    :try_start_1
    sget-object v7, Lf2/a0;->m:LX2/u0;

    if-nez v7, :cond_6

    invoke-static {}, LX2/u0;->b()LX2/s0;

    move-result-object v7

    sget-object v9, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    iput-object v9, v7, LX2/s0;->c:Lio/grpc/MethodDescriptor$MethodType;

    const-string v9, "com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch.OneSearchSuggest"

    const-string v10, "ReportSuggestion"

    invoke-static {v9, v10}, LX2/u0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, LX2/s0;->d:Ljava/lang/String;

    iput-boolean v1, v7, LX2/s0;->e:Z

    invoke-static {}, Lf2/z0;->d()Lf2/z0;

    move-result-object v1

    sget-object v9, LZ2/c;->a:Lcom/google/protobuf/w;

    new-instance v9, LZ2/b;

    invoke-direct {v9, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v9, v7, LX2/s0;->a:LX2/t0;

    invoke-static {}, Lf2/B0;->b()Lf2/B0;

    move-result-object v1

    new-instance v9, LZ2/b;

    invoke-direct {v9, v1}, LZ2/b;-><init>(Lcom/google/protobuf/J;)V

    iput-object v9, v7, LX2/s0;->b:LX2/t0;

    invoke-virtual {v7}, LX2/s0;->a()LX2/u0;

    move-result-object v1

    sput-object v1, Lf2/a0;->m:LX2/u0;

    move-object v7, v1

    :cond_6
    monitor-exit v8

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_7
    :goto_3
    iget-object v1, v4, La3/b;->b:LX2/g;

    invoke-virtual {v3, v7, v1}, LX2/h;->g(LX2/u0;LX2/g;)LX2/k;

    move-result-object v1

    invoke-static {v1, p0}, La3/e;->b(LX2/k;Ljava/lang/Object;)La3/c;

    move-result-object p0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/M0;

    invoke-direct {v1, v0, v5, v6, v2}, Lcom/google/android/apps/nexuslauncher/allapps/M0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/T0;JI)V

    invoke-static {}, Lcom/google/common/util/concurrent/e;->a()Ljava/util/concurrent/Executor;

    invoke-static {p0, v1}, Lcom/google/common/util/concurrent/d;->a(La3/c;LR2/i;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
