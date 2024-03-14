.class public final Lv/j;
.super Lv/f;
.source "SourceFile"


# instance fields
.field public s0:F

.field public t0:I

.field public u0:I

.field public v0:Lv/d;

.field public w0:I

.field public x0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lv/f;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lv/j;->s0:F

    const/4 v0, -0x1

    iput v0, p0, Lv/j;->t0:I

    iput v0, p0, Lv/j;->u0:I

    iget-object v0, p0, Lv/f;->L:Lv/d;

    iput-object v0, p0, Lv/j;->v0:Lv/d;

    const/4 v0, 0x0

    iput v0, p0, Lv/j;->w0:I

    iget-object v1, p0, Lv/f;->T:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lv/f;->T:Ljava/util/ArrayList;

    iget-object v2, p0, Lv/j;->v0:Lv/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lv/f;->S:[Lv/d;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lv/f;->S:[Lv/d;

    iget-object v3, p0, Lv/j;->v0:Lv/d;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 0

    iget-boolean p0, p0, Lv/j;->x0:Z

    return p0
.end method

.method public final C()Z
    .locals 0

    iget-boolean p0, p0, Lv/j;->x0:Z

    return p0
.end method

.method public final Q(Lt/f;Z)V
    .locals 2

    iget-object p2, p0, Lv/f;->W:Lv/f;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lv/j;->v0:Lv/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lt/f;->n(Lv/d;)I

    move-result p1

    iget p2, p0, Lv/j;->w0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iput p1, p0, Lv/f;->b0:I

    iput v1, p0, Lv/f;->c0:I

    iget-object p1, p0, Lv/f;->W:Lv/f;

    invoke-virtual {p1}, Lv/f;->l()I

    move-result p1

    invoke-virtual {p0, p1}, Lv/f;->L(I)V

    invoke-virtual {p0, v1}, Lv/f;->O(I)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lv/f;->b0:I

    iput p1, p0, Lv/f;->c0:I

    iget-object p1, p0, Lv/f;->W:Lv/f;

    invoke-virtual {p1}, Lv/f;->r()I

    move-result p1

    invoke-virtual {p0, p1}, Lv/f;->O(I)V

    invoke-virtual {p0, v1}, Lv/f;->L(I)V

    :goto_0
    return-void
.end method

.method public final R(I)V
    .locals 1

    iget-object v0, p0, Lv/j;->v0:Lv/d;

    invoke-virtual {v0, p1}, Lv/d;->l(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lv/j;->x0:Z

    return-void
.end method

.method public final S(I)V
    .locals 3

    iget v0, p0, Lv/j;->w0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lv/j;->w0:I

    iget-object p1, p0, Lv/f;->T:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lv/j;->w0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lv/f;->K:Lv/d;

    iput-object v0, p0, Lv/j;->v0:Lv/d;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lv/f;->L:Lv/d;

    iput-object v0, p0, Lv/j;->v0:Lv/d;

    :goto_0
    iget-object v0, p0, Lv/j;->v0:Lv/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lv/f;->S:[Lv/d;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lv/j;->v0:Lv/d;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final c(Lt/f;Z)V
    .locals 7

    iget-object p2, p0, Lv/f;->W:Lv/f;

    check-cast p2, Lv/g;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->d:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->f:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v1}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v1

    iget-object v2, p0, Lv/f;->W:Lv/f;

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v5

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    iget v6, p0, Lv/j;->w0:I

    if-nez v6, :cond_3

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->e:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v0}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->g:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {p2, v1}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v1

    iget-object p2, p0, Lv/f;->W:Lv/f;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object p2, p2, v4

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    move v2, v4

    :cond_3
    iget-boolean p2, p0, Lv/j;->x0:Z

    const/4 v3, -0x1

    const/4 v4, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Lv/j;->v0:Lv/d;

    iget-boolean v6, p2, Lv/d;->c:Z

    if-eqz v6, :cond_6

    invoke-virtual {p1, p2}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object p2

    iget-object v6, p0, Lv/j;->v0:Lv/d;

    invoke-virtual {v6}, Lv/d;->d()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Lt/f;->d(Lt/m;I)V

    iget v6, p0, Lv/j;->t0:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v5, v4}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_2

    :cond_4
    iget v6, p0, Lv/j;->u0:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v1

    invoke-virtual {p1, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v5, v4}, Lt/f;->f(Lt/m;Lt/m;II)V

    invoke-virtual {p1, v1, p2, v5, v4}, Lt/f;->f(Lt/m;Lt/m;II)V

    :cond_5
    :goto_2
    iput-boolean v5, p0, Lv/j;->x0:Z

    return-void

    :cond_6
    iget p2, p0, Lv/j;->t0:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    iget-object p2, p0, Lv/j;->v0:Lv/d;

    invoke-virtual {p1, p2}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object p2

    invoke-virtual {p1, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v0

    iget p0, p0, Lv/j;->t0:I

    invoke-virtual {p1, p2, v0, p0, v6}, Lt/f;->e(Lt/m;Lt/m;II)V

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object p0

    invoke-virtual {p1, p0, p2, v5, v4}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_3

    :cond_7
    iget p2, p0, Lv/j;->u0:I

    if-eq p2, v3, :cond_8

    iget-object p2, p0, Lv/j;->v0:Lv/d;

    invoke-virtual {p1, p2}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object p2

    invoke-virtual {p1, v1}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v1

    iget p0, p0, Lv/j;->u0:I

    neg-int p0, p0

    invoke-virtual {p1, p2, v1, p0, v6}, Lt/f;->e(Lt/m;Lt/m;II)V

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object p0

    invoke-virtual {p1, p2, p0, v5, v4}, Lt/f;->f(Lt/m;Lt/m;II)V

    invoke-virtual {p1, v1, p2, v5, v4}, Lt/f;->f(Lt/m;Lt/m;II)V

    goto :goto_3

    :cond_8
    iget p2, p0, Lv/j;->s0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, Lv/j;->v0:Lv/d;

    invoke-virtual {p1, p2}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object p2

    invoke-virtual {p1, v1}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v1

    iget p0, p0, Lv/j;->s0:F

    invoke-virtual {p1}, Lt/f;->l()Lt/d;

    move-result-object v2

    iget-object v3, v2, Lt/d;->d:Lt/c;

    invoke-interface {v3, p2, v0}, Lt/c;->d(Lt/m;F)V

    iget-object p2, v2, Lt/d;->d:Lt/c;

    invoke-interface {p2, v1, p0}, Lt/c;->d(Lt/m;F)V

    invoke-virtual {p1, v2}, Lt/f;->c(Lt/d;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lv/j;->w0:I

    if-nez p1, :cond_2

    iget-object p0, p0, Lv/j;->v0:Lv/d;

    return-object p0

    :cond_1
    iget p1, p0, Lv/j;->w0:I

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lv/j;->v0:Lv/d;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
