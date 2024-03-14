.class public final Lio/grpc/internal/H2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/H1;


# instance fields
.field public final a:Lio/grpc/internal/F2;


# direct methods
.method public constructor <init>(Lio/grpc/internal/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/H2;->a:Lio/grpc/internal/F2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/H2;->a:Lio/grpc/internal/F2;

    invoke-static {p0}, Lio/grpc/internal/G2;->a(Lio/grpc/internal/F2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/H2;->a:Lio/grpc/internal/F2;

    invoke-static {p0, p1}, Lio/grpc/internal/G2;->b(Lio/grpc/internal/F2;Ljava/lang/Object;)V

    return-void
.end method
