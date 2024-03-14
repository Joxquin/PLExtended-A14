.class public enum Lcom/google/protobuf/WireFormat$FieldType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum e:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum f:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum g:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum h:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum i:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum j:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum k:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum l:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum m:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum n:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum o:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum p:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum q:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum r:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum s:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum t:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final enum u:Lcom/google/protobuf/WireFormat$FieldType;

.field public static final synthetic v:[Lcom/google/protobuf/WireFormat$FieldType;


# instance fields
.field private final javaType:Lcom/google/protobuf/WireFormat$JavaType;

.field private final wireType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    new-instance v1, Lcom/google/protobuf/WireFormat$FieldType;

    move-object v0, v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->g:Lcom/google/protobuf/WireFormat$JavaType;

    const-string v3, "DOUBLE"

    const/4 v15, 0x0

    const/4 v14, 0x1

    invoke-direct {v1, v3, v15, v2, v14}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v1, Lcom/google/protobuf/WireFormat$FieldType;->d:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v2, Lcom/google/protobuf/WireFormat$FieldType;

    move-object v1, v2

    sget-object v3, Lcom/google/protobuf/WireFormat$JavaType;->f:Lcom/google/protobuf/WireFormat$JavaType;

    const-string v4, "FLOAT"

    const/4 v13, 0x5

    invoke-direct {v2, v4, v14, v3, v13}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v2, Lcom/google/protobuf/WireFormat$FieldType;->e:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v3, Lcom/google/protobuf/WireFormat$FieldType;

    move-object v2, v3

    sget-object v12, Lcom/google/protobuf/WireFormat$JavaType;->e:Lcom/google/protobuf/WireFormat$JavaType;

    const-string v4, "INT64"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v12, v15}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v3, Lcom/google/protobuf/WireFormat$FieldType;->f:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v4, Lcom/google/protobuf/WireFormat$FieldType;

    move-object v3, v4

    const-string v5, "UINT64"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v12, v15}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v4, Lcom/google/protobuf/WireFormat$FieldType;->g:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v5, Lcom/google/protobuf/WireFormat$FieldType;

    move-object v4, v5

    sget-object v11, Lcom/google/protobuf/WireFormat$JavaType;->d:Lcom/google/protobuf/WireFormat$JavaType;

    const-string v6, "INT32"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v11, v15}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v5, Lcom/google/protobuf/WireFormat$FieldType;->h:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v6, Lcom/google/protobuf/WireFormat$FieldType;

    move-object v5, v6

    const-string v7, "FIXED64"

    invoke-direct {v6, v7, v13, v12, v14}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v6, Lcom/google/protobuf/WireFormat$FieldType;->i:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v7, Lcom/google/protobuf/WireFormat$FieldType;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "FIXED32"

    invoke-direct {v7, v9, v8, v11, v13}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v7, Lcom/google/protobuf/WireFormat$FieldType;->j:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v8, Lcom/google/protobuf/WireFormat$FieldType;

    move-object v7, v8

    sget-object v9, Lcom/google/protobuf/WireFormat$JavaType;->h:Lcom/google/protobuf/WireFormat$JavaType;

    const-string v10, "BOOL"

    const/4 v13, 0x7

    invoke-direct {v8, v10, v13, v9, v15}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v8, Lcom/google/protobuf/WireFormat$FieldType;->k:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v9, Lcom/google/protobuf/WireFormat$FieldType$1;

    move-object v8, v9

    invoke-direct {v9}, Lcom/google/protobuf/WireFormat$FieldType$1;-><init>()V

    sput-object v9, Lcom/google/protobuf/WireFormat$FieldType;->l:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v10, Lcom/google/protobuf/WireFormat$FieldType$2;

    move-object v9, v10

    sget-object v13, Lcom/google/protobuf/WireFormat$JavaType;->l:Lcom/google/protobuf/WireFormat$JavaType;

    invoke-direct {v10, v13}, Lcom/google/protobuf/WireFormat$FieldType$2;-><init>(Lcom/google/protobuf/WireFormat$JavaType;)V

    sput-object v10, Lcom/google/protobuf/WireFormat$FieldType;->m:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v10, Lcom/google/protobuf/WireFormat$FieldType$3;

    move-object/from16 v17, v10

    move-object/from16 v14, v17

    invoke-direct {v14, v13}, Lcom/google/protobuf/WireFormat$FieldType$3;-><init>(Lcom/google/protobuf/WireFormat$JavaType;)V

    sput-object v14, Lcom/google/protobuf/WireFormat$FieldType;->n:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v13, Lcom/google/protobuf/WireFormat$FieldType$4;

    move-object v14, v11

    move-object v11, v13

    sget-object v15, Lcom/google/protobuf/WireFormat$JavaType;->j:Lcom/google/protobuf/WireFormat$JavaType;

    invoke-direct {v13, v15}, Lcom/google/protobuf/WireFormat$FieldType$4;-><init>(Lcom/google/protobuf/WireFormat$JavaType;)V

    sput-object v13, Lcom/google/protobuf/WireFormat$FieldType;->o:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v13, Lcom/google/protobuf/WireFormat$FieldType;

    move-object v15, v12

    move-object v12, v13

    move-object/from16 v18, v15

    const/16 v15, 0xc

    move-object/from16 v19, v0

    const-string v0, "UINT32"

    move-object/from16 v20, v1

    const/4 v1, 0x0

    invoke-direct {v13, v0, v15, v14, v1}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v13, Lcom/google/protobuf/WireFormat$FieldType;->p:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v15, 0x5

    move-object v13, v0

    sget-object v15, Lcom/google/protobuf/WireFormat$JavaType;->k:Lcom/google/protobuf/WireFormat$JavaType;

    move-object/from16 v17, v14

    const-string v14, "ENUM"

    move-object/from16 v21, v2

    const/16 v2, 0xd

    invoke-direct {v0, v14, v2, v15, v1}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/protobuf/WireFormat$FieldType;->q:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/google/protobuf/WireFormat$FieldType;

    move-object/from16 v2, v17

    const/4 v15, 0x1

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "SFIXED32"

    move-object/from16 v22, v3

    const/4 v3, 0x5

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/protobuf/WireFormat$FieldType;->r:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/google/protobuf/WireFormat$FieldType;

    move-object/from16 v1, v18

    const/4 v3, 0x1

    move-object v15, v0

    move-object/from16 v18, v4

    const/16 v4, 0xf

    move-object/from16 v23, v5

    const-string v5, "SFIXED64"

    invoke-direct {v0, v5, v4, v1, v3}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/protobuf/WireFormat$FieldType;->s:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/google/protobuf/WireFormat$FieldType;

    move-object/from16 v16, v0

    const/16 v3, 0x10

    const-string v4, "SINT32"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/protobuf/WireFormat$FieldType;->t:Lcom/google/protobuf/WireFormat$FieldType;

    new-instance v0, Lcom/google/protobuf/WireFormat$FieldType;

    move-object/from16 v17, v0

    const/16 v2, 0x11

    const-string v3, "SINT64"

    invoke-direct {v0, v3, v2, v1, v5}, Lcom/google/protobuf/WireFormat$FieldType;-><init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V

    sput-object v0, Lcom/google/protobuf/WireFormat$FieldType;->u:Lcom/google/protobuf/WireFormat$FieldType;

    move-object/from16 v4, v18

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    filled-new-array/range {v0 .. v17}, [Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/WireFormat$FieldType;->v:[Lcom/google/protobuf/WireFormat$FieldType;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/protobuf/WireFormat$JavaType;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/google/protobuf/WireFormat$FieldType;->javaType:Lcom/google/protobuf/WireFormat$JavaType;

    .line 3
    iput p4, p0, Lcom/google/protobuf/WireFormat$FieldType;->wireType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/WireFormat$FieldType;
    .locals 1

    const-class v0, Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/WireFormat$FieldType;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/WireFormat$FieldType;
    .locals 1

    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->v:[Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, [Lcom/google/protobuf/WireFormat$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/WireFormat$FieldType;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/protobuf/WireFormat$JavaType;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/WireFormat$FieldType;->javaType:Lcom/google/protobuf/WireFormat$JavaType;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/WireFormat$FieldType;->wireType:I

    return p0
.end method
