.class public final Lio/grpc/internal/B1;
.super LX2/O;
.source "SourceFile"


# instance fields
.field public final b:Lio/grpc/internal/C1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/C1;)V
    .locals 0

    invoke-direct {p0}, LX2/O;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/B1;->b:Lio/grpc/internal/C1;

    return-void
.end method


# virtual methods
.method public final a()LX2/N;
    .locals 2

    iget-object p0, p0, Lio/grpc/internal/B1;->b:Lio/grpc/internal/C1;

    const-string v0, "config"

    invoke-static {p0, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LX2/N;

    sget-object v1, LX2/L0;->e:LX2/L0;

    invoke-direct {v0, v1, p0}, LX2/N;-><init>(LX2/L0;Ljava/lang/Object;)V

    return-object v0
.end method
