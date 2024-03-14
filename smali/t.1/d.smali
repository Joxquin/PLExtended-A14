.class public Lt/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lt/m;

.field public b:F

.field public final c:Ljava/util/ArrayList;

.field public d:Lt/c;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lt/d;->a:Lt/m;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lt/d;->b:F

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/d;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lt/d;->e:Z

    return-void
.end method

.method public constructor <init>(Lt/e;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lt/d;->a:Lt/m;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lt/d;->b:F

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lt/d;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lt/d;->e:Z

    .line 11
    new-instance v0, Lt/b;

    invoke-direct {v0, p0, p1}, Lt/b;-><init>(Lt/d;Lt/e;)V

    iput-object v0, p0, Lt/d;->d:Lt/c;

    return-void
.end method


# virtual methods
.method public final a(Lt/f;I)V
    .locals 3

    iget-object v0, p0, Lt/d;->d:Lt/c;

    invoke-virtual {p1, p2}, Lt/f;->j(I)Lt/m;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Lt/c;->d(Lt/m;F)V

    iget-object p0, p0, Lt/d;->d:Lt/c;

    invoke-virtual {p1, p2}, Lt/f;->j(I)Lt/m;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-interface {p0, p1, p2}, Lt/c;->d(Lt/m;F)V

    return-void
.end method

.method public final b(Lt/m;Lt/m;Lt/m;I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    iput p4, p0, Lt/d;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lt/d;->d:Lt/c;

    invoke-interface {v0, p1, p4}, Lt/c;->d(Lt/m;F)V

    iget-object p1, p0, Lt/d;->d:Lt/c;

    invoke-interface {p1, p2, v1}, Lt/c;->d(Lt/m;F)V

    iget-object p0, p0, Lt/d;->d:Lt/c;

    invoke-interface {p0, p3, v1}, Lt/c;->d(Lt/m;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lt/d;->d:Lt/c;

    invoke-interface {v0, p1, v1}, Lt/c;->d(Lt/m;F)V

    iget-object p1, p0, Lt/d;->d:Lt/c;

    invoke-interface {p1, p2, p4}, Lt/c;->d(Lt/m;F)V

    iget-object p0, p0, Lt/d;->d:Lt/c;

    invoke-interface {p0, p3, p4}, Lt/c;->d(Lt/m;F)V

    :goto_0
    return-void
.end method

.method public final c(Lt/m;Lt/m;Lt/m;I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    if-gez p4, :cond_0

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_0
    int-to-float p4, p4

    iput p4, p0, Lt/d;->b:F

    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lt/d;->d:Lt/c;

    invoke-interface {v0, p1, p4}, Lt/c;->d(Lt/m;F)V

    iget-object p1, p0, Lt/d;->d:Lt/c;

    invoke-interface {p1, p2, v1}, Lt/c;->d(Lt/m;F)V

    iget-object p0, p0, Lt/d;->d:Lt/c;

    invoke-interface {p0, p3, p4}, Lt/c;->d(Lt/m;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lt/d;->d:Lt/c;

    invoke-interface {v0, p1, v1}, Lt/c;->d(Lt/m;F)V

    iget-object p1, p0, Lt/d;->d:Lt/c;

    invoke-interface {p1, p2, p4}, Lt/c;->d(Lt/m;F)V

    iget-object p0, p0, Lt/d;->d:Lt/c;

    invoke-interface {p0, p3, v1}, Lt/c;->d(Lt/m;F)V

    :goto_0
    return-void
.end method

.method public d([Z)Lt/m;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lt/d;->f([ZLt/m;)Lt/m;

    move-result-object p0

    return-object p0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lt/d;->a:Lt/m;

    if-nez v0, :cond_0

    iget v0, p0, Lt/d;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object p0, p0, Lt/d;->d:Lt/c;

    invoke-interface {p0}, Lt/c;->f()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f([ZLt/m;)Lt/m;
    .locals 9

    iget-object v0, p0, Lt/d;->d:Lt/c;

    invoke-interface {v0}, Lt/c;->f()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v5, p0, Lt/d;->d:Lt/c;

    invoke-interface {v5, v3}, Lt/c;->a(I)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_2

    iget-object v6, p0, Lt/d;->d:Lt/c;

    invoke-interface {v6, v3}, Lt/c;->h(I)Lt/m;

    move-result-object v6

    if-eqz p1, :cond_0

    iget v7, v6, Lt/m;->e:I

    aget-boolean v7, p1, v7

    if-nez v7, :cond_2

    :cond_0
    if-eq v6, p2, :cond_2

    iget-object v7, v6, Lt/m;->l:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v8, Landroidx/constraintlayout/core/SolverVariable$Type;->e:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-eq v7, v8, :cond_1

    sget-object v8, Landroidx/constraintlayout/core/SolverVariable$Type;->f:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v7, v8, :cond_2

    :cond_1
    cmpg-float v7, v5, v4

    if-gez v7, :cond_2

    move v4, v5

    move-object v2, v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public final g(Lt/m;)V
    .locals 3

    iget-object v0, p0, Lt/d;->a:Lt/m;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_0

    iget-object v2, p0, Lt/d;->d:Lt/c;

    invoke-interface {v2, v0, v1}, Lt/c;->d(Lt/m;F)V

    iget-object v0, p0, Lt/d;->a:Lt/m;

    const/4 v2, -0x1

    iput v2, v0, Lt/m;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, Lt/d;->a:Lt/m;

    :cond_0
    iget-object v0, p0, Lt/d;->d:Lt/c;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lt/c;->c(Lt/m;Z)F

    move-result v0

    mul-float/2addr v0, v1

    iput-object p1, p0, Lt/d;->a:Lt/m;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lt/d;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Lt/d;->b:F

    iget-object p0, p0, Lt/d;->d:Lt/c;

    invoke-interface {p0, v0}, Lt/c;->i(F)V

    return-void
.end method

.method public final h(Lt/f;Lt/m;Z)V
    .locals 3

    if-eqz p2, :cond_2

    iget-boolean v0, p2, Lt/m;->i:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt/d;->d:Lt/c;

    invoke-interface {v0, p2}, Lt/c;->e(Lt/m;)F

    move-result v0

    iget v1, p0, Lt/d;->b:F

    iget v2, p2, Lt/m;->h:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Lt/d;->b:F

    iget-object v0, p0, Lt/d;->d:Lt/c;

    invoke-interface {v0, p2, p3}, Lt/c;->c(Lt/m;Z)F

    if-eqz p3, :cond_1

    invoke-virtual {p2, p0}, Lt/m;->c(Lt/d;)V

    :cond_1
    iget-object p2, p0, Lt/d;->d:Lt/c;

    invoke-interface {p2}, Lt/c;->f()I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lt/d;->e:Z

    iput-boolean p2, p1, Lt/f;->a:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public i(Lt/f;Lt/d;Z)V
    .locals 3

    iget-object v0, p0, Lt/d;->d:Lt/c;

    invoke-interface {v0, p2, p3}, Lt/c;->b(Lt/d;Z)F

    move-result v0

    iget v1, p0, Lt/d;->b:F

    iget v2, p2, Lt/d;->b:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    iput v2, p0, Lt/d;->b:F

    if-eqz p3, :cond_0

    iget-object p2, p2, Lt/d;->a:Lt/m;

    invoke-virtual {p2, p0}, Lt/m;->c(Lt/d;)V

    :cond_0
    iget-object p2, p0, Lt/d;->a:Lt/m;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lt/d;->d:Lt/c;

    invoke-interface {p2}, Lt/c;->f()I

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lt/d;->e:Z

    iput-boolean p2, p1, Lt/f;->a:Z

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lt/d;->a:Lt/m;

    if-nez v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lt/d;->a:Lt/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, " = "

    invoke-static {v0, v1}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lt/d;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0}, Lt/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lt/d;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iget-object v5, p0, Lt/d;->d:Lt/c;

    invoke-interface {v5}, Lt/c;->f()I

    move-result v5

    :goto_2
    if-ge v4, v5, :cond_8

    iget-object v6, p0, Lt/d;->d:Lt/c;

    invoke-interface {v6, v4}, Lt/c;->h(I)Lt/m;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_6

    :cond_2
    iget-object v7, p0, Lt/d;->d:Lt/c;

    invoke-interface {v7, v4}, Lt/c;->a(I)F

    move-result v7

    cmpl-float v8, v7, v2

    if-nez v8, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {v6}, Lt/m;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v1, :cond_4

    cmpg-float v1, v7, v2

    if-gez v1, :cond_6

    const-string v1, "- "

    invoke-static {v0, v1}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    if-lez v8, :cond_5

    const-string v1, " + "

    invoke-static {v0, v1}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    const-string v1, " - "

    invoke-static {v0, v1}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v7, v1

    :cond_6
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v7, v1

    if-nez v1, :cond_7

    invoke-static {v0, v6}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    move v1, v3

    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    if-nez v1, :cond_9

    const-string p0, "0.0"

    invoke-static {v0, p0}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method
