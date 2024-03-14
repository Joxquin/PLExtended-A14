.class public final synthetic LY2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lio/grpc/binder/internal/c;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:LX2/L0;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/binder/internal/c;Ljava/util/ArrayList;LX2/L0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY2/b;->d:Lio/grpc/binder/internal/c;

    iput-object p2, p0, LY2/b;->e:Ljava/util/ArrayList;

    iput-object p3, p0, LY2/b;->f:LX2/L0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LY2/b;->d:Lio/grpc/binder/internal/c;

    iget-object v1, p0, LY2/b;->e:Ljava/util/ArrayList;

    iget-object p0, p0, LY2/b;->f:LX2/L0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/binder/internal/e;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p0, p0, v3}, Lio/grpc/binder/internal/e;->b(LX2/L0;LX2/L0;Z)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-virtual {v0}, Lio/grpc/binder/internal/c;->m()V

    invoke-virtual {v0}, Lio/grpc/binder/internal/c;->n()V

    return-void
.end method
