.class public final Lio/grpc/internal/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LX2/b;

.field public static final b:LX2/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LX2/b;

    const-string v1, "io.grpc.internal.GrpcAttributes.securityLevel"

    invoke-direct {v0, v1}, LX2/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/internal/l0;->a:LX2/b;

    new-instance v0, LX2/b;

    const-string v1, "io.grpc.internal.GrpcAttributes.clientEagAttrs"

    invoke-direct {v0, v1}, LX2/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/internal/l0;->b:LX2/b;

    return-void
.end method
