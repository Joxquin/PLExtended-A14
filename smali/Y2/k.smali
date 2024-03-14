.class public final LY2/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LY2/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LY2/j;

    invoke-direct {v0}, LY2/j;-><init>()V

    sput-object v0, LY2/k;->a:LY2/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Parcel;LX2/c;)LX2/r0;
    .locals 11

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, LX2/r0;

    invoke-direct {p0}, LX2/r0;-><init>()V

    return-object p0

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_a

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    add-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v5

    const-string v6, "Metadata too large"

    const/16 v7, 0x2000

    if-gt v3, v7, :cond_9

    new-array v8, v5, [B

    if-lez v5, :cond_1

    invoke-virtual {p0, v8}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_1
    mul-int/lit8 v5, v2, 0x2

    aput-object v8, v1, v5

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    add-int/lit8 v3, v3, 0x4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    sget-object v6, Lio/grpc/binder/internal/c;->r:LX2/b;

    invoke-virtual {p1, v6}, LX2/c;->a(LX2/b;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/binder/e;

    iget-boolean v7, v6, Lio/grpc/binder/e;->a:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    :try_start_0
    const-class v8, LY2/k;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    if-eqz v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    sget-object v9, LY2/k;->a:LY2/j;

    sget v10, LX2/S;->a:I

    new-instance v10, LX2/o0;

    invoke-direct {v10, v9, v8}, LX2/o0;-><init>(LX2/m0;Ljava/lang/Object;)V

    aput-object v10, v1, v5
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    sub-int/2addr v5, v7

    add-int/2addr v5, v4

    iget v4, v6, Lio/grpc/binder/e;->c:I

    if-gt v5, v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    sget-object p0, LX2/L0;->k:LX2/L0;

    const-string p1, "Inbound Parcelables too large according to policy (see InboundParcelablePolicy)"

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(LX2/L0;)V

    throw p1

    :cond_3
    :try_start_1
    sget-object p0, LX2/L0;->m:LX2/L0;

    const-string p1, "Read null parcelable in metadata"

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(LX2/L0;)V

    throw p1
    :try_end_1
    .catch Landroid/util/AndroidRuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, LX2/L0;->m:LX2/L0;

    invoke-virtual {p1, p0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p0

    const-string p1, "Failure reading parcelable in metadata"

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(LX2/L0;)V

    throw p1

    :cond_4
    sget-object p0, LX2/L0;->i:LX2/L0;

    const-string p1, "Parcelable metadata values not allowed"

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(LX2/L0;)V

    throw p1

    :cond_5
    if-ltz v8, :cond_8

    add-int/2addr v3, v8

    if-gt v3, v7, :cond_7

    new-array v6, v8, [B

    if-lez v8, :cond_6

    invoke-virtual {p0, v6}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    aput-object v6, v1, v5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    sget-object p0, LX2/L0;->k:LX2/L0;

    invoke-virtual {p0, v6}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(LX2/L0;)V

    throw p1

    :cond_8
    sget-object p0, LX2/L0;->m:LX2/L0;

    const-string p1, "Unrecognized metadata sentinel"

    invoke-virtual {p0, p1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(LX2/L0;)V

    throw p1

    :cond_9
    sget-object p0, LX2/L0;->k:LX2/L0;

    invoke-virtual {p0, v6}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusException;

    invoke-direct {p1, p0}, Lio/grpc/StatusException;-><init>(LX2/L0;)V

    throw p1

    :cond_a
    sget p0, LX2/S;->a:I

    new-instance p0, LX2/r0;

    invoke-direct {p0, v0, v1}, LX2/r0;-><init>(I[Ljava/lang/Object;)V

    return-object p0
.end method
