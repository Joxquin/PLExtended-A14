.class public final Landroidx/constraintlayout/core/widgets/analyzer/e;
.super Landroidx/constraintlayout/core/widgets/analyzer/f;
.source "SourceFile"


# instance fields
.field public final k:Landroidx/constraintlayout/core/widgets/analyzer/a;

.field public l:Lw/a;


# direct methods
.method public constructor <init>(Lv/f;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/f;-><init>(Lv/f;)V

    new-instance p1, Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/f;)V

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lw/a;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->i:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->j:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->k:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    iput-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->e:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    const/4 p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lw/e;)V
    .locals 10

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_e

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    if-eqz v2, :cond_5

    iget-boolean v2, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget v6, v2, Lv/f;->t:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    if-eq v6, v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, v2, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v6, :cond_5

    iget v6, v2, Lv/f;->a0:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    if-eqz v6, :cond_2

    if-eq v6, v0, :cond_1

    move v1, v5

    goto :goto_2

    :cond_1
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    int-to-float v1, v1

    iget v2, v2, Lv/f;->Z:F

    goto :goto_0

    :cond_2
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    int-to-float v1, v1

    iget v2, v2, Lv/f;->Z:F

    mul-float/2addr v1, v2

    goto :goto_1

    :cond_3
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    int-to-float v1, v1

    iget v2, v2, Lv/f;->Z:F

    :goto_0
    div-float/2addr v1, v2

    :goto_1
    add-float/2addr v1, v4

    float-to-int v1, v1

    :goto_2
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    goto :goto_3

    :cond_4
    iget-object v1, v2, Lv/f;->W:Lv/f;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v6, :cond_5

    iget v2, v2, Lv/f;->A:F

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    :cond_5
    :goto_3
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    if-nez v6, :cond_6

    goto/16 :goto_6

    :cond_6
    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v6, :cond_7

    iget-boolean v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v6, :cond_7

    return-void

    :cond_7
    iget-boolean v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    iget-object v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    if-nez v6, :cond_8

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v3, :cond_8

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget v9, v6, Lv/f;->s:I

    if-nez v9, :cond_8

    invoke-virtual {v6}, Lv/f;->z()Z

    move-result v6

    if-nez v6, :cond_8

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    add-int/2addr p0, v3

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v3, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    add-int/2addr v0, v3

    sub-int v3, v0, p0

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    return-void

    :cond_8
    iget-boolean v6, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v6, v3, :cond_a

    iget v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->a:I

    if-ne v3, v0, :cond_a

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-object v3, v8

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v6, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    add-int/2addr v0, v6

    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v6, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    add-int/2addr v3, v6

    sub-int/2addr v3, v0

    iget v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/b;->m:I

    if-ge v3, v0, :cond_9

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    goto :goto_4

    :cond_9
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    :cond_a
    :goto_4
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-nez v0, :cond_b

    return-void

    :cond_b
    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v6, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    add-int/2addr v6, v5

    iget v7, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget v8, v2, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    add-int/2addr v8, v7

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget p0, p0, Lv/f;->h0:F

    if-ne v0, v3, :cond_c

    move p0, v4

    goto :goto_5

    :cond_c
    move v5, v6

    move v7, v8

    :goto_5
    sub-int/2addr v7, v5

    iget v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    sub-int/2addr v7, v0

    int-to-float v0, v5

    add-float/2addr v0, v4

    int-to-float v3, v7

    mul-float/2addr v3, p0

    add-float/2addr v3, v0

    float-to-int p0, v3

    invoke-virtual {v1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    iget p0, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iget p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    add-int/2addr p0, p1

    invoke-virtual {v2, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    :cond_d
    :goto_6
    return-void

    :cond_e
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v1, p1, Lv/f;->L:Lv/d;

    iget-object p1, p1, Lv/f;->N:Lv/d;

    invoke-virtual {p0, v1, p1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->l(Lv/d;Lv/d;I)V

    return-void
.end method

.method public final d()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-boolean v2, v1, Lv/f;->a:Z

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lv/f;->l()I

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    :cond_0
    iget-boolean v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->g:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-object v6, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v7, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v8, 0x1

    if-nez v1, :cond_3

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v9, v1, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v8

    iput-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    iget-boolean v1, v1, Lv/f;->F:Z

    if-eqz v1, :cond_1

    new-instance v1, Lw/a;

    invoke-direct {v1, v0}, Lw/a;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/f;)V

    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lw/a;

    :cond_1
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v1, v5, :cond_4

    if-ne v1, v2, :cond_2

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v2, v2, Lv/f;->W:Lv/f;

    if-eqz v2, :cond_2

    iget-object v9, v2, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v8

    if-ne v9, v4, :cond_2

    invoke-virtual {v2}, Lv/f;->l()I

    move-result v1

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v4, v4, Lv/f;->L:Lv/d;

    invoke-virtual {v4}, Lv/d;->e()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v4, v4, Lv/f;->N:Lv/d;

    invoke-virtual {v4}, Lv/d;->e()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v5, v5, Lv/f;->L:Lv/d;

    invoke-virtual {v5}, Lv/d;->e()I

    move-result v5

    invoke-static {v7, v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    iget-object v2, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v0, v0, Lv/f;->N:Lv/d;

    invoke-virtual {v0}, Lv/d;->e()I

    move-result v0

    neg-int v0, v0

    invoke-static {v6, v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    return-void

    :cond_2
    if-ne v1, v4, :cond_4

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    invoke-virtual {v1}, Lv/f;->l()I

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/b;->d(I)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v2, v1, Lv/f;->W:Lv/f;

    if-eqz v2, :cond_4

    iget-object v9, v2, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v8

    if-ne v9, v4, :cond_4

    iget-object v3, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v1, v1, Lv/f;->L:Lv/d;

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    invoke-static {v7, v3, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    iget-object v1, v2, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v0, v0, Lv/f;->N:Lv/d;

    invoke-virtual {v0}, Lv/d;->e()I

    move-result v0

    neg-int v0, v0

    invoke-static {v6, v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    return-void

    :cond_4
    :goto_0
    iget-boolean v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    const/4 v4, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eqz v1, :cond_d

    iget-object v12, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-boolean v13, v12, Lv/f;->a:Z

    if-eqz v13, :cond_d

    iget-object v1, v12, Lv/f;->S:[Lv/d;

    aget-object v5, v1, v10

    iget-object v13, v5, Lv/d;->f:Lv/d;

    if-eqz v13, :cond_8

    aget-object v14, v1, v11

    iget-object v14, v14, Lv/d;->f:Lv/d;

    if-eqz v14, :cond_8

    invoke-virtual {v12}, Lv/f;->z()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v1, v1, Lv/f;->S:[Lv/d;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    iput v1, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v1, v1, Lv/f;->S:[Lv/d;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    neg-int v1, v1

    iput v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    goto :goto_1

    :cond_5
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v1, v1, Lv/f;->S:[Lv/d;

    aget-object v1, v1, v10

    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->h(Lv/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v3, v3, Lv/f;->S:[Lv/d;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v3

    invoke-static {v7, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    :cond_6
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v1, v1, Lv/f;->S:[Lv/d;

    aget-object v1, v1, v11

    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->h(Lv/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v3, v3, Lv/f;->S:[Lv/d;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lv/d;->e()I

    move-result v3

    neg-int v3, v3

    invoke-static {v6, v1, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    :cond_7
    iput-boolean v8, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    iput-boolean v8, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    :goto_1
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-boolean v1, v0, Lv/f;->F:Z

    if-eqz v1, :cond_1e

    iget v0, v0, Lv/f;->d0:I

    invoke-static {v2, v7, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    goto/16 :goto_5

    :cond_8
    if-eqz v13, :cond_9

    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/analyzer/f;->h(Lv/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-result-object v1

    if-eqz v1, :cond_1e

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v4, v4, Lv/f;->S:[Lv/d;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lv/d;->e()I

    move-result v4

    invoke-static {v7, v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-static {v6, v7, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-boolean v1, v0, Lv/f;->F:Z

    if-eqz v1, :cond_1e

    iget v0, v0, Lv/f;->d0:I

    invoke-static {v2, v7, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    goto/16 :goto_5

    :cond_9
    aget-object v5, v1, v11

    iget-object v8, v5, Lv/d;->f:Lv/d;

    if-eqz v8, :cond_b

    invoke-static {v5}, Landroidx/constraintlayout/core/widgets/analyzer/f;->h(Lv/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v4, v4, Lv/f;->S:[Lv/d;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lv/d;->e()I

    move-result v4

    neg-int v4, v4

    invoke-static {v6, v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    neg-int v1, v1

    invoke-static {v7, v6, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    :cond_a
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-boolean v1, v0, Lv/f;->F:Z

    if-eqz v1, :cond_1e

    iget v0, v0, Lv/f;->d0:I

    invoke-static {v2, v7, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    goto/16 :goto_5

    :cond_b
    aget-object v1, v1, v9

    iget-object v5, v1, Lv/d;->f:Lv/d;

    if-eqz v5, :cond_c

    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->h(Lv/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-static {v2, v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget v0, v0, Lv/f;->d0:I

    neg-int v0, v0

    invoke-static {v7, v2, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    iget v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-static {v6, v7, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    goto/16 :goto_5

    :cond_c
    instance-of v1, v12, Lv/k;

    if-nez v1, :cond_1e

    iget-object v1, v12, Lv/f;->W:Lv/f;

    if-eqz v1, :cond_1e

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->i:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    invoke-virtual {v12, v1}, Lv/f;->j(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Lv/d;

    move-result-object v1

    iget-object v1, v1, Lv/d;->f:Lv/d;

    if-nez v1, :cond_1e

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v4, v1, Lv/f;->W:Lv/f;

    iget-object v4, v4, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v1}, Lv/f;->t()I

    move-result v1

    invoke-static {v7, v4, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    iget v1, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    invoke-static {v6, v7, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-boolean v1, v0, Lv/f;->F:Z

    if-eqz v1, :cond_1e

    iget v0, v0, Lv/f;->d0:I

    invoke-static {v2, v7, v0}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    goto/16 :goto_5

    :cond_d
    iget-object v12, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    if-nez v1, :cond_12

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v5, :cond_12

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget v13, v1, Lv/f;->t:I

    iget-object v14, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    if-eq v13, v10, :cond_10

    if-eq v13, v11, :cond_e

    goto :goto_2

    :cond_e
    invoke-virtual {v1}, Lv/f;->z()Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget v13, v1, Lv/f;->s:I

    if-ne v13, v11, :cond_f

    goto :goto_2

    :cond_f
    iget-object v1, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    move-object v13, v12

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v8, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    move-object v1, v14

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_10
    iget-object v1, v1, Lv/f;->W:Lv/f;

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    iget-object v1, v1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    move-object v13, v12

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v8, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    move-object v1, v14

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_12
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->b(Lw/e;)V

    :cond_13
    :goto_2
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v13, v1, Lv/f;->S:[Lv/d;

    aget-object v14, v13, v10

    iget-object v15, v14, Lv/d;->f:Lv/d;

    if-eqz v15, :cond_17

    aget-object v4, v13, v11

    iget-object v4, v4, Lv/d;->f:Lv/d;

    if-eqz v4, :cond_17

    invoke-virtual {v1}, Lv/f;->z()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v1, v1, Lv/f;->S:[Lv/d;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    iput v1, v7, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v1, v1, Lv/f;->S:[Lv/d;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Lv/d;->e()I

    move-result v1

    neg-int v1, v1

    iput v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    goto :goto_3

    :cond_14
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v1, v1, Lv/f;->S:[Lv/d;

    aget-object v1, v1, v10

    invoke-static {v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->h(Lv/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-result-object v1

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v4, v4, Lv/f;->S:[Lv/d;

    aget-object v4, v4, v11

    invoke-static {v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->h(Lv/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-result-object v4

    if-eqz v1, :cond_15

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->b(Lw/e;)V

    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->b(Lw/e;)V

    :cond_16
    sget-object v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->e:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->j:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    :goto_3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-boolean v1, v1, Lv/f;->F:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lw/a;

    invoke-virtual {v0, v2, v7, v8, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->c(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    goto/16 :goto_4

    :cond_17
    const/4 v4, 0x0

    if-eqz v15, :cond_19

    invoke-static {v14}, Landroidx/constraintlayout/core/widgets/analyzer/f;->h(Lv/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v9, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v9, v9, Lv/f;->S:[Lv/d;

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lv/d;->e()I

    move-result v9

    invoke-static {v7, v1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    invoke-virtual {v0, v6, v7, v8, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->c(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-boolean v1, v1, Lv/f;->F:Z

    if-eqz v1, :cond_18

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lw/a;

    invoke-virtual {v0, v2, v7, v8, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->c(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    :cond_18
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v5, :cond_1d

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget v2, v1, Lv/f;->Z:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1d

    iget-object v1, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_1d

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v1, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    move-object v2, v12

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    goto/16 :goto_4

    :cond_19
    aget-object v10, v13, v11

    iget-object v14, v10, Lv/d;->f:Lv/d;

    const/4 v15, -0x1

    if-eqz v14, :cond_1a

    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/analyzer/f;->h(Lv/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v4, v4, Lv/f;->S:[Lv/d;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Lv/d;->e()I

    move-result v4

    neg-int v4, v4

    invoke-static {v6, v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    invoke-virtual {v0, v7, v6, v15, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->c(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-boolean v1, v1, Lv/f;->F:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lw/a;

    invoke-virtual {v0, v2, v7, v8, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->c(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    goto :goto_4

    :cond_1a
    aget-object v9, v13, v9

    iget-object v10, v9, Lv/d;->f:Lv/d;

    if-eqz v10, :cond_1b

    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/analyzer/f;->h(Lv/d;)Landroidx/constraintlayout/core/widgets/analyzer/a;

    move-result-object v1

    if-eqz v1, :cond_1d

    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lw/a;

    invoke-virtual {v0, v7, v2, v15, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->c(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    invoke-virtual {v0, v6, v7, v8, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->c(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    goto :goto_4

    :cond_1b
    instance-of v9, v1, Lv/k;

    if-nez v9, :cond_1d

    iget-object v9, v1, Lv/f;->W:Lv/f;

    if-eqz v9, :cond_1d

    iget-object v9, v9, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v1}, Lv/f;->t()I

    move-result v1

    invoke-static {v7, v9, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->b(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;I)V

    invoke-virtual {v0, v6, v7, v8, v3}, Landroidx/constraintlayout/core/widgets/analyzer/f;->c(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-boolean v1, v1, Lv/f;->F:Z

    if-eqz v1, :cond_1c

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/e;->l:Lw/a;

    invoke-virtual {v0, v2, v7, v8, v1}, Landroidx/constraintlayout/core/widgets/analyzer/f;->c(Landroidx/constraintlayout/core/widgets/analyzer/a;Landroidx/constraintlayout/core/widgets/analyzer/a;ILandroidx/constraintlayout/core/widgets/analyzer/b;)V

    :cond_1c
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v5, :cond_1d

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget v2, v1, Lv/f;->Z:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1d

    iget-object v1, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_1d

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v1, v1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    move-object v2, v12

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->a:Landroidx/constraintlayout/core/widgets/analyzer/f;

    :cond_1d
    :goto_4
    check-cast v12, Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1e

    iput-boolean v8, v3, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    :cond_1e
    :goto_5
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iput v0, p0, Lv/f;->c0:I

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->c:Lw/k;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->c()V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->c()V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->c()V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    return-void
.end method

.method public final k()Z
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget p0, p0, Lv/f;->t:I

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method public final m()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->g:Z

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->c()V

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->c()V

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/e;->k:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/a;->c()V

    iput-boolean v0, v1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/b;

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VerticalRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object p0, p0, Lv/f;->k0:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
