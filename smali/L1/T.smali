.class public final synthetic LL1/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LL1/a0;

.field public final synthetic e:LK1/a;

.field public final synthetic f:LJ1/t;

.field public final synthetic g:LJ1/e;

.field public final synthetic h:LL1/Z;

.field public final synthetic i:Z


# direct methods
.method public synthetic constructor <init>(LL1/a0;LK1/a;LJ1/t;LJ1/e;LL1/Z;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/T;->d:LL1/a0;

    iput-object p2, p0, LL1/T;->e:LK1/a;

    iput-object p3, p0, LL1/T;->f:LJ1/t;

    iput-object p4, p0, LL1/T;->g:LJ1/e;

    iput-object p5, p0, LL1/T;->h:LL1/Z;

    iput-boolean p6, p0, LL1/T;->i:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v6, p0, LL1/T;->d:LL1/a0;

    iget-object v3, p0, LL1/T;->e:LK1/a;

    iget-object v13, p0, LL1/T;->f:LJ1/t;

    iget-object v2, p0, LL1/T;->g:LJ1/e;

    iget-object v4, p0, LL1/T;->h:LL1/Z;

    iget-boolean v5, p0, LL1/T;->i:Z

    monitor-enter v6

    :try_start_0
    iget-object p0, v6, LL1/a0;->e:LL1/c;

    iget-object v7, v6, LL1/a0;->b:Ljava/lang/String;

    iget-object v8, v6, LL1/a0;->c:Ljava/lang/String;

    iget v9, v6, LL1/a0;->k:I

    iget-wide v10, v6, LL1/a0;->a:J

    iget-object v12, v6, LL1/a0;->m:Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v14, v2

    invoke-static/range {v7 .. v14}, LK1/a;->a(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;LJ1/t;LJ1/e;)Landroid/os/Bundle;

    move-result-object v7

    new-instance v8, LL1/X;

    move-object v0, v8

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, LL1/X;-><init>(LL1/a0;LJ1/e;LK1/a;LL1/Z;Z)V

    invoke-virtual {p0, v7, v8}, LL1/c;->a(Landroid/os/Bundle;LL1/X;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    const-string v0, "Failed to call service - extract entities."

    invoke-static {v0, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v6, p0}, LL1/a0;->j(Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v6

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
