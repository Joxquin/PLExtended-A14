.class public final enum Lio/grpc/ConnectivityState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lio/grpc/ConnectivityState;

.field public static final enum e:Lio/grpc/ConnectivityState;

.field public static final enum f:Lio/grpc/ConnectivityState;

.field public static final enum g:Lio/grpc/ConnectivityState;

.field public static final enum h:Lio/grpc/ConnectivityState;

.field public static final synthetic i:[Lio/grpc/ConnectivityState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/grpc/ConnectivityState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/ConnectivityState;->d:Lio/grpc/ConnectivityState;

    new-instance v1, Lio/grpc/ConnectivityState;

    const-string v2, "READY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/grpc/ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/ConnectivityState;->e:Lio/grpc/ConnectivityState;

    new-instance v2, Lio/grpc/ConnectivityState;

    const-string v3, "TRANSIENT_FAILURE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/grpc/ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/grpc/ConnectivityState;->f:Lio/grpc/ConnectivityState;

    new-instance v3, Lio/grpc/ConnectivityState;

    const-string v4, "IDLE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lio/grpc/ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/ConnectivityState;->g:Lio/grpc/ConnectivityState;

    new-instance v4, Lio/grpc/ConnectivityState;

    const-string v5, "SHUTDOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lio/grpc/ConnectivityState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/grpc/ConnectivityState;->h:Lio/grpc/ConnectivityState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/grpc/ConnectivityState;

    move-result-object v0

    sput-object v0, Lio/grpc/ConnectivityState;->i:[Lio/grpc/ConnectivityState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/ConnectivityState;
    .locals 1

    const-class v0, Lio/grpc/ConnectivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/ConnectivityState;

    return-object p0
.end method

.method public static values()[Lio/grpc/ConnectivityState;
    .locals 1

    sget-object v0, Lio/grpc/ConnectivityState;->i:[Lio/grpc/ConnectivityState;

    invoke-virtual {v0}, [Lio/grpc/ConnectivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/ConnectivityState;

    return-object v0
.end method
