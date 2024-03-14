.class public final Lio/grpc/internal/J1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/Z;


# instance fields
.field public final synthetic a:LX2/Y;

.field public final synthetic b:Lio/grpc/internal/N1;


# direct methods
.method public constructor <init>(Lio/grpc/internal/N1;LX2/Y;)V
    .locals 0

    iput-object p1, p0, Lio/grpc/internal/J1;->b:Lio/grpc/internal/N1;

    iput-object p2, p0, Lio/grpc/internal/J1;->a:LX2/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LX2/z;)V
    .locals 5

    iget-object v0, p0, Lio/grpc/internal/J1;->b:Lio/grpc/internal/N1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lio/grpc/ConnectivityState;->h:Lio/grpc/ConnectivityState;

    iget-object v2, p1, LX2/z;->a:Lio/grpc/ConnectivityState;

    if-ne v2, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lio/grpc/ConnectivityState;->f:Lio/grpc/ConnectivityState;

    iget-object v3, v0, Lio/grpc/internal/N1;->b:LX2/V;

    if-eq v2, v1, :cond_1

    sget-object v1, Lio/grpc/ConnectivityState;->g:Lio/grpc/ConnectivityState;

    if-ne v2, v1, :cond_2

    :cond_1
    invoke-virtual {v3}, LX2/V;->f()V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    iget-object p0, p0, Lio/grpc/internal/J1;->a:LX2/Y;

    if-eq v1, v4, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 p1, 0x3

    if-ne v1, p1, :cond_3

    new-instance p1, Lio/grpc/internal/M1;

    invoke-direct {p1, v0, p0}, Lio/grpc/internal/M1;-><init>(Lio/grpc/internal/N1;LX2/Y;)V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported state:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lio/grpc/internal/K1;

    iget-object p1, p1, LX2/z;->b:LX2/L0;

    invoke-static {p1}, LX2/W;->a(LX2/L0;)LX2/W;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/internal/K1;-><init>(LX2/W;)V

    move-object p1, p0

    goto :goto_0

    :cond_5
    new-instance p1, Lio/grpc/internal/K1;

    new-instance v0, LX2/W;

    const-string v1, "subchannel"

    invoke-static {p0, v1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, LX2/L0;->e:LX2/L0;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v1, v4}, LX2/W;-><init>(LX2/Y;LX2/L0;Z)V

    invoke-direct {p1, v0}, Lio/grpc/internal/K1;-><init>(LX2/W;)V

    goto :goto_0

    :cond_6
    new-instance p1, Lio/grpc/internal/K1;

    sget-object p0, LX2/W;->e:LX2/W;

    invoke-direct {p1, p0}, Lio/grpc/internal/K1;-><init>(LX2/W;)V

    :goto_0
    invoke-virtual {v3, v2, p1}, LX2/V;->g(Lio/grpc/ConnectivityState;LX2/V;)V

    :goto_1
    return-void
.end method
