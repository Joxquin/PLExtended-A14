.class public final Lw/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lw/b;

.field public final c:Lv/g;


# direct methods
.method public constructor <init>(Lv/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/c;->a:Ljava/util/ArrayList;

    new-instance v0, Lw/b;

    invoke-direct {v0}, Lw/b;-><init>()V

    iput-object v0, p0, Lw/c;->b:Lw/b;

    iput-object p1, p0, Lw/c;->c:Lv/g;

    return-void
.end method


# virtual methods
.method public final a(ILv/f;Landroidx/constraintlayout/widget/e;)Z
    .locals 6

    iget-object v0, p2, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-object p0, p0, Lw/c;->b:Lw/b;

    iput-object v2, p0, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, p0, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p2}, Lv/f;->r()I

    move-result v0

    iput v0, p0, Lw/b;->c:I

    invoke-virtual {p2}, Lv/f;->l()I

    move-result v0

    iput v0, p0, Lw/b;->d:I

    iput-boolean v1, p0, Lw/b;->i:Z

    iput p1, p0, Lw/b;->j:I

    iget-object p1, p0, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne p1, v0, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object v3, p0, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v3, 0x0

    if-eqz p1, :cond_2

    iget p1, p2, Lv/f;->Z:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v1

    :goto_2
    if-eqz v0, :cond_3

    iget v0, p2, Lv/f;->Z:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->d:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v4, 0x4

    iget-object v5, p2, Lv/f;->u:[I

    if-eqz p1, :cond_4

    aget p1, v5, v1

    if-ne p1, v4, :cond_4

    iput-object v3, p0, Lw/b;->a:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_4
    if-eqz v0, :cond_5

    aget p1, v5, v2

    if-ne p1, v4, :cond_5

    iput-object v3, p0, Lw/b;->b:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_5
    invoke-virtual {p3, p2, p0}, Landroidx/constraintlayout/widget/e;->b(Lv/f;Lw/b;)V

    iget p1, p0, Lw/b;->e:I

    invoke-virtual {p2, p1}, Lv/f;->O(I)V

    iget p1, p0, Lw/b;->f:I

    invoke-virtual {p2, p1}, Lv/f;->L(I)V

    iget-boolean p1, p0, Lw/b;->h:Z

    iput-boolean p1, p2, Lv/f;->F:Z

    iget p1, p0, Lw/b;->g:I

    iput p1, p2, Lv/f;->d0:I

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    iput-boolean v2, p2, Lv/f;->F:Z

    iput v1, p0, Lw/b;->j:I

    iget-boolean p0, p0, Lw/b;->i:Z

    return p0
.end method

.method public final b(Lv/g;III)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lv/f;->e0:I

    iget v1, p1, Lv/f;->f0:I

    const/4 v2, 0x0

    iput v2, p1, Lv/f;->e0:I

    iput v2, p1, Lv/f;->f0:I

    invoke-virtual {p1, p3}, Lv/f;->O(I)V

    invoke-virtual {p1, p4}, Lv/f;->L(I)V

    if-gez v0, :cond_0

    iput v2, p1, Lv/f;->e0:I

    goto :goto_0

    :cond_0
    iput v0, p1, Lv/f;->e0:I

    :goto_0
    if-gez v1, :cond_1

    iput v2, p1, Lv/f;->f0:I

    goto :goto_1

    :cond_1
    iput v1, p1, Lv/f;->f0:I

    :goto_1
    iget-object p0, p0, Lw/c;->c:Lv/g;

    iput p2, p0, Lv/g;->v0:I

    invoke-virtual {p0}, Lv/g;->R()V

    return-void
.end method

.method public final c(Lv/g;)V
    .locals 8

    iget-object p0, p0, Lw/c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p1, Lv/o;->s0:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/f;

    iget-object v5, v4, Lv/f;->V:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v6, v5, v1

    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v6, v7, :cond_0

    aget-object v3, v5, v3

    if-ne v3, v7, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lv/g;->u0:Lw/g;

    iput-boolean v3, p0, Lw/g;->b:Z

    return-void
.end method
