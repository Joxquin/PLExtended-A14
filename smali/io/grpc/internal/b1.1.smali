.class public final Lio/grpc/internal/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/D1;


# instance fields
.field public final synthetic a:Lio/grpc/internal/s1;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/s1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object p0, p0, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v0, p0, Lio/grpc/internal/s1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Channel must have been shut down"

    invoke-static {v1, v0}, LO2/m;->k(Ljava/lang/Object;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/s1;->M:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/grpc/internal/s1;->q(Z)V

    invoke-static {p0}, Lio/grpc/internal/s1;->j(Lio/grpc/internal/s1;)V

    invoke-static {p0}, Lio/grpc/internal/s1;->k(Lio/grpc/internal/s1;)V

    return-void
.end method

.method public b(LX2/L0;)V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object p0, p0, Lio/grpc/internal/s1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    const-string p1, "Channel must have been shut down"

    invoke-static {p1, p0}, LO2/m;->k(Ljava/lang/Object;Z)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object p0, p0, Lio/grpc/internal/b1;->a:Lio/grpc/internal/s1;

    iget-object v0, p0, Lio/grpc/internal/s1;->e0:Lio/grpc/internal/e1;

    iget-object p0, p0, Lio/grpc/internal/s1;->I:Lio/grpc/internal/O;

    invoke-virtual {v0, p0, p1}, Lio/grpc/internal/t0;->c(Ljava/lang/Object;Z)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
