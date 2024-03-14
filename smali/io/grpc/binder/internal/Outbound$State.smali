.class final enum Lio/grpc/binder/internal/Outbound$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lio/grpc/binder/internal/Outbound$State;

.field public static final enum e:Lio/grpc/binder/internal/Outbound$State;

.field public static final enum f:Lio/grpc/binder/internal/Outbound$State;

.field public static final enum g:Lio/grpc/binder/internal/Outbound$State;

.field public static final enum h:Lio/grpc/binder/internal/Outbound$State;

.field public static final synthetic i:[Lio/grpc/binder/internal/Outbound$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lio/grpc/binder/internal/Outbound$State;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/binder/internal/Outbound$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/grpc/binder/internal/Outbound$State;->d:Lio/grpc/binder/internal/Outbound$State;

    new-instance v1, Lio/grpc/binder/internal/Outbound$State;

    const-string v2, "PREFIX_SENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lio/grpc/binder/internal/Outbound$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/grpc/binder/internal/Outbound$State;->e:Lio/grpc/binder/internal/Outbound$State;

    new-instance v2, Lio/grpc/binder/internal/Outbound$State;

    const-string v3, "ALL_MESSAGES_SENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lio/grpc/binder/internal/Outbound$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/grpc/binder/internal/Outbound$State;->f:Lio/grpc/binder/internal/Outbound$State;

    new-instance v3, Lio/grpc/binder/internal/Outbound$State;

    const-string v4, "SUFFIX_SENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lio/grpc/binder/internal/Outbound$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/grpc/binder/internal/Outbound$State;->g:Lio/grpc/binder/internal/Outbound$State;

    new-instance v4, Lio/grpc/binder/internal/Outbound$State;

    const-string v5, "CLOSED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lio/grpc/binder/internal/Outbound$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lio/grpc/binder/internal/Outbound$State;->h:Lio/grpc/binder/internal/Outbound$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lio/grpc/binder/internal/Outbound$State;

    move-result-object v0

    sput-object v0, Lio/grpc/binder/internal/Outbound$State;->i:[Lio/grpc/binder/internal/Outbound$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/grpc/binder/internal/Outbound$State;
    .locals 1

    const-class v0, Lio/grpc/binder/internal/Outbound$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/grpc/binder/internal/Outbound$State;

    return-object p0
.end method

.method public static values()[Lio/grpc/binder/internal/Outbound$State;
    .locals 1

    sget-object v0, Lio/grpc/binder/internal/Outbound$State;->i:[Lio/grpc/binder/internal/Outbound$State;

    invoke-virtual {v0}, [Lio/grpc/binder/internal/Outbound$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/binder/internal/Outbound$State;

    return-object v0
.end method
