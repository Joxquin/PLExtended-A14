.class final enum Lio/grpc/internal/ManagedChannelImpl$ResolutionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

.field public static final enum e:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

.field public static final enum f:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

.field public static final synthetic g:[Lio/grpc/internal/ManagedChannelImpl$ResolutionState;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    const-string v1, "NO_RESOLUTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->d:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    const-string v2, "SUCCESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->e:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    new-instance v2, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    const-string v3, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->f:Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    filled-new-array {v0, v1, v2}, [Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->g:[Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImpl$ResolutionState;
    .locals 1

    const-class v0, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    return-object p0
.end method

.method public static values()[Lio/grpc/internal/ManagedChannelImpl$ResolutionState;
    .locals 1

    sget-object v0, Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->g:[Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    invoke-virtual {v0}, [Lio/grpc/internal/ManagedChannelImpl$ResolutionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/internal/ManagedChannelImpl$ResolutionState;

    return-object v0
.end method
