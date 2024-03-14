.class public final Lw/j;
.super Landroidx/constraintlayout/core/widgets/analyzer/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lv/f;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/f;-><init>(Lv/f;)V

    iget-object v0, p1, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/d;->f()V

    iget-object v0, p1, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/e;->f()V

    check-cast p1, Lv/j;

    iget p1, p1, Lv/j;->w0:I

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->f:I

    return-void
.end method


# virtual methods
.method public final a(Lw/e;)V
    .locals 2

    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    const/4 v1, 0x0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    check-cast p0, Lv/j;

    iget v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    int-to-float v0, v0

    iget p0, p0, Lv/j;->s0:F

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->d(I)V

    return-void
.end method

.method public final d()V
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    move-object v1, v0

    check-cast v1, Lv/j;

    iget v2, v1, Lv/j;->t0:I

    iget v3, v1, Lv/j;->u0:I

    iget v1, v1, Lv/j;->w0:I

    const/4 v4, 0x1

    const/4 v5, -0x1

    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-ne v1, v4, :cond_2

    if-eq v2, v5, :cond_0

    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    iget-object v0, v0, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v0, v0, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    goto :goto_0

    :cond_0
    if-eq v3, v5, :cond_1

    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    iget-object v0, v0, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v0, v0, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-int v0, v3

    iput v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    goto :goto_0

    :cond_1
    iput-boolean v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    iget-object v0, v0, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v0, v0, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v0, v0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Lw/j;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v0, v0, Lv/f;->d:Landroidx/constraintlayout/core/widgets/analyzer/d;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Lw/j;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    goto :goto_2

    :cond_2
    if-eq v2, v5, :cond_3

    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    iget-object v0, v0, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v0, v0, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    goto :goto_1

    :cond_3
    if-eq v3, v5, :cond_4

    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    iget-object v0, v0, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v0, v0, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-int v0, v3

    iput v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->f:I

    goto :goto_1

    :cond_4
    iput-boolean v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->b:Z

    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    iget-object v0, v0, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v0, v0, Lv/f;->W:Lv/f;

    iget-object v0, v0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v0, v0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Lw/j;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    iget-object v0, v0, Lv/f;->e:Landroidx/constraintlayout/core/widgets/analyzer/e;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/f;->i:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0, v0}, Lw/j;->m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V

    :goto_2
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->b:Lv/f;

    move-object v1, v0

    check-cast v1, Lv/j;

    iget v1, v1, Lv/j;->w0:I

    const/4 v2, 0x1

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    if-ne v1, v2, :cond_0

    iget p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iput p0, v0, Lv/f;->b0:I

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/a;->g:I

    iput p0, v0, Lv/f;->c0:I

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/analyzer/a;->c()V

    return-void
.end method

.method public final k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final m(Landroidx/constraintlayout/core/widgets/analyzer/a;)V
    .locals 1

    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/f;->h:Landroidx/constraintlayout/core/widgets/analyzer/a;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/a;->k:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Landroidx/constraintlayout/core/widgets/analyzer/a;->l:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
