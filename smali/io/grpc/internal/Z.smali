.class public final Lio/grpc/internal/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Z

.field public final synthetic e:Lio/grpc/internal/a0;


# direct methods
.method public constructor <init>(Lio/grpc/internal/a0;Z)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/Z;->e:Lio/grpc/internal/a0;

    iput-boolean p2, p0, Lio/grpc/internal/Z;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-boolean v0, p0, Lio/grpc/internal/Z;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/Z;->e:Lio/grpc/internal/a0;

    iget-object v0, v0, Lio/grpc/internal/a0;->e:Lio/grpc/internal/d0;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lio/grpc/internal/d0;->l:Z

    iget-wide v2, v0, Lio/grpc/internal/d0;->i:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v0, v0, Lio/grpc/internal/d0;->k:LO2/o;

    iput-boolean v1, v0, LO2/o;->b:Z

    invoke-virtual {v0}, LO2/o;->a()V

    :cond_0
    iget-object p0, p0, Lio/grpc/internal/Z;->e:Lio/grpc/internal/a0;

    iget-object p0, p0, Lio/grpc/internal/a0;->e:Lio/grpc/internal/d0;

    iput-boolean v1, p0, Lio/grpc/internal/d0;->q:Z

    return-void
.end method
