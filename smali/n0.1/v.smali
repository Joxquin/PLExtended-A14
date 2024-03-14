.class public final Ln0/v;
.super Ln0/m;
.source "SourceFile"


# virtual methods
.method public final g(Lx0/a;F)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Ln0/f;->e:Lx0/c;

    iget-object v1, p1, Lx0/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v2, p1, Lx0/a;->g:F

    iget-object v3, p1, Lx0/a;->h:Ljava/lang/Float;

    if-nez v3, :cond_0

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_0
    move-object v4, v1

    check-cast v4, Lp0/b;

    iget-object p1, p1, Lx0/a;->c:Ljava/lang/Object;

    if-nez p1, :cond_1

    move-object p1, v4

    goto :goto_1

    :cond_1
    check-cast p1, Lp0/b;

    :goto_1
    invoke-virtual {p0}, Ln0/f;->d()F

    move-result v6

    iget v7, p0, Ln0/f;->d:F

    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lx0/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp0/b;

    goto :goto_3

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_4

    iget-object p0, p1, Lx0/a;->c:Ljava/lang/Object;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    check-cast p0, Lp0/b;

    goto :goto_3

    :cond_4
    :goto_2
    move-object p0, v1

    check-cast p0, Lp0/b;

    :goto_3
    return-object p0
.end method
