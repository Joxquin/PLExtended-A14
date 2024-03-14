.class public final Lio/grpc/internal/c;
.super LX2/V;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LX2/V;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()LX2/W;
    .locals 0

    sget-object p0, LX2/W;->e:LX2/W;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-class p0, Lio/grpc/internal/c;

    invoke-static {p0}, LO2/j;->a(Ljava/lang/Class;)LO2/i;

    move-result-object p0

    invoke-virtual {p0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
