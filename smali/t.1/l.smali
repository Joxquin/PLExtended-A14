.class public final Lt/l;
.super Lt/d;
.source "SourceFile"


# instance fields
.field public f:[Lt/m;

.field public g:[Lt/m;

.field public h:I

.field public final i:Lt/k;


# direct methods
.method public constructor <init>(Lt/e;)V
    .locals 1

    invoke-direct {p0, p1}, Lt/d;-><init>(Lt/e;)V

    const/16 p1, 0x80

    new-array v0, p1, [Lt/m;

    iput-object v0, p0, Lt/l;->f:[Lt/m;

    new-array p1, p1, [Lt/m;

    iput-object p1, p0, Lt/l;->g:[Lt/m;

    const/4 p1, 0x0

    iput p1, p0, Lt/l;->h:I

    new-instance p1, Lt/k;

    invoke-direct {p1, p0}, Lt/k;-><init>(Lt/l;)V

    iput-object p1, p0, Lt/l;->i:Lt/k;

    return-void
.end method


# virtual methods
.method public final d([Z)Lt/m;
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    iget v4, p0, Lt/l;->h:I

    if-ge v2, v4, :cond_8

    iget-object v4, p0, Lt/l;->f:[Lt/m;

    aget-object v5, v4, v2

    iget v6, v5, Lt/m;->e:I

    aget-boolean v6, p1, v6

    if-eqz v6, :cond_0

    goto :goto_7

    :cond_0
    iget-object v6, p0, Lt/l;->i:Lt/k;

    iput-object v5, v6, Lt/k;->a:Lt/m;

    const/4 v5, 0x1

    const/16 v7, 0x8

    if-ne v3, v0, :cond_4

    :goto_1
    if-ltz v7, :cond_3

    iget-object v4, v6, Lt/k;->a:Lt/m;

    iget-object v4, v4, Lt/m;->k:[F

    aget v4, v4, v7

    const/4 v8, 0x0

    cmpl-float v9, v4, v8

    if-lez v9, :cond_1

    goto :goto_2

    :cond_1
    cmpg-float v4, v4, v8

    if-gez v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    move v5, v1

    :goto_3
    if-eqz v5, :cond_7

    goto :goto_6

    :cond_4
    aget-object v4, v4, v3

    :goto_4
    if-ltz v7, :cond_6

    iget-object v8, v4, Lt/m;->k:[F

    aget v8, v8, v7

    iget-object v9, v6, Lt/k;->a:Lt/m;

    iget-object v9, v9, Lt/m;->k:[F

    aget v9, v9, v7

    cmpl-float v10, v9, v8

    if-nez v10, :cond_5

    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_5
    cmpg-float v4, v9, v8

    if-gez v4, :cond_6

    goto :goto_5

    :cond_6
    move v5, v1

    :goto_5
    if-eqz v5, :cond_7

    :goto_6
    move v3, v2

    :cond_7
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    if-ne v3, v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    iget-object p0, p0, Lt/l;->f:[Lt/m;

    aget-object p0, p0, v3

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget p0, p0, Lt/l;->h:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i(Lt/f;Lt/d;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lt/d;->a:Lt/m;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Lt/d;->d:Lt/c;

    invoke-interface {v3}, Lt/c;->f()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_9

    invoke-interface {v3, v6}, Lt/c;->h(I)Lt/m;

    move-result-object v7

    invoke-interface {v3, v6}, Lt/c;->a(I)F

    move-result v8

    iget-object v9, v0, Lt/l;->i:Lt/k;

    iput-object v7, v9, Lt/k;->a:Lt/m;

    iget-boolean v10, v7, Lt/m;->d:Z

    const/4 v11, 0x1

    const v12, 0x38d1b717    # 1.0E-4f

    const/16 v13, 0x9

    const/4 v14, 0x0

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v13, :cond_2

    iget-object v15, v9, Lt/k;->a:Lt/m;

    iget-object v15, v15, Lt/m;->k:[F

    aget v16, v15, v10

    iget-object v5, v2, Lt/m;->k:[F

    aget v5, v5, v10

    mul-float/2addr v5, v8

    add-float v5, v5, v16

    aput v5, v15, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v12

    if-gez v5, :cond_1

    iget-object v5, v9, Lt/k;->a:Lt/m;

    iget-object v5, v5, Lt/m;->k:[F

    aput v14, v5, v10

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-eqz v11, :cond_3

    iget-object v5, v9, Lt/k;->a:Lt/m;

    iget-object v9, v9, Lt/k;->b:Lt/l;

    invoke-virtual {v9, v5}, Lt/l;->k(Lt/m;)V

    :cond_3
    const/4 v11, 0x0

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v13, :cond_7

    iget-object v10, v2, Lt/m;->k:[F

    aget v10, v10, v5

    cmpl-float v15, v10, v14

    if-eqz v15, :cond_6

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v15, v15, v12

    if-gez v15, :cond_5

    move v10, v14

    :cond_5
    iget-object v15, v9, Lt/k;->a:Lt/m;

    iget-object v15, v15, Lt/m;->k:[F

    aput v10, v15, v5

    goto :goto_4

    :cond_6
    iget-object v10, v9, Lt/k;->a:Lt/m;

    iget-object v10, v10, Lt/m;->k:[F

    aput v14, v10, v5

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    :goto_5
    if-eqz v11, :cond_8

    invoke-virtual {v0, v7}, Lt/l;->j(Lt/m;)V

    :cond_8
    iget v5, v0, Lt/d;->b:F

    iget v7, v1, Lt/d;->b:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    iput v7, v0, Lt/d;->b:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_9
    invoke-virtual {v0, v2}, Lt/l;->k(Lt/m;)V

    return-void
.end method

.method public final j(Lt/m;)V
    .locals 5

    iget v0, p0, Lt/l;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lt/l;->f:[Lt/m;

    array-length v3, v2

    if-le v0, v3, :cond_0

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt/m;

    iput-object v0, p0, Lt/l;->f:[Lt/m;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt/m;

    iput-object v0, p0, Lt/l;->g:[Lt/m;

    :cond_0
    iget-object v0, p0, Lt/l;->f:[Lt/m;

    iget v2, p0, Lt/l;->h:I

    aput-object p1, v0, v2

    add-int/2addr v2, v1

    iput v2, p0, Lt/l;->h:I

    if-le v2, v1, :cond_2

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iget v0, v0, Lt/m;->e:I

    iget v2, p1, Lt/m;->e:I

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget v3, p0, Lt/l;->h:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lt/l;->g:[Lt/m;

    iget-object v4, p0, Lt/l;->f:[Lt/m;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lt/l;->g:[Lt/m;

    new-instance v4, Lt/i;

    invoke-direct {v4}, Lt/i;-><init>()V

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :goto_1
    iget v2, p0, Lt/l;->h:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lt/l;->f:[Lt/m;

    iget-object v3, p0, Lt/l;->g:[Lt/m;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-boolean v1, p1, Lt/m;->d:Z

    invoke-virtual {p1, p0}, Lt/m;->a(Lt/d;)V

    return-void
.end method

.method public final k(Lt/m;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lt/l;->h:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lt/l;->f:[Lt/m;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    iget v2, p0, Lt/l;->h:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    iget-object v2, p0, Lt/l;->f:[Lt/m;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aput-object v4, v2, v1

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lt/l;->h:I

    iput-boolean v0, p1, Lt/m;->d:Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " goal -> ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lt/d;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ") : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lt/l;->h:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lt/l;->f:[Lt/m;

    aget-object v2, v2, v1

    iget-object v3, p0, Lt/l;->i:Lt/k;

    iput-object v2, v3, Lt/k;->a:Lt/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
