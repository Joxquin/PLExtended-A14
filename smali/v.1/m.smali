.class public final Lv/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lv/m;->a:[Z

    return-void
.end method

.method public static a(Lv/g;Lt/f;Lv/f;)V
    .locals 9

    const/4 v0, -0x1

    iput v0, p2, Lv/f;->p:I

    iput v0, p2, Lv/f;->q:I

    iget-object v0, p0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v5, p2, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_0

    aget-object v0, v5, v1

    if-ne v0, v4, :cond_0

    iget-object v0, p2, Lv/f;->K:Lv/d;

    iget v1, v0, Lv/d;->g:I

    invoke-virtual {p0}, Lv/f;->r()I

    move-result v6

    iget-object v7, p2, Lv/f;->M:Lv/d;

    iget v8, v7, Lv/d;->g:I

    sub-int/2addr v6, v8

    invoke-virtual {p1, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v8

    iput-object v8, v0, Lv/d;->i:Lt/m;

    invoke-virtual {p1, v7}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v8

    iput-object v8, v7, Lv/d;->i:Lt/m;

    iget-object v0, v0, Lv/d;->i:Lt/m;

    invoke-virtual {p1, v0, v1}, Lt/f;->d(Lt/m;I)V

    iget-object v0, v7, Lv/d;->i:Lt/m;

    invoke-virtual {p1, v0, v6}, Lt/f;->d(Lt/m;I)V

    iput v3, p2, Lv/f;->p:I

    iput v1, p2, Lv/f;->b0:I

    sub-int/2addr v6, v1

    iput v6, p2, Lv/f;->X:I

    iget v0, p2, Lv/f;->e0:I

    if-ge v6, v0, :cond_0

    iput v0, p2, Lv/f;->X:I

    :cond_0
    iget-object v0, p0, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eq v0, v2, :cond_3

    aget-object v0, v5, v1

    if-ne v0, v4, :cond_3

    iget-object v0, p2, Lv/f;->L:Lv/d;

    iget v1, v0, Lv/d;->g:I

    invoke-virtual {p0}, Lv/f;->l()I

    move-result p0

    iget-object v2, p2, Lv/f;->N:Lv/d;

    iget v4, v2, Lv/d;->g:I

    sub-int/2addr p0, v4

    invoke-virtual {p1, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v4

    iput-object v4, v0, Lv/d;->i:Lt/m;

    invoke-virtual {p1, v2}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v4

    iput-object v4, v2, Lv/d;->i:Lt/m;

    iget-object v0, v0, Lv/d;->i:Lt/m;

    invoke-virtual {p1, v0, v1}, Lt/f;->d(Lt/m;I)V

    iget-object v0, v2, Lv/d;->i:Lt/m;

    invoke-virtual {p1, v0, p0}, Lt/f;->d(Lt/m;I)V

    iget v0, p2, Lv/f;->d0:I

    if-gtz v0, :cond_1

    iget v0, p2, Lv/f;->j0:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p2, Lv/f;->O:Lv/d;

    invoke-virtual {p1, v0}, Lt/f;->k(Ljava/lang/Object;)Lt/m;

    move-result-object v2

    iput-object v2, v0, Lv/d;->i:Lt/m;

    iget-object v0, v0, Lv/d;->i:Lt/m;

    iget v2, p2, Lv/f;->d0:I

    add-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Lt/f;->d(Lt/m;I)V

    :cond_2
    iput v3, p2, Lv/f;->q:I

    iput v1, p2, Lv/f;->c0:I

    sub-int/2addr p0, v1

    iput p0, p2, Lv/f;->Y:I

    iget p1, p2, Lv/f;->f0:I

    if-ge p0, p1, :cond_3

    iput p1, p2, Lv/f;->Y:I

    :cond_3
    return-void
.end method

.method public static final b(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
