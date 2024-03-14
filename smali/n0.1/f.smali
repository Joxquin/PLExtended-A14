.class public abstract Ln0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public b:Z

.field public final c:Ln0/c;

.field public d:F

.field public e:Lx0/c;

.field public f:Ljava/lang/Object;

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ln0/f;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln0/f;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Ln0/f;->d:F

    const/4 v0, 0x0

    iput-object v0, p0, Ln0/f;->f:Ljava/lang/Object;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Ln0/f;->g:F

    iput v0, p0, Ln0/f;->h:F

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ln0/b;

    invoke-direct {p1}, Ln0/b;-><init>()V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Ln0/e;

    invoke-direct {v0, p1}, Ln0/e;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ln0/d;

    invoke-direct {v0, p1}, Ln0/d;-><init>(Ljava/util/List;)V

    :goto_0
    move-object p1, v0

    :goto_1
    iput-object p1, p0, Ln0/f;->c:Ln0/c;

    return-void
.end method


# virtual methods
.method public final a(Ln0/a;)V
    .locals 0

    iget-object p0, p0, Ln0/f;->a:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lx0/a;
    .locals 0

    iget-object p0, p0, Ln0/f;->c:Ln0/c;

    invoke-interface {p0}, Ln0/c;->d()Lx0/a;

    move-result-object p0

    invoke-static {}, Lk0/d;->a()V

    return-object p0
.end method

.method public c()F
    .locals 2

    iget v0, p0, Ln0/f;->h:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Ln0/f;->c:Ln0/c;

    invoke-interface {v0}, Ln0/c;->a()F

    move-result v0

    iput v0, p0, Ln0/f;->h:F

    :cond_0
    iget p0, p0, Ln0/f;->h:F

    return p0
.end method

.method public final d()F
    .locals 2

    invoke-virtual {p0}, Ln0/f;->b()Lx0/a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lx0/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lx0/a;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Ln0/f;->e()F

    move-result p0

    invoke-interface {v0, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()F
    .locals 3

    iget-boolean v0, p0, Ln0/f;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ln0/f;->b()Lx0/a;

    move-result-object v0

    invoke-virtual {v0}, Lx0/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget p0, p0, Ln0/f;->d:F

    invoke-virtual {v0}, Lx0/a;->b()F

    move-result v1

    sub-float/2addr p0, v1

    invoke-virtual {v0}, Lx0/a;->a()F

    move-result v1

    invoke-virtual {v0}, Lx0/a;->b()F

    move-result v0

    sub-float/2addr v1, v0

    div-float/2addr p0, v1

    return p0
.end method

.method public f()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Ln0/f;->e()F

    move-result v0

    iget-object v1, p0, Ln0/f;->e:Lx0/c;

    if-nez v1, :cond_0

    iget-object v1, p0, Ln0/f;->c:Ln0/c;

    invoke-interface {v1, v0}, Ln0/c;->b(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Ln0/f;->f:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ln0/f;->b()Lx0/a;

    move-result-object v1

    iget-object v2, v1, Lx0/a;->e:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_1

    iget-object v3, v1, Lx0/a;->f:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_1

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {p0, v1, v0, v2, v3}, Ln0/f;->h(Lx0/a;FFF)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ln0/f;->d()F

    move-result v0

    invoke-virtual {p0, v1, v0}, Ln0/f;->g(Lx0/a;F)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ln0/f;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract g(Lx0/a;F)Ljava/lang/Object;
.end method

.method public h(Lx0/a;FFF)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This animation does not support split dimensions!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ln0/f;->a:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/a;

    invoke-interface {v1}, Ln0/a;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j(F)V
    .locals 4

    iget-object v0, p0, Ln0/f;->c:Ln0/c;

    invoke-interface {v0}, Ln0/c;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Ln0/f;->g:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-interface {v0}, Ln0/c;->c()F

    move-result v1

    iput v1, p0, Ln0/f;->g:F

    :cond_1
    iget v1, p0, Ln0/f;->g:F

    cmpg-float v3, p1, v1

    if-gez v3, :cond_3

    cmpl-float p1, v1, v2

    if-nez p1, :cond_2

    invoke-interface {v0}, Ln0/c;->c()F

    move-result p1

    iput p1, p0, Ln0/f;->g:F

    :cond_2
    iget p1, p0, Ln0/f;->g:F

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ln0/f;->c()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    invoke-virtual {p0}, Ln0/f;->c()F

    move-result p1

    :cond_4
    :goto_0
    iget v1, p0, Ln0/f;->d:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Ln0/f;->d:F

    invoke-interface {v0, p1}, Ln0/c;->e(F)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ln0/f;->i()V

    :cond_6
    return-void
.end method

.method public final k(Lx0/c;)V
    .locals 1

    iget-object v0, p0, Ln0/f;->e:Lx0/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iput-object p1, p0, Ln0/f;->e:Lx0/c;

    return-void
.end method
