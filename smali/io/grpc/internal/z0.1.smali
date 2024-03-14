.class public final Lio/grpc/internal/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lio/grpc/internal/z;

.field public final synthetic e:Z

.field public final synthetic f:Lio/grpc/internal/H0;


# direct methods
.method public constructor <init>(Lio/grpc/internal/H0;Lio/grpc/internal/z;Z)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/z0;->f:Lio/grpc/internal/H0;

    iput-object p2, p0, Lio/grpc/internal/z0;->d:Lio/grpc/internal/z;

    iput-boolean p3, p0, Lio/grpc/internal/z0;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/z0;->f:Lio/grpc/internal/H0;

    iget-object v0, v0, Lio/grpc/internal/H0;->w:Lio/grpc/internal/v0;

    iget-object v1, p0, Lio/grpc/internal/z0;->d:Lio/grpc/internal/z;

    iget-boolean p0, p0, Lio/grpc/internal/z0;->e:Z

    invoke-virtual {v0, v1, p0}, Lio/grpc/internal/t0;->c(Ljava/lang/Object;Z)V

    return-void
.end method
