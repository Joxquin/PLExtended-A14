.class public final enum Lcom/google/protobuf/JavaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/google/protobuf/JavaType;

.field public static final enum e:Lcom/google/protobuf/JavaType;

.field public static final enum f:Lcom/google/protobuf/JavaType;

.field public static final enum g:Lcom/google/protobuf/JavaType;

.field public static final enum h:Lcom/google/protobuf/JavaType;

.field public static final enum i:Lcom/google/protobuf/JavaType;

.field public static final enum j:Lcom/google/protobuf/JavaType;

.field public static final enum k:Lcom/google/protobuf/JavaType;

.field public static final enum l:Lcom/google/protobuf/JavaType;

.field public static final enum m:Lcom/google/protobuf/JavaType;

.field public static final synthetic n:[Lcom/google/protobuf/JavaType;


# instance fields
.field private final boxedType:Ljava/lang/Class;

.field private final defaultDefault:Ljava/lang/Object;

.field private final type:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v6, Lcom/google/protobuf/JavaType;

    const-string v1, "VOID"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lcom/google/protobuf/JavaType;->d:Lcom/google/protobuf/JavaType;

    new-instance v1, Lcom/google/protobuf/JavaType;

    const-string v8, "INT"

    const/4 v9, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v7, v1

    move-object v10, v13

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v1, Lcom/google/protobuf/JavaType;->e:Lcom/google/protobuf/JavaType;

    new-instance v2, Lcom/google/protobuf/JavaType;

    const-string v15, "LONG"

    const/16 v16, 0x2

    sget-object v17, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v18, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object v14, v2

    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v2, Lcom/google/protobuf/JavaType;->f:Lcom/google/protobuf/JavaType;

    new-instance v3, Lcom/google/protobuf/JavaType;

    const-string v8, "FLOAT"

    const/4 v9, 0x3

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Float;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v3, Lcom/google/protobuf/JavaType;->g:Lcom/google/protobuf/JavaType;

    new-instance v4, Lcom/google/protobuf/JavaType;

    const-string v15, "DOUBLE"

    const/16 v16, 0x4

    sget-object v17, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v18, Ljava/lang/Double;

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object v14, v4

    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v4, Lcom/google/protobuf/JavaType;->h:Lcom/google/protobuf/JavaType;

    new-instance v5, Lcom/google/protobuf/JavaType;

    const-string v8, "BOOLEAN"

    const/4 v9, 0x5

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v11, Ljava/lang/Boolean;

    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v5, Lcom/google/protobuf/JavaType;->i:Lcom/google/protobuf/JavaType;

    new-instance v7, Lcom/google/protobuf/JavaType;

    const-string v15, "STRING"

    const/16 v16, 0x6

    const-class v17, Ljava/lang/String;

    const-class v18, Ljava/lang/String;

    const-string v19, ""

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v7, Lcom/google/protobuf/JavaType;->j:Lcom/google/protobuf/JavaType;

    new-instance v8, Lcom/google/protobuf/JavaType;

    const-string v21, "BYTE_STRING"

    const/16 v22, 0x7

    const-class v23, Lcom/google/protobuf/ByteString;

    const-class v24, Lcom/google/protobuf/ByteString;

    sget-object v25, Lcom/google/protobuf/ByteString;->d:Lcom/google/protobuf/ByteString;

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v8, Lcom/google/protobuf/JavaType;->k:Lcom/google/protobuf/JavaType;

    new-instance v9, Lcom/google/protobuf/JavaType;

    const-string v11, "ENUM"

    const/16 v12, 0x8

    const-class v14, Ljava/lang/Integer;

    const/4 v15, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v9, Lcom/google/protobuf/JavaType;->l:Lcom/google/protobuf/JavaType;

    new-instance v10, Lcom/google/protobuf/JavaType;

    const-string v17, "MESSAGE"

    const/16 v18, 0x9

    const-class v19, Ljava/lang/Object;

    const-class v20, Ljava/lang/Object;

    const/16 v21, 0x0

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v21}, Lcom/google/protobuf/JavaType;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v10, Lcom/google/protobuf/JavaType;->m:Lcom/google/protobuf/JavaType;

    move-object v0, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    filled-new-array/range {v0 .. v9}, [Lcom/google/protobuf/JavaType;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/JavaType;->n:[Lcom/google/protobuf/JavaType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/protobuf/JavaType;->type:Ljava/lang/Class;

    iput-object p4, p0, Lcom/google/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    iput-object p5, p0, Lcom/google/protobuf/JavaType;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/JavaType;
    .locals 1

    const-class v0, Lcom/google/protobuf/JavaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/JavaType;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/JavaType;
    .locals 1

    sget-object v0, Lcom/google/protobuf/JavaType;->n:[Lcom/google/protobuf/JavaType;

    invoke-virtual {v0}, [Lcom/google/protobuf/JavaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/JavaType;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/JavaType;->boxedType:Ljava/lang/Class;

    return-object p0
.end method
