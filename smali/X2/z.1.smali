.class public final LX2/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/grpc/ConnectivityState;

.field public final b:LX2/L0;


# direct methods
.method public constructor <init>(Lio/grpc/ConnectivityState;LX2/L0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX2/z;->a:Lio/grpc/ConnectivityState;

    const-string p1, "status is null"

    invoke-static {p2, p1}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, LX2/z;->b:LX2/L0;

    return-void
.end method

.method public static a(Lio/grpc/ConnectivityState;)LX2/z;
    .locals 2

    sget-object v0, Lio/grpc/ConnectivityState;->f:Lio/grpc/ConnectivityState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "state is TRANSIENT_ERROR. Use forError() instead"

    invoke-static {v1, v0}, LO2/m;->b(Ljava/lang/Object;Z)V

    new-instance v0, LX2/z;

    sget-object v1, LX2/L0;->e:LX2/L0;

    invoke-direct {v0, p0, v1}, LX2/z;-><init>(Lio/grpc/ConnectivityState;LX2/L0;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LX2/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, LX2/z;

    iget-object v0, p1, LX2/z;->a:Lio/grpc/ConnectivityState;

    iget-object v2, p0, LX2/z;->a:Lio/grpc/ConnectivityState;

    invoke-virtual {v2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, LX2/z;->b:LX2/L0;

    iget-object p1, p1, LX2/z;->b:LX2/L0;

    invoke-virtual {p0, p1}, LX2/L0;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LX2/z;->a:Lio/grpc/ConnectivityState;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    iget-object p0, p0, LX2/z;->b:LX2/L0;

    invoke-virtual {p0}, LX2/L0;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LX2/z;->b:LX2/L0;

    invoke-virtual {v0}, LX2/L0;->d()Z

    move-result v1

    iget-object p0, p0, LX2/z;->a:Lio/grpc/ConnectivityState;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
