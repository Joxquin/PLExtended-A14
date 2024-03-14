.class public final Ln0/l;
.super Ln0/m;
.source "SourceFile"


# virtual methods
.method public final g(Lx0/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ln0/l;->l(Lx0/a;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lx0/a;F)I
    .locals 10

    iget-object v0, p1, Lx0/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lx0/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v2, p0, Ln0/f;->e:Lx0/c;

    if-eqz v2, :cond_0

    iget v3, p1, Lx0/a;->g:F

    iget-object v1, p1, Lx0/a;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    iget-object v1, p1, Lx0/a;->c:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {p0}, Ln0/f;->e()F

    move-result v8

    iget v9, p0, Ln0/f;->d:F

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lx0/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    iget p0, p1, Lx0/a;->k:I

    const v1, 0x2ec8fb09

    if-ne p0, v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lx0/a;->k:I

    :cond_1
    iget p0, p1, Lx0/a;->k:I

    iget v0, p1, Lx0/a;->l:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Lx0/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lx0/a;->l:I

    :cond_2
    iget p1, p1, Lx0/a;->l:I

    sget-object v0, Lw0/f;->a:Landroid/graphics/PointF;

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr p2, v0

    float-to-int p0, p2

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
