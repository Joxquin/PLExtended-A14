.class public abstract Lio/grpc/internal/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:LX2/C;


# direct methods
.method public constructor <init>(LX2/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/C;->d:LX2/C;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/C;->d:LX2/C;

    invoke-virtual {v0}, LX2/C;->a()LX2/C;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lio/grpc/internal/C;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/grpc/internal/C;->d:LX2/C;

    invoke-virtual {p0, v0}, LX2/C;->c(LX2/C;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object p0, p0, Lio/grpc/internal/C;->d:LX2/C;

    invoke-virtual {p0, v0}, LX2/C;->c(LX2/C;)V

    throw v1
.end method
