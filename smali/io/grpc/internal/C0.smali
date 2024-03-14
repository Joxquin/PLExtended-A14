.class public final Lio/grpc/internal/C0;
.super Lio/grpc/internal/j0;
.source "SourceFile"


# instance fields
.field public final d:Lio/grpc/internal/z;

.field public final e:Lio/grpc/internal/k;


# direct methods
.method public constructor <init>(Lio/grpc/internal/z;Lio/grpc/internal/k;)V
    .locals 0

    invoke-direct {p0}, Lio/grpc/internal/j0;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/C0;->d:Lio/grpc/internal/z;

    iput-object p2, p0, Lio/grpc/internal/C0;->e:Lio/grpc/internal/k;

    return-void
.end method


# virtual methods
.method public final a()Lio/grpc/internal/z;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/C0;->d:Lio/grpc/internal/z;

    return-object p0
.end method

.method public final c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/internal/C0;->a()Lio/grpc/internal/z;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/internal/w;->c(LX2/u0;LX2/r0;LX2/g;[LX2/r;)Lio/grpc/internal/u;

    move-result-object p1

    new-instance p2, Lio/grpc/internal/B0;

    invoke-direct {p2, p0, p1}, Lio/grpc/internal/B0;-><init>(Lio/grpc/internal/C0;Lio/grpc/internal/u;)V

    return-object p2
.end method
