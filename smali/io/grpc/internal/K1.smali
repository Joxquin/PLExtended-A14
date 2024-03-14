.class public final Lio/grpc/internal/K1;
.super LX2/V;
.source "SourceFile"


# instance fields
.field public final a:LX2/W;


# direct methods
.method public constructor <init>(LX2/W;)V
    .locals 1

    invoke-direct {p0}, LX2/V;-><init>()V

    const-string v0, "result"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lio/grpc/internal/K1;->a:LX2/W;

    return-void
.end method


# virtual methods
.method public final e()LX2/W;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/K1;->a:LX2/W;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, LO2/i;

    const-class v1, Lio/grpc/internal/K1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO2/i;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    iget-object p0, p0, Lio/grpc/internal/K1;->a:LX2/W;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
