.class public final enum Lio/grpc/MethodDescriptor$MethodType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lio/grpc/MethodDescriptor$MethodType;

.field public static final enum e:Lio/grpc/MethodDescriptor$MethodType;

.field public static final enum f:Lio/grpc/MethodDescriptor$MethodType;

.field public static final synthetic g:[Lio/grpc/MethodDescriptor$MethodType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/grpc/MethodDescriptor$MethodType;

    const-string v1, "UNARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->d:Lio/grpc/MethodDescriptor$MethodType;

    new-instance v1, Lio/grpc/MethodDescriptor$MethodType;

    const-string v2, "CLIENT_STREAMING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/MethodDescriptor$MethodType;->e:Lio/grpc/MethodDescriptor$MethodType;

    new-instance v2, Lio/grpc/MethodDescriptor$MethodType;

    const-string v3, "SERVER_STREAMING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/grpc/MethodDescriptor$MethodType;->f:Lio/grpc/MethodDescriptor$MethodType;

    new-instance v3, Lio/grpc/MethodDescriptor$MethodType;

    const-string v4, "BIDI_STREAMING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lio/grpc/MethodDescriptor$MethodType;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lio/grpc/MethodDescriptor$MethodType;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    sput-object v0, Lio/grpc/MethodDescriptor$MethodType;->g:[Lio/grpc/MethodDescriptor$MethodType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    const-class v0, Lio/grpc/MethodDescriptor$MethodType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/MethodDescriptor$MethodType;

    return-object p0
.end method

.method public static values()[Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    sget-object v0, Lio/grpc/MethodDescriptor$MethodType;->g:[Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {v0}, [Lio/grpc/MethodDescriptor$MethodType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/MethodDescriptor$MethodType;

    return-object v0
.end method
