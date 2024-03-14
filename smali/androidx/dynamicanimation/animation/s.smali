.class public final Landroidx/dynamicanimation/animation/s;
.super Landroidx/dynamicanimation/animation/m;
.source "SourceFile"


# instance fields
.field public x:Landroidx/dynamicanimation/animation/t;

.field public y:F

.field public z:Z


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/m;-><init>(Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput p1, p0, Landroidx/dynamicanimation/animation/s;->y:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/s;->z:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/q;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2, p1}, Landroidx/dynamicanimation/animation/m;-><init>(Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 7
    iput p1, p0, Landroidx/dynamicanimation/animation/s;->y:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Landroidx/dynamicanimation/animation/s;->z:Z

    .line 9
    new-instance p1, Landroidx/dynamicanimation/animation/t;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/t;-><init>(F)V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    invoke-super {p0}, Landroidx/dynamicanimation/animation/m;->b()V

    iget v0, p0, Landroidx/dynamicanimation/animation/s;->y:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    if-nez v2, :cond_0

    new-instance v2, Landroidx/dynamicanimation/animation/t;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/t;-><init>(F)V

    iput-object v2, p0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    goto :goto_0

    :cond_0
    float-to-double v3, v0

    iput-wide v3, v2, Landroidx/dynamicanimation/animation/t;->i:D

    :goto_0
    iput v1, p0, Landroidx/dynamicanimation/animation/s;->y:F

    :cond_1
    return-void
.end method

.method public final g(F)V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    if-eqz v0, :cond_2

    iget-wide v1, v0, Landroidx/dynamicanimation/animation/t;->i:D

    double-to-float v1, v1

    float-to-double v1, v1

    iget v3, p0, Landroidx/dynamicanimation/animation/m;->g:F

    float-to-double v3, v3

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_1

    iget v3, p0, Landroidx/dynamicanimation/animation/m;->h:F

    float-to-double v3, v3

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_0

    iget v1, p0, Landroidx/dynamicanimation/animation/m;->j:F

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/t;->d:D

    const-wide v3, 0x404f400000000000L    # 62.5

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/t;->e:D

    invoke-super {p0}, Landroidx/dynamicanimation/animation/m;->h()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be less than the min value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Final position of the spring cannot be greater than the max value."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(J)Z
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/dynamicanimation/animation/s;->z:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    iget v1, v0, Landroidx/dynamicanimation/animation/s;->y:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    float-to-double v7, v1

    iput-wide v7, v6, Landroidx/dynamicanimation/animation/t;->i:D

    iput v5, v0, Landroidx/dynamicanimation/animation/s;->y:F

    :cond_0
    iget-object v1, v0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    iget-wide v5, v1, Landroidx/dynamicanimation/animation/t;->i:D

    double-to-float v1, v5

    iput v1, v0, Landroidx/dynamicanimation/animation/m;->b:F

    iput v2, v0, Landroidx/dynamicanimation/animation/m;->a:F

    iput-boolean v4, v0, Landroidx/dynamicanimation/animation/s;->z:Z

    return v3

    :cond_1
    iget v1, v0, Landroidx/dynamicanimation/animation/s;->y:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v6, v0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    iget v1, v0, Landroidx/dynamicanimation/animation/m;->b:F

    float-to-double v7, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/m;->a:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Landroidx/dynamicanimation/animation/t;->c(DDJ)Landroidx/dynamicanimation/animation/i;

    move-result-object v1

    iget-object v13, v0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    iget v6, v0, Landroidx/dynamicanimation/animation/s;->y:F

    float-to-double v6, v6

    iput-wide v6, v13, Landroidx/dynamicanimation/animation/t;->i:D

    iput v5, v0, Landroidx/dynamicanimation/animation/s;->y:F

    iget v5, v1, Landroidx/dynamicanimation/animation/i;->a:F

    float-to-double v14, v5

    iget v1, v1, Landroidx/dynamicanimation/animation/i;->b:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/t;->c(DDJ)Landroidx/dynamicanimation/animation/i;

    move-result-object v1

    iget v5, v1, Landroidx/dynamicanimation/animation/i;->a:F

    iput v5, v0, Landroidx/dynamicanimation/animation/m;->b:F

    iget v1, v1, Landroidx/dynamicanimation/animation/i;->b:F

    iput v1, v0, Landroidx/dynamicanimation/animation/m;->a:F

    goto :goto_0

    :cond_2
    iget-object v13, v0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    iget v1, v0, Landroidx/dynamicanimation/animation/m;->b:F

    float-to-double v14, v1

    iget v1, v0, Landroidx/dynamicanimation/animation/m;->a:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    invoke-virtual/range {v13 .. v19}, Landroidx/dynamicanimation/animation/t;->c(DDJ)Landroidx/dynamicanimation/animation/i;

    move-result-object v1

    iget v5, v1, Landroidx/dynamicanimation/animation/i;->a:F

    iput v5, v0, Landroidx/dynamicanimation/animation/m;->b:F

    iget v1, v1, Landroidx/dynamicanimation/animation/i;->b:F

    iput v1, v0, Landroidx/dynamicanimation/animation/m;->a:F

    :goto_0
    iget v1, v0, Landroidx/dynamicanimation/animation/m;->b:F

    iget v5, v0, Landroidx/dynamicanimation/animation/m;->h:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/m;->b:F

    iget v5, v0, Landroidx/dynamicanimation/animation/m;->g:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Landroidx/dynamicanimation/animation/m;->b:F

    iget v5, v0, Landroidx/dynamicanimation/animation/m;->a:F

    iget-object v6, v0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v7, v5

    iget-wide v9, v6, Landroidx/dynamicanimation/animation/t;->e:D

    cmpg-double v5, v7, v9

    if-gez v5, :cond_3

    iget-wide v7, v6, Landroidx/dynamicanimation/animation/t;->i:D

    double-to-float v5, v7

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v7, v1

    iget-wide v5, v6, Landroidx/dynamicanimation/animation/t;->d:D

    cmpg-double v1, v7, v5

    if-gez v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    if-eqz v1, :cond_4

    iget-object v1, v0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    iget-wide v4, v1, Landroidx/dynamicanimation/animation/t;->i:D

    double-to-float v1, v4

    iput v1, v0, Landroidx/dynamicanimation/animation/m;->b:F

    iput v2, v0, Landroidx/dynamicanimation/animation/m;->a:F

    return v3

    :cond_4
    return v4
.end method

.method public final j(F)V
    .locals 3

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/m;->f:Z

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/dynamicanimation/animation/s;->y:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/dynamicanimation/animation/t;

    invoke-direct {v0, p1}, Landroidx/dynamicanimation/animation/t;-><init>(F)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    :cond_1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    float-to-double v1, p1

    iput-wide v1, v0, Landroidx/dynamicanimation/animation/t;->i:D

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/s;->h()V

    :goto_0
    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/t;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/dynamicanimation/animation/m;->d()Landroidx/dynamicanimation/animation/g;

    move-result-object v0

    iget-object v0, v0, Landroidx/dynamicanimation/animation/g;->e:Landroidx/dynamicanimation/animation/r;

    check-cast v0, Landroidx/dynamicanimation/animation/e;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/m;->f:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/s;->z:Z

    :cond_1
    return-void

    :cond_2
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spring animations can only come to an end when there is damping"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
