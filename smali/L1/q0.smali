.class public final synthetic LL1/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LL1/u0;

.field public final synthetic e:LJ1/B;


# direct methods
.method public synthetic constructor <init>(LL1/u0;LJ1/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/q0;->d:LL1/u0;

    iput-object p2, p0, LL1/q0;->e:LJ1/B;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LL1/q0;->d:LL1/u0;

    iget-object p0, p0, LL1/q0;->e:LJ1/B;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, LL1/u0;->c:LL1/o;

    iget v2, v0, LL1/u0;->m:I

    invoke-virtual {v1, v2}, LL1/o;->i(I)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, LJ1/B;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, LL1/u0;->c:LL1/o;

    iget-object v1, v1, LL1/o;->a:LL1/a0;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v1, LL1/a0;->j:LL1/P;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    iget-object v1, p0, LJ1/B;->e:Ljava/lang/String;

    sget v3, LM1/c;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, LL1/P;->c()V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_1
    :goto_0
    iget-object v1, v0, LL1/u0;->c:LL1/o;

    iget-object v2, v1, LL1/o;->b:LL1/q;

    sget v3, LM1/c;->a:I

    iput-object p0, v2, LL1/q;->h:LJ1/B;

    iput-object v1, v2, LL1/q;->j:LL1/o;

    monitor-exit v0

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
