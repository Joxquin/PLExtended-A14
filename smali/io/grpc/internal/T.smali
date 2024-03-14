.class public final Lio/grpc/internal/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Z

.field public final synthetic e:Lio/grpc/internal/W;


# direct methods
.method public constructor <init>(Lio/grpc/internal/W;Z)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/T;->e:Lio/grpc/internal/W;

    iput-boolean p2, p0, Lio/grpc/internal/T;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/T;->e:Lio/grpc/internal/W;

    iget-object v0, v0, Lio/grpc/internal/W;->c:Lio/grpc/internal/u;

    iget-boolean p0, p0, Lio/grpc/internal/T;->d:Z

    invoke-interface {v0, p0}, Lio/grpc/internal/u;->n(Z)V

    return-void
.end method
