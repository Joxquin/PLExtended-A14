.class public final Lkotlinx/coroutines/internal/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lkotlinx/coroutines/internal/E;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:Lt3/f;

.field public final e:Lt3/e;

.field public final f:Lt3/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/E;

    const-string v1, "REMOVE_FROZEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/E;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/s;->g:Lkotlinx/coroutines/internal/E;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/internal/s;->a:I

    iput-boolean p2, p0, Lkotlinx/coroutines/internal/s;->b:Z

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lkotlinx/coroutines/internal/s;->c:I

    const/4 v0, 0x0

    invoke-static {v0}, Lt3/c;->d(Ljava/lang/Object;)Lt3/f;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/s;->d:Lt3/f;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lt3/c;->c(J)Lt3/e;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    new-instance v0, Lt3/a;

    invoke-direct {v0, p1}, Lt3/a;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/s;->f:Lt3/a;

    const p0, 0x3fffffff    # 1.9999999f

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p2, p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const-string v2, "Check failed."

    if-eqz p0, :cond_3

    and-int p0, p1, p2

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "element"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    :cond_0
    iget-wide v3, v2, Lt3/e;->b:J

    const-wide/high16 v5, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    const-wide/high16 v0, 0x2000000000000000L

    and-long/2addr v0, v3

    cmp-long v0, v0, v7

    if-eqz v0, :cond_1

    const/4 v6, 0x2

    :cond_1
    return v6

    :cond_2
    const-wide/32 v9, 0x3fffffff

    and-long/2addr v9, v3

    const/4 v5, 0x0

    shr-long/2addr v9, v5

    long-to-int v9, v9

    const-wide v10, 0xfffffffc0000000L

    and-long/2addr v10, v3

    const/16 v12, 0x1e

    shr-long/2addr v10, v12

    long-to-int v10, v10

    iget v11, v0, Lkotlinx/coroutines/internal/s;->c:I

    add-int/lit8 v13, v10, 0x2

    and-int/2addr v13, v11

    and-int v14, v9, v11

    if-ne v13, v14, :cond_3

    return v6

    :cond_3
    iget-boolean v13, v0, Lkotlinx/coroutines/internal/s;->b:Z

    const v14, 0x3fffffff    # 1.9999999f

    if-nez v13, :cond_5

    iget-object v13, v0, Lkotlinx/coroutines/internal/s;->f:Lt3/a;

    and-int v15, v10, v11

    iget-object v13, v13, Lt3/a;->a:[Lt3/f;

    aget-object v13, v13, v15

    iget-object v13, v13, Lt3/f;->b:Ljava/lang/Object;

    if-eqz v13, :cond_5

    iget v3, v0, Lkotlinx/coroutines/internal/s;->a:I

    const/16 v4, 0x400

    if-lt v3, v4, :cond_4

    sub-int/2addr v10, v9

    and-int v4, v10, v14

    shr-int/lit8 v3, v3, 0x1

    if-le v4, v3, :cond_0

    :cond_4
    return v6

    :cond_5
    add-int/lit8 v6, v10, 0x1

    and-int/2addr v6, v14

    iget-object v9, v0, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    const-wide v13, -0xfffffffc0000001L    # -3.1050369248997324E231

    and-long/2addr v13, v3

    int-to-long v5, v6

    shl-long/2addr v5, v12

    or-long/2addr v5, v13

    invoke-virtual {v9, v3, v4, v5, v6}, Lt3/e;->b(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v0, Lkotlinx/coroutines/internal/s;->f:Lt3/a;

    and-int v3, v10, v11

    iget-object v2, v2, Lt3/a;->a:[Lt3/f;

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lt3/f;->d(Ljava/lang/Object;)V

    :cond_6
    iget-object v2, v0, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    iget-wide v2, v2, Lt3/e;->b:J

    const-wide/high16 v4, 0x1000000000000000L

    and-long/2addr v2, v4

    cmp-long v2, v2, v7

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/s;->c()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    iget-object v2, v0, Lkotlinx/coroutines/internal/s;->f:Lt3/a;

    iget v3, v0, Lkotlinx/coroutines/internal/s;->c:I

    and-int/2addr v3, v10

    iget-object v2, v2, Lt3/a;->a:[Lt3/f;

    aget-object v2, v2, v3

    iget-object v2, v2, Lt3/f;->b:Ljava/lang/Object;

    instance-of v3, v2, Lkotlinx/coroutines/internal/r;

    if-eqz v3, :cond_7

    check-cast v2, Lkotlinx/coroutines/internal/r;

    iget v2, v2, Lkotlinx/coroutines/internal/r;->a:I

    if-ne v2, v10, :cond_7

    iget-object v2, v0, Lkotlinx/coroutines/internal/s;->f:Lt3/a;

    iget v3, v0, Lkotlinx/coroutines/internal/s;->c:I

    and-int/2addr v3, v10

    iget-object v2, v2, Lt3/a;->a:[Lt3/f;

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Lt3/f;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 10

    iget-object p0, p0, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    :cond_0
    iget-wide v0, p0, Lt3/e;->b:J

    const-wide/high16 v2, 0x2000000000000000L

    and-long v4, v0, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    return v5

    :cond_1
    const-wide/high16 v8, 0x1000000000000000L

    and-long/2addr v8, v0

    cmp-long v4, v8, v6

    if-eqz v4, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    or-long/2addr v2, v0

    invoke-virtual {p0, v0, v1, v2, v3}, Lt3/e;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return v5
.end method

.method public final c()Lkotlinx/coroutines/internal/s;
    .locals 10

    iget-object v0, p0, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    :cond_0
    iget-wide v1, v0, Lt3/e;->b:J

    const-wide/high16 v3, 0x1000000000000000L

    and-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    or-long/2addr v3, v1

    invoke-virtual {v0, v1, v2, v3, v4}, Lt3/e;->b(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide v1, v3

    :goto_0
    iget-object v3, p0, Lkotlinx/coroutines/internal/s;->d:Lt3/f;

    :goto_1
    iget-object v0, v3, Lt3/f;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/s;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/internal/s;->d:Lt3/f;

    new-instance v4, Lkotlinx/coroutines/internal/s;

    iget v5, p0, Lkotlinx/coroutines/internal/s;->a:I

    mul-int/lit8 v5, v5, 0x2

    iget-boolean v6, p0, Lkotlinx/coroutines/internal/s;->b:Z

    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/internal/s;-><init>(IZ)V

    const-wide/32 v5, 0x3fffffff

    and-long/2addr v5, v1

    const/4 v7, 0x0

    shr-long/2addr v5, v7

    long-to-int v5, v5

    const-wide v6, 0xfffffffc0000000L

    and-long/2addr v6, v1

    const/16 v8, 0x1e

    shr-long/2addr v6, v8

    long-to-int v6, v6

    :goto_2
    iget v7, p0, Lkotlinx/coroutines/internal/s;->c:I

    and-int v8, v5, v7

    and-int/2addr v7, v6

    if-eq v8, v7, :cond_4

    iget-object v7, p0, Lkotlinx/coroutines/internal/s;->f:Lt3/a;

    iget-object v7, v7, Lt3/a;->a:[Lt3/f;

    aget-object v7, v7, v8

    iget-object v7, v7, Lt3/f;->b:Ljava/lang/Object;

    if-nez v7, :cond_3

    new-instance v7, Lkotlinx/coroutines/internal/r;

    invoke-direct {v7, v5}, Lkotlinx/coroutines/internal/r;-><init>(I)V

    :cond_3
    iget-object v8, v4, Lkotlinx/coroutines/internal/s;->f:Lt3/a;

    iget v9, v4, Lkotlinx/coroutines/internal/s;->c:I

    and-int/2addr v9, v5

    iget-object v8, v8, Lt3/a;->a:[Lt3/f;

    aget-object v8, v8, v9

    invoke-virtual {v8, v7}, Lt3/f;->d(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, v4, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    const-wide v6, -0x1000000000000001L    # -3.1050361846014175E231

    and-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Lt3/e;->d(J)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Lt3/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final d()Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    :cond_0
    iget-wide v2, v1, Lt3/e;->b:J

    const-wide/high16 v4, 0x1000000000000000L

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    sget-object v0, Lkotlinx/coroutines/internal/s;->g:Lkotlinx/coroutines/internal/E;

    return-object v0

    :cond_1
    const-wide/32 v6, 0x3fffffff

    and-long v10, v2, v6

    const/4 v12, 0x0

    shr-long/2addr v10, v12

    long-to-int v10, v10

    const-wide v13, 0xfffffffc0000000L

    and-long/2addr v13, v2

    const/16 v11, 0x1e

    shr-long/2addr v13, v11

    long-to-int v11, v13

    iget v13, v0, Lkotlinx/coroutines/internal/s;->c:I

    and-int/2addr v11, v13

    and-int/2addr v13, v10

    const/4 v14, 0x0

    if-ne v11, v13, :cond_2

    return-object v14

    :cond_2
    iget-object v11, v0, Lkotlinx/coroutines/internal/s;->f:Lt3/a;

    iget-object v11, v11, Lt3/a;->a:[Lt3/f;

    aget-object v11, v11, v13

    iget-object v11, v11, Lt3/f;->b:Ljava/lang/Object;

    if-nez v11, :cond_3

    iget-boolean v2, v0, Lkotlinx/coroutines/internal/s;->b:Z

    if-eqz v2, :cond_0

    return-object v14

    :cond_3
    instance-of v13, v11, Lkotlinx/coroutines/internal/r;

    if-eqz v13, :cond_4

    return-object v14

    :cond_4
    add-int/lit8 v13, v10, 0x1

    const v15, 0x3fffffff    # 1.9999999f

    and-int/2addr v13, v15

    iget-object v15, v0, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    const-wide/32 v16, -0x40000000

    and-long v18, v2, v16

    int-to-long v8, v13

    shl-long/2addr v8, v12

    or-long v4, v8, v18

    invoke-virtual {v15, v2, v3, v4, v5}, Lt3/e;->b(JJ)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, v0, Lkotlinx/coroutines/internal/s;->f:Lt3/a;

    iget v0, v0, Lkotlinx/coroutines/internal/s;->c:I

    and-int/2addr v0, v10

    iget-object v1, v1, Lt3/a;->a:[Lt3/f;

    aget-object v0, v1, v0

    invoke-virtual {v0, v14}, Lt3/f;->d(Ljava/lang/Object;)V

    return-object v11

    :cond_5
    iget-boolean v2, v0, Lkotlinx/coroutines/internal/s;->b:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    :goto_0
    iget-object v3, v2, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    :goto_1
    iget-wide v0, v3, Lt3/e;->b:J

    and-long v4, v0, v6

    shr-long/2addr v4, v12

    long-to-int v4, v4

    const-wide/high16 v18, 0x1000000000000000L

    and-long v22, v0, v18

    const-wide/16 v20, 0x0

    cmp-long v5, v22, v20

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/s;->c()Lkotlinx/coroutines/internal/s;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_6
    iget-object v5, v2, Lkotlinx/coroutines/internal/s;->e:Lt3/e;

    and-long v22, v0, v16

    or-long v6, v8, v22

    invoke-virtual {v5, v0, v1, v6, v7}, Lt3/e;->b(JJ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Lkotlinx/coroutines/internal/s;->f:Lt3/a;

    iget v1, v2, Lkotlinx/coroutines/internal/s;->c:I

    and-int/2addr v1, v4

    iget-object v0, v0, Lt3/a;->a:[Lt3/f;

    aget-object v0, v0, v1

    invoke-virtual {v0, v14}, Lt3/f;->d(Ljava/lang/Object;)V

    move-object v2, v14

    :goto_2
    if-nez v2, :cond_7

    return-object v11

    :cond_7
    const-wide/32 v6, 0x3fffffff

    goto :goto_0

    :cond_8
    const-wide/32 v6, 0x3fffffff

    goto :goto_1
.end method
