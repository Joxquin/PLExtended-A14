.class public final enum Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum e:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum f:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum g:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum h:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum i:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final enum j:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

.field public static final synthetic k:[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v1, "GET_MEMOIZED_IS_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->d:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    new-instance v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v2, "SET_MEMOIZED_IS_INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->e:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v3, "BUILD_MESSAGE_INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->f:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    new-instance v3, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v4, "NEW_MUTABLE_INSTANCE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->g:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    new-instance v4, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v5, "NEW_BUILDER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->h:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    new-instance v5, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v6, "GET_DEFAULT_INSTANCE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->i:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    new-instance v6, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    const-string v7, "GET_PARSER"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->j:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    filled-new-array/range {v0 .. v6}, [Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->k:[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .locals 1

    const-class v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .locals 1

    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->k:[Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    invoke-virtual {v0}, [Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    return-object v0
.end method
