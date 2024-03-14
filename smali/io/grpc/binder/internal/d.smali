.class public final Lio/grpc/binder/internal/d;
.super Lio/grpc/binder/internal/e;
.source "SourceFile"


# instance fields
.field public final s:Z

.field public t:LX2/L0;

.field public u:LX2/r0;


# direct methods
.method public constructor <init>(Lio/grpc/binder/internal/c;LX2/c;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lio/grpc/binder/internal/e;-><init>(Lio/grpc/binder/internal/c;LX2/c;I)V

    iput-boolean p4, p0, Lio/grpc/binder/internal/d;->s:Z

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lio/grpc/binder/internal/d;->s:Z

    return p0
.end method

.method public final e(LX2/L0;)V
    .locals 2

    iget-object p0, p0, Lio/grpc/binder/internal/e;->f:Lio/grpc/internal/v;

    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v1, LX2/r0;

    invoke-direct {v1}, LX2/r0;-><init>()V

    invoke-interface {p0, p1, v0, v1}, Lio/grpc/internal/v;->d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V

    return-void
.end method

.method public final f()V
    .locals 6

    iget-object v0, p0, Lio/grpc/binder/internal/e;->e:Lio/grpc/internal/I2;

    iget-object v1, p0, Lio/grpc/binder/internal/d;->u:LX2/r0;

    iget-object v0, v0, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5, v1}, LX2/r;->d(LX2/r0;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/binder/internal/e;->e:Lio/grpc/internal/I2;

    iget-object v1, p0, Lio/grpc/binder/internal/d;->t:LX2/L0;

    iget-object v2, v0, Lio/grpc/internal/I2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length v2, v0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, LX2/r;->l(LX2/L0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lio/grpc/binder/internal/Inbound$State;->i:Lio/grpc/binder/internal/Inbound$State;

    invoke-virtual {p0, v0}, Lio/grpc/binder/internal/e;->m(Lio/grpc/binder/internal/Inbound$State;)V

    iget-object v0, p0, Lio/grpc/binder/internal/e;->f:Lio/grpc/internal/v;

    iget-object v1, p0, Lio/grpc/binder/internal/d;->t:LX2/L0;

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iget-object v3, p0, Lio/grpc/binder/internal/d;->u:LX2/r0;

    invoke-interface {v0, v1, v2, v3}, Lio/grpc/internal/v;->d(LX2/L0;Lio/grpc/internal/ClientStreamListener$RpcProgress;LX2/r0;)V

    iget-object v0, p0, Lio/grpc/binder/internal/e;->a:Lio/grpc/binder/internal/c;

    invoke-virtual {v0, p0}, Lio/grpc/binder/internal/c;->s(Lio/grpc/binder/internal/e;)V

    return-void
.end method

.method public final h(Landroid/os/Parcel;)V
    .locals 4

    iget-object v0, p0, Lio/grpc/binder/internal/e;->b:LX2/c;

    invoke-static {p1, v0}, LY2/k;->a(Landroid/os/Parcel;LX2/c;)LX2/r0;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/binder/internal/e;->e:Lio/grpc/internal/I2;

    iget-object v0, v0, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, LX2/r;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/grpc/binder/internal/e;->f:Lio/grpc/internal/v;

    invoke-interface {p0, p1}, Lio/grpc/internal/v;->b(LX2/r0;)V

    return-void
.end method

.method public final i(Landroid/os/Parcel;I)V
    .locals 1

    const/high16 v0, 0xff0000

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x10

    invoke-static {v0}, LX2/L0;->c(I)LX2/L0;

    move-result-object v0

    and-int/lit8 p2, p2, 0x20

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lio/grpc/binder/internal/d;->t:LX2/L0;

    iget-object p2, p0, Lio/grpc/binder/internal/e;->b:LX2/c;

    invoke-static {p1, p2}, LY2/k;->a(Landroid/os/Parcel;LX2/c;)LX2/r0;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/binder/internal/d;->u:LX2/r0;

    return-void
.end method
