.class public final Lio/grpc/internal/e1;
.super Lio/grpc/internal/t0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lio/grpc/internal/s1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/s1;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/e1;->b:Lio/grpc/internal/s1;

    invoke-direct {p0}, Lio/grpc/internal/t0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/e1;->b:Lio/grpc/internal/s1;

    invoke-virtual {p0}, Lio/grpc/internal/s1;->m()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lio/grpc/internal/e1;->b:Lio/grpc/internal/s1;

    iget-object v0, p0, Lio/grpc/internal/s1;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lio/grpc/internal/s1;->o()V

    return-void
.end method
