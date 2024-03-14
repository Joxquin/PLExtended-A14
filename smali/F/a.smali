.class public final LF/a;
.super LF/b;
.source "SourceFile"


# virtual methods
.method public final a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 1

    invoke-virtual {p0}, LF/b;->c()V

    iget-object v0, p0, LF/b;->h:Landroid/graphics/Rect;

    iget p0, p0, LF/b;->g:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
