.class public final Lio/grpc/internal/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/f2;


# instance fields
.field public final synthetic a:Lio/grpc/internal/r2;


# direct methods
.method public constructor <init>(Lio/grpc/internal/r2;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/k2;->a:Lio/grpc/internal/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/internal/p2;)V
    .locals 2

    iget-object v0, p1, Lio/grpc/internal/p2;->a:Lio/grpc/internal/u;

    new-instance v1, Lio/grpc/internal/o2;

    iget-object p0, p0, Lio/grpc/internal/k2;->a:Lio/grpc/internal/r2;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/o2;-><init>(Lio/grpc/internal/r2;Lio/grpc/internal/p2;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/u;->c(Lio/grpc/internal/v;)V

    return-void
.end method
