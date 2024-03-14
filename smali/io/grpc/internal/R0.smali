.class public final Lio/grpc/internal/R0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lio/grpc/internal/Q0;
    .locals 1

    sget-object v0, Lio/grpc/internal/T1;->e:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, Lio/grpc/internal/T1;

    invoke-direct {v0}, Lio/grpc/internal/T1;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Lio/grpc/internal/a;

    invoke-direct {v0}, Lio/grpc/internal/a;-><init>()V

    return-object v0
.end method
