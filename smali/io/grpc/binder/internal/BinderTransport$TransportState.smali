.class public final enum Lio/grpc/binder/internal/BinderTransport$TransportState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lio/grpc/binder/internal/BinderTransport$TransportState;

.field public static final enum e:Lio/grpc/binder/internal/BinderTransport$TransportState;

.field public static final enum f:Lio/grpc/binder/internal/BinderTransport$TransportState;

.field public static final enum g:Lio/grpc/binder/internal/BinderTransport$TransportState;

.field public static final enum h:Lio/grpc/binder/internal/BinderTransport$TransportState;

.field public static final synthetic i:[Lio/grpc/binder/internal/BinderTransport$TransportState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/grpc/binder/internal/BinderTransport$TransportState;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/binder/internal/BinderTransport$TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/binder/internal/BinderTransport$TransportState;->d:Lio/grpc/binder/internal/BinderTransport$TransportState;

    new-instance v1, Lio/grpc/binder/internal/BinderTransport$TransportState;

    const-string v2, "SETUP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/grpc/binder/internal/BinderTransport$TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/binder/internal/BinderTransport$TransportState;->e:Lio/grpc/binder/internal/BinderTransport$TransportState;

    new-instance v2, Lio/grpc/binder/internal/BinderTransport$TransportState;

    const-string v3, "READY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/grpc/binder/internal/BinderTransport$TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/grpc/binder/internal/BinderTransport$TransportState;->f:Lio/grpc/binder/internal/BinderTransport$TransportState;

    new-instance v3, Lio/grpc/binder/internal/BinderTransport$TransportState;

    const-string v4, "SHUTDOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lio/grpc/binder/internal/BinderTransport$TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/binder/internal/BinderTransport$TransportState;->g:Lio/grpc/binder/internal/BinderTransport$TransportState;

    new-instance v4, Lio/grpc/binder/internal/BinderTransport$TransportState;

    const-string v5, "SHUTDOWN_TERMINATED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lio/grpc/binder/internal/BinderTransport$TransportState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/grpc/binder/internal/BinderTransport$TransportState;->h:Lio/grpc/binder/internal/BinderTransport$TransportState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/grpc/binder/internal/BinderTransport$TransportState;

    move-result-object v0

    sput-object v0, Lio/grpc/binder/internal/BinderTransport$TransportState;->i:[Lio/grpc/binder/internal/BinderTransport$TransportState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/binder/internal/BinderTransport$TransportState;
    .locals 1

    const-class v0, Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/binder/internal/BinderTransport$TransportState;

    return-object p0
.end method

.method public static values()[Lio/grpc/binder/internal/BinderTransport$TransportState;
    .locals 1

    sget-object v0, Lio/grpc/binder/internal/BinderTransport$TransportState;->i:[Lio/grpc/binder/internal/BinderTransport$TransportState;

    invoke-virtual {v0}, [Lio/grpc/binder/internal/BinderTransport$TransportState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/binder/internal/BinderTransport$TransportState;

    return-object v0
.end method
