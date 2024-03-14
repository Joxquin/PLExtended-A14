.class public final Lcom/android/launcher3/anim/FlingSpringAnim;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mFlingAnim:Landroidx/dynamicanimation/animation/o;

.field private final mSkipFlingAnim:Z

.field private mSpringAnim:Landroidx/dynamicanimation/animation/s;

.field private mTargetPosition:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Landroidx/dynamicanimation/animation/q;FFFFFFFFLcom/android/quickstep/util/F;)V
    .locals 10

    move-object v1, p0

    move/from16 v0, p6

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Ln1/m;

    move-result-object v4

    const v5, 0x7f0704e2

    invoke-interface {v4, v5}, Ln1/m;->getFloat(I)F

    move-result v4

    new-instance v7, Landroidx/dynamicanimation/animation/o;

    move-object v5, p1

    move-object v6, p3

    invoke-direct {v7, p3, p1}, Landroidx/dynamicanimation/animation/o;-><init>(Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;)V

    const/4 v8, 0x0

    cmpg-float v9, v4, v8

    if-lez v9, :cond_3

    const v9, -0x3f79999a    # -4.2f

    mul-float/2addr v4, v9

    iget-object v9, v7, Landroidx/dynamicanimation/animation/o;->x:Landroidx/dynamicanimation/animation/n;

    iput v4, v9, Landroidx/dynamicanimation/animation/n;->a:F

    move/from16 v4, p7

    invoke-virtual {v7, v4}, Landroidx/dynamicanimation/animation/m;->e(F)V

    iput v0, v7, Landroidx/dynamicanimation/animation/m;->a:F

    iput v2, v7, Landroidx/dynamicanimation/animation/m;->h:F

    iput v3, v7, Landroidx/dynamicanimation/animation/m;->g:F

    iput-object v7, v1, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/o;

    move v4, p5

    iput v4, v1, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_0

    cmpg-float v2, v0, v8

    if-ltz v2, :cond_1

    :cond_0
    cmpl-float v2, p4, v3

    if-ltz v2, :cond_2

    cmpl-float v0, v0, v8

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/android/launcher3/anim/FlingSpringAnim;->mSkipFlingAnim:Z

    new-instance v8, Lcom/android/launcher3/anim/h;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move/from16 v4, p11

    move/from16 v5, p10

    move-object/from16 v6, p12

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/anim/h;-><init>(Lcom/android/launcher3/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/q;FFLcom/android/quickstep/util/F;)V

    invoke-virtual {v7, v8}, Landroidx/dynamicanimation/animation/m;->a(Landroidx/dynamicanimation/animation/j;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Friction must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/android/launcher3/anim/FlingSpringAnim;Ljava/lang/Object;Landroidx/dynamicanimation/animation/q;FFLandroidx/dynamicanimation/animation/j;FF)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/dynamicanimation/animation/s;

    invoke-direct {v0, p2, p1}, Landroidx/dynamicanimation/animation/s;-><init>(Landroidx/dynamicanimation/animation/q;Ljava/lang/Object;)V

    iput p6, v0, Landroidx/dynamicanimation/animation/m;->b:F

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/dynamicanimation/animation/m;->c:Z

    iput p7, v0, Landroidx/dynamicanimation/animation/m;->a:F

    new-instance p1, Landroidx/dynamicanimation/animation/t;

    iget p2, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    invoke-direct {p1, p2}, Landroidx/dynamicanimation/animation/t;-><init>(F)V

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/t;->b(F)V

    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/t;->a(F)V

    iput-object p1, v0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    iput-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/s;

    invoke-virtual {v0, p5}, Landroidx/dynamicanimation/animation/m;->a(Landroidx/dynamicanimation/animation/j;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/s;

    iget p0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/s;->j(F)V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/o;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/m;->b()V

    iget-object p0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/s;

    iget-object v0, p0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/t;->b:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/s;->k()V

    :cond_1
    return-void
.end method

.method public final getTargetPosition()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    return p0
.end method

.method public final start()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/o;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/m;->h()V

    iget-boolean p0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSkipFlingAnim:Z

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/m;->b()V

    :cond_0
    return-void
.end method

.method public final updatePosition(FF)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mFlingAnim:Landroidx/dynamicanimation/animation/o;

    iput v0, v1, Landroidx/dynamicanimation/animation/m;->h:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, v1, Landroidx/dynamicanimation/animation/m;->g:F

    iput p2, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mTargetPosition:F

    iget-object p0, p0, Lcom/android/launcher3/anim/FlingSpringAnim;->mSpringAnim:Landroidx/dynamicanimation/animation/s;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/s;->j(F)V

    :cond_0
    return-void
.end method
