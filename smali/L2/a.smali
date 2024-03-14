.class public final LL2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "StatsLog"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, LL2/a;->a:Z

    return-void
.end method

.method public static a(LK2/G;LL2/d;)V
    .locals 18

    move-object/from16 v0, p1

    iget-object v1, v0, LL2/d;->h:LL2/h;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v4, v1, LL2/h;->a:Ljava/util/List;

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v1, LL2/h;->a:Ljava/util/List;

    move v6, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LL2/f;

    invoke-static {}, Lr1/b;->d()Lr1/a;

    move-result-object v8

    iget v9, v7, LL2/f;->a:I

    invoke-virtual {v8, v9}, Lr1/a;->b(I)V

    iget v7, v7, LL2/f;->b:I

    invoke-virtual {v8, v7}, Lr1/a;->a(I)V

    invoke-virtual {v8}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v7

    check-cast v7, Lr1/b;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lr1/d;->d()Lr1/c;

    move-result-object v5

    iget v1, v1, LL2/h;->b:I

    invoke-virtual {v5, v1}, Lr1/c;->b(I)V

    invoke-virtual {v5, v4}, Lr1/c;->a(Ljava/lang/Iterable;)V

    invoke-virtual {v5}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v1

    check-cast v1, Lr1/d;

    invoke-virtual {v1}, Lcom/google/protobuf/b;->toByteArray()[B

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_2

    :cond_2
    :goto_1
    move-object/from16 v16, v3

    :goto_2
    iget-object v1, v0, LL2/d;->i:Ls1/a;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, LU2/c;->b()I

    move-result v3

    new-array v4, v3, [B

    :try_start_0
    new-instance v5, LU2/a;

    invoke-direct {v5, v4, v3}, LU2/a;-><init>([BI)V

    iget-object v3, v1, Ls1/a;->b:[Ls1/b;

    if-eqz v3, :cond_6

    array-length v3, v3

    if-lez v3, :cond_6

    :goto_3
    iget-object v3, v1, Ls1/a;->b:[Ls1/b;

    array-length v6, v3

    if-ge v2, v6, :cond_6

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, LU2/a;->d(I)V

    iget v6, v3, LU2/c;->a:I

    if-gez v6, :cond_3

    invoke-virtual {v3}, LU2/c;->b()I

    :cond_3
    iget v6, v3, LU2/c;->a:I

    invoke-virtual {v5, v6}, LU2/a;->d(I)V

    iget v6, v3, Ls1/b;->b:I

    if-eqz v6, :cond_4

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, LU2/a;->b(II)V

    :cond_4
    iget v3, v3, Ls1/b;->c:I

    if-eqz v3, :cond_5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3}, LU2/a;->b(II)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    iget-object v1, v5, LU2/a;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v17, v4

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    move-object/from16 v17, v3

    :goto_4
    const/16 v4, 0x160

    move-object/from16 v1, p0

    check-cast v1, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceEvent;->a()I

    move-result v5

    iget v6, v0, LL2/d;->a:I

    const/4 v7, 0x0

    iget v8, v0, LL2/d;->b:I

    iget v9, v0, LL2/d;->c:I

    iget v10, v0, LL2/d;->d:I

    iget v11, v0, LL2/d;->e:I

    iget v12, v0, LL2/d;->g:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v0, LL2/d;->f:I

    invoke-static/range {v4 .. v17}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIIIIIIII[B[B)V

    sget-boolean v2, LL2/a;->a:Z

    if-eqz v2, :cond_9

    invoke-virtual/range {p1 .. p1}, LL2/d;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\nLogged Smartspace event(%s), info(%s), callers=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatsLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method
