.class public final Lcom/google/protobuf/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/C0;


# static fields
.field public static final r:[I

.field public static final s:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/protobuf/p0;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[I

.field public final k:I

.field public final l:I

.field public final m:Lcom/google/protobuf/u0;

.field public final n:Lcom/google/protobuf/c0;

.field public final o:Lcom/google/protobuf/O0;

.field public final p:Lcom/google/protobuf/x;

.field public final q:Lcom/google/protobuf/j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/protobuf/s0;->r:[I

    :try_start_0
    new-instance v0, Lcom/google/protobuf/U0;

    invoke-direct {v0}, Lcom/google/protobuf/U0;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/protobuf/p0;Z[IIILcom/google/protobuf/u0;Lcom/google/protobuf/c0;Lcom/google/protobuf/O0;Lcom/google/protobuf/x;Lcom/google/protobuf/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/s0;->a:[I

    iput-object p2, p0, Lcom/google/protobuf/s0;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/protobuf/s0;->c:I

    iput p4, p0, Lcom/google/protobuf/s0;->d:I

    instance-of p1, p5, Lcom/google/protobuf/J;

    iput-boolean p1, p0, Lcom/google/protobuf/s0;->g:Z

    iput-boolean p6, p0, Lcom/google/protobuf/s0;->h:Z

    const/4 p1, 0x0

    if-eqz p13, :cond_0

    invoke-virtual {p13, p5}, Lcom/google/protobuf/x;->e(Lcom/google/protobuf/p0;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Lcom/google/protobuf/s0;->f:Z

    iput-boolean p1, p0, Lcom/google/protobuf/s0;->i:Z

    iput-object p7, p0, Lcom/google/protobuf/s0;->j:[I

    iput p8, p0, Lcom/google/protobuf/s0;->k:I

    iput p9, p0, Lcom/google/protobuf/s0;->l:I

    iput-object p10, p0, Lcom/google/protobuf/s0;->m:Lcom/google/protobuf/u0;

    iput-object p11, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/c0;

    iput-object p12, p0, Lcom/google/protobuf/s0;->o:Lcom/google/protobuf/O0;

    iput-object p13, p0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/x;

    iput-object p5, p0, Lcom/google/protobuf/s0;->e:Lcom/google/protobuf/p0;

    iput-object p14, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/j0;

    return-void
.end method

.method public static B(Lcom/google/protobuf/m0;Lcom/google/protobuf/u0;Lcom/google/protobuf/c0;Lcom/google/protobuf/O0;Lcom/google/protobuf/x;Lcom/google/protobuf/j0;)Lcom/google/protobuf/s0;
    .locals 33

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/protobuf/B0;

    if-eqz v1, :cond_34

    check-cast v0, Lcom/google/protobuf/B0;

    invoke-virtual {v0}, Lcom/google/protobuf/B0;->b()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/ProtoSyntax;->e:Lcom/google/protobuf/ProtoSyntax;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v3

    :goto_0
    iget-object v1, v0, Lcom/google/protobuf/B0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_4
    if-nez v7, :cond_5

    sget-object v7, Lcom/google/protobuf/s0;->r:[I

    move v9, v3

    move v10, v9

    move v12, v10

    move v14, v12

    move v15, v14

    move-object v13, v7

    move v7, v15

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_3

    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_7
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    :cond_8
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_9
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_a
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_b
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_d

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_d
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_14

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_a

    :cond_14
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v16, v17

    :cond_15
    add-int v3, v15, v13

    add-int/2addr v3, v14

    new-array v3, v3, [I

    mul-int/lit8 v14, v5, 0x2

    add-int/2addr v14, v7

    move v7, v13

    move-object v13, v3

    move v3, v5

    move/from16 v5, v16

    :goto_b
    iget-object v8, v0, Lcom/google/protobuf/B0;->a:Lcom/google/protobuf/p0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    mul-int/lit8 v4, v12, 0x3

    new-array v4, v4, [I

    mul-int/lit8 v12, v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    add-int v18, v15, v7

    move/from16 v20, v15

    move/from16 v21, v18

    const/4 v7, 0x0

    const/16 v19, 0x0

    :goto_c
    if-ge v5, v2, :cond_33

    add-int/lit8 v22, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_17

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v6, v22

    const/16 v22, 0xd

    :goto_d
    add-int/lit8 v24, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v25, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_16

    and-int/lit16 v2, v6, 0x1fff

    shl-int v2, v2, v22

    or-int/2addr v5, v2

    add-int/lit8 v22, v22, 0xd

    move/from16 v6, v24

    move/from16 v2, v25

    goto :goto_d

    :cond_16
    shl-int v2, v6, v22

    or-int/2addr v5, v2

    move/from16 v2, v24

    goto :goto_e

    :cond_17
    move/from16 v25, v2

    move/from16 v2, v22

    :goto_e
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v22, v6

    const v6, 0xd800

    if-lt v2, v6, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v6, v22

    const/16 v22, 0xd

    :goto_f
    add-int/lit8 v24, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v26, v15

    const v15, 0xd800

    if-lt v6, v15, :cond_18

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v22

    or-int/2addr v2, v6

    add-int/lit8 v22, v22, 0xd

    move/from16 v6, v24

    move/from16 v15, v26

    goto :goto_f

    :cond_18
    shl-int v6, v6, v22

    or-int/2addr v2, v6

    move/from16 v6, v24

    goto :goto_10

    :cond_19
    move/from16 v26, v15

    move/from16 v6, v22

    :goto_10
    and-int/lit16 v15, v2, 0xff

    move/from16 v22, v10

    and-int/lit16 v10, v2, 0x400

    if-eqz v10, :cond_1a

    add-int/lit8 v10, v19, 0x1

    aput v7, v13, v19

    move/from16 v19, v10

    :cond_1a
    sget-object v10, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    move/from16 v28, v9

    iget-object v9, v0, Lcom/google/protobuf/B0;->c:[Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v0, 0x33

    if-lt v15, v0, :cond_22

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v24, v0

    const v0, 0xd800

    if-lt v6, v0, :cond_1c

    and-int/lit16 v6, v6, 0x1fff

    const/16 v30, 0xd

    move/from16 v32, v24

    move/from16 v24, v6

    move/from16 v6, v32

    :goto_11
    add-int/lit8 v31, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v0, :cond_1b

    and-int/lit16 v0, v6, 0x1fff

    shl-int v0, v0, v30

    or-int v24, v24, v0

    add-int/lit8 v30, v30, 0xd

    move/from16 v6, v31

    const v0, 0xd800

    goto :goto_11

    :cond_1b
    shl-int v0, v6, v30

    or-int v6, v24, v0

    move/from16 v0, v31

    goto :goto_12

    :cond_1c
    move/from16 v0, v24

    :goto_12
    move/from16 v24, v0

    add-int/lit8 v0, v15, -0x33

    move-object/from16 v30, v4

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1e

    const/16 v4, 0x11

    if-ne v0, v4, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v4, 0xc

    if-ne v0, v4, :cond_1f

    if-nez v11, :cond_1f

    div-int/lit8 v0, v7, 0x3

    mul-int/lit8 v0, v0, 0x2

    const/4 v4, 0x1

    add-int/2addr v0, v4

    add-int/lit8 v4, v14, 0x1

    aget-object v14, v9, v14

    aput-object v14, v12, v0

    goto :goto_14

    :cond_1e
    :goto_13
    div-int/lit8 v0, v7, 0x3

    mul-int/lit8 v0, v0, 0x2

    const/4 v4, 0x1

    add-int/2addr v0, v4

    add-int/lit8 v4, v14, 0x1

    aget-object v14, v9, v14

    aput-object v14, v12, v0

    :goto_14
    move v14, v4

    :cond_1f
    mul-int/lit8 v6, v6, 0x2

    aget-object v0, v9, v6

    instance-of v4, v0, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_20

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_20
    check-cast v0, Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/google/protobuf/s0;->N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    aput-object v0, v9, v6

    :goto_15
    move/from16 v31, v5

    invoke-virtual {v10, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v0, v4

    add-int/lit8 v6, v6, 0x1

    aget-object v4, v9, v6

    instance-of v5, v4, Ljava/lang/reflect/Field;

    if-eqz v5, :cond_21

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/protobuf/s0;->N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v9, v6

    :goto_16
    invoke-virtual {v10, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    move v5, v4

    move/from16 v6, v24

    const/4 v4, 0x0

    const/16 v17, 0x1

    goto/16 :goto_22

    :cond_22
    move-object/from16 v30, v4

    move/from16 v31, v5

    add-int/lit8 v0, v14, 0x1

    aget-object v4, v9, v14

    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/protobuf/s0;->N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/16 v5, 0x31

    const/16 v14, 0x9

    if-eq v15, v14, :cond_2a

    const/16 v14, 0x11

    if-ne v15, v14, :cond_23

    goto :goto_1a

    :cond_23
    const/16 v14, 0x1b

    if-eq v15, v14, :cond_29

    if-ne v15, v5, :cond_24

    goto :goto_19

    :cond_24
    const/16 v14, 0xc

    if-eq v15, v14, :cond_27

    const/16 v14, 0x1e

    if-eq v15, v14, :cond_27

    const/16 v14, 0x2c

    if-ne v15, v14, :cond_25

    goto :goto_17

    :cond_25
    const/16 v14, 0x32

    if-ne v15, v14, :cond_28

    add-int/lit8 v14, v20, 0x1

    aput v7, v13, v20

    div-int/lit8 v20, v7, 0x3

    mul-int/lit8 v20, v20, 0x2

    add-int/lit8 v24, v0, 0x1

    aget-object v0, v9, v0

    aput-object v0, v12, v20

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_26

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v0, v24, 0x1

    aget-object v24, v9, v24

    aput-object v24, v12, v20

    move/from16 v20, v14

    goto :goto_18

    :cond_26
    move/from16 v20, v14

    move/from16 v0, v24

    goto :goto_18

    :cond_27
    :goto_17
    if-nez v11, :cond_28

    div-int/lit8 v14, v7, 0x3

    mul-int/lit8 v14, v14, 0x2

    const/16 v17, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v24, v0, 0x1

    aget-object v0, v9, v0

    aput-object v0, v12, v14

    move v0, v6

    const/16 v17, 0x1

    goto :goto_1d

    :cond_28
    :goto_18
    const/16 v17, 0x1

    goto :goto_1b

    :cond_29
    :goto_19
    div-int/lit8 v14, v7, 0x3

    mul-int/lit8 v14, v14, 0x2

    const/16 v17, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v24, v0, 0x1

    aget-object v0, v9, v0

    aput-object v0, v12, v14

    goto :goto_1c

    :cond_2a
    :goto_1a
    const/16 v17, 0x1

    div-int/lit8 v14, v7, 0x3

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v24

    aput-object v24, v12, v14

    :goto_1b
    move/from16 v24, v0

    :goto_1c
    move v0, v6

    :goto_1d
    invoke-virtual {v10, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v5

    long-to-int v4, v5

    and-int/lit16 v5, v2, 0x1000

    const/16 v6, 0x1000

    if-ne v5, v6, :cond_2b

    move/from16 v5, v17

    goto :goto_1e

    :cond_2b
    const/4 v5, 0x0

    :goto_1e
    if-eqz v5, :cond_2f

    const/16 v5, 0x11

    if-gt v15, v5, :cond_2f

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v5, 0xd800

    if-lt v0, v5, :cond_2d

    and-int/lit16 v0, v0, 0x1fff

    const/16 v23, 0xd

    :goto_1f
    add-int/lit8 v27, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_2c

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v23

    or-int/2addr v0, v6

    add-int/lit8 v23, v23, 0xd

    move/from16 v6, v27

    goto :goto_1f

    :cond_2c
    shl-int v6, v6, v23

    or-int/2addr v0, v6

    move/from16 v6, v27

    :cond_2d
    mul-int/lit8 v23, v3, 0x2

    div-int/lit8 v27, v0, 0x20

    add-int v27, v27, v23

    aget-object v5, v9, v27

    instance-of v14, v5, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_2e

    check-cast v5, Ljava/lang/reflect/Field;

    goto :goto_20

    :cond_2e
    check-cast v5, Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/google/protobuf/s0;->N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    aput-object v5, v9, v27

    :goto_20
    invoke-virtual {v10, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v5, v9

    rem-int/lit8 v0, v0, 0x20

    goto :goto_21

    :cond_2f
    const v5, 0xfffff

    move v6, v0

    const/4 v0, 0x0

    :goto_21
    const/16 v9, 0x12

    if-lt v15, v9, :cond_30

    const/16 v9, 0x31

    if-gt v15, v9, :cond_30

    add-int/lit8 v9, v21, 0x1

    aput v4, v13, v21

    move/from16 v21, v9

    :cond_30
    move/from16 v14, v24

    move/from16 v32, v4

    move v4, v0

    move/from16 v0, v32

    :goto_22
    add-int/lit8 v9, v7, 0x1

    aput v31, v30, v7

    add-int/lit8 v7, v9, 0x1

    and-int/lit16 v10, v2, 0x200

    if-eqz v10, :cond_31

    const/high16 v10, 0x20000000

    goto :goto_23

    :cond_31
    const/4 v10, 0x0

    :goto_23
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_24

    :cond_32
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v2, v10

    shl-int/lit8 v10, v15, 0x14

    or-int/2addr v2, v10

    or-int/2addr v0, v2

    aput v0, v30, v9

    add-int/lit8 v0, v7, 0x1

    shl-int/lit8 v2, v4, 0x14

    or-int/2addr v2, v5

    aput v2, v30, v7

    move v7, v0

    move v5, v6

    move/from16 v10, v22

    move/from16 v2, v25

    move/from16 v15, v26

    move/from16 v9, v28

    move-object/from16 v0, v29

    move-object/from16 v4, v30

    const v6, 0xd800

    goto/16 :goto_c

    :cond_33
    move-object/from16 v29, v0

    move-object/from16 v30, v4

    move/from16 v28, v9

    move/from16 v22, v10

    move/from16 v26, v15

    new-instance v0, Lcom/google/protobuf/s0;

    move-object/from16 v1, v29

    iget-object v10, v1, Lcom/google/protobuf/B0;->a:Lcom/google/protobuf/p0;

    move-object v5, v0

    move-object/from16 v6, v30

    move-object v7, v12

    move/from16 v8, v28

    move/from16 v9, v22

    move-object v12, v13

    move/from16 v13, v26

    move/from16 v14, v18

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v5 .. v19}, Lcom/google/protobuf/s0;-><init>([I[Ljava/lang/Object;IILcom/google/protobuf/p0;Z[IIILcom/google/protobuf/u0;Lcom/google/protobuf/c0;Lcom/google/protobuf/O0;Lcom/google/protobuf/x;Lcom/google/protobuf/j0;)V

    return-object v0

    :cond_34
    check-cast v0, Lcom/google/protobuf/M0;

    const/4 v0, 0x0

    throw v0
.end method

.method public static C(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static D(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static E(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static W(ILjava/lang/Object;Lcom/google/protobuf/s;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    iget-object p2, p2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {p2, p0, p1}, Lcom/google/protobuf/r;->C(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p2, p0, p1}, Lcom/google/protobuf/s;->a(ILcom/google/protobuf/ByteString;)V

    :goto_0
    return-void
.end method

.method public static l(Ljava/lang/Object;)V
    .locals 3

    invoke-static {p0}, Lcom/google/protobuf/s0;->t(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Mutating immutable message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static m([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/e;)I
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/protobuf/e;->b:J

    invoke-static {p1, p2}, Lcom/google/protobuf/n;->c(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result p0

    iget p1, p5, Lcom/google/protobuf/e;->a:I

    invoke-static {p1}, Lcom/google/protobuf/n;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    goto/16 :goto_3

    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/f;->a([BILcom/google/protobuf/e;)I

    move-result p0

    goto/16 :goto_3

    :pswitch_4
    sget-object p3, Lcom/google/protobuf/z0;->c:Lcom/google/protobuf/z0;

    invoke-virtual {p3, p4}, Lcom/google/protobuf/z0;->a(Ljava/lang/Class;)Lcom/google/protobuf/C0;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/protobuf/f;->d(Lcom/google/protobuf/C0;[BIILcom/google/protobuf/e;)I

    move-result p0

    goto/16 :goto_3

    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/f;->h([BILcom/google/protobuf/e;)I

    move-result p0

    goto :goto_3

    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/protobuf/e;->b:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    goto :goto_3

    :pswitch_7
    invoke-static {p1, p0}, Lcom/google/protobuf/f;->b(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    goto :goto_1

    :pswitch_8
    invoke-static {p1, p0}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    goto :goto_2

    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result p0

    iget p1, p5, Lcom/google/protobuf/e;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    goto :goto_3

    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/protobuf/e;->b:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    goto :goto_3

    :pswitch_b
    invoke-static {p1, p0}, Lcom/google/protobuf/f;->b(I[B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    :goto_1
    add-int/lit8 p0, p1, 0x4

    goto :goto_3

    :pswitch_c
    invoke-static {p1, p0}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    :goto_2
    add-int/lit8 p0, p1, 0x8

    :goto_3
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static r(Ljava/lang/Object;)Lcom/google/protobuf/P0;
    .locals 2

    check-cast p0, Lcom/google/protobuf/J;

    iget-object v0, p0, Lcom/google/protobuf/J;->unknownFields:Lcom/google/protobuf/P0;

    sget-object v1, Lcom/google/protobuf/P0;->f:Lcom/google/protobuf/P0;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/protobuf/P0;

    invoke-direct {v0}, Lcom/google/protobuf/P0;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/J;->unknownFields:Lcom/google/protobuf/P0;

    :cond_0
    return-object v0
.end method

.method public static t(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/protobuf/J;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/protobuf/J;

    invoke-virtual {p0}, Lcom/google/protobuf/J;->isMutable()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static v(JLjava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/C0;->i()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/s0;->T(I)I

    move-result p0

    const p1, 0xfffff

    and-int/2addr p0, p1

    int-to-long p0, p0

    sget-object p2, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    invoke-virtual {p2, p3, p0, p1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/s0;->t(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/C0;->i()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/C0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final F(Ljava/lang/Object;[BIIIJLcom/google/protobuf/e;)I
    .locals 7

    invoke-virtual {p0, p5}, Lcom/google/protobuf/s0;->p(I)Ljava/lang/Object;

    move-result-object p5

    sget-object v0, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/j0;

    invoke-interface {p0, v1}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lcom/google/protobuf/j0;->f()Lcom/google/protobuf/MapFieldLite;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Lcom/google/protobuf/j0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    :cond_0
    invoke-interface {p0, p5}, Lcom/google/protobuf/j0;->e(Ljava/lang/Object;)Lcom/google/protobuf/h0;

    move-result-object p1

    invoke-interface {p0, v1}, Lcom/google/protobuf/j0;->h(Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    invoke-static {p2, p3, p8}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result p3

    iget p5, p8, Lcom/google/protobuf/e;->a:I

    if-ltz p5, :cond_7

    sub-int p6, p4, p3

    if-gt p5, p6, :cond_7

    add-int/2addr p5, p3

    iget-object p6, p1, Lcom/google/protobuf/h0;->b:Ljava/lang/Object;

    iget-object p7, p1, Lcom/google/protobuf/h0;->d:Ljava/lang/Object;

    move-object v0, p7

    :goto_0
    if-ge p3, p5, :cond_5

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_1

    invoke-static {p3, p2, v1, p8}, Lcom/google/protobuf/f;->j(I[BILcom/google/protobuf/e;)I

    move-result v1

    iget p3, p8, Lcom/google/protobuf/e;->a:I

    :cond_1
    move v2, v1

    ushr-int/lit8 v1, p3, 0x3

    and-int/lit8 v3, p3, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/google/protobuf/h0;->c:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->c()I

    move-result v1

    if-ne v3, v1, :cond_4

    iget-object v4, p1, Lcom/google/protobuf/h0;->c:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/s0;->m([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/e;)I

    move-result p3

    iget-object v0, p8, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/google/protobuf/h0;->a:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Lcom/google/protobuf/WireFormat$FieldType;->c()I

    move-result v1

    if-ne v3, v1, :cond_4

    iget-object v4, p1, Lcom/google/protobuf/h0;->a:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/s0;->m([BIILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/e;)I

    move-result p3

    iget-object p6, p8, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {p3, p2, v2, p4, p8}, Lcom/google/protobuf/f;->o(I[BIILcom/google/protobuf/e;)I

    move-result p3

    goto :goto_0

    :cond_5
    if-ne p3, p5, :cond_6

    invoke-virtual {p0, p6, v0}, Lcom/google/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p5

    :cond_6
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_7
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0
.end method

.method public final G(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/e;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v2, p5

    move/from16 v9, p6

    move/from16 v3, p7

    move-wide/from16 v6, p10

    move/from16 v10, p12

    move-object/from16 v11, p13

    add-int/lit8 v8, v10, 0x2

    iget-object v12, v0, Lcom/google/protobuf/s0;->a:[I

    aget v8, v12, v8

    const v12, 0xfffff

    and-int/2addr v8, v12

    int-to-long v12, v8

    const/4 v14, 0x2

    const/4 v15, 0x5

    sget-object v8, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6

    invoke-virtual {v0, v9, v10, v1}, Lcom/google/protobuf/s0;->A(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v10}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/s0;

    move-object v3, v12

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p13

    invoke-virtual/range {v2 .. v8}, Lcom/google/protobuf/s0;->H(Ljava/lang/Object;[BIIILcom/google/protobuf/e;)I

    move-result v2

    iput-object v12, v11, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v9, v10, v12}, Lcom/google/protobuf/s0;->S(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    if-nez v3, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/protobuf/e;->b:J

    invoke-static {v2, v3}, Lcom/google/protobuf/n;->c(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_2
    if-nez v3, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v2, v11, Lcom/google/protobuf/e;->a:I

    invoke-static {v2}, Lcom/google/protobuf/n;->b(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_3
    if-nez v3, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v3

    iget v4, v11, Lcom/google/protobuf/e;->a:I

    invoke-virtual {v0, v10}, Lcom/google/protobuf/s0;->o(I)Lcom/google/protobuf/M;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v4}, Lcom/google/protobuf/M;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/s0;->r(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v0

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/protobuf/P0;->c(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_1
    move v0, v3

    goto/16 :goto_7

    :pswitch_4
    if-ne v3, v14, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/f;->a([BILcom/google/protobuf/e;)I

    move-result v0

    iget-object v2, v11, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    invoke-virtual {v8, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_5
    if-ne v3, v14, :cond_6

    invoke-virtual {v0, v9, v10, v1}, Lcom/google/protobuf/s0;->A(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v10}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v3

    move-object v2, v8

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/f;->n(Ljava/lang/Object;Lcom/google/protobuf/C0;[BIILcom/google/protobuf/e;)I

    move-result v2

    invoke-virtual {v0, v1, v9, v10, v8}, Lcom/google/protobuf/s0;->S(Ljava/lang/Object;IILjava/lang/Object;)V

    :goto_2
    move v0, v2

    goto/16 :goto_7

    :pswitch_6
    if-ne v3, v14, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v2, v11, Lcom/google/protobuf/e;->a:I

    if-nez v2, :cond_2

    const-string v2, ""

    invoke-virtual {v8, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_4

    :cond_2
    const/high16 v3, 0x20000000

    and-int v3, p8, v3

    if-eqz v3, :cond_4

    add-int v3, v0, v2

    sget-object v5, Lcom/google/protobuf/b1;->a:Lcom/google/protobuf/a1;

    invoke-virtual {v5, v4, v0, v3}, Lcom/google/protobuf/Z0;->a([BII)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_3
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lcom/google/protobuf/T;->a:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v8, v1, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v0, v2

    :goto_4
    invoke-virtual {v8, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_7
    if-nez v3, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/protobuf/e;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_8
    if-ne v3, v15, :cond_6

    invoke-static {v5, v4}, Lcom/google/protobuf/f;->b(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v8, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_9
    const/4 v0, 0x1

    if-ne v3, v0, :cond_6

    invoke-static {v5, v4}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v8, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_a
    if-nez v3, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v2, v11, Lcom/google/protobuf/e;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_b
    if-nez v3, :cond_6

    invoke-static {v4, v5, v11}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/protobuf/e;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v6, v7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v8, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_c
    if-ne v3, v15, :cond_6

    invoke-static {v5, v4}, Lcom/google/protobuf/f;->b(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v8, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x4

    invoke-virtual {v8, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_d
    const/4 v0, 0x1

    if-ne v3, v0, :cond_6

    invoke-static {v5, v4}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v8, v1, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v0, v5, 0x8

    invoke-virtual {v8, v1, v12, v13, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :cond_6
    :goto_6
    move v0, v5

    :goto_7
    return v0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final H(Ljava/lang/Object;[BIIILcom/google/protobuf/e;)I
    .locals 30

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p6

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/s0;->l(Ljava/lang/Object;)V

    sget-object v9, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    move/from16 v0, p3

    move/from16 v1, p5

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0xfffff

    const/4 v6, 0x0

    :goto_0
    const/16 v16, 0x0

    if-ge v0, v13, :cond_1e

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v2, v11}, Lcom/google/protobuf/f;->j(I[BILcom/google/protobuf/e;)I

    move-result v0

    iget v2, v11, Lcom/google/protobuf/e;->a:I

    goto :goto_1

    :cond_0
    move/from16 v29, v2

    move v2, v0

    move/from16 v0, v29

    :goto_1
    ushr-int/lit8 v7, v2, 0x3

    and-int/lit8 v8, v2, 0x7

    iget v10, v15, Lcom/google/protobuf/s0;->d:I

    move/from16 p3, v0

    iget v0, v15, Lcom/google/protobuf/s0;->c:I

    move/from16 v20, v1

    const/4 v1, 0x3

    if-le v7, v3, :cond_2

    div-int/2addr v4, v1

    if-lt v7, v0, :cond_1

    if-gt v7, v10, :cond_1

    invoke-virtual {v15, v7, v4}, Lcom/google/protobuf/s0;->Q(II)I

    move-result v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    :goto_2
    move v4, v0

    const/4 v3, -0x1

    const/4 v10, 0x0

    goto :goto_4

    :cond_2
    if-lt v7, v0, :cond_3

    if-gt v7, v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v15, v7, v10}, Lcom/google/protobuf/s0;->Q(II)I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    const/4 v0, -0x1

    :goto_3
    move v4, v0

    const/4 v3, -0x1

    :goto_4
    if-ne v4, v3, :cond_4

    move/from16 v18, v3

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v28, v9

    move/from16 v21, v10

    move/from16 v6, v20

    move/from16 v29, v2

    move/from16 v2, p3

    move/from16 p3, v7

    move/from16 v7, v29

    goto/16 :goto_18

    :cond_4
    add-int/lit8 v0, v4, 0x1

    iget-object v3, v15, Lcom/google/protobuf/s0;->a:[I

    aget v0, v3, v0

    const/high16 v19, 0xff00000

    and-int v19, v0, v19

    ushr-int/lit8 v1, v19, 0x14

    const v17, 0xfffff

    and-int v10, v0, v17

    int-to-long v12, v10

    const/16 v10, 0x11

    move/from16 v22, v2

    if-gt v1, v10, :cond_10

    add-int/lit8 v10, v4, 0x2

    aget v3, v3, v10

    ushr-int/lit8 v10, v3, 0x14

    const/4 v2, 0x1

    shl-int v10, v2, v10

    move-wide/from16 v23, v12

    const v12, 0xfffff

    and-int/2addr v3, v12

    if-eq v3, v5, :cond_6

    if-eq v5, v12, :cond_5

    int-to-long v12, v5

    invoke-virtual {v9, v14, v12, v13, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v5, v3

    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v12, v3

    goto :goto_5

    :cond_6
    move v12, v5

    :goto_5
    move v13, v6

    const/4 v3, 0x5

    packed-switch v1, :pswitch_data_0

    move-object/from16 v2, p2

    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/16 v18, -0x1

    move v7, v4

    goto/16 :goto_13

    :pswitch_0
    const/4 v1, 0x3

    if-ne v8, v1, :cond_7

    invoke-virtual {v15, v4, v14}, Lcom/google/protobuf/s0;->z(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    shl-int/lit8 v0, v7, 0x3

    or-int/lit8 v5, v0, 0x4

    invoke-virtual {v15, v4}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/s0;

    move/from16 v6, p3

    move-object v1, v8

    move/from16 v3, v22

    move-object/from16 v2, p2

    move/from16 p3, v12

    const/16 v18, -0x1

    move v12, v3

    move v3, v6

    move v6, v4

    move/from16 v4, p4

    move/from16 v21, v7

    move v7, v6

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/s0;->H(Ljava/lang/Object;[BIIILcom/google/protobuf/e;)I

    move-result v0

    iput-object v8, v11, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    invoke-virtual {v15, v7, v14, v8}, Lcom/google/protobuf/s0;->R(ILjava/lang/Object;Ljava/lang/Object;)V

    or-int v1, v13, v10

    move v2, v1

    move-object/from16 v1, p2

    goto/16 :goto_d

    :cond_7
    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/16 v18, -0x1

    move v7, v4

    move-object/from16 v1, p2

    goto/16 :goto_9

    :pswitch_1
    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/16 v18, -0x1

    move v7, v4

    if-nez v8, :cond_8

    move-object/from16 v8, p2

    move-wide/from16 v4, v23

    invoke-static {v8, v6, v11}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v6

    iget-wide v0, v11, Lcom/google/protobuf/e;->b:J

    invoke-static {v0, v1}, Lcom/google/protobuf/n;->c(J)J

    move-result-wide v22

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v13, v10

    move v2, v0

    move v0, v6

    move-object v1, v8

    goto/16 :goto_d

    :cond_8
    move-object/from16 v8, p2

    goto/16 :goto_e

    :pswitch_2
    move-object/from16 v3, p2

    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/16 v18, -0x1

    move v7, v4

    move-wide/from16 v4, v23

    if-nez v8, :cond_b

    invoke-static {v3, v6, v11}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v11, Lcom/google/protobuf/e;->a:I

    invoke-static {v1}, Lcom/google/protobuf/n;->b(I)I

    move-result v1

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_7

    :pswitch_3
    move-object/from16 v3, p2

    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/16 v18, -0x1

    move v7, v4

    move-wide/from16 v4, v23

    if-nez v8, :cond_b

    invoke-static {v3, v6, v11}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v11, Lcom/google/protobuf/e;->a:I

    invoke-virtual {v15, v7}, Lcom/google/protobuf/s0;->o(I)Lcom/google/protobuf/M;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v2, v1}, Lcom/google/protobuf/M;->isInRange(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/s0;->r(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v2

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Lcom/google/protobuf/P0;->c(ILjava/lang/Object;)V

    move/from16 v5, p3

    move/from16 v1, p5

    move v4, v7

    move v2, v12

    move v6, v13

    move/from16 v13, p4

    move-object v12, v3

    move/from16 v3, v21

    goto/16 :goto_0

    :cond_a
    :goto_6
    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :pswitch_4
    move-object/from16 v3, p2

    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/4 v0, 0x2

    const/16 v18, -0x1

    move v7, v4

    move-wide/from16 v4, v23

    if-ne v8, v0, :cond_b

    invoke-static {v3, v6, v11}, Lcom/google/protobuf/f;->a([BILcom/google/protobuf/e;)I

    move-result v0

    iget-object v1, v11, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    move-object v6, v3

    goto :goto_8

    :pswitch_5
    move-object/from16 v3, p2

    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/4 v0, 0x2

    const/16 v18, -0x1

    move v7, v4

    if-ne v8, v0, :cond_b

    invoke-virtual {v15, v7, v14}, Lcom/google/protobuf/s0;->z(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v15, v7}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v1

    move-object v0, v8

    move-object/from16 v2, p2

    move-object v5, v3

    move v3, v6

    move/from16 v4, p4

    move-object v6, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/f;->n(Ljava/lang/Object;Lcom/google/protobuf/C0;[BIILcom/google/protobuf/e;)I

    move-result v0

    invoke-virtual {v15, v7, v14, v8}, Lcom/google/protobuf/s0;->R(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    or-int v1, v13, v10

    move v2, v1

    move-object v1, v6

    goto/16 :goto_d

    :cond_b
    move-object v1, v3

    :cond_c
    :goto_9
    move-object v8, v1

    goto/16 :goto_e

    :pswitch_6
    move-object/from16 v1, p2

    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/4 v2, 0x2

    const/16 v18, -0x1

    move v7, v4

    move-wide/from16 v4, v23

    if-ne v8, v2, :cond_c

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_d

    invoke-static {v1, v6, v11}, Lcom/google/protobuf/f;->g([BILcom/google/protobuf/e;)I

    move-result v0

    goto :goto_a

    :cond_d
    invoke-static {v1, v6, v11}, Lcom/google/protobuf/f;->h([BILcom/google/protobuf/e;)I

    move-result v0

    :goto_a
    iget-object v2, v11, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :pswitch_7
    move-object/from16 v1, p2

    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/16 v18, -0x1

    move v7, v4

    move-wide/from16 v4, v23

    if-nez v8, :cond_c

    invoke-static {v1, v6, v11}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v0

    iget-wide v2, v11, Lcom/google/protobuf/e;->b:J

    const-wide/16 v22, 0x0

    cmp-long v2, v2, v22

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_b

    :cond_e
    const/4 v2, 0x0

    :goto_b
    invoke-static {v14, v4, v5, v2}, Lcom/google/protobuf/X0;->p(Ljava/lang/Object;JZ)V

    goto :goto_c

    :pswitch_8
    move-object/from16 v1, p2

    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/16 v18, -0x1

    move v7, v4

    move-wide/from16 v4, v23

    if-ne v8, v3, :cond_c

    invoke-static {v6, v1}, Lcom/google/protobuf/f;->b(I[B)I

    move-result v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v6, 0x4

    :goto_c
    or-int v2, v13, v10

    :goto_d
    move v6, v2

    move-object v2, v1

    goto/16 :goto_12

    :pswitch_9
    move-object/from16 v1, p2

    move/from16 v6, p3

    move v0, v2

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/16 v18, -0x1

    move v7, v4

    move-wide/from16 v4, v23

    if-ne v8, v0, :cond_c

    invoke-static {v6, v1}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide v22

    move-object v0, v9

    move-object v8, v1

    move-object/from16 v1, p1

    move-wide v2, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v2, v8

    goto/16 :goto_f

    :goto_e
    move-object v2, v8

    goto/16 :goto_13

    :pswitch_a
    move-object/from16 v2, p2

    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/16 v18, -0x1

    move v7, v4

    move-wide/from16 v4, v23

    if-nez v8, :cond_f

    invoke-static {v2, v6, v11}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v11, Lcom/google/protobuf/e;->a:I

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_10

    :pswitch_b
    move-object/from16 v2, p2

    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/16 v18, -0x1

    move v7, v4

    move-wide/from16 v4, v23

    if-nez v8, :cond_f

    invoke-static {v2, v6, v11}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v6

    iget-wide v0, v11, Lcom/google/protobuf/e;->b:J

    move-wide/from16 v22, v0

    move-object v0, v9

    move-object/from16 v1, p1

    move-object v8, v2

    move-wide v2, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v13, v10

    move-object v2, v8

    goto :goto_11

    :pswitch_c
    move-object/from16 v2, p2

    move/from16 v6, p3

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/16 v18, -0x1

    move v7, v4

    move-wide/from16 v4, v23

    if-ne v8, v3, :cond_f

    invoke-static {v6, v2}, Lcom/google/protobuf/f;->b(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v4, v5, v0}, Lcom/google/protobuf/X0;->u(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v6, 0x4

    goto :goto_10

    :pswitch_d
    move/from16 v6, p3

    move v0, v2

    move/from16 v21, v7

    move/from16 p3, v12

    move/from16 v12, v22

    const/16 v18, -0x1

    move-object/from16 v2, p2

    move v7, v4

    move-wide/from16 v4, v23

    if-ne v8, v0, :cond_f

    invoke-static {v6, v2}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/protobuf/X0;->t(Ljava/lang/Object;JD)V

    :goto_f
    add-int/lit8 v0, v6, 0x8

    :goto_10
    or-int v1, v13, v10

    move v6, v0

    move v0, v1

    :goto_11
    move/from16 v29, v6

    move v6, v0

    move/from16 v0, v29

    :goto_12
    move/from16 v5, p3

    move/from16 v13, p4

    move/from16 v1, p5

    move v4, v7

    move/from16 v3, v21

    move/from16 v29, v12

    move-object v12, v2

    move/from16 v2, v29

    goto/16 :goto_0

    :cond_f
    :goto_13
    move/from16 v22, p3

    move v2, v6

    move v10, v7

    move-object/from16 v28, v9

    move v7, v12

    move/from16 v23, v13

    move/from16 p3, v21

    const/16 v21, 0x0

    move/from16 v6, p5

    goto/16 :goto_18

    :cond_10
    move-object/from16 v2, p2

    move/from16 v21, v7

    const/16 v18, -0x1

    move v7, v4

    move-wide v3, v12

    move/from16 v12, v22

    move/from16 v13, p3

    const/16 v10, 0x1b

    if-ne v1, v10, :cond_14

    const/4 v10, 0x2

    if-ne v8, v10, :cond_13

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/S;

    invoke-interface {v0}, Lcom/google/protobuf/S;->g()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0xa

    goto :goto_14

    :cond_11
    mul-int/lit8 v1, v1, 0x2

    :goto_14
    invoke-interface {v0, v1}, Lcom/google/protobuf/S;->b(I)Lcom/google/protobuf/S;

    move-result-object v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_12
    move-object v8, v0

    invoke-virtual {v15, v7}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v0

    move v1, v12

    move-object/from16 v2, p2

    move v3, v13

    move/from16 v4, p4

    move/from16 v22, v5

    move-object v5, v8

    move/from16 v23, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/f;->e(Lcom/google/protobuf/C0;I[BIILcom/google/protobuf/S;Lcom/google/protobuf/e;)I

    move-result v0

    move/from16 v13, p4

    move/from16 v1, p5

    move v4, v7

    move v2, v12

    move/from16 v3, v21

    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v12, p2

    goto/16 :goto_0

    :cond_13
    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v17, v7

    move-object/from16 v28, v9

    move/from16 v26, v12

    move v15, v13

    move/from16 p3, v21

    const/16 v21, 0x0

    goto/16 :goto_15

    :cond_14
    move/from16 v22, v5

    move/from16 v23, v6

    const/16 v2, 0x31

    if-gt v1, v2, :cond_15

    int-to-long v5, v0

    move-object/from16 v0, p0

    move v10, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v24, v3

    move v3, v13

    move/from16 v4, p4

    move-wide/from16 v26, v5

    move v5, v12

    move/from16 v6, v21

    move/from16 v17, v7

    move/from16 p3, v21

    move v7, v8

    move/from16 v8, v17

    move-object/from16 v28, v9

    move/from16 v19, v10

    const/16 v21, 0x0

    move-wide/from16 v9, v26

    move/from16 v11, v19

    move/from16 v26, v12

    move v15, v13

    move-wide/from16 v12, v24

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/protobuf/s0;->I(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/e;)I

    move-result v0

    if-eq v0, v15, :cond_18

    goto :goto_16

    :cond_15
    move/from16 v19, v1

    move-wide/from16 v24, v3

    move/from16 v17, v7

    move-object/from16 v28, v9

    move/from16 v26, v12

    move v15, v13

    move/from16 p3, v21

    const/16 v21, 0x0

    const/16 v1, 0x32

    move/from16 v9, v19

    if-ne v9, v1, :cond_17

    const/4 v1, 0x2

    if-ne v8, v1, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move-wide/from16 v6, v24

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/google/protobuf/s0;->F(Ljava/lang/Object;[BIIIJLcom/google/protobuf/e;)I

    move-result v0

    if-eq v0, v15, :cond_18

    goto :goto_16

    :cond_16
    :goto_15
    move/from16 v6, p5

    move v2, v15

    goto :goto_17

    :cond_17
    move v10, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v26

    move/from16 v6, p3

    move v7, v8

    move v8, v10

    move-wide/from16 v10, v24

    move/from16 v12, v17

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/protobuf/s0;->G(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/e;)I

    move-result v0

    if-eq v0, v15, :cond_18

    :goto_16
    move-object/from16 v8, p0

    move-object/from16 v12, p1

    move/from16 v11, p3

    move/from16 v1, p5

    move-object/from16 v9, p6

    move/from16 v4, v17

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v7, v26

    goto/16 :goto_1b

    :cond_18
    move/from16 v6, p5

    move v2, v0

    :goto_17
    move/from16 v10, v17

    move/from16 v7, v26

    :goto_18
    if-ne v7, v6, :cond_19

    if-eqz v6, :cond_19

    move-object/from16 v8, p0

    move-object/from16 v12, p1

    move v9, v7

    move/from16 v5, v22

    move/from16 v0, v23

    const v1, 0xfffff

    move v7, v6

    move v6, v2

    goto/16 :goto_1c

    :cond_19
    move-object/from16 v8, p0

    iget-boolean v0, v8, Lcom/google/protobuf/s0;->f:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/w;

    move-result-object v0

    move-object/from16 v9, p6

    iget-object v1, v9, Lcom/google/protobuf/e;->d:Lcom/google/protobuf/w;

    if-eq v1, v0, :cond_1c

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/protobuf/v;

    iget-object v3, v8, Lcom/google/protobuf/s0;->e:Lcom/google/protobuf/p0;

    move/from16 v11, p3

    invoke-direct {v0, v11, v3}, Lcom/google/protobuf/v;-><init>(ILjava/lang/Object;)V

    iget-object v1, v1, Lcom/google/protobuf/w;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/I;

    if-nez v0, :cond_1a

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/s0;->r(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/f;->i(I[BIILcom/google/protobuf/P0;Lcom/google/protobuf/e;)I

    move-result v0

    move-object/from16 v12, p1

    goto :goto_1a

    :cond_1a
    move-object/from16 v12, p1

    move-object v0, v12

    check-cast v0, Lcom/google/protobuf/G;

    iget-object v1, v0, Lcom/google/protobuf/G;->extensions:Lcom/google/protobuf/B;

    iget-boolean v2, v1, Lcom/google/protobuf/B;->b:Z

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Lcom/google/protobuf/B;->a()Lcom/google/protobuf/B;

    move-result-object v1

    iput-object v1, v0, Lcom/google/protobuf/G;->extensions:Lcom/google/protobuf/B;

    :cond_1b
    throw v16

    :cond_1c
    move-object/from16 v12, p1

    move/from16 v11, p3

    goto :goto_19

    :cond_1d
    move-object/from16 v12, p1

    move/from16 v11, p3

    move-object/from16 v9, p6

    :goto_19
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/s0;->r(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/f;->i(I[BIILcom/google/protobuf/P0;Lcom/google/protobuf/e;)I

    move-result v0

    :goto_1a
    move v1, v6

    move v4, v10

    move/from16 v5, v22

    move/from16 v6, v23

    :goto_1b
    move/from16 v13, p4

    move v2, v7

    move-object v15, v8

    move v3, v11

    move-object v14, v12

    move-object/from16 v12, p2

    move-object v11, v9

    move-object/from16 v9, v28

    goto/16 :goto_0

    :cond_1e
    move/from16 v20, v1

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v28, v9

    move-object v12, v14

    move-object v8, v15

    move v6, v0

    move v9, v2

    move/from16 v7, v20

    move/from16 v0, v23

    const v1, 0xfffff

    :goto_1c
    if-eq v5, v1, :cond_1f

    int-to-long v1, v5

    move-object/from16 v3, v28

    invoke-virtual {v3, v12, v1, v2, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1f
    iget v0, v8, Lcom/google/protobuf/s0;->k:I

    move v10, v0

    move-object/from16 v3, v16

    :goto_1d
    iget v0, v8, Lcom/google/protobuf/s0;->l:I

    if-ge v10, v0, :cond_20

    iget-object v0, v8, Lcom/google/protobuf/s0;->j:[I

    aget v2, v0, v10

    iget-object v4, v8, Lcom/google/protobuf/s0;->o:Lcom/google/protobuf/O0;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/s0;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/O0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/protobuf/P0;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1d

    :cond_20
    if-eqz v3, :cond_21

    iget-object v0, v8, Lcom/google/protobuf/s0;->o:Lcom/google/protobuf/O0;

    invoke-virtual {v0, v12, v3}, Lcom/google/protobuf/O0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    if-nez v7, :cond_23

    move/from16 v0, p4

    if-ne v6, v0, :cond_22

    goto :goto_1e

    :cond_22
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_23
    move/from16 v0, p4

    if-gt v6, v0, :cond_24

    if-ne v9, v7, :cond_24

    :goto_1e
    return v6

    :cond_24
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final I(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/e;)I
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/protobuf/S;

    invoke-interface {v12}, Lcom/google/protobuf/S;->g()Z

    move-result v13

    const/4 v14, 0x2

    if-nez v13, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    mul-int/2addr v13, v14

    :goto_0
    invoke-interface {v12, v13}, Lcom/google/protobuf/S;->b(I)Lcom/google/protobuf/S;

    move-result-object v12

    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v13, 0x5

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_1d

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_3d

    invoke-virtual {p0, v8}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v0

    and-int/lit8 v1, v2, -0x8

    or-int/lit8 v1, v1, 0x4

    invoke-interface {v0}, Lcom/google/protobuf/C0;->i()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v0

    check-cast v8, Lcom/google/protobuf/s0;

    move-object/from16 p6, v8

    move-object/from16 p7, v6

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move/from16 p11, v1

    move-object/from16 p12, p14

    invoke-virtual/range {p6 .. p12}, Lcom/google/protobuf/s0;->H(Ljava/lang/Object;[BIIILcom/google/protobuf/e;)I

    move-result v4

    iput-object v6, v7, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    invoke-interface {v0, v6}, Lcom/google/protobuf/C0;->d(Ljava/lang/Object;)V

    iput-object v6, v7, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge v4, v5, :cond_3d

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v6

    iget v9, v7, Lcom/google/protobuf/e;->a:I

    if-eq v2, v9, :cond_2

    goto/16 :goto_1d

    :cond_2
    invoke-interface {v0}, Lcom/google/protobuf/C0;->i()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 p6, v8

    move-object/from16 p7, v4

    move-object/from16 p8, p2

    move/from16 p9, v6

    move/from16 p10, p4

    move/from16 p11, v1

    move-object/from16 p12, p14

    invoke-virtual/range {p6 .. p12}, Lcom/google/protobuf/s0;->H(Ljava/lang/Object;[BIIILcom/google/protobuf/e;)I

    move-result v6

    iput-object v4, v7, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    invoke-interface {v0, v4}, Lcom/google/protobuf/C0;->d(Ljava/lang/Object;)V

    iput-object v4, v7, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_1

    :pswitch_1
    if-ne v6, v14, :cond_5

    check-cast v12, Lcom/google/protobuf/d0;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/e;->a:I

    add-int/2addr v1, v0

    :goto_2
    if-ge v0, v1, :cond_3

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/protobuf/e;->b:J

    invoke-static {v4, v5}, Lcom/google/protobuf/n;->c(J)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/protobuf/d0;->i(J)V

    goto :goto_2

    :cond_3
    if-ne v0, v1, :cond_4

    goto/16 :goto_1e

    :cond_4
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_5
    if-nez v6, :cond_3d

    check-cast v12, Lcom/google/protobuf/d0;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/protobuf/e;->b:J

    invoke-static {v8, v9}, Lcom/google/protobuf/n;->c(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/protobuf/d0;->i(J)V

    :goto_3
    if-ge v0, v5, :cond_3e

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/e;->a:I

    if-eq v2, v4, :cond_6

    goto/16 :goto_1e

    :cond_6
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/protobuf/e;->b:J

    invoke-static {v8, v9}, Lcom/google/protobuf/n;->c(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/protobuf/d0;->i(J)V

    goto :goto_3

    :pswitch_2
    if-ne v6, v14, :cond_9

    check-cast v12, Lcom/google/protobuf/K;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/e;->a:I

    add-int/2addr v1, v0

    :goto_4
    if-ge v0, v1, :cond_7

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v2, v7, Lcom/google/protobuf/e;->a:I

    invoke-static {v2}, Lcom/google/protobuf/n;->b(I)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/protobuf/K;->i(I)V

    goto :goto_4

    :cond_7
    if-ne v0, v1, :cond_8

    goto/16 :goto_1e

    :cond_8
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_9
    if-nez v6, :cond_3d

    check-cast v12, Lcom/google/protobuf/K;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/e;->a:I

    invoke-static {v1}, Lcom/google/protobuf/n;->b(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/protobuf/K;->i(I)V

    :goto_5
    if-ge v0, v5, :cond_3e

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/e;->a:I

    if-eq v2, v4, :cond_a

    goto/16 :goto_1e

    :cond_a
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/e;->a:I

    invoke-static {v1}, Lcom/google/protobuf/n;->b(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/protobuf/K;->i(I)V

    goto :goto_5

    :pswitch_3
    if-ne v6, v14, :cond_b

    invoke-static {v3, v4, v12, v7}, Lcom/google/protobuf/f;->f([BILcom/google/protobuf/S;Lcom/google/protobuf/e;)I

    move-result v2

    goto :goto_6

    :cond_b
    if-nez v6, :cond_3d

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/f;->l(I[BIILcom/google/protobuf/S;Lcom/google/protobuf/e;)I

    move-result v2

    :goto_6
    invoke-virtual {p0, v8}, Lcom/google/protobuf/s0;->o(I)Lcom/google/protobuf/M;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/google/protobuf/s0;->o:Lcom/google/protobuf/O0;

    move-object/from16 p0, p1

    move/from16 p1, p6

    move-object/from16 p2, v12

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v0

    invoke-static/range {p0 .. p5}, Lcom/google/protobuf/D0;->w(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/M;Ljava/lang/Object;Lcom/google/protobuf/O0;)Ljava/lang/Object;

    move v0, v2

    goto/16 :goto_1e

    :pswitch_4
    if-ne v6, v14, :cond_3d

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/e;->a:I

    if-ltz v1, :cond_12

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_11

    if-nez v1, :cond_c

    sget-object v1, Lcom/google/protobuf/ByteString;->d:Lcom/google/protobuf/ByteString;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    invoke-static {v3, v0, v1}, Lcom/google/protobuf/ByteString;->j([BII)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/2addr v0, v1

    :goto_8
    if-ge v0, v5, :cond_3e

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/e;->a:I

    if-eq v2, v4, :cond_d

    goto/16 :goto_1e

    :cond_d
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/e;->a:I

    if-ltz v1, :cond_10

    array-length v4, v3

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_f

    if-nez v1, :cond_e

    sget-object v1, Lcom/google/protobuf/ByteString;->d:Lcom/google/protobuf/ByteString;

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-static {v3, v0, v1}, Lcom/google/protobuf/ByteString;->j([BII)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_10
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->f()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_11
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_12
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->f()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_5
    if-ne v6, v14, :cond_3d

    invoke-virtual {p0, v8}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v0

    move-object/from16 p6, v0

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/protobuf/f;->e(Lcom/google/protobuf/C0;I[BIILcom/google/protobuf/S;Lcom/google/protobuf/e;)I

    move-result v0

    goto/16 :goto_1e

    :pswitch_6
    if-ne v6, v14, :cond_3d

    const-wide/32 v0, 0x20000000

    and-long v0, p9, v0

    cmp-long v0, v0, v10

    const-string v1, ""

    if-nez v0, :cond_18

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v4, v7, Lcom/google/protobuf/e;->a:I

    if-ltz v4, :cond_17

    if-nez v4, :cond_13

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_13
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/protobuf/T;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/2addr v0, v4

    :goto_a
    if-ge v0, v5, :cond_3e

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v4

    iget v6, v7, Lcom/google/protobuf/e;->a:I

    if-eq v2, v6, :cond_14

    goto/16 :goto_1e

    :cond_14
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v4, v7, Lcom/google/protobuf/e;->a:I

    if-ltz v4, :cond_16

    if-nez v4, :cond_15

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    new-instance v6, Ljava/lang/String;

    sget-object v8, Lcom/google/protobuf/T;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v0, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_16
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->f()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_17
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->f()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_18
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v4, v7, Lcom/google/protobuf/e;->a:I

    if-ltz v4, :cond_1f

    if-nez v4, :cond_19

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    add-int v6, v0, v4

    sget-object v8, Lcom/google/protobuf/b1;->a:Lcom/google/protobuf/a1;

    invoke-virtual {v8, v3, v0, v6}, Lcom/google/protobuf/Z0;->a([BII)Z

    move-result v8

    if-eqz v8, :cond_1e

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/protobuf/T;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    move v0, v6

    :goto_c
    if-ge v0, v5, :cond_3e

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v4

    iget v6, v7, Lcom/google/protobuf/e;->a:I

    if-eq v2, v6, :cond_1a

    goto/16 :goto_1e

    :cond_1a
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v4, v7, Lcom/google/protobuf/e;->a:I

    if-ltz v4, :cond_1d

    if-nez v4, :cond_1b

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1b
    add-int v6, v0, v4

    sget-object v8, Lcom/google/protobuf/b1;->a:Lcom/google/protobuf/a1;

    invoke-virtual {v8, v3, v0, v6}, Lcom/google/protobuf/Z0;->a([BII)Z

    move-result v8

    if-eqz v8, :cond_1c

    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/protobuf/T;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v0, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1c
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->f()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1e
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->c()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_1f
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->f()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_7
    const/4 v0, 0x0

    if-ne v6, v14, :cond_24

    check-cast v12, Lcom/google/protobuf/g;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v1

    iget v2, v7, Lcom/google/protobuf/e;->a:I

    add-int/2addr v2, v1

    :goto_d
    if-ge v1, v2, :cond_21

    invoke-static {v3, v1, v7}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/protobuf/e;->b:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_20

    move v4, v9

    goto :goto_e

    :cond_20
    move v4, v0

    :goto_e
    invoke-virtual {v12, v4}, Lcom/google/protobuf/g;->i(Z)V

    goto :goto_d

    :cond_21
    if-ne v1, v2, :cond_23

    :cond_22
    :goto_f
    move v0, v1

    goto/16 :goto_1e

    :cond_23
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_24
    if-nez v6, :cond_3d

    check-cast v12, Lcom/google/protobuf/g;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v1

    iget-wide v13, v7, Lcom/google/protobuf/e;->b:J

    cmp-long v4, v13, v10

    if-eqz v4, :cond_25

    move v4, v9

    goto :goto_10

    :cond_25
    move v4, v0

    :goto_10
    invoke-virtual {v12, v4}, Lcom/google/protobuf/g;->i(Z)V

    :goto_11
    if-ge v1, v5, :cond_22

    invoke-static {v3, v1, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v4

    iget v6, v7, Lcom/google/protobuf/e;->a:I

    if-eq v2, v6, :cond_26

    goto :goto_f

    :cond_26
    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v1

    iget-wide v13, v7, Lcom/google/protobuf/e;->b:J

    cmp-long v4, v13, v10

    if-eqz v4, :cond_27

    move v4, v9

    goto :goto_12

    :cond_27
    move v4, v0

    :goto_12
    invoke-virtual {v12, v4}, Lcom/google/protobuf/g;->i(Z)V

    goto :goto_11

    :pswitch_8
    if-ne v6, v14, :cond_2a

    check-cast v12, Lcom/google/protobuf/K;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/e;->a:I

    add-int/2addr v1, v0

    :goto_13
    if-ge v0, v1, :cond_28

    invoke-static {v0, v3}, Lcom/google/protobuf/f;->b(I[B)I

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/protobuf/K;->i(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_13

    :cond_28
    if-ne v0, v1, :cond_29

    goto/16 :goto_1e

    :cond_29
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2a
    if-ne v6, v13, :cond_3d

    check-cast v12, Lcom/google/protobuf/K;

    invoke-static {v4, v3}, Lcom/google/protobuf/f;->b(I[B)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/protobuf/K;->i(I)V

    add-int/lit8 v0, v4, 0x4

    :goto_14
    if-ge v0, v5, :cond_3e

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/e;->a:I

    if-eq v2, v4, :cond_2b

    goto/16 :goto_1e

    :cond_2b
    invoke-static {v1, v3}, Lcom/google/protobuf/f;->b(I[B)I

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/protobuf/K;->i(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_14

    :pswitch_9
    if-ne v6, v14, :cond_2e

    check-cast v12, Lcom/google/protobuf/d0;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/e;->a:I

    add-int/2addr v1, v0

    :goto_15
    if-ge v0, v1, :cond_2c

    invoke-static {v0, v3}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/protobuf/d0;->i(J)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_15

    :cond_2c
    if-ne v0, v1, :cond_2d

    goto/16 :goto_1e

    :cond_2d
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_2e
    if-ne v6, v9, :cond_3d

    check-cast v12, Lcom/google/protobuf/d0;

    invoke-static {v4, v3}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/google/protobuf/d0;->i(J)V

    add-int/lit8 v0, v4, 0x8

    :goto_16
    if-ge v0, v5, :cond_3e

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/e;->a:I

    if-eq v2, v4, :cond_2f

    goto/16 :goto_1e

    :cond_2f
    invoke-static {v1, v3}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/protobuf/d0;->i(J)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_16

    :pswitch_a
    if-ne v6, v14, :cond_30

    invoke-static {v3, v4, v12, v7}, Lcom/google/protobuf/f;->f([BILcom/google/protobuf/S;Lcom/google/protobuf/e;)I

    move-result v0

    goto/16 :goto_1e

    :cond_30
    if-nez v6, :cond_3d

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/protobuf/f;->l(I[BIILcom/google/protobuf/S;Lcom/google/protobuf/e;)I

    move-result v0

    goto/16 :goto_1e

    :pswitch_b
    if-ne v6, v14, :cond_33

    check-cast v12, Lcom/google/protobuf/d0;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/e;->a:I

    add-int/2addr v1, v0

    :goto_17
    if-ge v0, v1, :cond_31

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v0

    iget-wide v4, v7, Lcom/google/protobuf/e;->b:J

    invoke-virtual {v12, v4, v5}, Lcom/google/protobuf/d0;->i(J)V

    goto :goto_17

    :cond_31
    if-ne v0, v1, :cond_32

    goto/16 :goto_1e

    :cond_32
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_33
    if-nez v6, :cond_3d

    check-cast v12, Lcom/google/protobuf/d0;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/protobuf/e;->b:J

    invoke-virtual {v12, v8, v9}, Lcom/google/protobuf/d0;->i(J)V

    :goto_18
    if-ge v0, v5, :cond_3e

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/e;->a:I

    if-eq v2, v4, :cond_34

    goto/16 :goto_1e

    :cond_34
    invoke-static {v3, v1, v7}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v0

    iget-wide v8, v7, Lcom/google/protobuf/e;->b:J

    invoke-virtual {v12, v8, v9}, Lcom/google/protobuf/d0;->i(J)V

    goto :goto_18

    :pswitch_c
    if-ne v6, v14, :cond_37

    check-cast v12, Lcom/google/protobuf/C;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/e;->a:I

    add-int/2addr v1, v0

    :goto_19
    if-ge v0, v1, :cond_35

    invoke-static {v0, v3}, Lcom/google/protobuf/f;->b(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v12, v2}, Lcom/google/protobuf/C;->i(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_19

    :cond_35
    if-ne v0, v1, :cond_36

    goto/16 :goto_1e

    :cond_36
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_37
    if-ne v6, v13, :cond_3d

    check-cast v12, Lcom/google/protobuf/C;

    invoke-static {v4, v3}, Lcom/google/protobuf/f;->b(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/protobuf/C;->i(F)V

    add-int/lit8 v0, v4, 0x4

    :goto_1a
    if-ge v0, v5, :cond_3e

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/e;->a:I

    if-eq v2, v4, :cond_38

    goto :goto_1e

    :cond_38
    invoke-static {v1, v3}, Lcom/google/protobuf/f;->b(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v12, v0}, Lcom/google/protobuf/C;->i(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_1a

    :pswitch_d
    if-ne v6, v14, :cond_3b

    check-cast v12, Lcom/google/protobuf/t;

    invoke-static {v3, v4, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v7, Lcom/google/protobuf/e;->a:I

    add-int/2addr v1, v0

    :goto_1b
    if-ge v0, v1, :cond_39

    invoke-static {v0, v3}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/protobuf/t;->i(D)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_1b

    :cond_39
    if-ne v0, v1, :cond_3a

    goto :goto_1e

    :cond_3a
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->j()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_3b
    if-ne v6, v9, :cond_3d

    check-cast v12, Lcom/google/protobuf/t;

    invoke-static {v4, v3}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-virtual {v12, v0, v1}, Lcom/google/protobuf/t;->i(D)V

    add-int/lit8 v0, v4, 0x8

    :goto_1c
    if-ge v0, v5, :cond_3e

    invoke-static {v3, v0, v7}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v1

    iget v4, v7, Lcom/google/protobuf/e;->a:I

    if-eq v2, v4, :cond_3c

    goto :goto_1e

    :cond_3c
    invoke-static {v1, v3}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/protobuf/t;->i(D)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_1c

    :cond_3d
    :goto_1d
    move v0, v4

    :cond_3e
    :goto_1e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final J(Ljava/lang/Object;JLcom/google/protobuf/o;Lcom/google/protobuf/C0;Lcom/google/protobuf/w;)V
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/c0;

    invoke-virtual {p0, p2, p3, p1}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget p1, p4, Lcom/google/protobuf/o;->b:I

    and-int/lit8 p2, p1, 0x7

    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    :cond_0
    invoke-interface {p5}, Lcom/google/protobuf/C0;->i()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, p2, p5, p6}, Lcom/google/protobuf/o;->c(Ljava/lang/Object;Lcom/google/protobuf/C0;Lcom/google/protobuf/w;)V

    invoke-interface {p5, p2}, Lcom/google/protobuf/C0;->d(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p4, Lcom/google/protobuf/o;->a:Lcom/google/protobuf/n;

    invoke-virtual {p2}, Lcom/google/protobuf/n;->e()Z

    move-result p3

    if-nez p3, :cond_2

    iget p3, p4, Lcom/google/protobuf/o;->d:I

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/n;->x()I

    move-result p2

    if-eq p2, p1, :cond_0

    iput p2, p4, Lcom/google/protobuf/o;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final K(Ljava/lang/Object;ILcom/google/protobuf/o;Lcom/google/protobuf/C0;Lcom/google/protobuf/w;)V
    .locals 2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    iget-object p0, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/c0;

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget p1, p3, Lcom/google/protobuf/o;->b:I

    and-int/lit8 p2, p1, 0x7

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :cond_0
    invoke-interface {p4}, Lcom/google/protobuf/C0;->i()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2, p4, p5}, Lcom/google/protobuf/o;->d(Ljava/lang/Object;Lcom/google/protobuf/C0;Lcom/google/protobuf/w;)V

    invoke-interface {p4, p2}, Lcom/google/protobuf/C0;->d(Ljava/lang/Object;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p3, Lcom/google/protobuf/o;->a:Lcom/google/protobuf/n;

    invoke-virtual {p2}, Lcom/google/protobuf/n;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p3, Lcom/google/protobuf/o;->d:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/google/protobuf/n;->x()I

    move-result p2

    if-eq p2, p1, :cond_0

    iput p2, p3, Lcom/google/protobuf/o;->d:I

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0
.end method

.method public final L(Ljava/lang/Object;ILcom/google/protobuf/o;)V
    .locals 4

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    const v2, 0xfffff

    if-eqz v0, :cond_1

    and-int p0, p2, v2

    int-to-long v2, p0

    invoke-virtual {p3, v1}, Lcom/google/protobuf/o;->x(I)V

    iget-object p0, p3, Lcom/google/protobuf/o;->a:Lcom/google/protobuf/n;

    invoke-virtual {p0}, Lcom/google/protobuf/n;->w()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p1, p0}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean p0, p0, Lcom/google/protobuf/s0;->g:Z

    if-eqz p0, :cond_2

    and-int p0, p2, v2

    int-to-long v2, p0

    invoke-virtual {p3, v1}, Lcom/google/protobuf/o;->x(I)V

    iget-object p0, p3, Lcom/google/protobuf/o;->a:Lcom/google/protobuf/n;

    invoke-virtual {p0}, Lcom/google/protobuf/n;->v()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p1, p0}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    and-int p0, p2, v2

    int-to-long v0, p0

    invoke-virtual {p3}, Lcom/google/protobuf/o;->f()Lcom/google/protobuf/ByteString;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final M(Ljava/lang/Object;ILcom/google/protobuf/o;)V
    .locals 4

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const v3, 0xfffff

    iget-object p0, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/c0;

    if-eqz v0, :cond_1

    and-int/2addr p2, v3

    int-to-long v2, p2

    invoke-virtual {p0, v2, v3, p1}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0, v1}, Lcom/google/protobuf/o;->t(Ljava/util/List;Z)V

    goto :goto_1

    :cond_1
    and-int/2addr p2, v3

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0, v2}, Lcom/google/protobuf/o;->t(Ljava/util/List;Z)V

    :goto_1
    return-void
.end method

.method public final O(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/s0;->a:[I

    aget p0, p0, p1

    const p1, 0xfffff

    and-int/2addr p1, p0

    int-to-long v0, p1

    const-wide/32 v2, 0xfffff

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    const/4 p1, 0x1

    shl-int p0, p1, p0

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p0, v0, v1, p2}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    return-void
.end method

.method public final P(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/protobuf/s0;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p1, v0, v1, p3}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    return-void
.end method

.method public final Q(II)I
    .locals 4

    iget-object p0, p0, Lcom/google/protobuf/s0;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final R(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/protobuf/s0;->T(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    return-void
.end method

.method public final S(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/google/protobuf/s0;->T(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    invoke-virtual {v2, p1, v0, v1, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p3, p1}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    return-void
.end method

.method public final T(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/protobuf/s0;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final U(Ljava/lang/Object;Lcom/google/protobuf/s;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v4, v0, Lcom/google/protobuf/s0;->f:Z

    iget-object v5, v0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/x;

    if-eqz v4, :cond_0

    invoke-virtual {v5, v1}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object v4

    iget-object v6, v4, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {v6}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/google/protobuf/B;->i()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Lcom/google/protobuf/s0;->a:[I

    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v8, :cond_5

    invoke-virtual {v0, v10}, Lcom/google/protobuf/s0;->T(I)I

    move-result v11

    aget v12, v7, v10

    :goto_2
    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Lcom/google/protobuf/x;->a(Ljava/util/Map$Entry;)V

    if-ltz v12, :cond_2

    invoke-virtual {v5, v6}, Lcom/google/protobuf/x;->j(Ljava/util/Map$Entry;)V

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    const/high16 v13, 0xff00000

    and-int/2addr v13, v11

    ushr-int/lit8 v13, v13, 0x14

    const/16 v14, 0x3f

    const/4 v15, 0x1

    const v16, 0xfffff

    packed-switch v13, :pswitch_data_0

    :cond_3
    :goto_3
    move-object/from16 v17, v4

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int v11, v11, v16

    int-to-long v13, v11

    invoke-static {v13, v14, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v10}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v13

    invoke-virtual {v2, v12, v13, v11}, Lcom/google/protobuf/s;->e(ILcom/google/protobuf/C0;Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    and-int v11, v11, v16

    move-object/from16 v17, v4

    int-to-long v3, v11

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v3

    shl-long v15, v3, v15

    shr-long/2addr v3, v14

    xor-long/2addr v3, v15

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->H(IJ)V

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->F(II)V

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v3

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->u(IJ)V

    goto/16 :goto_4

    :pswitch_4
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->s(II)V

    goto/16 :goto_4

    :pswitch_5
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->w(II)V

    goto/16 :goto_4

    :pswitch_6
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->F(II)V

    goto/16 :goto_4

    :pswitch_7
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2, v12, v3}, Lcom/google/protobuf/s;->a(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_4

    :pswitch_8
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v10}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v4

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    check-cast v3, Lcom/google/protobuf/p0;

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->y(ILcom/google/protobuf/p0;Lcom/google/protobuf/C0;)V

    goto/16 :goto_4

    :pswitch_9
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3, v2}, Lcom/google/protobuf/s0;->W(ILjava/lang/Object;Lcom/google/protobuf/s;)V

    goto/16 :goto_4

    :pswitch_a
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->o(IZ)V

    goto/16 :goto_4

    :pswitch_b
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->s(II)V

    goto/16 :goto_4

    :pswitch_c
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v3

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->u(IJ)V

    goto/16 :goto_4

    :pswitch_d
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->w(II)V

    goto/16 :goto_4

    :pswitch_e
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v3

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->H(IJ)V

    goto/16 :goto_4

    :pswitch_f
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v3

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->H(IJ)V

    goto/16 :goto_4

    :pswitch_10
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->s(II)V

    goto/16 :goto_4

    :pswitch_11
    move-object/from16 v17, v4

    invoke-virtual {v0, v12, v10, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->u(IJ)V

    goto/16 :goto_4

    :pswitch_12
    move-object/from16 v17, v4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v12, v3, v10}, Lcom/google/protobuf/s0;->V(Lcom/google/protobuf/s;ILjava/lang/Object;I)V

    goto/16 :goto_4

    :pswitch_13
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v10}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v11

    invoke-static {v3, v4, v2, v11}, Lcom/google/protobuf/D0;->I(ILjava/util/List;Lcom/google/protobuf/s;Lcom/google/protobuf/C0;)V

    goto/16 :goto_4

    :pswitch_14
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->P(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_15
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->O(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_16
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->N(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_17
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->M(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_18
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->E(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_19
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->R(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_1a
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->B(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_1b
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->F(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_1c
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->G(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_1d
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->J(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_1e
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->S(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_1f
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->K(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_20
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->H(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_21
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v15}, Lcom/google/protobuf/D0;->D(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_22
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->P(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_23
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->O(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_24
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->N(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_25
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->M(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_26
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->E(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_27
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->R(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_28
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2}, Lcom/google/protobuf/D0;->C(ILjava/util/List;Lcom/google/protobuf/s;)V

    goto/16 :goto_4

    :pswitch_29
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v10}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v11

    invoke-static {v3, v4, v2, v11}, Lcom/google/protobuf/D0;->L(ILjava/util/List;Lcom/google/protobuf/s;Lcom/google/protobuf/C0;)V

    goto/16 :goto_4

    :pswitch_2a
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2}, Lcom/google/protobuf/D0;->Q(ILjava/util/List;Lcom/google/protobuf/s;)V

    goto/16 :goto_4

    :pswitch_2b
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->B(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_2c
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->F(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_2d
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->G(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_2e
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->J(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_2f
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->S(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_30
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->K(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_31
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->H(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_32
    move-object/from16 v17, v4

    aget v3, v7, v10

    and-int v4, v11, v16

    int-to-long v11, v4

    invoke-static {v11, v12, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v9}, Lcom/google/protobuf/D0;->D(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_4

    :pswitch_33
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v10}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v4

    invoke-virtual {v2, v12, v4, v3}, Lcom/google/protobuf/s;->e(ILcom/google/protobuf/C0;Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_34
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v3

    shl-long v15, v3, v15

    shr-long/2addr v3, v14

    xor-long/2addr v3, v15

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->H(IJ)V

    goto/16 :goto_4

    :pswitch_35
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->F(II)V

    goto/16 :goto_4

    :pswitch_36
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v3

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->u(IJ)V

    goto/16 :goto_4

    :pswitch_37
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->s(II)V

    goto/16 :goto_4

    :pswitch_38
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->w(II)V

    goto/16 :goto_4

    :pswitch_39
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->F(II)V

    goto/16 :goto_4

    :pswitch_3a
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2, v12, v3}, Lcom/google/protobuf/s;->a(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_4

    :pswitch_3b
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v10}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v4

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    check-cast v3, Lcom/google/protobuf/p0;

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->y(ILcom/google/protobuf/p0;Lcom/google/protobuf/C0;)V

    goto/16 :goto_4

    :pswitch_3c
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3, v2}, Lcom/google/protobuf/s0;->W(ILjava/lang/Object;Lcom/google/protobuf/s;)V

    goto/16 :goto_4

    :pswitch_3d
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->g(JLjava/lang/Object;)Z

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->o(IZ)V

    goto/16 :goto_4

    :pswitch_3e
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->s(II)V

    goto/16 :goto_4

    :pswitch_3f
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v3

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->u(IJ)V

    goto/16 :goto_4

    :pswitch_40
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->w(II)V

    goto :goto_4

    :pswitch_41
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v3

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->H(IJ)V

    goto :goto_4

    :pswitch_42
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v3

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->H(IJ)V

    goto :goto_4

    :pswitch_43
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->l(JLjava/lang/Object;)F

    move-result v3

    iget-object v4, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v4, v12, v3}, Lcom/google/protobuf/r;->s(II)V

    goto :goto_4

    :pswitch_44
    move-object/from16 v17, v4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    and-int v3, v11, v16

    int-to-long v3, v3

    invoke-static {v3, v4, v1}, Lcom/google/protobuf/X0;->k(JLjava/lang/Object;)D

    move-result-wide v3

    iget-object v11, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    invoke-virtual {v11, v12, v3, v4}, Lcom/google/protobuf/r;->u(IJ)V

    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x3

    move-object/from16 v4, v17

    goto/16 :goto_1

    :cond_5
    move-object/from16 v17, v4

    :goto_5
    if-eqz v6, :cond_7

    invoke-virtual {v5, v6}, Lcom/google/protobuf/x;->j(Ljava/util/Map$Entry;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    iget-object v0, v0, Lcom/google/protobuf/s0;->o:Lcom/google/protobuf/O0;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/O0;->s(Ljava/lang/Object;Lcom/google/protobuf/s;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final V(Lcom/google/protobuf/s;ILjava/lang/Object;I)V
    .locals 2

    if-eqz p3, :cond_0

    invoke-virtual {p0, p4}, Lcom/google/protobuf/s0;->p(I)Ljava/lang/Object;

    move-result-object p4

    iget-object p0, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/j0;

    invoke-interface {p0, p4}, Lcom/google/protobuf/j0;->e(Ljava/lang/Object;)Lcom/google/protobuf/h0;

    move-result-object p4

    invoke-interface {p0, p3}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object p0

    iget-object p1, p1, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/google/protobuf/r;->E(II)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/google/protobuf/i0;->a(Lcom/google/protobuf/h0;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/r;->G(I)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p4, v0, p3}, Lcom/google/protobuf/i0;->b(Lcom/google/protobuf/r;Lcom/google/protobuf/h0;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    invoke-static {p1}, Lcom/google/protobuf/s0;->l(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/s0;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/s0;->T(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v3, v3

    aget v1, v1, v0

    const/high16 v5, 0xff00000

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x14

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/s0;->y(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, p1, v2}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/s0;->y(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, p1, v2}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/protobuf/D0;->a:Ljava/lang/Class;

    invoke-static {v3, v4, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v5, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/j0;

    invoke-interface {v5, v1, v2}, Lcom/google/protobuf/j0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/c0;

    invoke-virtual {v1, v3, v4, p1, p2}, Lcom/google/protobuf/c0;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/s0;->x(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/X0;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/X0;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/protobuf/s0;->x(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, p1, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->g(JLjava/lang/Object;)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/protobuf/X0;->p(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/X0;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v1

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/X0;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/X0;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->l(JLjava/lang/Object;)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/protobuf/X0;->u(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v4, p2}, Lcom/google/protobuf/X0;->k(JLjava/lang/Object;)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/protobuf/X0;->t(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/google/protobuf/D0;->a:Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/protobuf/s0;->o:Lcom/google/protobuf/O0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/O0;->k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/O0;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/s0;->f:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/x;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/D0;->y(Lcom/google/protobuf/x;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Lcom/google/protobuf/s;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v0, Lcom/google/protobuf/s0;->h:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p2}, Lcom/google/protobuf/s0;->U(Ljava/lang/Object;Lcom/google/protobuf/s;)V

    goto/16 :goto_8

    :cond_0
    iget-boolean v4, v0, Lcom/google/protobuf/s0;->f:Z

    iget-object v5, v0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/x;

    if-eqz v4, :cond_1

    invoke-virtual {v5, v1}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object v4

    iget-object v6, v4, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {v6}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Lcom/google/protobuf/B;->i()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, v0, Lcom/google/protobuf/s0;->a:[I

    array-length v8, v7

    const/4 v11, 0x0

    const v12, 0xfffff

    const/4 v13, 0x0

    :goto_1
    if-ge v11, v8, :cond_9

    invoke-virtual {v0, v11}, Lcom/google/protobuf/s0;->T(I)I

    move-result v14

    aget v15, v7, v11

    const/high16 v16, 0xff00000

    and-int v16, v14, v16

    ushr-int/lit8 v3, v16, 0x14

    const/16 v10, 0x11

    sget-object v9, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    if-gt v3, v10, :cond_3

    add-int/lit8 v10, v11, 0x2

    aget v10, v7, v10

    move-object/from16 v18, v6

    const v17, 0xfffff

    and-int v6, v10, v17

    if-eq v6, v12, :cond_2

    int-to-long v12, v6

    invoke-virtual {v9, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v13

    move v12, v6

    :cond_2
    ushr-int/lit8 v6, v10, 0x14

    const/4 v10, 0x1

    shl-int v6, v10, v6

    move v10, v6

    move-object/from16 v6, v18

    goto :goto_2

    :cond_3
    move-object/from16 v18, v6

    const/4 v10, 0x0

    :goto_2
    if-eqz v6, :cond_5

    invoke-virtual {v5, v6}, Lcom/google/protobuf/x;->a(Ljava/util/Map$Entry;)V

    if-ltz v15, :cond_5

    invoke-virtual {v5, v6}, Lcom/google/protobuf/x;->j(Ljava/util/Map$Entry;)V

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const v17, 0xfffff

    and-int v14, v14, v17

    move-object/from16 v20, v4

    move-object/from16 v19, v5

    int-to-long v4, v14

    iget-object v14, v2, Lcom/google/protobuf/s;->a:Lcom/google/protobuf/r;

    packed-switch v3, :pswitch_data_0

    :cond_6
    :goto_3
    const/4 v3, 0x0

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v4

    invoke-virtual {v2, v15, v4, v3}, Lcom/google/protobuf/s;->e(ILcom/google/protobuf/C0;Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v3

    const/4 v5, 0x1

    shl-long v9, v3, v5

    const/16 v5, 0x3f

    shr-long/2addr v3, v5

    xor-long/2addr v3, v9

    invoke-virtual {v14, v15, v3, v4}, Lcom/google/protobuf/r;->H(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    shl-int/lit8 v4, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v4

    invoke-virtual {v14, v15, v3}, Lcom/google/protobuf/r;->F(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {v14, v15, v3, v4}, Lcom/google/protobuf/r;->u(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-virtual {v14, v15, v3}, Lcom/google/protobuf/r;->s(II)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-virtual {v14, v15, v3}, Lcom/google/protobuf/r;->w(II)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-virtual {v14, v15, v3}, Lcom/google/protobuf/r;->F(II)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2, v15, v3}, Lcom/google/protobuf/s;->a(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v4

    check-cast v3, Lcom/google/protobuf/p0;

    invoke-virtual {v14, v15, v3, v4}, Lcom/google/protobuf/r;->y(ILcom/google/protobuf/p0;Lcom/google/protobuf/C0;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v15, v3, v2}, Lcom/google/protobuf/s0;->W(ILjava/lang/Object;Lcom/google/protobuf/s;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v14, v15, v3}, Lcom/google/protobuf/r;->o(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-virtual {v14, v15, v3}, Lcom/google/protobuf/r;->s(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {v14, v15, v3, v4}, Lcom/google/protobuf/r;->u(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-virtual {v14, v15, v3}, Lcom/google/protobuf/r;->w(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {v14, v15, v3, v4}, Lcom/google/protobuf/r;->H(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-virtual {v14, v15, v3, v4}, Lcom/google/protobuf/r;->H(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-virtual {v14, v15, v3}, Lcom/google/protobuf/r;->s(II)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    invoke-virtual {v14, v15, v3, v4}, Lcom/google/protobuf/r;->u(IJ)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v15, v3, v11}, Lcom/google/protobuf/s0;->V(Lcom/google/protobuf/s;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v11}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Lcom/google/protobuf/D0;->I(ILjava/util/List;Lcom/google/protobuf/s;Lcom/google/protobuf/C0;)V

    goto/16 :goto_3

    :pswitch_14
    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x1

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->P(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->O(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->N(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->M(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->E(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->R(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->B(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->F(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->G(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->J(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->S(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->K(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->H(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v10, 0x1

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->D(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto/16 :goto_3

    :pswitch_22
    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->P(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_4

    :pswitch_23
    const/4 v10, 0x0

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->O(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_4

    :pswitch_24
    const/4 v10, 0x0

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->N(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_4

    :pswitch_25
    const/4 v10, 0x0

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->M(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_4

    :pswitch_26
    const/4 v10, 0x0

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->E(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_4

    :pswitch_27
    const/4 v10, 0x0

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v10}, Lcom/google/protobuf/D0;->R(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    :goto_4
    move v3, v10

    goto/16 :goto_6

    :pswitch_28
    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2}, Lcom/google/protobuf/D0;->C(ILjava/util/List;Lcom/google/protobuf/s;)V

    goto/16 :goto_3

    :pswitch_29
    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v11}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v5

    invoke-static {v3, v4, v2, v5}, Lcom/google/protobuf/D0;->L(ILjava/util/List;Lcom/google/protobuf/s;Lcom/google/protobuf/C0;)V

    goto/16 :goto_3

    :pswitch_2a
    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2}, Lcom/google/protobuf/D0;->Q(ILjava/util/List;Lcom/google/protobuf/s;)V

    goto/16 :goto_3

    :pswitch_2b
    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v14, 0x0

    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/D0;->B(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_5

    :pswitch_2c
    const/4 v14, 0x0

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/D0;->F(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_5

    :pswitch_2d
    const/4 v14, 0x0

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/D0;->G(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_5

    :pswitch_2e
    const/4 v14, 0x0

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/D0;->J(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_5

    :pswitch_2f
    const/4 v14, 0x0

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/D0;->S(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_5

    :pswitch_30
    const/4 v14, 0x0

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/D0;->K(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_5

    :pswitch_31
    const/4 v14, 0x0

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/D0;->H(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_5

    :pswitch_32
    const/4 v14, 0x0

    aget v3, v7, v11

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v3, v4, v2, v14}, Lcom/google/protobuf/D0;->D(ILjava/util/List;Lcom/google/protobuf/s;Z)V

    goto :goto_5

    :pswitch_33
    const/4 v14, 0x0

    and-int v3, v10, v13

    if-eqz v3, :cond_7

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v4

    invoke-virtual {v2, v15, v4, v3}, Lcom/google/protobuf/s;->e(ILcom/google/protobuf/C0;Ljava/lang/Object;)V

    :cond_7
    :goto_5
    move v3, v14

    goto/16 :goto_6

    :pswitch_34
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    const/4 v9, 0x1

    shl-long v9, v4, v9

    const/16 v16, 0x3f

    shr-long v4, v4, v16

    xor-long/2addr v4, v9

    invoke-virtual {v14, v15, v4, v5}, Lcom/google/protobuf/r;->H(IJ)V

    goto/16 :goto_6

    :pswitch_35
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    shl-int/lit8 v5, v4, 0x1

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v5

    invoke-virtual {v14, v15, v4}, Lcom/google/protobuf/r;->F(II)V

    goto/16 :goto_6

    :pswitch_36
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v14, v15, v4, v5}, Lcom/google/protobuf/r;->u(IJ)V

    goto/16 :goto_6

    :pswitch_37
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v14, v15, v4}, Lcom/google/protobuf/r;->s(II)V

    goto/16 :goto_6

    :pswitch_38
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v14, v15, v4}, Lcom/google/protobuf/r;->w(II)V

    goto/16 :goto_6

    :pswitch_39
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v14, v15, v4}, Lcom/google/protobuf/r;->F(II)V

    goto/16 :goto_6

    :pswitch_3a
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    invoke-virtual {v2, v15, v4}, Lcom/google/protobuf/s;->a(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_6

    :pswitch_3b
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v11}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v5

    check-cast v4, Lcom/google/protobuf/p0;

    invoke-virtual {v14, v15, v4, v5}, Lcom/google/protobuf/r;->y(ILcom/google/protobuf/p0;Lcom/google/protobuf/C0;)V

    goto/16 :goto_6

    :pswitch_3c
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lcom/google/protobuf/s0;->W(ILjava/lang/Object;Lcom/google/protobuf/s;)V

    goto/16 :goto_6

    :pswitch_3d
    const/4 v3, 0x0

    and-int v9, v13, v10

    if-eqz v9, :cond_8

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/X0;->g(JLjava/lang/Object;)Z

    move-result v4

    invoke-virtual {v14, v15, v4}, Lcom/google/protobuf/r;->o(IZ)V

    goto :goto_6

    :pswitch_3e
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v14, v15, v4}, Lcom/google/protobuf/r;->s(II)V

    goto :goto_6

    :pswitch_3f
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v14, v15, v4, v5}, Lcom/google/protobuf/r;->u(IJ)V

    goto :goto_6

    :pswitch_40
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v14, v15, v4}, Lcom/google/protobuf/r;->w(II)V

    goto :goto_6

    :pswitch_41
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v14, v15, v4, v5}, Lcom/google/protobuf/r;->H(IJ)V

    goto :goto_6

    :pswitch_42
    const/4 v3, 0x0

    and-int/2addr v10, v13

    if-eqz v10, :cond_8

    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v14, v15, v4, v5}, Lcom/google/protobuf/r;->H(IJ)V

    goto :goto_6

    :pswitch_43
    const/4 v3, 0x0

    and-int v9, v13, v10

    if-eqz v9, :cond_8

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/X0;->l(JLjava/lang/Object;)F

    move-result v4

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-virtual {v14, v15, v4}, Lcom/google/protobuf/r;->s(II)V

    goto :goto_6

    :pswitch_44
    const/4 v3, 0x0

    and-int v9, v13, v10

    if-eqz v9, :cond_8

    invoke-static {v4, v5, v1}, Lcom/google/protobuf/X0;->k(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    invoke-virtual {v14, v15, v4, v5}, Lcom/google/protobuf/r;->u(IJ)V

    :cond_8
    :goto_6
    add-int/lit8 v11, v11, 0x3

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    goto/16 :goto_1

    :cond_9
    move-object/from16 v20, v4

    move-object/from16 v19, v5

    move-object/from16 v18, v6

    :goto_7
    if-eqz v6, :cond_b

    move-object/from16 v3, v19

    invoke-virtual {v3, v6}, Lcom/google/protobuf/x;->j(Ljava/util/Map$Entry;)V

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/util/Map$Entry;

    move-object/from16 v19, v3

    goto :goto_7

    :cond_a
    move-object/from16 v19, v3

    const/4 v6, 0x0

    goto :goto_7

    :cond_b
    iget-object v0, v0, Lcom/google/protobuf/s0;->o:Lcom/google/protobuf/O0;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/O0;->s(Ljava/lang/Object;Lcom/google/protobuf/s;)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/w;)V
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/s0;->l(Ljava/lang/Object;)V

    iget-object v11, v8, Lcom/google/protobuf/s0;->o:Lcom/google/protobuf/O0;

    iget-object v12, v8, Lcom/google/protobuf/s0;->j:[I

    iget v13, v8, Lcom/google/protobuf/s0;->l:I

    iget v14, v8, Lcom/google/protobuf/s0;->k:I

    const/4 v7, 0x0

    const/16 v16, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/o;->a()I

    move-result v2

    iget v1, v8, Lcom/google/protobuf/s0;->c:I

    const/4 v3, 0x0

    if-lt v2, v1, :cond_0

    iget v1, v8, Lcom/google/protobuf/s0;->d:I

    if-gt v2, v1, :cond_0

    invoke-virtual {v8, v2, v3}, Lcom/google/protobuf/s0;->Q(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    :goto_1
    move v4, v1

    if-gez v4, :cond_9

    const v1, 0x7fffffff

    if-ne v2, v1, :cond_2

    move-object v4, v7

    :goto_2
    if-ge v14, v13, :cond_1

    aget v3, v12, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v11

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/s0;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/O0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_13

    :goto_3
    invoke-virtual {v11, v9, v4}, Lcom/google/protobuf/O0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    :cond_2
    :try_start_1
    iget-boolean v1, v8, Lcom/google/protobuf/s0;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    iget-object v3, v8, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/x;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_4

    :cond_3
    :try_start_2
    iget-object v1, v8, Lcom/google/protobuf/s0;->e:Lcom/google/protobuf/p0;

    invoke-virtual {v3, v10, v1, v2}, Lcom/google/protobuf/x;->b(Lcom/google/protobuf/w;Lcom/google/protobuf/p0;I)Lcom/google/protobuf/I;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_5

    if-nez v16, :cond_4

    invoke-virtual {v3, v9}, Lcom/google/protobuf/x;->d(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v16, v2

    :cond_4
    :try_start_3
    invoke-virtual {v3, v1}, Lcom/google/protobuf/x;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_19

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_5
    invoke-virtual {v11}, Lcom/google/protobuf/O0;->p()V

    if-nez v7, :cond_6

    invoke-virtual {v11, v9}, Lcom/google/protobuf/O0;->f(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v1

    move-object v7, v1

    :cond_6
    invoke-virtual {v11, v7, v0}, Lcom/google/protobuf/O0;->l(Ljava/lang/Object;Lcom/google/protobuf/o;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    move-object v4, v7

    :goto_5
    if-ge v14, v13, :cond_8

    aget v3, v12, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v11

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/s0;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/O0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_8
    if-eqz v4, :cond_13

    goto :goto_3

    :goto_6
    move-object v4, v7

    move-object v7, v12

    move v12, v13

    goto/16 :goto_1b

    :cond_9
    :try_start_4
    invoke-virtual {v8, v4}, Lcom/google/protobuf/s0;->T(I)I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    const/high16 v1, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    const v18, 0xfffff

    iget-object v15, v0, Lcom/google/protobuf/o;->a:Lcom/google/protobuf/n;

    iget-object v6, v8, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/c0;

    packed-switch v1, :pswitch_data_0

    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    if-nez v1, :cond_f

    :try_start_5
    invoke-virtual {v11, v9}, Lcom/google/protobuf/O0;->f(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v1
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/16 :goto_11

    :pswitch_0
    :try_start_6
    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->A(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p0;

    invoke-virtual {v8, v4}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v10}, Lcom/google/protobuf/o;->b(Lcom/google/protobuf/p0;Lcom/google/protobuf/C0;Lcom/google/protobuf/w;)V

    invoke-virtual {v8, v9, v2, v4, v1}, Lcom/google/protobuf/s0;->S(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_1
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->u()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_2
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->t()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_3
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->s()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_4
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_5
    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->l()I

    move-result v1

    invoke-virtual {v8, v4}, Lcom/google/protobuf/s0;->o(I)Lcom/google/protobuf/M;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3, v1}, Lcom/google/protobuf/M;->isInRange(I)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {v9, v2, v1, v7, v11}, Lcom/google/protobuf/D0;->A(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/O0;)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    move-object v7, v12

    move v12, v13

    goto/16 :goto_18

    :cond_b
    :goto_7
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_6
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->y()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_7
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/o;->f()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_8
    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->A(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p0;

    invoke-virtual {v8, v4}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v0, v1, v3, v10}, Lcom/google/protobuf/o;->d(Ljava/lang/Object;Lcom/google/protobuf/C0;Lcom/google/protobuf/w;)V

    invoke-virtual {v8, v9, v2, v4, v1}, Lcom/google/protobuf/s0;->S(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_9
    invoke-virtual {v8, v9, v5, v0}, Lcom/google/protobuf/s0;->L(Ljava/lang/Object;ILcom/google/protobuf/o;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_a
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_b
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_c
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->n()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto :goto_8

    :pswitch_d
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto :goto_8

    :pswitch_e
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->z()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto :goto_8

    :pswitch_f
    and-int v1, v5, v18

    int-to-long v5, v1

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->q()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto :goto_8

    :pswitch_10
    and-int v1, v5, v18

    int-to-long v5, v1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->o()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    goto :goto_8

    :pswitch_11
    and-int v1, v5, v18

    int-to-long v5, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->k()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v5, v6, v9, v1}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v2, v4, v9}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    :goto_8
    move-object v15, v7

    goto :goto_9

    :pswitch_12
    invoke-virtual {v8, v4}, Lcom/google/protobuf/s0;->p(I)Ljava/lang/Object;

    move-result-object v5
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v4

    move-object v4, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    :try_start_7
    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/s0;->w(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/w;Lcom/google/protobuf/o;)V

    move-object v15, v7

    :goto_9
    move-object v7, v12

    move/from16 v19, v13

    goto/16 :goto_b

    :catch_0
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    goto/16 :goto_10

    :pswitch_13
    and-int v1, v5, v18

    int-to-long v5, v1

    invoke-virtual {v8, v4}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v15
    :try_end_7
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v3, v5

    move-object/from16 v5, p2

    move-object v6, v15

    move-object v15, v7

    move-object/from16 v7, p3

    :try_start_8
    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/s0;->J(Ljava/lang/Object;JLcom/google/protobuf/o;Lcom/google/protobuf/C0;Lcom/google/protobuf/w;)V

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v15, v7

    :goto_a
    move-object v7, v12

    move/from16 v19, v13

    goto/16 :goto_c

    :catch_1
    move-object v15, v7

    :catch_2
    move-object v7, v12

    move/from16 v19, v13

    goto/16 :goto_d

    :pswitch_14
    move-object v15, v7

    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->s(Ljava/util/List;)V

    goto :goto_9

    :pswitch_15
    move-object v15, v7

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->r(Ljava/util/List;)V

    goto :goto_9

    :pswitch_16
    move-object v15, v7

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->q(Ljava/util/List;)V

    goto :goto_9

    :pswitch_17
    move-object v15, v7

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->p(Ljava/util/List;)V
    :try_end_8
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_a

    :pswitch_18
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    :try_start_9
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->i(Ljava/util/List;)V

    invoke-virtual {v8, v4}, Lcom/google/protobuf/s0;->o(I)Lcom/google/protobuf/M;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v5, v15

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/D0;->w(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/M;Ljava/lang/Object;Lcom/google/protobuf/O0;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_f

    :pswitch_19
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->u(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_1a
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->e(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_1b
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->k(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_1c
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->l(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_1d
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->n(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_1e
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->v(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_1f
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->o(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_20
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->m(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_21
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->h(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_22
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->s(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_23
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->r(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_24
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->q(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_25
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->p(Ljava/util/List;)V

    goto/16 :goto_b

    :pswitch_26
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v12

    invoke-virtual {v6, v12, v13, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->i(Ljava/util/List;)V

    invoke-virtual {v8, v4}, Lcom/google/protobuf/s0;->o(I)Lcom/google/protobuf/M;

    move-result-object v4

    move-object/from16 v1, p1

    move-object v5, v15

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/google/protobuf/D0;->w(Ljava/lang/Object;ILjava/util/List;Lcom/google/protobuf/M;Ljava/lang/Object;Lcom/google/protobuf/O0;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_f

    :pswitch_27
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->u(Ljava/util/List;)V

    goto :goto_b

    :pswitch_28
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->g(Ljava/util/List;)V

    goto :goto_b

    :pswitch_29
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    invoke-virtual {v8, v4}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v5

    move-object/from16 v4, p2

    move-object v5, v6

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/s0;->K(Ljava/lang/Object;ILcom/google/protobuf/o;Lcom/google/protobuf/C0;Lcom/google/protobuf/w;)V

    goto :goto_b

    :pswitch_2a
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    invoke-virtual {v8, v9, v5, v0}, Lcom/google/protobuf/s0;->M(Ljava/lang/Object;ILcom/google/protobuf/o;)V

    :goto_b
    move-object v1, v15

    goto/16 :goto_f

    :goto_c
    move-object v1, v15

    goto/16 :goto_13

    :pswitch_2b
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->e(Ljava/util/List;)V

    goto :goto_b

    :pswitch_2c
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->k(Ljava/util/List;)V

    goto :goto_b

    :pswitch_2d
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->l(Ljava/util/List;)V

    goto :goto_b

    :pswitch_2e
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->n(Ljava/util/List;)V

    goto :goto_b

    :pswitch_2f
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->v(Ljava/util/List;)V

    goto :goto_b

    :pswitch_30
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->o(Ljava/util/List;)V

    goto :goto_b

    :pswitch_31
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->m(Ljava/util/List;)V

    goto :goto_b

    :pswitch_32
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v1, v5, v18

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/protobuf/c0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/o;->h(Ljava/util/List;)V

    goto :goto_b

    :pswitch_33
    move-object v15, v7

    move-object v7, v12

    move/from16 v19, v13

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->z(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/p0;

    invoke-virtual {v8, v4}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v10}, Lcom/google/protobuf/o;->b(Lcom/google/protobuf/p0;Lcom/google/protobuf/C0;Lcom/google/protobuf/w;)V

    invoke-virtual {v8, v4, v9, v1}, Lcom/google/protobuf/s0;->R(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/16 :goto_b

    :catchall_3
    move-exception v0

    goto/16 :goto_c

    :catch_3
    :goto_d
    move-object v1, v15

    goto/16 :goto_10

    :pswitch_34
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v5, v2

    :try_start_a
    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->u()J

    move-result-wide v2

    invoke-static {v9, v5, v6, v2, v3}, Lcom/google/protobuf/X0;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_35
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v5, v2

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->t()I

    move-result v2

    invoke-static {v2, v5, v6, v9}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_36
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v2, v2

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->s()J

    move-result-wide v5

    invoke-static {v9, v2, v3, v5, v6}, Lcom/google/protobuf/X0;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_37
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v2, v2

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->r()I

    move-result v5

    invoke-static {v5, v2, v3, v9}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_38
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->l()I

    move-result v3

    invoke-virtual {v8, v4}, Lcom/google/protobuf/s0;->o(I)Lcom/google/protobuf/M;

    move-result-object v6

    if-eqz v6, :cond_d

    invoke-interface {v6, v3}, Lcom/google/protobuf/M;->isInRange(I)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_e

    :cond_c
    invoke-static {v9, v2, v3, v1, v11}, Lcom/google/protobuf/D0;->A(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/protobuf/O0;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_f

    :cond_d
    :goto_e
    invoke-static {v5}, Lcom/google/protobuf/s0;->C(I)J

    move-result-wide v5

    invoke-static {v3, v5, v6, v9}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_39
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v5, v2

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->y()I

    move-result v2

    invoke-static {v2, v5, v6, v9}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_3a
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/o;->f()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v2, v3, v9, v5}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_3b
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->z(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/p0;

    invoke-virtual {v8, v4}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v0, v2, v3, v10}, Lcom/google/protobuf/o;->d(Ljava/lang/Object;Lcom/google/protobuf/C0;Lcom/google/protobuf/w;)V

    invoke-virtual {v8, v4, v9, v2}, Lcom/google/protobuf/s0;->R(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_3c
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    invoke-virtual {v8, v9, v5, v0}, Lcom/google/protobuf/s0;->L(Ljava/lang/Object;ILcom/google/protobuf/o;)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_3d
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v5, v2

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->i()Z

    move-result v2

    invoke-static {v9, v5, v6, v2}, Lcom/google/protobuf/X0;->p(Ljava/lang/Object;JZ)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_3e
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v2, v2

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->m()I

    move-result v5

    invoke-static {v5, v2, v3, v9}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_3f
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v2, v2

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->n()J

    move-result-wide v5

    invoke-static {v9, v2, v3, v5, v6}, Lcom/google/protobuf/X0;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_40
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v5, v2

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->p()I

    move-result v2

    invoke-static {v2, v5, v6, v9}, Lcom/google/protobuf/X0;->v(IJLjava/lang/Object;)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto :goto_f

    :pswitch_41
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v5, v2

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->z()J

    move-result-wide v2

    invoke-static {v9, v5, v6, v2, v3}, Lcom/google/protobuf/X0;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto :goto_f

    :pswitch_42
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v5, v2

    invoke-virtual {v0, v3}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->q()J

    move-result-wide v2

    invoke-static {v9, v5, v6, v2, v3}, Lcom/google/protobuf/X0;->w(Ljava/lang/Object;JJ)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto :goto_f

    :pswitch_43
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v2, v2

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->o()F

    move-result v5

    invoke-static {v9, v2, v3, v5}, Lcom/google/protobuf/X0;->u(Ljava/lang/Object;JF)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    goto :goto_f

    :pswitch_44
    move-object v1, v7

    move-object v7, v12

    move/from16 v19, v13

    and-int v2, v5, v18

    int-to-long v2, v2

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/protobuf/o;->x(I)V

    invoke-virtual {v15}, Lcom/google/protobuf/n;->k()D

    move-result-wide v5

    invoke-static {v9, v2, v3, v5, v6}, Lcom/google/protobuf/X0;->t(Ljava/lang/Object;JD)V

    invoke-virtual {v8, v4, v9}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    :cond_e
    :goto_f
    move/from16 v12, v19

    goto :goto_18

    :catch_4
    :goto_10
    move/from16 v12, v19

    goto :goto_14

    :cond_f
    :goto_11
    invoke-virtual {v11, v1, v0}, Lcom/google/protobuf/O0;->l(Ljava/lang/Object;Lcom/google/protobuf/o;)Z

    move-result v2
    :try_end_a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v2, :cond_e

    move-object v4, v1

    move/from16 v12, v19

    :goto_12
    if-ge v14, v12, :cond_10

    aget v3, v7, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v11

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/s0;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/O0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_10
    if-eqz v4, :cond_13

    goto :goto_16

    :catchall_4
    move-exception v0

    :goto_13
    move/from16 v12, v19

    goto :goto_1a

    :goto_14
    :try_start_b
    invoke-virtual {v11}, Lcom/google/protobuf/O0;->p()V

    if-nez v1, :cond_11

    invoke-virtual {v11, v9}, Lcom/google/protobuf/O0;->f(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v1

    :cond_11
    invoke-virtual {v11, v1, v0}, Lcom/google/protobuf/O0;->l(Ljava/lang/Object;Lcom/google/protobuf/o;)Z

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-nez v2, :cond_14

    move-object v4, v1

    :goto_15
    if-ge v14, v12, :cond_12

    aget v3, v7, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v11

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/s0;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/O0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_15

    :cond_12
    if-eqz v4, :cond_13

    :goto_16
    goto/16 :goto_3

    :cond_13
    :goto_17
    return-void

    :cond_14
    :goto_18
    move v13, v12

    move-object v12, v7

    :goto_19
    move-object v7, v1

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    goto :goto_1a

    :catchall_6
    move-exception v0

    move-object v1, v7

    move-object v7, v12

    move v12, v13

    :goto_1a
    move-object v4, v1

    :goto_1b
    if-ge v14, v12, :cond_15

    aget v3, v7, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v11

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/protobuf/s0;->n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/O0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_1b

    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {v11, v9, v4}, Lcom/google/protobuf/O0;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/protobuf/s0;->t(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/J;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/J;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/protobuf/J;->setMemoizedSerializedSize(I)V

    iput v1, v0, Lcom/google/protobuf/b;->memoizedHashCode:I

    invoke-virtual {v0}, Lcom/google/protobuf/J;->markImmutable()V

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/s0;->a:[I

    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/protobuf/s0;->T(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v3, v3

    const/high16 v5, 0xff00000

    and-int/2addr v2, v5

    ushr-int/lit8 v2, v2, 0x14

    const/16 v5, 0x9

    sget-object v6, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/j0;

    invoke-interface {v5, v2}, Lcom/google/protobuf/j0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/google/protobuf/s0;->n:Lcom/google/protobuf/c0;

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/protobuf/c0;->a(JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v2

    invoke-virtual {v6, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/protobuf/C0;->d(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/s0;->o:Lcom/google/protobuf/O0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O0;->j(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/protobuf/s0;->f:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/x;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x;->f(Ljava/lang/Object;)V

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 13

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/google/protobuf/s0;->k:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_15

    iget-object v5, p0, Lcom/google/protobuf/s0;->j:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/google/protobuf/s0;->a:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Lcom/google/protobuf/s0;->T(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v0, :cond_0

    sget-object v3, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_2

    move v10, v6

    goto :goto_1

    :cond_2
    move v10, v1

    :goto_1
    if-eqz v10, :cond_5

    if-ne v3, v0, :cond_3

    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v10

    goto :goto_2

    :cond_3
    and-int v10, v4, v7

    if-eqz v10, :cond_4

    move v10, v6

    goto :goto_2

    :cond_4
    move v10, v1

    :goto_2
    if-nez v10, :cond_5

    return v1

    :cond_5
    const/high16 v10, 0xff00000

    and-int/2addr v10, v9

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_11

    const/16 v11, 0x11

    if-eq v10, v11, :cond_11

    const/16 v7, 0x1b

    if-eq v10, v7, :cond_d

    const/16 v7, 0x3c

    if-eq v10, v7, :cond_c

    const/16 v7, 0x44

    if-eq v10, v7, :cond_c

    const/16 v7, 0x31

    if-eq v10, v7, :cond_d

    const/16 v7, 0x32

    if-eq v10, v7, :cond_6

    goto/16 :goto_7

    :cond_6
    and-int v7, v9, v0

    int-to-long v7, v7

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/j0;

    invoke-interface {v8, v7}, Lcom/google/protobuf/j0;->g(Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v5}, Lcom/google/protobuf/s0;->p(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v8, v5}, Lcom/google/protobuf/j0;->e(Ljava/lang/Object;)Lcom/google/protobuf/h0;

    move-result-object v5

    iget-object v5, v5, Lcom/google/protobuf/h0;->c:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v5}, Lcom/google/protobuf/WireFormat$FieldType;->a()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v5

    sget-object v8, Lcom/google/protobuf/WireFormat$JavaType;->l:Lcom/google/protobuf/WireFormat$JavaType;

    if-eq v5, v8, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_a

    sget-object v7, Lcom/google/protobuf/z0;->c:Lcom/google/protobuf/z0;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/protobuf/z0;->a(Ljava/lang/Class;)Lcom/google/protobuf/C0;

    move-result-object v7

    :cond_a
    invoke-interface {v7, v8}, Lcom/google/protobuf/C0;->e(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    move v6, v1

    :cond_b
    :goto_3
    if-nez v6, :cond_14

    return v1

    :cond_c
    invoke-virtual {p0, v8, v5, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {p0, v5}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/C0;->e(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    return v1

    :cond_d
    and-int v7, v9, v0

    int-to-long v7, v7

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {p0, v5}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v5

    move v8, v1

    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_10

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Lcom/google/protobuf/C0;->e(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    move v6, v1

    goto :goto_5

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_10
    :goto_5
    if-nez v6, :cond_14

    return v1

    :cond_11
    if-ne v3, v0, :cond_12

    invoke-virtual {p0, v5, p1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_6

    :cond_12
    and-int/2addr v7, v4

    if-eqz v7, :cond_13

    goto :goto_6

    :cond_13
    move v6, v1

    :goto_6
    if-eqz v6, :cond_14

    invoke-virtual {p0, v5}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/C0;->e(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    return v1

    :cond_14
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_15
    iget-boolean v0, p0, Lcom/google/protobuf/s0;->f:Z

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/x;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/B;->g()Z

    move-result p0

    if-nez p0, :cond_16

    return v1

    :cond_16
    return v6
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    iget-object v0, p0, Lcom/google/protobuf/s0;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/google/protobuf/s0;->T(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    const/high16 v9, 0xff00000

    and-int/2addr v5, v9

    ushr-int/lit8 v5, v5, 0x14

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    invoke-static {v5, v6, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v9

    invoke-static {v5, v6, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v5

    if-ne v9, v5, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/D0;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :pswitch_1
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/D0;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_2

    :pswitch_2
    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/D0;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/D0;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_1

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_1

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_1

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_1

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/D0;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/D0;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/protobuf/D0;->z(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->g(JLjava/lang/Object;)Z

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->g(JLjava/lang/Object;)Z

    move-result v6

    if-ne v5, v6, :cond_1

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_1

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_1

    goto :goto_2

    :pswitch_11
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    goto :goto_2

    :pswitch_12
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    goto :goto_2

    :pswitch_13
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->l(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->l(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    if-ne v5, v6, :cond_1

    goto :goto_2

    :pswitch_14
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/protobuf/s0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, p1}, Lcom/google/protobuf/X0;->k(JLjava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    invoke-static {v7, v8, p2}, Lcom/google/protobuf/X0;->k(JLjava/lang/Object;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/s0;->o:Lcom/google/protobuf/O0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v1

    invoke-virtual {v0, p2}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/protobuf/P0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    iget-boolean v0, p0, Lcom/google/protobuf/s0;->f:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/x;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/protobuf/B;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/protobuf/e;)V
    .locals 29

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/google/protobuf/s0;->h:Z

    if-eqz v0, :cond_18

    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/s0;->l(Ljava/lang/Object;)V

    sget-object v9, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    move/from16 v0, p3

    move v2, v10

    move v6, v2

    const/4 v1, -0x1

    const v5, 0xfffff

    :goto_0
    if-ge v0, v13, :cond_15

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v3, v11}, Lcom/google/protobuf/f;->j(I[BILcom/google/protobuf/e;)I

    move-result v0

    iget v3, v11, Lcom/google/protobuf/e;->a:I

    move v4, v0

    move/from16 v16, v3

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move v4, v3

    :goto_1
    ushr-int/lit8 v3, v16, 0x3

    and-int/lit8 v0, v16, 0x7

    iget v8, v15, Lcom/google/protobuf/s0;->d:I

    iget v7, v15, Lcom/google/protobuf/s0;->c:I

    if-le v3, v1, :cond_1

    div-int/lit8 v2, v2, 0x3

    if-lt v3, v7, :cond_2

    if-gt v3, v8, :cond_2

    invoke-virtual {v15, v3, v2}, Lcom/google/protobuf/s0;->Q(II)I

    move-result v1

    goto :goto_2

    :cond_1
    if-lt v3, v7, :cond_2

    if-gt v3, v8, :cond_2

    invoke-virtual {v15, v3, v10}, Lcom/google/protobuf/s0;->Q(II)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    :goto_2
    move v8, v1

    const/4 v7, -0x1

    if-ne v8, v7, :cond_3

    move/from16 v17, v3

    move v2, v4

    move/from16 v28, v5

    move/from16 v18, v7

    move-object/from16 v26, v9

    move/from16 v27, v10

    goto/16 :goto_11

    :cond_3
    add-int/lit8 v1, v8, 0x1

    iget-object v2, v15, Lcom/google/protobuf/s0;->a:[I

    aget v1, v2, v1

    const/high16 v18, 0xff00000

    and-int v18, v1, v18

    ushr-int/lit8 v13, v18, 0x14

    const v17, 0xfffff

    and-int v7, v1, v17

    move/from16 v19, v3

    move/from16 p3, v4

    int-to-long v3, v7

    const/16 v7, 0x11

    if-gt v13, v7, :cond_c

    add-int/lit8 v7, v8, 0x2

    aget v2, v2, v7

    ushr-int/lit8 v7, v2, 0x14

    const/4 v10, 0x1

    shl-int v7, v10, v7

    const v10, 0xfffff

    and-int/2addr v2, v10

    if-eq v2, v5, :cond_6

    if-eq v5, v10, :cond_4

    int-to-long v10, v5

    invoke-virtual {v9, v14, v10, v11, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v10, 0xfffff

    :cond_4
    if-eq v2, v10, :cond_5

    int-to-long v5, v2

    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_5
    move v11, v6

    move v6, v2

    goto :goto_3

    :cond_6
    move v11, v6

    move v6, v5

    :goto_3
    const/4 v2, 0x5

    packed-switch v13, :pswitch_data_0

    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    goto/16 :goto_b

    :pswitch_0
    if-nez v0, :cond_7

    move/from16 v5, p3

    move-object/from16 v13, p5

    invoke-static {v12, v5, v13}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v16

    iget-wide v0, v13, Lcom/google/protobuf/e;->b:J

    invoke-static {v0, v1}, Lcom/google/protobuf/n;->c(J)J

    move-result-wide v20

    move-object v0, v9

    move-object/from16 v1, p1

    move/from16 v17, v19

    move-wide v2, v3

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_6

    :cond_7
    move-object/from16 v13, p5

    move/from16 v17, v19

    move/from16 v10, p3

    goto/16 :goto_b

    :pswitch_1
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_a

    invoke-static {v12, v5, v13}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v13, Lcom/google/protobuf/e;->a:I

    invoke-static {v1}, Lcom/google/protobuf/n;->b(I)I

    move-result v1

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_2
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_a

    invoke-static {v12, v5, v13}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v13, Lcom/google/protobuf/e;->a:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_9

    :pswitch_3
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-static {v12, v5, v13}, Lcom/google/protobuf/f;->a([BILcom/google/protobuf/e;)I

    move-result v0

    iget-object v1, v13, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_4
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-virtual {v15, v8, v14}, Lcom/google/protobuf/s0;->z(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v15, v8}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v1

    move-object v0, v4

    move-object/from16 v2, p2

    move v3, v5

    move-object v5, v4

    move/from16 v4, p4

    move-object v10, v5

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/f;->n(Ljava/lang/Object;Lcom/google/protobuf/C0;[BIILcom/google/protobuf/e;)I

    move-result v0

    invoke-virtual {v15, v8, v14, v10}, Lcom/google/protobuf/s0;->R(ILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_5
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    invoke-static {v12, v5, v13}, Lcom/google/protobuf/f;->g([BILcom/google/protobuf/e;)I

    move-result v0

    goto :goto_4

    :cond_8
    invoke-static {v12, v5, v13}, Lcom/google/protobuf/f;->h([BILcom/google/protobuf/e;)I

    move-result v0

    :goto_4
    iget-object v1, v13, Lcom/google/protobuf/e;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_6
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_a

    invoke-static {v12, v5, v13}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v0

    iget-wide v1, v13, Lcom/google/protobuf/e;->b:J

    const-wide/16 v22, 0x0

    cmp-long v1, v1, v22

    if-eqz v1, :cond_9

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    const/4 v10, 0x0

    :goto_5
    invoke-static {v14, v3, v4, v10}, Lcom/google/protobuf/X0;->p(Ljava/lang/Object;JZ)V

    goto/16 :goto_9

    :pswitch_7
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-ne v0, v2, :cond_a

    invoke-static {v5, v12}, Lcom/google/protobuf/f;->b(I[B)I

    move-result v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move v10, v5

    goto/16 :goto_7

    :pswitch_8
    move/from16 v5, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-static {v5, v12}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide v20

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v3

    move v10, v5

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_8

    :cond_a
    move v10, v5

    goto/16 :goto_b

    :pswitch_9
    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_b

    invoke-static {v12, v10, v13}, Lcom/google/protobuf/f;->k([BILcom/google/protobuf/e;)I

    move-result v0

    iget v1, v13, Lcom/google/protobuf/e;->a:I

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_9

    :pswitch_a
    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-nez v0, :cond_b

    invoke-static {v12, v10, v13}, Lcom/google/protobuf/f;->m([BILcom/google/protobuf/e;)I

    move-result v16

    iget-wide v1, v13, Lcom/google/protobuf/e;->b:J

    move-object v0, v9

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_6
    or-int v0, v11, v7

    goto :goto_a

    :pswitch_b
    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    if-ne v0, v2, :cond_b

    invoke-static {v10, v12}, Lcom/google/protobuf/f;->b(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v3, v4, v0}, Lcom/google/protobuf/X0;->u(Ljava/lang/Object;JF)V

    :goto_7
    add-int/lit8 v0, v10, 0x4

    goto :goto_9

    :pswitch_c
    move/from16 v10, p3

    move-object/from16 v13, p5

    move/from16 v17, v19

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    invoke-static {v10, v12}, Lcom/google/protobuf/f;->c(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v3, v4, v0, v1}, Lcom/google/protobuf/X0;->t(Ljava/lang/Object;JD)V

    :goto_8
    add-int/lit8 v0, v10, 0x8

    :goto_9
    or-int v1, v11, v7

    move/from16 v16, v0

    move v0, v1

    :goto_a
    move v5, v6

    move v6, v0

    move/from16 v0, v16

    goto :goto_d

    :cond_b
    :goto_b
    move/from16 v28, v6

    move-object/from16 v26, v9

    move v2, v10

    move v6, v11

    const/16 v18, -0x1

    const/16 v27, 0x0

    move v10, v8

    goto/16 :goto_11

    :cond_c
    move/from16 v10, p3

    move/from16 v17, v19

    const/16 v2, 0x1b

    if-ne v13, v2, :cond_10

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/S;

    invoke-interface {v0}, Lcom/google/protobuf/S;->g()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xa

    goto :goto_c

    :cond_d
    mul-int/lit8 v1, v1, 0x2

    :goto_c
    invoke-interface {v0, v1}, Lcom/google/protobuf/S;->b(I)Lcom/google/protobuf/S;

    move-result-object v0

    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_e
    move-object v7, v0

    invoke-virtual {v15, v8}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v0

    move/from16 v1, v16

    move-object/from16 v2, p2

    move v3, v10

    move/from16 v4, p4

    move v11, v5

    move-object v5, v7

    move v7, v6

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/f;->e(Lcom/google/protobuf/C0;I[BIILcom/google/protobuf/S;Lcom/google/protobuf/e;)I

    move-result v0

    move v6, v7

    move v5, v11

    :goto_d
    move/from16 v13, p4

    move-object/from16 v11, p5

    move v2, v8

    move/from16 v1, v17

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_f
    move/from16 v28, v5

    move/from16 v25, v6

    move/from16 v19, v8

    move-object/from16 v26, v9

    move v15, v10

    const/16 v18, -0x1

    const/16 v27, 0x0

    goto/16 :goto_e

    :cond_10
    move v11, v5

    move v7, v6

    const/16 v2, 0x31

    if-gt v13, v2, :cond_12

    int-to-long v5, v1

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 p3, v2

    move-object/from16 v2, p2

    move-wide/from16 v21, v3

    move v3, v10

    move/from16 v4, p4

    move-wide/from16 v23, v5

    move/from16 v5, v16

    move/from16 v6, v17

    move v15, v7

    const/16 v18, -0x1

    move/from16 v7, p3

    move/from16 v19, v8

    move/from16 v25, v15

    const v15, 0xfffff

    move-object/from16 v26, v9

    move v15, v10

    const/16 v27, 0x0

    move-wide/from16 v9, v23

    move/from16 v28, v11

    move v11, v13

    move-wide/from16 v12, v21

    move-object/from16 v14, p5

    invoke-virtual/range {v0 .. v14}, Lcom/google/protobuf/s0;->I(Ljava/lang/Object;[BIIIIIIJIJLcom/google/protobuf/e;)I

    move-result v0

    if-eq v0, v15, :cond_11

    goto/16 :goto_f

    :cond_11
    move v4, v0

    goto/16 :goto_10

    :cond_12
    move/from16 p3, v0

    move-wide/from16 v21, v3

    move/from16 v25, v7

    move/from16 v19, v8

    move-object/from16 v26, v9

    move v15, v10

    move/from16 v28, v11

    const/16 v18, -0x1

    const/16 v27, 0x0

    const/16 v0, 0x32

    if-ne v13, v0, :cond_14

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v21

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/google/protobuf/s0;->F(Ljava/lang/Object;[BIIIJLcom/google/protobuf/e;)I

    move-result v0

    if-eq v0, v15, :cond_11

    goto :goto_f

    :cond_13
    :goto_e
    move v4, v15

    goto :goto_10

    :cond_14
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v16

    move/from16 v6, v17

    move v9, v13

    move-wide/from16 v10, v21

    move/from16 v12, v19

    move-object/from16 v13, p5

    invoke-virtual/range {v0 .. v13}, Lcom/google/protobuf/s0;->G(Ljava/lang/Object;[BIIIIIIIJILcom/google/protobuf/e;)I

    move-result v0

    if-eq v0, v15, :cond_11

    :goto_f
    move/from16 v2, v19

    move/from16 v6, v25

    goto :goto_12

    :goto_10
    move v2, v4

    move/from16 v10, v19

    move/from16 v6, v25

    :goto_11
    invoke-static/range {p1 .. p1}, Lcom/google/protobuf/s0;->r(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v4

    move/from16 v0, v16

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/f;->i(I[BIILcom/google/protobuf/P0;Lcom/google/protobuf/e;)I

    move-result v0

    move v2, v10

    :goto_12
    move/from16 v5, v28

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v1, v17

    move-object/from16 v9, v26

    move/from16 v10, v27

    goto/16 :goto_0

    :cond_15
    move/from16 v25, v6

    move-object/from16 v26, v9

    const v1, 0xfffff

    if-eq v5, v1, :cond_16

    int-to-long v1, v5

    move-object/from16 v3, p1

    move/from16 v6, v25

    move-object/from16 v4, v26

    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_16
    move/from16 v4, p4

    if-ne v0, v4, :cond_17

    goto :goto_13

    :cond_17
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->g()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_18
    move v4, v13

    move-object v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/protobuf/s0;->H(Ljava/lang/Object;[BIIILcom/google/protobuf/e;)I

    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/high16 v2, 0xff00000

    const/4 v5, 0x1

    iget-boolean v6, v0, Lcom/google/protobuf/s0;->h:Z

    iget-object v7, v0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/j0;

    sget-object v8, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    iget-boolean v9, v0, Lcom/google/protobuf/s0;->i:Z

    iget-object v10, v0, Lcom/google/protobuf/s0;->o:Lcom/google/protobuf/O0;

    iget-object v11, v0, Lcom/google/protobuf/s0;->a:[I

    const v12, 0xfffff

    if-eqz v6, :cond_16

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_0
    array-length v14, v11

    if-ge v6, v14, :cond_15

    invoke-virtual {v0, v6}, Lcom/google/protobuf/s0;->T(I)I

    move-result v14

    and-int v15, v14, v2

    ushr-int/lit8 v15, v15, 0x14

    aget v4, v11, v6

    and-int/2addr v14, v12

    int-to-long v2, v14

    sget-object v14, Lcom/google/protobuf/FieldType;->d:Lcom/google/protobuf/FieldType;

    invoke-virtual {v14}, Lcom/google/protobuf/FieldType;->a()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lcom/google/protobuf/FieldType;->e:Lcom/google/protobuf/FieldType;

    invoke-virtual {v14}, Lcom/google/protobuf/FieldType;->a()I

    move-result v14

    if-gt v15, v14, :cond_0

    add-int/lit8 v14, v6, 0x2

    aget v14, v11, v14

    and-int/2addr v14, v12

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/p0;

    invoke-virtual {v0, v6}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/r;->e(ILcom/google/protobuf/p0;Lcom/google/protobuf/C0;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_1
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v4

    shl-long v14, v2, v5

    const/16 v17, 0x3f

    shr-long v2, v2, v17

    xor-long/2addr v2, v14

    invoke-static {v2, v3}, Lcom/google/protobuf/r;->l(J)I

    move-result v2

    :goto_2
    add-int/2addr v2, v4

    goto/16 :goto_c

    :pswitch_2
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    shl-int/lit8 v4, v2, 0x1

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v2

    :goto_3
    add-int/2addr v2, v3

    goto/16 :goto_c

    :pswitch_3
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v2

    :goto_4
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_c

    :pswitch_4
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v2

    :goto_5
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_c

    :pswitch_5
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->f(I)I

    move-result v2

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/r;->j(II)I

    move-result v2

    goto/16 :goto_c

    :pswitch_7
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/r;->b(ILcom/google/protobuf/ByteString;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_8
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lcom/google/protobuf/D0;->l(ILcom/google/protobuf/C0;Ljava/lang/Object;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_9
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/protobuf/ByteString;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/r;->b(ILcom/google/protobuf/ByteString;)I

    move-result v2

    goto/16 :goto_b

    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->h(Ljava/lang/String;)I

    move-result v2

    :goto_6
    add-int/2addr v2, v3

    goto/16 :goto_b

    :pswitch_a
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v2

    :goto_7
    add-int/2addr v2, v5

    goto/16 :goto_c

    :pswitch_b
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->c(I)I

    move-result v2

    goto/16 :goto_c

    :pswitch_c
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->d(I)I

    move-result v2

    goto/16 :goto_c

    :pswitch_d
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->f(I)I

    move-result v2

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v4

    invoke-static {v2, v3}, Lcom/google/protobuf/r;->l(J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v4

    invoke-static {v2, v3}, Lcom/google/protobuf/r;->l(J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v2

    goto/16 :goto_5

    :pswitch_11
    invoke-virtual {v0, v4, v6, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v2

    goto/16 :goto_4

    :pswitch_12
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/google/protobuf/s0;->p(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v7, v4, v2, v3}, Lcom/google/protobuf/j0;->b(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_13
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v3

    sget-object v14, Lcom/google/protobuf/D0;->a:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-nez v14, :cond_2

    :goto_8
    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_2
    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_9
    if-ge v15, v14, :cond_3

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v12, v19

    check-cast v12, Lcom/google/protobuf/p0;

    invoke-static {v4, v12, v3}, Lcom/google/protobuf/r;->e(ILcom/google/protobuf/p0;Lcom/google/protobuf/C0;)I

    move-result v12

    add-int v18, v12, v18

    add-int/lit8 v15, v15, 0x1

    const v12, 0xfffff

    goto :goto_9

    :cond_3
    move/from16 v2, v18

    goto/16 :goto_c

    :pswitch_14
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->q(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_4

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_4
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto/16 :goto_a

    :pswitch_15
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->o(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_5

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto/16 :goto_a

    :pswitch_16
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->g(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_6

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_6
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto/16 :goto_a

    :pswitch_17
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->e(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_7

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto/16 :goto_a

    :pswitch_18
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->c(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_8

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_8
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto/16 :goto_a

    :pswitch_19
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->t(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_9

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_9
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto/16 :goto_a

    :pswitch_1a
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/google/protobuf/D0;->a:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_a

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_a
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto/16 :goto_a

    :pswitch_1b
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->e(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_b

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_b
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto/16 :goto_a

    :pswitch_1c
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->g(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_c

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_c
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto/16 :goto_a

    :pswitch_1d
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->i(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_d

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_d
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto :goto_a

    :pswitch_1e
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->v(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_e

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_e
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto :goto_a

    :pswitch_1f
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->k(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_f

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_f
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto :goto_a

    :pswitch_20
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->e(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_10

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_10
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    goto :goto_a

    :pswitch_21
    invoke-virtual {v8, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/D0;->g(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v9, :cond_11

    int-to-long v14, v14

    invoke-virtual {v8, v1, v14, v15, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_11
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v4

    :goto_a
    add-int/2addr v4, v3

    add-int/2addr v4, v2

    add-int/2addr v13, v4

    goto/16 :goto_d

    :pswitch_22
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->p(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_23
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->n(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_24
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->f(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_25
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->d(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_26
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->b(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_27
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->s(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_28
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->a(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_29
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/D0;->m(ILjava/util/List;Lcom/google/protobuf/C0;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_2a
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->r(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_2b
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/D0;->a:Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_12

    goto/16 :goto_8

    :cond_12
    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    add-int/2addr v3, v5

    mul-int/2addr v3, v2

    move v2, v3

    goto/16 :goto_c

    :pswitch_2c
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->d(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_2d
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->f(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_2e
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->h(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_2f
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->u(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_30
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->j(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_31
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->d(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_32
    invoke-static {v2, v3, v1}, Lcom/google/protobuf/s0;->v(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/D0;->f(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_33
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/p0;

    invoke-virtual {v0, v6}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/r;->e(ILcom/google/protobuf/p0;Lcom/google/protobuf/C0;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_34
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v4

    shl-long v14, v2, v5

    const/16 v12, 0x3f

    shr-long/2addr v2, v12

    xor-long/2addr v2, v14

    invoke-static {v2, v3}, Lcom/google/protobuf/r;->l(J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_35
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    shl-int/lit8 v4, v2, 0x1

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/protobuf/r;->k(I)I

    move-result v2

    goto/16 :goto_3

    :pswitch_36
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v2

    goto/16 :goto_4

    :pswitch_37
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v2

    goto/16 :goto_5

    :pswitch_38
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->f(I)I

    move-result v2

    goto/16 :goto_3

    :pswitch_39
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/r;->j(II)I

    move-result v2

    goto/16 :goto_c

    :pswitch_3a
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/r;->b(ILcom/google/protobuf/ByteString;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_3b
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lcom/google/protobuf/D0;->l(ILcom/google/protobuf/C0;Ljava/lang/Object;)I

    move-result v2

    goto/16 :goto_c

    :pswitch_3c
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/protobuf/ByteString;

    if-eqz v3, :cond_13

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-static {v4, v2}, Lcom/google/protobuf/r;->b(ILcom/google/protobuf/ByteString;)I

    move-result v2

    goto :goto_b

    :cond_13
    check-cast v2, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->h(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_6

    :goto_b
    add-int/2addr v13, v2

    goto/16 :goto_d

    :pswitch_3d
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v2

    goto/16 :goto_7

    :pswitch_3e
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->c(I)I

    move-result v2

    goto :goto_c

    :pswitch_3f
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->d(I)I

    move-result v2

    goto :goto_c

    :pswitch_40
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/protobuf/r;->f(I)I

    move-result v2

    goto/16 :goto_3

    :pswitch_41
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v4

    invoke-static {v2, v3}, Lcom/google/protobuf/r;->l(J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_42
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-static {v2, v3, v1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v4

    invoke-static {v2, v3}, Lcom/google/protobuf/r;->l(J)I

    move-result v2

    goto/16 :goto_2

    :pswitch_43
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v2

    goto/16 :goto_5

    :pswitch_44
    invoke-virtual {v0, v6, v1}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v4}, Lcom/google/protobuf/r;->i(I)I

    move-result v2

    goto/16 :goto_4

    :goto_c
    add-int/2addr v13, v2

    :cond_14
    :goto_d
    add-int/lit8 v6, v6, 0x3

    const/high16 v2, 0xff00000

    const v12, 0xfffff

    goto/16 :goto_0

    :cond_15
    invoke-virtual {v10, v1}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/protobuf/O0;->h(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v13

    goto/16 :goto_26

    :cond_16
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v6, 0xfffff

    :goto_e
    array-length v12, v11

    if-ge v2, v12, :cond_31

    invoke-virtual {v0, v2}, Lcom/google/protobuf/s0;->T(I)I

    move-result v12

    aget v13, v11, v2

    const/high16 v14, 0xff00000

    and-int v15, v12, v14

    ushr-int/lit8 v15, v15, 0x14

    const/16 v14, 0x11

    if-gt v15, v14, :cond_18

    add-int/lit8 v14, v2, 0x2

    aget v14, v11, v14

    const v18, 0xfffff

    and-int v5, v14, v18

    ushr-int/lit8 v18, v14, 0x14

    const/16 v19, 0x1

    shl-int v18, v19, v18

    if-eq v5, v6, :cond_17

    move/from16 v20, v3

    int-to-long v3, v5

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    move v6, v5

    goto :goto_f

    :cond_17
    move/from16 v20, v3

    :goto_f
    const v5, 0xfffff

    goto :goto_11

    :cond_18
    move/from16 v20, v3

    if-eqz v9, :cond_19

    sget-object v3, Lcom/google/protobuf/FieldType;->d:Lcom/google/protobuf/FieldType;

    invoke-virtual {v3}, Lcom/google/protobuf/FieldType;->a()I

    move-result v3

    if-lt v15, v3, :cond_19

    sget-object v3, Lcom/google/protobuf/FieldType;->e:Lcom/google/protobuf/FieldType;

    invoke-virtual {v3}, Lcom/google/protobuf/FieldType;->a()I

    move-result v3

    if-gt v15, v3, :cond_19

    add-int/lit8 v3, v2, 0x2

    aget v3, v11, v3

    const v5, 0xfffff

    and-int/2addr v3, v5

    move v14, v3

    goto :goto_10

    :cond_19
    const v5, 0xfffff

    const/4 v14, 0x0

    :goto_10
    const/16 v18, 0x0

    :goto_11
    and-int v3, v12, v5

    move v12, v6

    int-to-long v5, v3

    packed-switch v15, :pswitch_data_1

    goto/16 :goto_1b

    :pswitch_45
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/p0;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v5

    invoke-static {v13, v3, v5}, Lcom/google/protobuf/r;->e(ILcom/google/protobuf/p0;Lcom/google/protobuf/C0;)I

    move-result v3

    goto/16 :goto_16

    :pswitch_46
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v5, v6, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    const/4 v13, 0x1

    shl-long v14, v5, v13

    const/16 v13, 0x3f

    shr-long/2addr v5, v13

    xor-long/2addr v5, v14

    invoke-static {v5, v6}, Lcom/google/protobuf/r;->l(J)I

    move-result v5

    :goto_12
    add-int/2addr v3, v5

    goto/16 :goto_16

    :pswitch_47
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v5, v6, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    shl-int/lit8 v6, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v6

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v3

    :goto_13
    add-int/2addr v3, v5

    goto/16 :goto_16

    :pswitch_48
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    :goto_14
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_16

    :pswitch_49
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    goto/16 :goto_15

    :pswitch_4a
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v5, v6, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->f(I)I

    move-result v3

    goto :goto_13

    :pswitch_4b
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v5, v6, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v13, v3}, Lcom/google/protobuf/r;->j(II)I

    move-result v3

    goto/16 :goto_16

    :pswitch_4c
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v13, v3}, Lcom/google/protobuf/r;->b(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_16

    :pswitch_4d
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v5

    invoke-static {v13, v5, v3}, Lcom/google/protobuf/D0;->l(ILcom/google/protobuf/C0;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_16

    :pswitch_4e
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lcom/google/protobuf/ByteString;

    if-eqz v5, :cond_1a

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v13, v3}, Lcom/google/protobuf/r;->b(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto :goto_15

    :cond_1a
    check-cast v3, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->h(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_15

    :pswitch_4f
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    const/4 v14, 0x1

    const/16 v17, 0x3f

    goto/16 :goto_21

    :pswitch_50
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v13}, Lcom/google/protobuf/r;->c(I)I

    move-result v3

    :goto_15
    const/16 v17, 0x3f

    goto/16 :goto_1d

    :pswitch_51
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v13}, Lcom/google/protobuf/r;->d(I)I

    move-result v3

    goto :goto_16

    :pswitch_52
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v5, v6, v1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->f(I)I

    move-result v3

    goto/16 :goto_13

    :pswitch_53
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v5, v6, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v5, v6}, Lcom/google/protobuf/r;->l(J)I

    move-result v5

    goto/16 :goto_12

    :pswitch_54
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v5, v6, v1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v5, v6}, Lcom/google/protobuf/r;->l(J)I

    move-result v5

    goto/16 :goto_12

    :pswitch_55
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    goto :goto_16

    :pswitch_56
    invoke-virtual {v0, v13, v2, v1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    goto/16 :goto_14

    :goto_16
    const/16 v17, 0x3f

    goto/16 :goto_1e

    :pswitch_57
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/google/protobuf/s0;->p(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v13, v3, v5}, Lcom/google/protobuf/j0;->b(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_16

    :pswitch_58
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v5

    sget-object v6, Lcom/google/protobuf/D0;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1b

    const/4 v3, 0x0

    goto :goto_16

    :cond_1b
    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_17
    if-ge v14, v6, :cond_1c

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v21, v3

    move-object/from16 v3, v18

    check-cast v3, Lcom/google/protobuf/p0;

    invoke-static {v13, v3, v5}, Lcom/google/protobuf/r;->e(ILcom/google/protobuf/p0;Lcom/google/protobuf/C0;)I

    move-result v3

    add-int/2addr v15, v3

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v21

    goto :goto_17

    :cond_1c
    move v3, v15

    goto :goto_16

    :pswitch_59
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->q(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_1d

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1d
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto/16 :goto_18

    :pswitch_5a
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->o(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_1e

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1e
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto/16 :goto_18

    :pswitch_5b
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_1f

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1f
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto/16 :goto_18

    :pswitch_5c
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_20

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_20
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto/16 :goto_18

    :pswitch_5d
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->c(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_21

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_21
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto/16 :goto_18

    :pswitch_5e
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->t(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_22

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_22
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto/16 :goto_18

    :pswitch_5f
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v5, Lcom/google/protobuf/D0;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_23

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_23
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto/16 :goto_18

    :pswitch_60
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_24

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_24
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto/16 :goto_18

    :pswitch_61
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_25

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_25
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto/16 :goto_18

    :pswitch_62
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_26

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_26
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto :goto_18

    :pswitch_63
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->v(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_27

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_27
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto :goto_18

    :pswitch_64
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->k(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_28

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_28
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto :goto_18

    :pswitch_65
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_29

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_29
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    goto :goto_18

    :pswitch_66
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/protobuf/D0;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_2c

    if-eqz v9, :cond_2a

    int-to-long v5, v14

    invoke-virtual {v8, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_2a
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v6

    :goto_18
    add-int/2addr v6, v5

    add-int/2addr v6, v3

    add-int v6, v6, v20

    move v3, v6

    goto/16 :goto_1a

    :pswitch_67
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->p(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_19

    :pswitch_68
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->n(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_19

    :pswitch_69
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_19

    :pswitch_6a
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->d(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_19

    :pswitch_6b
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->b(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_19

    :pswitch_6c
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->s(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_16

    :pswitch_6d
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->a(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_16

    :pswitch_6e
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v5

    invoke-static {v13, v3, v5}, Lcom/google/protobuf/D0;->m(ILjava/util/List;Lcom/google/protobuf/C0;)I

    move-result v3

    goto/16 :goto_16

    :pswitch_6f
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->r(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_16

    :pswitch_70
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v5, Lcom/google/protobuf/D0;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2b

    const/4 v3, 0x0

    goto :goto_19

    :cond_2b
    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    mul-int/2addr v5, v3

    move v3, v5

    goto :goto_19

    :pswitch_71
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->d(ILjava/util/List;)I

    move-result v3

    goto :goto_19

    :pswitch_72
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->f(ILjava/util/List;)I

    move-result v3

    goto :goto_19

    :pswitch_73
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->h(ILjava/util/List;)I

    move-result v3

    goto :goto_19

    :pswitch_74
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->u(ILjava/util/List;)I

    move-result v3

    goto :goto_19

    :pswitch_75
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->j(ILjava/util/List;)I

    move-result v3

    goto :goto_19

    :pswitch_76
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->d(ILjava/util/List;)I

    move-result v3

    :goto_19
    add-int v3, v20, v3

    :goto_1a
    const/4 v14, 0x1

    const/16 v17, 0x3f

    goto/16 :goto_23

    :pswitch_77
    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v13, v3}, Lcom/google/protobuf/D0;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_16

    :pswitch_78
    and-int v3, v4, v18

    if-eqz v3, :cond_2c

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/p0;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v5

    invoke-static {v13, v3, v5}, Lcom/google/protobuf/r;->e(ILcom/google/protobuf/p0;Lcom/google/protobuf/C0;)I

    move-result v3

    goto/16 :goto_16

    :cond_2c
    :goto_1b
    const/4 v14, 0x1

    const/16 v17, 0x3f

    goto/16 :goto_22

    :pswitch_79
    and-int v3, v4, v18

    if-eqz v3, :cond_2d

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    const/4 v13, 0x1

    shl-long v14, v5, v13

    const/16 v17, 0x3f

    shr-long v5, v5, v17

    xor-long/2addr v5, v14

    invoke-static {v5, v6}, Lcom/google/protobuf/r;->l(J)I

    move-result v5

    add-int/2addr v3, v5

    goto/16 :goto_1e

    :cond_2d
    const/16 v17, 0x3f

    goto/16 :goto_1f

    :pswitch_7a
    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_2f

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    shl-int/lit8 v6, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v6

    invoke-static {v3}, Lcom/google/protobuf/r;->k(I)I

    move-result v3

    :goto_1c
    add-int/2addr v3, v5

    goto :goto_1e

    :pswitch_7b
    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_2f

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    goto :goto_1e

    :pswitch_7c
    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_2f

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    :goto_1d
    add-int v3, v20, v3

    const/4 v14, 0x1

    goto/16 :goto_23

    :pswitch_7d
    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_2f

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->f(I)I

    move-result v3

    goto :goto_1c

    :pswitch_7e
    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_2f

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v13, v3}, Lcom/google/protobuf/r;->j(II)I

    move-result v3

    goto :goto_1e

    :pswitch_7f
    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_2f

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v13, v3}, Lcom/google/protobuf/r;->b(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto :goto_1e

    :pswitch_80
    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_2f

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v5

    invoke-static {v13, v5, v3}, Lcom/google/protobuf/D0;->l(ILcom/google/protobuf/C0;Ljava/lang/Object;)I

    move-result v3

    :goto_1e
    const/4 v14, 0x1

    goto/16 :goto_21

    :pswitch_81
    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_2f

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lcom/google/protobuf/ByteString;

    if-eqz v5, :cond_2e

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v13, v3}, Lcom/google/protobuf/r;->b(ILcom/google/protobuf/ByteString;)I

    move-result v3

    goto :goto_1d

    :cond_2e
    check-cast v3, Ljava/lang/String;

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->h(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_1d

    :pswitch_82
    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_2f

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    const/4 v14, 0x1

    add-int/2addr v3, v14

    goto/16 :goto_21

    :cond_2f
    :goto_1f
    const/4 v14, 0x1

    goto/16 :goto_22

    :pswitch_83
    const/4 v14, 0x1

    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_30

    invoke-static {v13}, Lcom/google/protobuf/r;->c(I)I

    move-result v3

    goto :goto_21

    :pswitch_84
    const/4 v14, 0x1

    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_30

    invoke-static {v13}, Lcom/google/protobuf/r;->d(I)I

    move-result v3

    goto :goto_21

    :pswitch_85
    const/4 v14, 0x1

    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_30

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v5

    invoke-static {v3}, Lcom/google/protobuf/r;->f(I)I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_21

    :pswitch_86
    const/4 v14, 0x1

    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_30

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v5, v6}, Lcom/google/protobuf/r;->l(J)I

    move-result v5

    :goto_20
    add-int/2addr v3, v5

    goto :goto_21

    :pswitch_87
    const/4 v14, 0x1

    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_30

    invoke-virtual {v8, v1, v5, v6}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    invoke-static {v5, v6}, Lcom/google/protobuf/r;->l(J)I

    move-result v5

    goto :goto_20

    :pswitch_88
    const/4 v14, 0x1

    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_30

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    goto :goto_21

    :pswitch_89
    const/4 v14, 0x1

    const/16 v17, 0x3f

    and-int v3, v4, v18

    if-eqz v3, :cond_30

    invoke-static {v13}, Lcom/google/protobuf/r;->i(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    :goto_21
    add-int v3, v20, v3

    goto :goto_23

    :cond_30
    :goto_22
    move/from16 v3, v20

    :goto_23
    add-int/lit8 v2, v2, 0x3

    move v6, v12

    move v5, v14

    goto/16 :goto_e

    :cond_31
    move/from16 v20, v3

    invoke-virtual {v10, v1}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/google/protobuf/O0;->h(Ljava/lang/Object;)I

    move-result v2

    add-int v2, v2, v20

    iget-boolean v3, v0, Lcom/google/protobuf/s0;->f:Z

    if-eqz v3, :cond_34

    iget-object v0, v0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/x;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object v0

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_24
    iget-object v1, v0, Lcom/google/protobuf/B;->a:Lcom/google/protobuf/L0;

    invoke-virtual {v1}, Lcom/google/protobuf/L0;->e()I

    move-result v3

    if-ge v4, v3, :cond_32

    invoke-virtual {v1, v4}, Lcom/google/protobuf/L0;->d(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/A;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/B;->d(Lcom/google/protobuf/A;Ljava/lang/Object;)I

    move-result v1

    add-int v16, v1, v16

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_32
    invoke-virtual {v1}, Lcom/google/protobuf/L0;->f()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/A;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/B;->d(Lcom/google/protobuf/A;Ljava/lang/Object;)I

    move-result v1

    add-int v16, v1, v16

    goto :goto_25

    :cond_33
    add-int v2, v2, v16

    :cond_34
    move v0, v2

    :goto_26
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/s0;->m:Lcom/google/protobuf/u0;

    iget-object p0, p0, Lcom/google/protobuf/s0;->e:Lcom/google/protobuf/p0;

    invoke-interface {v0, p0}, Lcom/google/protobuf/u0;->a(Lcom/google/protobuf/p0;)Lcom/google/protobuf/J;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 10

    iget-object v0, p0, Lcom/google/protobuf/s0;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/protobuf/s0;->T(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    const/16 v8, 0x4cf

    const/16 v9, 0x4d5

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/T;->a(J)I

    move-result v4

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/T;->a(J)I

    move-result v4

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/protobuf/T;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/T;->a(J)I

    move-result v4

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/s0;->D(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/T;->a(J)I

    move-result v4

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/s0;->E(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/T;->a(J)I

    move-result v4

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/T;->a(J)I

    move-result v4

    goto/16 :goto_3

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_3

    :pswitch_14
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/T;->a(J)I

    move-result v4

    goto/16 :goto_3

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/T;->a(J)I

    move-result v4

    goto/16 :goto_3

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_3

    :pswitch_1c
    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_0
    const/16 v4, 0x25

    :goto_1
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v4

    goto/16 :goto_4

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->g(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/google/protobuf/T;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    move v8, v9

    :goto_2
    move v4, v8

    goto :goto_3

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v4

    goto :goto_3

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/T;->a(J)I

    move-result v4

    goto :goto_3

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result v4

    goto :goto_3

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/T;->a(J)I

    move-result v4

    goto :goto_3

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/T;->a(J)I

    move-result v4

    goto :goto_3

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->l(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/protobuf/X0;->k(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/T;->a(J)I

    move-result v4

    :goto_3
    add-int/2addr v4, v3

    move v3, v4

    :cond_2
    :goto_4
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Lcom/google/protobuf/s0;->o:Lcom/google/protobuf/O0;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/O0;->g(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/P0;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    iget-boolean v1, p0, Lcom/google/protobuf/s0;->f:Z

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/protobuf/s0;->p:Lcom/google/protobuf/x;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/x;->c(Ljava/lang/Object;)Lcom/google/protobuf/B;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/protobuf/B;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/O0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/protobuf/s0;->a:[I

    aget v0, v0, p2

    invoke-virtual {p0, p2}, Lcom/google/protobuf/s0;->T(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/protobuf/s0;->o(I)Lcom/google/protobuf/M;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p3

    :cond_1
    iget-object v2, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/j0;

    invoke-interface {v2, p1}, Lcom/google/protobuf/j0;->h(Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/google/protobuf/s0;->p(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v2, p0}, Lcom/google/protobuf/j0;->e(Ljava/lang/Object;)Lcom/google/protobuf/h0;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/M;->isInRange(I)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p3, :cond_3

    invoke-virtual {p4, p5}, Lcom/google/protobuf/O0;->f(Ljava/lang/Object;)Lcom/google/protobuf/P0;

    move-result-object p3

    :cond_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/google/protobuf/i0;->a(Lcom/google/protobuf/h0;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    new-array v3, v2, [B

    sget-object v4, Lcom/google/protobuf/r;->b:Ljava/util/logging/Logger;

    new-instance v4, Lcom/google/protobuf/p;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Lcom/google/protobuf/p;-><init>([BII)V

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {v4, p0, v2, p2}, Lcom/google/protobuf/i0;->b(Lcom/google/protobuf/r;Lcom/google/protobuf/h0;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Lcom/google/protobuf/p;->J()I

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Lcom/google/protobuf/ByteString$LiteralByteString;

    invoke-direct {p2, v3}, Lcom/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    invoke-virtual {p4, p3, v0, p2}, Lcom/google/protobuf/O0;->d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Did not write as much data as expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    return-object p3
.end method

.method public final o(I)Lcom/google/protobuf/M;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/protobuf/s0;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/protobuf/M;

    return-object p0
.end method

.method public final p(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/s0;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final q(I)Lcom/google/protobuf/C0;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/protobuf/s0;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/protobuf/C0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/protobuf/z0;->c:Lcom/google/protobuf/z0;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/z0;->a(Ljava/lang/Class;)Lcom/google/protobuf/C0;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final s(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/protobuf/s0;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_11

    invoke-virtual {p0, p1}, Lcom/google/protobuf/s0;->T(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    const/high16 p1, 0xff00000

    and-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x14

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move v5, v6

    :cond_0
    return v5

    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    move v5, v6

    :cond_1
    return v5

    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_2

    move v5, v6

    :cond_2
    return v5

    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    move v5, v6

    :cond_3
    return v5

    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_4

    move v5, v6

    :cond_4
    return v5

    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_5

    move v5, v6

    :cond_5
    return v5

    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_6

    move v5, v6

    :cond_6
    return v5

    :pswitch_7
    sget-object p0, Lcom/google/protobuf/ByteString;->d:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    xor-int/2addr p0, v6

    return p0

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    move v5, v6

    :cond_7
    return v5

    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_8

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    goto :goto_0

    :cond_8
    instance-of p1, p0, Lcom/google/protobuf/ByteString;

    if-eqz p1, :cond_9

    sget-object p1, Lcom/google/protobuf/ByteString;->d:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_a
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->g(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_a

    move v5, v6

    :cond_a
    return v5

    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_b

    move v5, v6

    :cond_b
    return v5

    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_c

    move v5, v6

    :cond_c
    return v5

    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_d

    move v5, v6

    :cond_d
    return v5

    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->n(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_e

    move v5, v6

    :cond_e
    return v5

    :pswitch_10
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->l(JLjava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_f

    move v5, v6

    :cond_f
    return v5

    :pswitch_11
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/X0;->k(JLjava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_10

    move v5, v6

    :cond_10
    return v5

    :cond_11
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    invoke-static {v2, v3, p2}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_12

    move v5, v6

    :cond_12
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/protobuf/s0;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {v0, v1, p3}, Lcom/google/protobuf/X0;->m(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final w(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/protobuf/w;Lcom/google/protobuf/o;)V
    .locals 7

    invoke-virtual {p0, p2}, Lcom/google/protobuf/s0;->T(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    invoke-static {v0, v1, p1}, Lcom/google/protobuf/X0;->o(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lcom/google/protobuf/s0;->q:Lcom/google/protobuf/j0;

    if-nez p2, :cond_0

    invoke-interface {p0}, Lcom/google/protobuf/j0;->f()Lcom/google/protobuf/MapFieldLite;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Lcom/google/protobuf/j0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/google/protobuf/j0;->f()Lcom/google/protobuf/MapFieldLite;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Lcom/google/protobuf/j0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    invoke-static {v0, v1, p1, v2}, Lcom/google/protobuf/X0;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v2

    :cond_1
    :goto_0
    invoke-interface {p0, p2}, Lcom/google/protobuf/j0;->h(Ljava/lang/Object;)Lcom/google/protobuf/MapFieldLite;

    move-result-object p1

    invoke-interface {p0, p3}, Lcom/google/protobuf/j0;->e(Ljava/lang/Object;)Lcom/google/protobuf/h0;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p5, p2}, Lcom/google/protobuf/o;->x(I)V

    iget-object p3, p5, Lcom/google/protobuf/o;->a:Lcom/google/protobuf/n;

    invoke-virtual {p3}, Lcom/google/protobuf/n;->y()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/n;->h(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/h0;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/protobuf/h0;->d:Ljava/lang/Object;

    move-object v3, v2

    :goto_1
    :try_start_0
    invoke-virtual {p5}, Lcom/google/protobuf/o;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_7

    invoke-virtual {p3}, Lcom/google/protobuf/n;->e()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_5

    if-eq v4, p2, :cond_4

    :try_start_1
    invoke-virtual {p5}, Lcom/google/protobuf/o;->y()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {v4, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    iget-object v4, p0, Lcom/google/protobuf/h0;->c:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p5, v4, v5, p4}, Lcom/google/protobuf/o;->j(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/w;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/google/protobuf/h0;->a:Lcom/google/protobuf/WireFormat$FieldType;

    const/4 v5, 0x0

    invoke-virtual {p5, v4, v5, v5}, Lcom/google/protobuf/o;->j(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/google/protobuf/w;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {p5}, Lcom/google/protobuf/o;->y()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p0, v6}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/MapFieldLite;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/n;->g(I)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/n;->g(I)V

    throw p0
.end method

.method public final x(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1, p3}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/s0;->T(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    invoke-virtual {v2, p3, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/protobuf/s0;->t(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/protobuf/C0;->i()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4, v3}, Lcom/google/protobuf/C0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/s0;->O(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/s0;->t(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lcom/google/protobuf/C0;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/google/protobuf/C0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p2, v0, v1, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v3}, Lcom/google/protobuf/C0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/protobuf/s0;->a:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is present but null: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final y(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/protobuf/s0;->a:[I

    aget v1, v0, p1

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/s0;->T(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    invoke-virtual {v4, p3, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object p3

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/protobuf/s0;->u(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lcom/google/protobuf/s0;->t(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p2, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p3}, Lcom/google/protobuf/C0;->i()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, v5}, Lcom/google/protobuf/C0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/protobuf/s0;->P(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/s0;->t(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p3}, Lcom/google/protobuf/C0;->i()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1, p0}, Lcom/google/protobuf/C0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p2, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p1

    :cond_3
    invoke-interface {p3, p0, v5}, Lcom/google/protobuf/C0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Source subfield "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/protobuf/s0;->q(I)Lcom/google/protobuf/C0;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/s0;->T(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/s0;->s(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcom/google/protobuf/C0;->i()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/protobuf/s0;->s:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/s0;->t(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/protobuf/C0;->i()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/protobuf/C0;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method
