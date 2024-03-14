.class public final Lio/grpc/internal/V0;
.super LX2/V;
.source "SourceFile"


# instance fields
.field public final a:LX2/W;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 3

    invoke-direct {p0}, LX2/V;-><init>()V

    sget-object v0, LX2/L0;->m:LX2/L0;

    const-string v1, "Panic! This is a bug!"

    invoke-virtual {v0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    invoke-virtual {v0, p1}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p1

    sget-object v0, LX2/W;->e:LX2/W;

    invoke-virtual {p1}, LX2/L0;->d()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "drop status shouldn\'t be OK"

    invoke-static {v2, v0}, LO2/m;->b(Ljava/lang/Object;Z)V

    new-instance v0, LX2/W;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, LX2/W;-><init>(LX2/Y;LX2/L0;Z)V

    iput-object v0, p0, Lio/grpc/internal/V0;->a:LX2/W;

    return-void
.end method


# virtual methods
.method public final e()LX2/W;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/V0;->a:LX2/W;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, LO2/i;

    const-class v1, Lio/grpc/internal/V0;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LO2/i;-><init>(Ljava/lang/String;)V

    const-string v1, "panicPickResult"

    iget-object p0, p0, Lio/grpc/internal/V0;->a:LX2/W;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
