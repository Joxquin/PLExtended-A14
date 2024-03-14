.class public final Ln0/s;
.super Ln0/f;
.source "SourceFile"


# instance fields
.field public final i:Lr0/m;

.field public final j:Landroid/graphics/Path;

.field public k:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ln0/f;-><init>(Ljava/util/List;)V

    new-instance p1, Lr0/m;

    invoke-direct {p1}, Lr0/m;-><init>()V

    iput-object p1, p0, Ln0/s;->i:Lr0/m;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Ln0/s;->j:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final g(Lx0/a;F)Ljava/lang/Object;
    .locals 13

    iget-object v0, p1, Lx0/a;->b:Ljava/lang/Object;

    check-cast v0, Lr0/m;

    iget-object p1, p1, Lx0/a;->c:Ljava/lang/Object;

    check-cast p1, Lr0/m;

    iget-object v1, p0, Ln0/s;->i:Lr0/m;

    iget-object v2, v1, Lr0/m;->b:Landroid/graphics/PointF;

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v1, Lr0/m;->b:Landroid/graphics/PointF;

    :cond_0
    iget-boolean v2, v0, Lr0/m;->c:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-boolean v2, p1, Lr0/m;->c:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    iput-boolean v2, v1, Lr0/m;->c:Z

    iget-object v2, v0, Lr0/m;->a:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lr0/m;->a:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p1, Lr0/m;->a:Ljava/util/List;

    if-eq v5, v6, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Curves must have the same number of control points. Shape 1: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\tShape 2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v7

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lw0/c;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, v1, Lr0/m;->a:Ljava/util/List;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v8, v5, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_2
    if-ge v8, v5, :cond_5

    new-instance v9, Lp0/a;

    invoke-direct {v9}, Lp0/a;-><init>()V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v5, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_3
    if-lt v8, v5, :cond_5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_5
    iget-object v0, v0, Lr0/m;->b:Landroid/graphics/PointF;

    iget-object p1, p1, Lr0/m;->b:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v8, p1, Landroid/graphics/PointF;->x:F

    sget-object v9, Lw0/f;->a:Landroid/graphics/PointF;

    invoke-static {v8, v5, p2, v5}, Lw/f;->a(FFFF)F

    move-result v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    mul-float/2addr p1, p2

    add-float/2addr p1, v0

    invoke-virtual {v1, v5, p1}, Lr0/m;->a(FF)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_4
    if-ltz p1, :cond_6

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp0/a;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp0/a;

    iget-object v8, v0, Lp0/a;->a:Landroid/graphics/PointF;

    iget-object v9, v5, Lp0/a;->a:Landroid/graphics/PointF;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lp0/a;

    iget v11, v8, Landroid/graphics/PointF;->x:F

    iget v12, v9, Landroid/graphics/PointF;->x:F

    invoke-static {v12, v11, p2, v11}, Lw/f;->a(FFFF)F

    move-result v11

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-static {v9, v8, p2, v8}, Lw/f;->a(FFFF)F

    move-result v8

    iget-object v9, v10, Lp0/a;->a:Landroid/graphics/PointF;

    invoke-virtual {v9, v11, v8}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp0/a;

    iget-object v9, v0, Lp0/a;->b:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    iget-object v11, v5, Lp0/a;->b:Landroid/graphics/PointF;

    iget v12, v11, Landroid/graphics/PointF;->x:F

    invoke-static {v12, v10, p2, v10}, Lw/f;->a(FFFF)F

    move-result v10

    iget v9, v9, Landroid/graphics/PointF;->y:F

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v11, v9, p2, v9}, Lw/f;->a(FFFF)F

    move-result v9

    iget-object v8, v8, Lp0/a;->b:Landroid/graphics/PointF;

    invoke-virtual {v8, v10, v9}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp0/a;

    iget-object v0, v0, Lp0/a;->c:Landroid/graphics/PointF;

    iget v9, v0, Landroid/graphics/PointF;->x:F

    iget-object v5, v5, Lp0/a;->c:Landroid/graphics/PointF;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v10, v9, p2, v9}, Lw/f;->a(FFFF)F

    move-result v9

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v5, v0, p2, v0}, Lw/f;->a(FFFF)F

    move-result v0

    iget-object v5, v8, Lp0/a;->c:Landroid/graphics/PointF;

    invoke-virtual {v5, v9, v0}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_6
    iget-object p1, p0, Ln0/s;->k:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_5
    if-ltz p1, :cond_7

    iget-object p2, p0, Ln0/s;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm0/t;

    invoke-interface {p2, v1}, Lm0/t;->i(Lr0/m;)Lr0/m;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_7
    iget-object p0, p0, Ln0/s;->j:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    iget-object p1, v1, Lr0/m;->b:Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    sget-object p2, Lw0/f;->a:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_6
    iget-object p1, v1, Lr0/m;->a:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp0/a;

    iget-object v0, p1, Lp0/a;->a:Landroid/graphics/PointF;

    invoke-virtual {v0, p2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p1, Lp0/a;->b:Landroid/graphics/PointF;

    iget-object p1, p1, Lp0/a;->c:Landroid/graphics/PointF;

    if-eqz v2, :cond_8

    invoke-virtual {v3, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7

    :cond_8
    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v3, Landroid/graphics/PointF;->y:F

    iget v10, p1, Landroid/graphics/PointF;->x:F

    iget v11, p1, Landroid/graphics/PointF;->y:F

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_7
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    iget-boolean p1, v1, Lr0/m;->c:Z

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    :cond_a
    return-object p0
.end method
