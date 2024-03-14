.class public final enum Lcom/google/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/google/protobuf/FieldType;

.field public static final enum e:Lcom/google/protobuf/FieldType;

.field public static final f:[Lcom/google/protobuf/FieldType;

.field public static final synthetic g:[Lcom/google/protobuf/FieldType;


# instance fields
.field private final collection:Lcom/google/protobuf/FieldType$Collection;

.field private final elementType:Ljava/lang/Class;

.field private final id:I

.field private final javaType:Lcom/google/protobuf/JavaType;

.field private final primitiveScalar:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 64

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object v6, v0

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v29, Lcom/google/protobuf/FieldType$Collection;->d:Lcom/google/protobuf/FieldType$Collection;

    sget-object v47, Lcom/google/protobuf/JavaType;->h:Lcom/google/protobuf/JavaType;

    move-object/from16 v4, v29

    move-object/from16 v5, v47

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v8, Lcom/google/protobuf/FieldType;

    move-object v7, v8

    const-string v9, "FLOAT"

    const/4 v10, 0x1

    const/4 v11, 0x1

    sget-object v48, Lcom/google/protobuf/JavaType;->g:Lcom/google/protobuf/JavaType;

    move-object/from16 v12, v29

    move-object/from16 v13, v48

    invoke-direct/range {v8 .. v13}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v9, Lcom/google/protobuf/FieldType;

    move-object v8, v9

    const-string v10, "INT64"

    const/4 v11, 0x2

    const/4 v12, 0x2

    sget-object v55, Lcom/google/protobuf/JavaType;->f:Lcom/google/protobuf/JavaType;

    move-object/from16 v13, v29

    move-object/from16 v14, v55

    invoke-direct/range {v9 .. v14}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v10, Lcom/google/protobuf/FieldType;

    move-object v9, v10

    const-string v11, "UINT64"

    const/4 v12, 0x3

    const/4 v13, 0x3

    move-object/from16 v14, v29

    move-object/from16 v15, v55

    invoke-direct/range {v10 .. v15}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v11, Lcom/google/protobuf/FieldType;

    move-object v10, v11

    const-string v12, "INT32"

    const/4 v13, 0x4

    const/4 v14, 0x4

    sget-object v54, Lcom/google/protobuf/JavaType;->e:Lcom/google/protobuf/JavaType;

    move-object/from16 v15, v29

    move-object/from16 v16, v54

    invoke-direct/range {v11 .. v16}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v12, Lcom/google/protobuf/FieldType;

    move-object v11, v12

    const-string v13, "FIXED64"

    const/4 v14, 0x5

    const/4 v15, 0x5

    move-object/from16 v16, v29

    move-object/from16 v17, v55

    invoke-direct/range {v12 .. v17}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v13, Lcom/google/protobuf/FieldType;

    move-object v12, v13

    const-string v14, "FIXED32"

    const/4 v15, 0x6

    const/16 v16, 0x6

    move-object/from16 v17, v29

    move-object/from16 v18, v54

    invoke-direct/range {v13 .. v18}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v14, Lcom/google/protobuf/FieldType;

    move-object v13, v14

    const-string v15, "BOOL"

    const/16 v16, 0x7

    const/16 v17, 0x7

    sget-object v49, Lcom/google/protobuf/JavaType;->i:Lcom/google/protobuf/JavaType;

    move-object/from16 v18, v29

    move-object/from16 v19, v49

    invoke-direct/range {v14 .. v19}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v15, Lcom/google/protobuf/FieldType;

    move-object v14, v15

    const-string v16, "STRING"

    const/16 v17, 0x8

    const/16 v18, 0x8

    sget-object v36, Lcom/google/protobuf/JavaType;->j:Lcom/google/protobuf/JavaType;

    move-object/from16 v19, v29

    move-object/from16 v20, v36

    invoke-direct/range {v15 .. v20}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v16, Lcom/google/protobuf/FieldType;

    move-object/from16 v15, v16

    const-string v17, "MESSAGE"

    const/16 v18, 0x9

    const/16 v19, 0x9

    sget-object v56, Lcom/google/protobuf/JavaType;->m:Lcom/google/protobuf/JavaType;

    move-object/from16 v20, v29

    move-object/from16 v21, v56

    invoke-direct/range {v16 .. v21}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v17, Lcom/google/protobuf/FieldType;

    move-object/from16 v16, v17

    const-string v18, "BYTES"

    const/16 v19, 0xa

    const/16 v20, 0xa

    sget-object v37, Lcom/google/protobuf/JavaType;->k:Lcom/google/protobuf/JavaType;

    move-object/from16 v21, v29

    move-object/from16 v22, v37

    invoke-direct/range {v17 .. v22}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v18, Lcom/google/protobuf/FieldType;

    move-object/from16 v17, v18

    const-string v19, "UINT32"

    const/16 v20, 0xb

    const/16 v21, 0xb

    move-object/from16 v22, v29

    move-object/from16 v23, v54

    invoke-direct/range {v18 .. v23}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v19, Lcom/google/protobuf/FieldType;

    move-object/from16 v18, v19

    const-string v20, "ENUM"

    const/16 v21, 0xc

    const/16 v22, 0xc

    sget-object v51, Lcom/google/protobuf/JavaType;->l:Lcom/google/protobuf/JavaType;

    move-object/from16 v23, v29

    move-object/from16 v24, v51

    invoke-direct/range {v19 .. v24}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v20, Lcom/google/protobuf/FieldType;

    move-object/from16 v19, v20

    const-string v21, "SFIXED32"

    const/16 v22, 0xd

    const/16 v23, 0xd

    move-object/from16 v24, v29

    move-object/from16 v25, v54

    invoke-direct/range {v20 .. v25}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v21, Lcom/google/protobuf/FieldType;

    move-object/from16 v20, v21

    const-string v22, "SFIXED64"

    const/16 v23, 0xe

    const/16 v24, 0xe

    move-object/from16 v25, v29

    move-object/from16 v26, v55

    invoke-direct/range {v21 .. v26}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v22, Lcom/google/protobuf/FieldType;

    move-object/from16 v21, v22

    const-string v23, "SINT32"

    const/16 v24, 0xf

    const/16 v25, 0xf

    move-object/from16 v26, v29

    move-object/from16 v27, v54

    invoke-direct/range {v22 .. v27}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v23, Lcom/google/protobuf/FieldType;

    move-object/from16 v22, v23

    const-string v24, "SINT64"

    const/16 v25, 0x10

    const/16 v26, 0x10

    move-object/from16 v27, v29

    move-object/from16 v28, v55

    invoke-direct/range {v23 .. v28}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v24, Lcom/google/protobuf/FieldType;

    move-object/from16 v23, v24

    const-string v25, "GROUP"

    const/16 v26, 0x11

    const/16 v27, 0x11

    move-object/from16 v28, v29

    move-object/from16 v29, v56

    invoke-direct/range {v24 .. v29}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v30, Lcom/google/protobuf/FieldType;

    move-object/from16 v24, v30

    const-string v31, "DOUBLE_LIST"

    const/16 v32, 0x12

    const/16 v33, 0x12

    sget-object v57, Lcom/google/protobuf/FieldType$Collection;->e:Lcom/google/protobuf/FieldType$Collection;

    move-object/from16 v34, v57

    move-object/from16 v35, v47

    invoke-direct/range {v30 .. v35}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v25, v0

    const-string v1, "FLOAT_LIST"

    const/16 v2, 0x13

    const/16 v3, 0x13

    move-object/from16 v4, v57

    move-object/from16 v5, v48

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v26, v0

    const-string v1, "INT64_LIST"

    const/16 v2, 0x14

    const/16 v3, 0x14

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v27, v0

    const-string v1, "UINT64_LIST"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v28, v0

    const-string v1, "INT32_LIST"

    const/16 v2, 0x16

    const/16 v3, 0x16

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v29, v0

    const-string v1, "FIXED64_LIST"

    const/16 v2, 0x17

    const/16 v3, 0x17

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v30, v0

    const-string v1, "FIXED32_LIST"

    const/16 v2, 0x18

    const/16 v3, 0x18

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v31, v0

    const-string v1, "BOOL_LIST"

    const/16 v2, 0x19

    const/16 v3, 0x19

    move-object/from16 v5, v49

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v32, v0

    const-string v1, "STRING_LIST"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    move-object/from16 v5, v36

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v33, v0

    const-string v1, "MESSAGE_LIST"

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    move-object/from16 v5, v56

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v34, v0

    const-string v1, "BYTES_LIST"

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    move-object/from16 v5, v37

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v35, v0

    const-string v1, "UINT32_LIST"

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v36, v0

    const-string v1, "ENUM_LIST"

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    move-object/from16 v5, v51

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v37, v0

    const-string v1, "SFIXED32_LIST"

    const/16 v2, 0x1f

    const/16 v3, 0x1f

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v38, v0

    const-string v1, "SFIXED64_LIST"

    const/16 v2, 0x20

    const/16 v3, 0x20

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v39, v0

    const-string v1, "SINT32_LIST"

    const/16 v2, 0x21

    const/16 v3, 0x21

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v40, v0

    const-string v1, "SINT64_LIST"

    const/16 v2, 0x22

    const/16 v3, 0x22

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v41, v0

    const-string v43, "DOUBLE_LIST_PACKED"

    const/16 v44, 0x23

    const/16 v45, 0x23

    sget-object v58, Lcom/google/protobuf/FieldType$Collection;->f:Lcom/google/protobuf/FieldType$Collection;

    move-object/from16 v42, v0

    move-object/from16 v46, v58

    invoke-direct/range {v42 .. v47}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v0, Lcom/google/protobuf/FieldType;->d:Lcom/google/protobuf/FieldType;

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v42, v0

    const-string v1, "FLOAT_LIST_PACKED"

    const/16 v2, 0x24

    const/16 v3, 0x24

    move-object/from16 v4, v58

    move-object/from16 v5, v48

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v43, v0

    const-string v1, "INT64_LIST_PACKED"

    const/16 v2, 0x25

    const/16 v3, 0x25

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v44, v0

    const-string v1, "UINT64_LIST_PACKED"

    const/16 v2, 0x26

    const/16 v3, 0x26

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v45, v0

    const-string v1, "INT32_LIST_PACKED"

    const/16 v2, 0x27

    const/16 v3, 0x27

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v46, v0

    const-string v1, "FIXED64_LIST_PACKED"

    const/16 v2, 0x28

    const/16 v3, 0x28

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v47, v0

    const-string v1, "FIXED32_LIST_PACKED"

    const/16 v2, 0x29

    const/16 v3, 0x29

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v48, v0

    const-string v1, "BOOL_LIST_PACKED"

    const/16 v2, 0x2a

    const/16 v3, 0x2a

    move-object/from16 v5, v49

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v49, v0

    const-string v1, "UINT32_LIST_PACKED"

    const/16 v2, 0x2b

    const/16 v3, 0x2b

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v50, v0

    const-string v1, "ENUM_LIST_PACKED"

    const/16 v2, 0x2c

    const/16 v3, 0x2c

    move-object/from16 v5, v51

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v51, v0

    const-string v1, "SFIXED32_LIST_PACKED"

    const/16 v2, 0x2d

    const/16 v3, 0x2d

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v52, v0

    const-string v1, "SFIXED64_LIST_PACKED"

    const/16 v2, 0x2e

    const/16 v3, 0x2e

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v53, v0

    const-string v1, "SINT32_LIST_PACKED"

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    move-object/from16 v5, v54

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v59, Lcom/google/protobuf/FieldType;

    move-object/from16 v54, v59

    const-string v1, "SINT64_LIST_PACKED"

    const/16 v2, 0x30

    const/16 v3, 0x30

    move-object/from16 v0, v59

    move-object/from16 v5, v55

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    sput-object v59, Lcom/google/protobuf/FieldType;->e:Lcom/google/protobuf/FieldType;

    new-instance v0, Lcom/google/protobuf/FieldType;

    move-object/from16 v55, v0

    const-string v1, "GROUP_LIST"

    const/16 v2, 0x31

    const/16 v3, 0x31

    move-object/from16 v4, v57

    move-object/from16 v5, v56

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    new-instance v58, Lcom/google/protobuf/FieldType;

    move-object/from16 v56, v58

    const-string v59, "MAP"

    const/16 v60, 0x32

    const/16 v61, 0x32

    sget-object v62, Lcom/google/protobuf/FieldType$Collection;->g:Lcom/google/protobuf/FieldType$Collection;

    sget-object v63, Lcom/google/protobuf/JavaType;->d:Lcom/google/protobuf/JavaType;

    invoke-direct/range {v58 .. v63}, Lcom/google/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V

    filled-new-array/range {v6 .. v56}, [Lcom/google/protobuf/FieldType;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/FieldType;->g:[Lcom/google/protobuf/FieldType;

    invoke-static {}, Lcom/google/protobuf/FieldType;->values()[Lcom/google/protobuf/FieldType;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/google/protobuf/FieldType;

    sput-object v1, Lcom/google/protobuf/FieldType;->f:[Lcom/google/protobuf/FieldType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/google/protobuf/FieldType;->f:[Lcom/google/protobuf/FieldType;

    iget v5, v3, Lcom/google/protobuf/FieldType;->id:I

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/google/protobuf/FieldType$Collection;Lcom/google/protobuf/JavaType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/protobuf/FieldType;->id:I

    iput-object p4, p0, Lcom/google/protobuf/FieldType;->collection:Lcom/google/protobuf/FieldType$Collection;

    iput-object p5, p0, Lcom/google/protobuf/FieldType;->javaType:Lcom/google/protobuf/JavaType;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x3

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {p5}, Lcom/google/protobuf/JavaType;->a()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/FieldType;->elementType:Ljava/lang/Class;

    :goto_0
    sget-object p1, Lcom/google/protobuf/FieldType$Collection;->d:Lcom/google/protobuf/FieldType$Collection;

    if-ne p4, p1, :cond_2

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p3, 0x6

    if-eq p1, p3, :cond_2

    const/4 p3, 0x7

    if-eq p1, p3, :cond_2

    const/16 p3, 0x9

    if-eq p1, p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/google/protobuf/FieldType;->primitiveScalar:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/FieldType;
    .locals 1

    const-class v0, Lcom/google/protobuf/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/FieldType;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/FieldType;
    .locals 1

    sget-object v0, Lcom/google/protobuf/FieldType;->g:[Lcom/google/protobuf/FieldType;

    invoke-virtual {v0}, [Lcom/google/protobuf/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/FieldType;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/google/protobuf/FieldType;->id:I

    return p0
.end method
