.class public final synthetic LL1/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LL1/a0;

.field public final synthetic f:LL1/Y;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LL1/a0;LJ1/e;LL1/Y;LJ1/e;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LL1/S;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/S;->e:LL1/a0;

    iput-object p2, p0, LL1/S;->g:Ljava/lang/Object;

    iput-object p3, p0, LL1/S;->f:LL1/Y;

    iput-object p4, p0, LL1/S;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LL1/a0;LK1/a;LJ1/t;LL1/Y;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LL1/S;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/S;->e:LL1/a0;

    iput-object p2, p0, LL1/S;->g:Ljava/lang/Object;

    iput-object p3, p0, LL1/S;->h:Ljava/lang/Object;

    iput-object p4, p0, LL1/S;->f:LL1/Y;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, LL1/S;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, LL1/S;->e:LL1/a0;

    iget-object v1, p0, LL1/S;->g:Ljava/lang/Object;

    check-cast v1, LK1/a;

    iget-object v2, p0, LL1/S;->h:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, LJ1/t;

    iget-object p0, p0, LL1/S;->f:LL1/Y;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, LL1/a0;->e:LL1/c;

    iget v3, v0, LL1/a0;->k:I

    iget-boolean v4, v8, LJ1/t;->i:Z

    iget-object v5, v0, LL1/a0;->b:Ljava/lang/String;

    iget-object v6, v0, LL1/a0;->c:Ljava/lang/String;

    iget-wide v9, v0, LL1/a0;->a:J

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v11, "CONTEXT_IMAGE_BUNDLE_VERSION_KEY"

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "CONTEXT_IMAGE_PRIMARY_TASK_KEY"

    invoke-virtual {v7, v11, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "CONTEXT_IMAGE_PACKAGE_NAME_KEY"

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "CONTEXT_IMAGE_ACTIVITY_NAME_KEY"

    invoke-virtual {v7, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "CONTEXT_IMAGE_CAPTURE_TIME_MS_KEY"

    invoke-virtual {v7, v4, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2, v3, v7}, LL1/c;->c(ILandroid/os/Bundle;)V

    iget-object v2, v0, LL1/a0;->e:LL1/c;

    iget v11, v0, LL1/a0;->k:I

    iget-object v3, v0, LL1/a0;->b:Ljava/lang/String;

    iget-object v4, v0, LL1/a0;->c:Ljava/lang/String;

    iget-wide v6, v0, LL1/a0;->a:J

    iget-object v9, v0, LL1/a0;->m:Landroid/os/Bundle;

    new-instance v10, LJ1/v;

    invoke-direct {v10}, LJ1/v;-><init>()V

    move v5, v11

    invoke-static/range {v3 .. v10}, LK1/a;->c(Ljava/lang/String;Ljava/lang/String;IJLJ1/t;Landroid/os/Bundle;LJ1/v;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, LL1/W;

    invoke-direct {v4, v0, v1, p0}, LL1/W;-><init>(LL1/a0;LK1/a;LL1/Y;)V

    invoke-virtual {v2, v11, v3, v4}, LL1/c;->d(ILandroid/os/Bundle;LL1/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    const-string v1, "Failed to call contentSuggestionsConnector (content extraction) "

    invoke-static {v1, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :goto_1
    iget-object v0, p0, LL1/S;->e:LL1/a0;

    iget-object v1, p0, LL1/S;->f:LL1/Y;

    iget-object p0, p0, LL1/S;->h:Ljava/lang/Object;

    check-cast p0, LJ1/e;

    monitor-enter v0

    :try_start_2
    iget-object v2, v0, LL1/a0;->j:LL1/P;

    invoke-interface {v2}, LL1/P;->d()V

    invoke-interface {v1, p0}, LL1/Y;->a(LJ1/e;)V

    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
