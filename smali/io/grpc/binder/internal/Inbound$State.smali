.class final enum Lio/grpc/binder/internal/Inbound$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lio/grpc/binder/internal/Inbound$State;

.field public static final enum e:Lio/grpc/binder/internal/Inbound$State;

.field public static final enum f:Lio/grpc/binder/internal/Inbound$State;

.field public static final enum g:Lio/grpc/binder/internal/Inbound$State;

.field public static final enum h:Lio/grpc/binder/internal/Inbound$State;

.field public static final enum i:Lio/grpc/binder/internal/Inbound$State;

.field public static final synthetic j:[Lio/grpc/binder/internal/Inbound$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lio/grpc/binder/internal/Inbound$State;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/binder/internal/Inbound$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/binder/internal/Inbound$State;->d:Lio/grpc/binder/internal/Inbound$State;

    new-instance v1, Lio/grpc/binder/internal/Inbound$State;

    const-string v2, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/grpc/binder/internal/Inbound$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/binder/internal/Inbound$State;->e:Lio/grpc/binder/internal/Inbound$State;

    new-instance v2, Lio/grpc/binder/internal/Inbound$State;

    const-string v3, "PREFIX_DELIVERED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/grpc/binder/internal/Inbound$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/grpc/binder/internal/Inbound$State;->f:Lio/grpc/binder/internal/Inbound$State;

    new-instance v3, Lio/grpc/binder/internal/Inbound$State;

    const-string v4, "ALL_MESSAGES_DELIVERED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lio/grpc/binder/internal/Inbound$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/binder/internal/Inbound$State;->g:Lio/grpc/binder/internal/Inbound$State;

    new-instance v4, Lio/grpc/binder/internal/Inbound$State;

    const-string v5, "SUFFIX_DELIVERED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lio/grpc/binder/internal/Inbound$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/grpc/binder/internal/Inbound$State;->h:Lio/grpc/binder/internal/Inbound$State;

    new-instance v5, Lio/grpc/binder/internal/Inbound$State;

    const-string v6, "CLOSED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lio/grpc/binder/internal/Inbound$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/grpc/binder/internal/Inbound$State;->i:Lio/grpc/binder/internal/Inbound$State;

    filled-new-array/range {v0 .. v5}, [Lio/grpc/binder/internal/Inbound$State;

    move-result-object v0

    sput-object v0, Lio/grpc/binder/internal/Inbound$State;->j:[Lio/grpc/binder/internal/Inbound$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/binder/internal/Inbound$State;
    .locals 1

    const-class v0, Lio/grpc/binder/internal/Inbound$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/binder/internal/Inbound$State;

    return-object p0
.end method

.method public static values()[Lio/grpc/binder/internal/Inbound$State;
    .locals 1

    sget-object v0, Lio/grpc/binder/internal/Inbound$State;->j:[Lio/grpc/binder/internal/Inbound$State;

    invoke-virtual {v0}, [Lio/grpc/binder/internal/Inbound$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/binder/internal/Inbound$State;

    return-object v0
.end method
