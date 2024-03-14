.class public abstract Lio/grpc/binder/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/grpc/binder/internal/c;

.field public final b:LX2/c;

.field public final c:I

.field public d:Lio/grpc/binder/internal/g;

.field public e:Lio/grpc/internal/I2;

.field public f:Lio/grpc/internal/v;

.field public g:Ljava/io/InputStream;

.field public h:I

.field public i:I

.field public j:Ljava/util/ArrayList;

.field public k:Z

.field public l:I

.field public m:I

.field public n:Lio/grpc/binder/internal/Inbound$State;

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>(Lio/grpc/binder/internal/c;LX2/c;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/grpc/binder/internal/Inbound$State;->d:Lio/grpc/binder/internal/Inbound$State;

    iput-object v0, p0, Lio/grpc/binder/internal/e;->n:Lio/grpc/binder/internal/Inbound$State;

    iput-object p1, p0, Lio/grpc/binder/internal/e;->a:Lio/grpc/binder/internal/c;

    iput-object p2, p0, Lio/grpc/binder/internal/e;->b:LX2/c;

    iput p3, p0, Lio/grpc/binder/internal/e;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .locals 6

    iget v0, p0, Lio/grpc/binder/internal/e;->i:I

    const/4 v1, 0x0

    iput v1, p0, Lio/grpc/binder/internal/e;->i:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LY2/g;

    iget v2, v1, LY2/g;->c:I

    iget-object v2, v1, LY2/g;->a:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, LY2/d;

    iget-object v1, v1, LY2/g;->b:[B

    invoke-direct {v2, v1}, LY2/d;-><init>([B)V

    goto :goto_1

    :cond_1
    new-array v2, v0, [[B

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v5, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LY2/g;

    iget-object v5, v5, LY2/g;->b:[B

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v5, v2, v3

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, LY2/d;

    invoke-direct {v1, v2, v4}, LY2/d;-><init>([[BI)V

    move-object v2, v1

    :goto_1
    iget v1, p0, Lio/grpc/binder/internal/e;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/grpc/binder/internal/e;->h:I

    invoke-virtual {p0}, Lio/grpc/binder/internal/e;->j()V

    return-object v2
.end method

.method public final b(LX2/L0;LX2/L0;Z)V
    .locals 7

    iget-object v0, p0, Lio/grpc/binder/internal/e;->n:Lio/grpc/binder/internal/Inbound$State;

    sget-object v1, Lio/grpc/binder/internal/Inbound$State;->i:Lio/grpc/binder/internal/Inbound$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-nez v4, :cond_7

    sget-object v4, Lio/grpc/binder/internal/Inbound$State;->d:Lio/grpc/binder/internal/Inbound$State;

    if-eq v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p0, v1}, Lio/grpc/binder/internal/e;->m(Lio/grpc/binder/internal/Inbound$State;)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lio/grpc/binder/internal/e;->e:Lio/grpc/internal/I2;

    iget-object v4, v1, Lio/grpc/internal/I2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5, p2}, LX2/r;->l(LX2/L0;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lio/grpc/binder/internal/e;->a:Lio/grpc/binder/internal/c;

    if-nez p3, :cond_5

    iget p3, p0, Lio/grpc/binder/internal/e;->c:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p1, LX2/L0;->a:Lio/grpc/Status$Code;

    invoke-virtual {v4}, Lio/grpc/Status$Code;->d()I

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    iget-object p1, p1, LX2/L0;->b:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_3

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-eqz p1, :cond_4

    or-int/lit8 v4, v4, 0x20

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_4
    or-int/lit8 p1, v4, 0x8

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    :try_start_0
    invoke-virtual {v1, v2, p3}, Lio/grpc/binder/internal/c;->o(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Lio/grpc/StatusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    sget-object p3, Lio/grpc/binder/internal/c;->p:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Failed sending oob close transaction"

    invoke-virtual {p3, v3, v4, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0, p2}, Lio/grpc/binder/internal/e;->e(LX2/L0;)V

    :cond_6
    invoke-virtual {v1, p0}, Lio/grpc/binder/internal/c;->s(Lio/grpc/binder/internal/e;)V

    :cond_7
    return-void
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()V
    .locals 6

    iget-boolean v0, p0, Lio/grpc/binder/internal/e;->q:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/binder/internal/e;->q:Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lio/grpc/binder/internal/e;->n:Lio/grpc/binder/internal/Inbound$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lio/grpc/binder/internal/e;->f:Lio/grpc/internal/v;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lio/grpc/binder/internal/e;->k:Z

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lio/grpc/binder/internal/e;->f:Lio/grpc/internal/v;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lio/grpc/binder/internal/e;->r:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lio/grpc/binder/internal/e;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lio/grpc/binder/internal/e;->p:I

    if-eqz v1, :cond_6

    :goto_1
    move v1, v0

    goto :goto_3

    :cond_5
    iget-boolean v1, p0, Lio/grpc/binder/internal/e;->k:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lio/grpc/binder/internal/e;->h:I

    iget v5, p0, Lio/grpc/binder/internal/e;->l:I

    if-lt v1, v5, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    move v1, v2

    :goto_3
    if-eqz v1, :cond_c

    iget-object v1, p0, Lio/grpc/binder/internal/e;->n:Lio/grpc/binder/internal/Inbound$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v4, :cond_8

    if-ne v1, v3, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    iget-boolean v1, p0, Lio/grpc/binder/internal/e;->r:Z

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p0}, Lio/grpc/binder/internal/e;->k()Z

    move-result v1

    if-eqz v1, :cond_a

    iput-boolean v0, p0, Lio/grpc/binder/internal/e;->r:Z

    iget-object v1, p0, Lio/grpc/binder/internal/e;->f:Lio/grpc/internal/v;

    invoke-interface {v1, p0}, Lio/grpc/internal/v;->c(Lio/grpc/binder/internal/e;)V

    goto :goto_0

    :cond_a
    iget-boolean v1, p0, Lio/grpc/binder/internal/e;->k:Z

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    sget-object v1, Lio/grpc/binder/internal/Inbound$State;->g:Lio/grpc/binder/internal/Inbound$State;

    invoke-virtual {p0, v1}, Lio/grpc/binder/internal/e;->m(Lio/grpc/binder/internal/Inbound$State;)V

    :goto_4
    iget-boolean v1, p0, Lio/grpc/binder/internal/e;->k:Z

    if-eqz v1, :cond_1

    sget-object v1, Lio/grpc/binder/internal/Inbound$State;->h:Lio/grpc/binder/internal/Inbound$State;

    invoke-virtual {p0, v1}, Lio/grpc/binder/internal/e;->m(Lio/grpc/binder/internal/Inbound$State;)V

    invoke-virtual {p0}, Lio/grpc/binder/internal/e;->f()V

    goto :goto_0

    :cond_c
    iput-boolean v2, p0, Lio/grpc/binder/internal/e;->q:Z

    return-void
.end method

.method public abstract e(LX2/L0;)V
.end method

.method public abstract f()V
.end method

.method public final g(IILandroid/os/Parcel;)V
    .locals 6

    and-int/lit8 v0, p1, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lio/grpc/binder/internal/e;->b:LX2/c;

    sget-object v0, Lio/grpc/binder/internal/c;->r:LX2/b;

    invoke-virtual {p1, v0}, LX2/c;->a(LX2/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/binder/e;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lio/grpc/binder/e;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget v4, LY2/l;->f:I

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    new-instance v4, LY2/l;

    invoke-direct {v4, v0}, LY2/l;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result p3

    sub-int/2addr p3, p1

    move-object v0, v2

    move p1, v3

    goto :goto_2

    :cond_0
    sget-object p0, LX2/L0;->i:LX2/L0;

    const-string p1, "Parcelable messages not allowed"

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(LX2/L0;)V

    throw p1

    :cond_1
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget v4, LY2/e;->a:I

    if-ne v0, v4, :cond_2

    sget-object v4, LY2/e;->b:Ljava/util/Queue;

    check-cast v4, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    new-array v4, v0, [B

    :goto_0
    if-lez v0, :cond_3

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_3
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_1

    :cond_4
    move p1, v3

    :goto_1
    move p3, v0

    move-object v0, v4

    move-object v4, v2

    :goto_2
    iget-object v5, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    if-nez v5, :cond_8

    iget v5, p0, Lio/grpc/binder/internal/e;->o:I

    if-nez v5, :cond_7

    if-eqz p1, :cond_7

    iget v5, p0, Lio/grpc/binder/internal/e;->h:I

    if-ne p2, v5, :cond_7

    iget-object p1, p0, Lio/grpc/binder/internal/e;->g:Ljava/io/InputStream;

    if-nez p1, :cond_5

    move v1, v3

    :cond_5
    invoke-static {v1}, LO2/m;->m(Z)V

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    new-instance v4, LY2/d;

    invoke-direct {v4, v0}, LY2/d;-><init>([B)V

    :goto_3
    iput-object v4, p0, Lio/grpc/binder/internal/e;->g:Ljava/io/InputStream;

    invoke-virtual {p0, p3}, Lio/grpc/binder/internal/e;->n(I)V

    return-void

    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    :cond_8
    new-instance v1, LY2/g;

    invoke-direct {v1, v4, v0, p3, p1}, LY2/g;-><init>(LY2/l;[BIZ)V

    iget p1, p0, Lio/grpc/binder/internal/e;->h:I

    sub-int/2addr p2, p1

    iget-object p1, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_9

    iget-object p1, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lio/grpc/binder/internal/e;->j()V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p2, p1, :cond_b

    :cond_a
    iget-object p1, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p2, p1, :cond_a

    iget-object p0, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/grpc/binder/internal/e;->j()V

    :goto_4
    return-void
.end method

.method public abstract h(Landroid/os/Parcel;)V
.end method

.method public abstract i(Landroid/os/Parcel;I)V
.end method

.method public final j()V
    .locals 4

    iget v0, p0, Lio/grpc/binder/internal/e;->i:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lio/grpc/binder/internal/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LY2/g;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget v3, v2, LY2/g;->c:I

    add-int/2addr v1, v3

    iget-boolean v2, v2, LY2/g;->d:Z

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/binder/internal/e;->i:I

    invoke-virtual {p0, v1}, Lio/grpc/binder/internal/e;->n(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lio/grpc/binder/internal/e;->g:Ljava/io/InputStream;

    if-nez v0, :cond_1

    iget p0, p0, Lio/grpc/binder/internal/e;->i:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final declared-synchronized l()Ljava/io/InputStream;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/binder/internal/e;->g:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lio/grpc/binder/internal/e;->g:Ljava/io/InputStream;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/grpc/binder/internal/e;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/grpc/binder/internal/e;->a()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lio/grpc/binder/internal/e;->p:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/grpc/binder/internal/e;->p:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/grpc/binder/internal/e;->r:Z

    iget-boolean v2, p0, Lio/grpc/binder/internal/e;->k:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget v2, p0, Lio/grpc/binder/internal/e;->h:I

    iget v4, p0, Lio/grpc/binder/internal/e;->l:I

    if-lt v2, v4, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v2, :cond_5

    iget-object v2, p0, Lio/grpc/binder/internal/e;->n:Lio/grpc/binder/internal/Inbound$State;

    sget-object v4, Lio/grpc/binder/internal/Inbound$State;->i:Lio/grpc/binder/internal/Inbound$State;

    if-ne v2, v4, :cond_4

    move v1, v3

    :cond_4
    if-nez v1, :cond_5

    sget-object v1, Lio/grpc/binder/internal/Inbound$State;->g:Lio/grpc/binder/internal/Inbound$State;

    invoke-virtual {p0, v1}, Lio/grpc/binder/internal/e;->m(Lio/grpc/binder/internal/Inbound$State;)V

    invoke-virtual {p0}, Lio/grpc/binder/internal/e;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final m(Lio/grpc/binder/internal/Inbound$State;)V
    .locals 6

    iget-object v0, p0, Lio/grpc/binder/internal/e;->n:Lio/grpc/binder/internal/Inbound$State;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lio/grpc/binder/internal/Inbound$State;->d:Lio/grpc/binder/internal/Inbound$State;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_8

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v0, 0x5

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    sget-object v1, Lio/grpc/binder/internal/Inbound$State;->g:Lio/grpc/binder/internal/Inbound$State;

    if-ne v0, v1, :cond_2

    move v3, v4

    :cond_2
    invoke-static {v3, v0, p1}, LO2/m;->n(ZLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lio/grpc/binder/internal/Inbound$State;->f:Lio/grpc/binder/internal/Inbound$State;

    if-ne v0, v1, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v3, v0, p1}, LO2/m;->n(ZLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget-object v1, Lio/grpc/binder/internal/Inbound$State;->e:Lio/grpc/binder/internal/Inbound$State;

    if-eq v0, v1, :cond_6

    if-ne v0, v2, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    invoke-static {v3, v0, p1}, LO2/m;->n(ZLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    if-ne v0, v2, :cond_9

    move v3, v4

    :cond_9
    invoke-static {v3, v0, p1}, LO2/m;->n(ZLjava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lio/grpc/binder/internal/e;->n:Lio/grpc/binder/internal/Inbound$State;

    return-void
.end method

.method public final n(I)V
    .locals 12

    iget-object v0, p0, Lio/grpc/binder/internal/e;->e:Lio/grpc/internal/I2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lio/grpc/binder/internal/e;->e:Lio/grpc/internal/I2;

    iget v1, p0, Lio/grpc/binder/internal/e;->o:I

    iget-object v0, v0, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5, v1}, LX2/r;->b(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/grpc/binder/internal/e;->e:Lio/grpc/internal/I2;

    iget v1, p0, Lio/grpc/binder/internal/e;->o:I

    int-to-long v10, p1

    iget-object p1, v0, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length v0, p1

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    move v5, v1

    move-wide v6, v10

    move-wide v8, v10

    invoke-virtual/range {v4 .. v9}, LX2/r;->c(IJJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Lio/grpc/binder/internal/e;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/binder/internal/e;->o:I

    return-void
.end method

.method public final o(I)V
    .locals 6

    iget v0, p0, Lio/grpc/binder/internal/e;->m:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/binder/internal/e;->m:I

    iget-object p1, p0, Lio/grpc/binder/internal/e;->e:Lio/grpc/internal/I2;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    int-to-long v0, v0

    iget-object p1, p1, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p1, v4

    invoke-virtual {v5, v0, v1}, LX2/r;->f(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/grpc/binder/internal/e;->e:Lio/grpc/internal/I2;

    iget v0, p0, Lio/grpc/binder/internal/e;->m:I

    int-to-long v0, v0

    iget-object p1, p1, Lio/grpc/internal/I2;->a:[LX2/r;

    array-length v2, p1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    invoke-virtual {v5, v0, v1}, LX2/r;->e(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iput v3, p0, Lio/grpc/binder/internal/e;->m:I

    :cond_2
    return-void
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[SfxA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/grpc/binder/internal/e;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/De="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/binder/internal/e;->n:Lio/grpc/binder/internal/Inbound$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/binder/internal/e;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/Lis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/grpc/binder/internal/e;->f:Lio/grpc/internal/v;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
